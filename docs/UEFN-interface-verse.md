# Création d'interfaces (UI / HUD / menus) en UEFN + Verse — Recherche complète A→Z

> Document de référence pour QuizzFortnite. Synthèse de la recherche faite le 2026-06-11
> (doc officielle Epic + sources communautaires) sur **tout ce qui est possible et impossible**
> pour créer des interfaces en Verse, et **comment** faire un menu plein écran type « Golf Party ».

---

## 0. Le point le plus important : DEUX modules UI

Il faut importer **les deux**, ils sont complémentaires :

| Module | Contenu |
|---|---|
| `/UnrealEngine.com/Temporary/UI` | **Layout + primitives** : `widget`, `canvas`, `overlay`, `stack_box`, **`button`** (générique, non-stylé), `texture_block`, `color_block`, `material_block`, `text_base`, `player_ui`, tous les `*_slot`, et les **enums** (`widget_visibility`, `ui_input_mode`, `orientation`). |
| `/Fortnite.com/UI` | **Widgets stylés Fortnite** : `text_button_base`, `button_loud`, `button_regular`, `button_quiet`, `text_block`, `slider_regular`. |

Préambule type :

```verse
using { /Fortnite.com/Devices }
using { /Fortnite.com/UI }                          # button_loud/quiet/regular, text_block, slider_regular
using { /UnrealEngine.com/Temporary/UI }            # canvas, overlay, stack_box, button, texture_block, color_block, player_ui
using { /UnrealEngine.com/Temporary/SpatialMath }   # vector2, color
using { /Verse.org/Simulation }
```

⚠️ Piège classique : `button_loud` / `text_block` ne sont **PAS** dans le module UnrealEngine ;
`texture_block` / `canvas` / `button` ne sont **PAS** dans le module Fortnite. Mélanger les deux → erreurs « Unknown identifier ».

---

## 1. Tous les widgets qui existent réellement

### Conteneurs de layout (`/UnrealEngine.com/Temporary/UI`)

| Classe | Rôle | Membres clés |
|---|---|---|
| `widget` | Base abstraite de tout. | `SetVisibility(widget_visibility)`, `GetVisibility()`, `SetEnabled(logic)`, `IsEnabled()` |
| `canvas` | **Positionnement absolu** (ancres + offsets). La RACINE de ton menu. | `Slots:[]canvas_slot` (init), `AddWidget(canvas_slot)`, `RemoveWidget(widget)`, `RemoveAllWidgets()` |
| `overlay` | Empile les enfants sur le même rectangle (le dernier au-dessus). | `Slots:[]overlay_slot`, `AddWidget`, `RemoveWidget` |
| `stack_box` | Liste verticale ou horizontale. | `Orientation:orientation`, `Slots:[]stack_box_slot`, `AddWidget`, `RemoveWidget` |
| `button` | **Conteneur cliquable NON-STYLÉ** à 1 enfant. Émet `OnClick`. **← la clé des cartes custom.** | `Slot:button_slot`, `OnClick():listenable(widget_message)`, `SetWidget(widget)`, `TriggeringInputAction` |

### Widgets de contenu / visuels

| Classe | Module | Rôle |
|---|---|---|
| `texture_block` | UE/Temp/UI | Affiche une PNG importée. Teintable, redimensionnable, **swappable au runtime**. |
| `color_block` | UE/Temp/UI | Rectangle de couleur unie (fonds/séparateurs, pas cher). |
| `material_block` | UE/Temp/UI | Rend un matériau UI ; **seul moyen d'animer** (paramètres), dégradés, coins arrondis dynamiques. |
| `text_block` | **Fortnite/UI** | Texte stylé : `SetText(message)`, ombre (`DefaultShadowOffset`, `DefaultShadowColor`), opacité, justification. |

### Boutons stylés Fortnite (`/Fortnite.com/UI`)

