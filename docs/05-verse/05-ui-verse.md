# 05.05 — UI Verse par joueur (`quiz_hud.verse`)

L'interface **construite et pilotée en Verse** : chaque joueur voit **sa** question, **ses**
réponses (A/B/C/D), **son** score et **son** chrono. C'est le cœur visuel du système pro.

> En UEFN, l'UI repose sur des **widgets** (UMG) créés/pilotés par la **Verse UI API**
> (`player_ui`, `canvas`, `text_block`, `button_*`). On récupère l'UI d'un joueur via `GetPlayerUI`.

## 🧱 Anatomie de l'UI

```
┌───────────────────────────────────────────────┐
│  Score : 300        Question 4/25     ⏱ 12s    │  ← bandeau haut (text_block)
│                                                 │
│        Quelle arme tire des roquettes ?         │  ← énoncé (text_block, centré)
│                                                 │
│   🟥 A : Lance-roquettes   🟦 B : Fusil a pompe │  ← 4 réponses colorées (text_block)
│   🟩 C : Pioche            🟨 D : Mur            │     (couleurs = celles des 4 portails)
└───────────────────────────────────────────────┘
```

> 🎨 **Astuce pro** : colore chaque réponse (A=rouge, B=bleu, C=vert, D=jaune) **comme** les
> portails physiques. Le joueur lit la réponse dans l'UI puis franchit le portail de la **couleur**
> correspondante. C'est ce qui permet une **progression par joueur** avec des portails partagés.

## 💻 `quiz_hud.verse`

```verse
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }

# Convertit une string en message (requis par les widgets de texte).
StringToMessage<localizes>(Value : string) : message = "{Value}"

quiz_hud := class:
    # Références aux widgets créés au runtime (option car créés dans Show).
    var MaybeCanvas : ?canvas = false
    var MaybeStatus : ?text_block = false
    var MaybeQuestion : ?text_block = false
    var MaybeAnswers : []text_block = array{}

    # Couleurs des 4 réponses (alignées sur les portails).
    AnswerColors : []color = array{
        NamedColors.Red, NamedColors.Blue, NamedColors.Green, NamedColors.Yellow
    }

    # Construit et affiche l'UI pour un joueur.
    Show(Player : player) : void =
        Status := text_block{ DefaultText := StringToMessage("Score : 0"), DefaultTextColor := NamedColors.White }
        Question := text_block{ DefaultText := StringToMessage("..."), DefaultTextColor := NamedColors.White }

        # 4 lignes de réponse (une par lettre).
        var AnswerBlocks : []text_block = array{}
        for (I := 0..3):
            Color := if (C := AnswerColors[I]) { C } else { NamedColors.White }
            Block := text_block{ DefaultText := StringToMessage(""), DefaultTextColor := Color }
            set AnswerBlocks += array{ Block }

        # Disposition : un canvas avec des slots positionnés.
        Root := canvas:
            Slots := array:
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.5, Y := 0.08}, Maximum := vector2{X := 0.5, Y := 0.08} }
                    Alignment := vector2{X := 0.5, Y := 0.0}
                    SizeToContent := true
                    Widget := Status
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.5, Y := 0.18}, Maximum := vector2{X := 0.5, Y := 0.18} }
                    Alignment := vector2{X := 0.5, Y := 0.0}
                    SizeToContent := true
                    Widget := Question
                # (Ajoute ici 4 slots pour AnswerBlocks[0..3], positions échelonnées)

        if (PlayerUI := GetPlayerUI[Player]):
            PlayerUI.AddWidget(Root)

        set MaybeCanvas = option{ Root }
        set MaybeStatus = option{ Status }
        set MaybeQuestion = option{ Question }
        set MaybeAnswers = AnswerBlocks

    # Met à jour l'énoncé + les 4 réponses.
    SetQuestion(Q : question) : void =
        if (T := MaybeQuestion?):
            T.SetText(StringToMessage(Q.Enonce))
        for (I -> Block : MaybeAnswers):
            if (Texte := Q.Reponses[I]):
                Block.SetText(StringToMessage("{Lettre(I)} : {Texte}"))

    # Met à jour le bandeau (score, n° de question, temps).
    SetStatus(Score : int, Numero : int, Total : int, Secondes : int) : void =
        if (T := MaybeStatus?):
            T.SetText(StringToMessage("Score : {Score}    Question {Numero}/{Total}    Temps : {Secondes}s"))

    # Retire l'UI du joueur (au départ / fin).
    Hide(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := MaybeCanvas?):
            PlayerUI.RemoveWidget(C)

    Lettre(Index : int) : string =
        case (Index):
            0 => "A"
            1 => "B"
            2 => "C"
            3 => "D"
            _ => "?"
```

## ⚠️ À vérifier dans l'API (noms susceptibles de changer)
- `GetPlayerUI[Player]` (faillible) → renvoie le `player_ui`.
- `AddWidget(...)` / `RemoveWidget(...)` sur `player_ui` (parfois avec un `player_ui_slot`).
- `text_block` (champ `DefaultText`, méthode `SetText(message)`, `DefaultTextColor`).
- `canvas` / `canvas_slot` / `anchors` / `vector2` (positionnement relatif 0..1).
- `button_loud` / `button_quiet` si tu veux des **boutons cliquables** au lieu de portails
  (event `OnClick()` → `Subscribe`).

> 📌 Consulte le tutoriel officiel **« In-Game User Interfaces in UEFN »** et l'**API Reference**
> du module UI pour les signatures exactes, puis ajuste ce squelette.

## 🆚 UI seule, portails seuls, ou les deux ?
- **Portails + UI (recommandé)** : input physique (immersif) + affichage riche par joueur.
- **UI seule (boutons)** : 4 `button_*` dans l'UI → quiz « écran », sans portails. Très scalable.
- **Portails seuls + billboards** : possible mais perd la progression par joueur (affichage partagé).

→ Suite : [`06-portails-answer.md`](./06-portails-answer.md)