| Classe | Style |
|---|---|
| `text_button_base` | Base abstraite : `DefaultText:message`, `OnClick()`, `SetText(message)`, `SetEnabled`. |
| `button_loud` | Gros bouton jaune primaire. |
| `button_regular` | Bouton standard. |
| `button_quiet` | Bouton discret. **⚠️ N'est PAS transparent** — c'est juste un *style de texte discret*, pas un conteneur image. |
| `slider_regular` | Curseur numérique : `OnValueChanged()`. |

### ❌ Widgets qui N'EXISTENT PAS en Verse (vérifié sur l'index de l'API)

`scroll_box`, `list_view`, `tile_view`, `image_block` (utiliser `texture_block`), `toggle`,
`widget_switcher`, `progress_bar`, `combo_box`, `editable_text` / champ de saisie texte.
→ Ils existent en C++ (UMG/Slate) mais **ne sont pas exposés à Verse**.

---

## 2. ⭐ Boutons custom CLIQUABLES — LA réponse (correction d'une erreur passée)

**On NE PEUT PAS** mettre une image custom sur un `button_loud/quiet/regular` :
aucun `SetImage`, ils rendent toujours le skin Fortnite intégré.

**La bonne technique** = le `button` GÉNÉRIQUE (`/UnrealEngine.com/Temporary/UI`),
qui est un conteneur **invisible** à 1 enfant. On lui donne un `texture_block` (ou un `overlay`
texture+texte) comme enfant : l'image se voit, et **tout le rectangle est cliquable**.

```verse
# Carte « quizz » 100% custom et cliquable
CardImage : texture_block = texture_block:
    DefaultImage := HUD.lobby_card          # PNG exposée à Verse
    DefaultDesiredSize := vector2{X := 640.0, Y := 74.0}

Card : button = button{}                     # le button lui-même ne dessine RIEN
Card.SetWidget(CardImage)                     # l'image EST l'enfant -> visible + cliquable
Card.OnClick().Subscribe(OnCardClicked)

OnCardClicked(Msg : widget_message) : void =
    Player := Msg.Player
    # ... traiter la sélection
```

> **Pourquoi mon ancienne conclusion « impossible » était fausse :** j'avais mis la texture
> *PAR-DESSUS* un `button_loud` dans un `overlay` → la texture (au-dessus) interceptait les clics.
> La bonne approche est la texture *À L'INTÉRIEUR* du `button` (comme enfant). Le `button`
> capte le clic, l'enfant n'est que du visuel.

### Empilement texte + image dans une carte
L'enfant du `button` peut être un `overlay` complet (fond + icône + texte) :

```verse
Inner : overlay = overlay{}
Inner.AddWidget(overlay_slot{ Widget := BgTexture })
Inner.AddWidget(overlay_slot{ Widget := LabelText, HorizontalAlignment := horizontal_alignment.Left })
Card : button = button{}
Card.SetWidget(Inner)
```

### `widget_visibility` — pourquoi `HitTestInvisible` plantait
L'enum Verse a **exactement 3 valeurs** :
```
widget_visibility.Visible      # visible, prend la place, cliquable
widget_visibility.Hidden       # invisible, prend ENCORE la place
widget_visibility.Collapsed    # invisible, ne prend PAS de place
```
`HitTestInvisible` / `SelfHitTestInvisible` / `NotHitTestable` n'existent **qu'en C++ Slate**,
pas en Verse → d'où l'erreur « Unknown member ». **Il n'y a pas de mode click-through en Verse.**
Pour rendre un widget non-interactif : `SetEnabled(false)` ou `Collapsed`, ou simplement ne pas
mettre de `button` à cet endroit.

---

## 3. Menu plein écran + lancement auto au spawn + souris/manette

### Ajouter l'UI au joueur (au spawn → menu auto)
```verse
ShowMenu(Player : player) : void =
    if (PlayerUI := GetPlayerUI[Player]):
        Root := BuildMenuCanvas()                          # un canvas plein écran
        PlayerUI.AddWidget(Root, player_ui_slot:
            InputMode := ui_input_mode.All                 # ← capture + AFFICHE le curseur souris
            ZOrder := 10)
```
- `player_ui_slot` a **2 champs seulement** : `InputMode : ui_input_mode` et `ZOrder : int`.
- Handle via `GetPlayerUI[Player]`. Retirer : `PlayerUI.RemoveWidget(Root)`.

### `ui_input_mode` — **2 valeurs seulement**
```
ui_input_mode.None    # overlay HUD pur ; input -> gameplay ; curseur caché
ui_input_mode.All     # le widget capte TOUT l'input ; LE CURSEUR SOURIS APPARAÎT ; clics OK
```
Pas de `Game`, pas de mode par région. `All` = ce qu'il faut pour un menu cliquable.

### Lancement automatique au spawn
- Itérer les joueurs dans `OnBegin` **et** s'abonner à l'arrivée des joueurs :
  `GetPlayspace().PlayerAddedEvent().Subscribe(...)`, ou hooker le spawn pad / `player_spawned_event`.
- Pour notre map : appeler `ShowMenu(Player)` directement dans `SetupPlayer` au lieu d'attendre
  l'interaction du bouton « E ». (Le bouton « E » reste utilisable pour rouvrir.)

### Manette / console — **limitation réelle**
Il n'y a **PAS** de `SetFocus`, **PAS** de navigation gamepad UI en Verse.
Un menu à clic marche **souris/tactile** mais **n'est pas nativement navigable à la manette**.
Contournements : `button.TriggeringInputAction` (lier un bouton à une action d'input), ou
sélection pilotée par le gameplay (marcher sur des plaques). **Aucune API de focus n'existe.**
> (Note : une ancienne note mentionnait `PlayerUI.SetFocus(widget)` — ça **n'existe pas**, à retirer.)

---

## 4. Listes scrollables — recherche définitive (2026)

**Conclusion vérifiée (doc officielle Epic + notes v38–v39.30) : un vrai scroll créateur N'EXISTE PAS en Verse.**
- **Aucun widget de scroll exposé à Verse**, dans AUCUN module : pas de `scroll_box`, `list_view`,
  `tile_view`, `scrollable`. Module UI Verse complet = `player_ui, widget, button, canvas, color_block,
  texture_block, material_block, overlay, stack_box, text_base` (+ slots). `stack_box` empile mais
  **ne scrolle pas et ne clippe pas**.
- **Aucune entrée molette / drag / position souris.** `/Verse.org/Input/UI` ne fournit que des actions
  **discrètes** : `NextTab, PreviousTab, NextPage, PreviousPage, Back`. Pas de `MouseWheelAxis`, pas de
  `GetMousePosition`, pas de `OnDrag`/`OnMouseMove`. (Ils existent en UE Blueprint/C++ mais **pas** en UEFN.)
- **`canvas_slot` est un struct IMMUABLE** (pas de `SetOffsets`) ; `canvas` n'a que `AddWidget`/`RemoveWidget`.
  Animer un défilement = Remove+Add → saccadé. `MoveTo`/`MoveToEase` ne s'appliquent pas aux slots UI.
- **Le `ScrollBox` UMG** (éditeur de widgets) scrolle à la molette, MAIS depuis v38.00 (2025-11) le pont
  Verse↔UMG est **unidirectionnel (Verse→UMG)** : Verse **ne peut ni lire le scroll ni recevoir les clics**
  des boutons UMG (« widget events coming in a future release », pas livré en juin 2026). → **inutilisable**
  pour une liste cliquable pilotée par Verse.
- **La Bibliothèque musicale de Fortnite Festival** (scrollbar + molette) est une UI **interne d'Epic en
  UMG/Slate**, *non reproductible* par un créateur via Verse.

**➡️ Seule solution créateur pour une liste INTERACTIVE = pagination par boutons** : `array` + `Top:int`,
afficher N lignes, boutons ▲/▼ dont `OnClick()` change `Top` puis reconstruit la fenêtre. On peut dessiner
une **fausse scrollbar** (piste + thumb `color_block` positionné via `overlay_slot.Padding.Top` calculé) —
c'est ce qu'on a implémenté.

⚠️ **PIÈGE — ne pas re-`AddWidget` la racine pour un refresh partiel.** Réajouter le widget racine sur
`player_ui` (avec `InputMode := ui_input_mode.All`) **recentre le curseur souris à l'écran** et fait
**clignoter**. Pour mettre à jour seulement la liste (au scroll/ajout), garder un **sous-`canvas` hôte**
persistant et n'y swapper que le contenu : `Host.RemoveWidget(AncienContenu)` puis
`Host.AddWidget(canvas_slot{… Widget := NouveauContenu})`. La racine n'est jamais retirée → le curseur
**reste à sa position** et il n'y a pas de flicker. (`RemoveAllWidgets` n'existe PAS sur `canvas` ;
seulement `AddWidget` / `RemoveWidget(widget)`.)

### Molette / curseur souris — preuve par le module d'entrée (vérifié)
La question « peut-on créer un scroll à la molette ? » est tranchée par la liste EXHAUSTIVE des
actions abonnables via `player_input` :
- `/Fortnite.com/Input/Character` : **`Reload, WeaponPrimary, WeaponSecondary, Crouch, Sprint, Jump`** — c'est tout.
- `/Verse.org/Input/UI` : **`NextTab, PreviousTab, NextPage, PreviousPage, Back`** — c'est tout.
- `player_input` n'expose que **`AddInputMapping, RemoveInputMapping, GetInputEvents, PreferredInputMethod`**
  (+ `GetPlayerInput`, `deproject_results`, `input_method`). **Aucune** méthode `GetMousePosition`/curseur.

→ **Pas d'action molette/scroll/axe analogique** ⇒ molette **illisible**. **Pas de position curseur** ⇒
**drag-scroll impossible**. `deproject_results` ne fait que projeter des coordonnées *fournies* vers
le monde ; il ne donne pas la position de la souris. **Conclusion : un scroll molette est impossible**
côté créateur. Seul bonus envisageable : abonner `NextPage`/`PreviousPage` (touches clavier/manette,
PAS la molette) pour faire défiler par page.

Sources : [module UI](https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/unrealenginedotcom/temporary/ui) ·
[canvas_slot immuable](https://dev.epicgames.com/documentation/en-us/uefn/verse-api/unrealenginedotcom/temporary/ui/canvas_slot) ·
[module Input](https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/versedotorg/input) ·
[player_input](https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/versedotorg/input/player_input) ·
[Input/Character](https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/fortnitedotcom/input/character) ·
[Player Input in Verse](https://dev.epicgames.com/documentation/fortnite/player-input-in-verse-in-unreal-editor-for-fortnite) ·
[v38.00 — Verse Fields in UMG (unidirectionnel)](https://dev.epicgames.com/documentation/fortnite/38-00-fortnite-ecosystem-updates-and-release-notes)

---

## 5. Images / textures

**Référencer une PNG importée comme constante Verse (Asset Reflection) :**
1. Importer la PNG dans le Content Browser.
2. Clic droit sur l'asset → l'exposer à Verse (« Use in Verse »).
3. **Save all + Build Verse Code** (régénère le digest).
4. La référencer comme constante générée :
```verse
Tex := texture_block:
    DefaultImage := HUD.lobby_modal           # chemin généré ; type `texture`
    DefaultTint := color{Red:=1.0, Green:=1.0, Blue:=1.0}
    DefaultDesiredSize := vector2{X:=1180.0, Y:=720.0}
```
`texture_block` — membres réels :
- Init : `DefaultImage:texture`, `DefaultTint:color`, `DefaultDesiredSize:vector2`,
  `DefaultHorizontalTiling`, `DefaultVerticalTiling`.
- Runtime : **`SetImage(texture)`**, **`SetTint(color)`**, **`SetDesiredSize(vector2)`**,
  + getters. → `SetImage` au runtime = mécanisme de swap « survol/sélectionné » (à coder soi-même).
- Types exposables à Verse : **textures, meshes, matériaux, Niagara** uniquement.

---

## 6. Layout pixel-précis

### `canvas` + `canvas_slot` (positionnement absolu — pour matcher une maquette HTML/CSS)
Champs de `canvas_slot` : `Anchors:anchors`, `Offsets:margin`, `Alignment:vector2`,
`SizeToContent:logic`, `ZOrder:int`, `Widget:widget`.

- **Anchors** = rectangle de référence normalisé 0..1 sur le parent.
- **Offsets** = `margin{Left, Top, Right, Bottom}` en pixels. Quand Min==Max (ancre ponctuelle),
  `Left/Top` = position et `Right/Bottom` = largeur/hauteur.
- **Alignment** = pivot du widget (0,0 = haut-gauche … 1,1 = bas-droite).

```verse
# Élément taille fixe à une position (ancre haut-gauche)
canvas_slot:
    Anchors := anchors{ Minimum := vector2{X:=0.0,Y:=0.0}, Maximum := vector2{X:=0.0,Y:=0.0} }
    Offsets := margin{ Left:=120.0, Top:=64.0, Right:=640.0, Bottom:=74.0 }   # x, y, w, h
    Alignment := vector2{X:=0.0, Y:=0.0}
    Widget := Card

# Fond plein écran
canvas_slot:
    Anchors := anchors{ Minimum := vector2{X:=0.0,Y:=0.0}, Maximum := vector2{X:=1.0,Y:=1.0} }
    Offsets := margin{ Left:=0.0, Top:=0.0, Right:=0.0, Bottom:=0.0 }
    Widget := FullscreenDim

# Élément centré : Anchors Min=Max=0.5, Alignment=(0.5,0.5)
```
> ⚠️ Les coordonnées UI supposent une **référence 1920×1080**. Les ancres gardent les proportions
> sur d'autres résolutions, mais les offsets en pixels sont relatifs à ce canevas virtuel 1080p.

### `overlay` + `overlay_slot`
Empile sur le même rectangle (dernier au-dessus). `overlay_slot{ Padding, HorizontalAlignment,
VerticalAlignment, Widget }`. Pour badge-sur-carte, texte-sur-image.

### `stack_box` + `stack_box_slot`
`Orientation := orientation.Vertical | orientation.Horizontal`.
`stack_box_slot{ Widget, Padding, HorizontalAlignment, VerticalAlignment, Distribution }`.
**`Slots` est init-only** → muter le tableau après coup ne fait rien ; utiliser `AddWidget`/`RemoveWidget`.
Pas de `SetSlots`.

---

## 7. Limitations dures (honnête et vérifié)

- **Survol = OUI via `HighlightEvent()`/`UnhighlightEvent()`** (corrige une 1ʳᵉ conclusion erronée).
  Le `button` générique expose ces deux méthodes `() : listenable(widget_message)`, abonnables comme
  `OnClick()`. Elles se déclenchent au survol souris et/ou focus manette. Pas de `OnHover`/`OnMouseEnter`
  dédié ni de `SetHoveredImage`. Pattern : une classe holder qui montre/cache un `color_block` cadre
  dans les handlers (`hover_btn` dans quiz_manager.verse).
- **Pas d'image custom sur les boutons Fortnite.** Custom = `texture_block` dans un `button` générique.
- **Pas de widget de scroll.** Scroll simulé/paginé ; pas de molette pour l'UI.
- **Pas de click-through / hit-test visibility.** `widget_visibility` = Visible/Hidden/Collapsed seulement.
- **Pas de champ de saisie texte.**
- **Pas de focus/navigation manette** (pas de `SetFocus`).
- **Pas de police custom** (police Fortnite imposée ; seulement ombre/justif/couleur ajustables).
- **Pas de texte riche, pas de coins arrondis natifs, pas d'ombre portée** (sauf ombre de texte),
  **pas de flou, pas de dégradé** — sauf via un **matériau UI** (`material_block`).
  → Coins arrondis : les **cuire dans la PNG** (ce qu'on fait déjà) ou via matériau.
- **`ui_input_mode` binaire** (None/All) — un widget `All` capte tout l'input.
- **Animation manuelle** — pas de timeline UMG ; on tween via `loop` + `Sleep` en appelant
  `SetTint`/`SetDesiredSize`/`SetImage` ou des paramètres de matériau. Beaucoup d'appels `Set...`
  par frame sur de nombreux widgets coûte cher → garder un nombre de widgets modéré.
- **UI par joueur.** `AddWidget` est par `player_ui` ; ajouter/retirer pour chaque joueur,
  nettoyer au départ/respawn pour éviter les doublons.

---

## 8. Aide-mémoire des verbes (tous vérifiés)

```verse
# Clics (les deux familles de boutons)
Button.OnClick() : listenable(widget_message)       # .Subscribe(h) ou .Await()
h(Msg:widget_message):void = Player := Msg.Player

# État
W.SetVisibility(widget_visibility.Collapsed)         # Visible | Hidden | Collapsed
W.SetEnabled(false)                                  # bloque l'interaction

# Texte (Fortnite/UI)
TextBlock.SetText(MyMessage) ; TextBlock.GetText()

# Texture (UE/Temp/UI)
Tex.SetImage(HUD.autre_png) ; Tex.SetTint(color{...}) ; Tex.SetDesiredSize(vector2{...})

# Player UI
if (UI := GetPlayerUI[Player]):
    UI.AddWidget(Root, player_ui_slot{ InputMode := ui_input_mode.All, ZOrder := 10 })
    UI.RemoveWidget(Root)

# Survol (button generique)
Btn.HighlightEvent().Subscribe(OnHi) ; Btn.UnhighlightEvent().Subscribe(OnLo)   # entre / sort

# N'EXISTE PAS : OnHover/OnMouseEnter dedie, SetFocus, SetToolTipText,
#                SetImage sur un bouton, HitTestInvisible, scroll_box
#                (pour le survol -> utiliser HighlightEvent/UnhighlightEvent ci-dessus)
```

---

## 9. Recette pour NOTRE menu plein écran (type Golf Party)

1. **Racine** = `canvas` plein écran ajouté via
   `GetPlayerUI[Player].AddWidget(root, player_ui_slot{InputMode:=ui_input_mode.All, ZOrder:=N})`
   **au spawn** → curseur visible, clics OK, **auto-lancé**.
2. **Fond** = `texture_block`/`color_block` plein écran assombri (`lb-dim` rgba(6,10,24,.62)),
   puis la fenêtre 1180×760 centrée (texture `HUD.lobby_modal` teintée).
3. **Cartes cliquables** = `button{}` + `SetWidget(texture_block/overlay)` + `OnClick().Subscribe(...)`.
   **PAS** `button_loud`.
4. **Onglets / sous-pages** (Langue, Catégorie) = sous-`canvas` qu'on montre/cache via
   `SetVisibility(Collapsed/Visible)` (pas de `widget_switcher`).
5. **Liste « scrollable »** = grille paginée de cartes + boutons Préc./Suiv. (pas de vrai scroll).
6. **Survol** = `HighlightEvent()`/`UnhighlightEvent()` du button → afficher/cacher un cadre (`color_block`)
   ou teinter ; **sélection** = `SetTint`/`SetImage` au clic.
7. **Console** = prévoir `TriggeringInputAction` ou sélection au gameplay ; pas de focus natif.

---

## 10. Sources officielles

- Index module UI : https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/unrealenginedotcom/temporary/ui
- `button` : https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/unrealenginedotcom/temporary/ui/button
- `texture_block` / `SetImage` : …/temporary/ui/texture_block , …/texture_block/setimage
- `canvas_slot`, `stack_box`, `stack_box_slot` : …/temporary/ui/{canvas_slot,stack_box,stack_box_slot}
- `widget_visibility` (3 valeurs), `ui_input_mode` (2 valeurs) : …/temporary/ui/{widget_visibility,ui_input_mode}
- `player_ui.AddWidget`, `player_ui_slot` : …/temporary/ui/player_ui/addwidget-1 , …/player_ui_slot
- `button_loud` (pas d'image) : …/fortnitedotcom/ui/button_loud
- Guide « Creating UI with Verse » + « material_block in Fortnite » + « Exposing assets to Verse »
- Communauté : forums.unrealengine.com « Custom UI Buttons in Verse » ; gist LionGet (digest API) ;
  github imcouri/verse_custom_button
```
