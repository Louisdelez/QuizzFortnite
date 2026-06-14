# verse/ — Le quiz codé en Verse (fichiers prêts à l'emploi)

La map **se construit elle-même en Verse** à partir du nombre de questions (via `SpawnProp`).
Tu poses **un seul device** (`quiz_manager`) + 2 assets de props, et tout le reste est du code.

## 📂 Les fichiers
| Fichier | Rôle |
|---------|------|
| `quiz_types.verse` | Types de données (`question`, `answer_result`). |
| `question_bank.verse` | Banque + accès + mélange aléatoire. |
| `player_state.verse` | État par joueur + registre (`[agent]`). |
| `map_builder.verse` | **Génère la map** (sol + 4 portails/question) selon N + **impulsion du portail** (effet bonne réponse). |
| `quiz_hud.verse` | UI par joueur : question, réponses A/B/C/D colorées, score, **chrono**, **flash Correct/Faux/Timeout**, **écran de fin**, **classement final**. |
| `leaderboard.verse` | **Score & classement** (rang, tri décroissant, lignes formatées). |
| `quiz_manager.verse` | **Orchestrateur** (le device à poser) : build + état + détection + chrono + score + feedback + fin. |

## 🗃️ Les banques de questions (`*_bank.verse`)

> 🔧 **Refonte en cours (2026-06) :** un seul quizz est **actif** en jeu — **Drapeaux du monde**
> (banque intégrée dans `quiz_manager.verse`, 3 difficultés : Facile communs / Moyen moins communs /
> Difficile = les 195 pixelisés). Les ~34 autres banques ci-dessous restent dans le dépôt mais sont
> **dormantes** (retirées du lobby et de la map). `flags_pixel_bank.verse` est **déprécié** (fusionné
> dans le quizz Drapeaux). Elles reviendront une par une, retravaillées.

En plus des modules moteur ci-dessus, ~35 fichiers `*_bank.verse` contiennent les questions,
**générés par les scripts [`../tools/banks/`](../tools/banks/)** :

`anatomie` · `animaux` · `athletes` · `botanique` · `calcul` · `carte` · `celebrites` · `cinema` ·
`clubs` · `dates` · `dirigeants` · `dragonball` · `elements` · `espace` · `flags_pixel` ·
`inventions` · `jeuxvideo` · `livres` · `logos` · `monuments` · `musique` · `mytho` · `naruto` ·
`nature` · `onepiece` · `persos` · `pokemon` · `records` · `regions` · `series` · `sport` ·
`tableaux` · `villes` (+ capitales injectées via `inject_banks.py`).

> Mapping quiz → assets → banque → script : [`../assets/README.md`](../assets/README.md).

## ⛔ Pourquoi ce dossier reste À PLAT

Les `.verse` **ne doivent pas** être rangés en sous-dossiers : en Verse, le **dossier fait partie
du chemin de module**. Les regrouper casserait les références entre fichiers et la compilation.
De plus, UEFN compile depuis **`maps/quizz/Content/`** (où les `.verse` sont aussi à plat) :
`verse/` en est le **miroir tracké** à resynchroniser après chaque édition. Voir [`../STRUCTURE.md`](../STRUCTURE.md).

### Fonctionnalités (tout en Verse pur)
- **Génération** de la map selon le nombre de questions (`SpawnProp`).
- **Chronomètre par question** affiché dans l'UI + **bonus de rapidité** dans le score.
- **Timeout** : temps écoulé → retour au début du segment (la question doit être réussie).
- **Feedback** : flash « CORRECT ! +pts » / « FAUX ! » / « TEMPS ECOULE ! » (async, ~1 s).
- **Effet portail** : impulsion verticale du bon portail (`MoveTo`) — aucun nouvel asset.
- **Combo** : bonus cumulatif par bonnes réponses consécutives (`StreakBonus`).
- **Classement final partagé** : affiché à **tous** les joueurs quand la partie est finie.
- **Banque de 25 questions** Fortnite prête (éditable dans `MakeQuestions()`).

### Réglages (`@editable` sur `quiz_manager`)
`Randomize`, `StreakBonus`, `QuestionTimeSeconds`, `MaxSpeedBonus`, `PollSeconds`, + `FloorAsset` / `PortalAsset`.

## 🚀 Installation dans UEFN
1. **Verse → Verse Explorer → Create New Verse File** pour chaque fichier (recopie le contenu),
   ou place ces `.verse` dans le dossier Verse du projet.
2. `quiz_manager` doit être un **Verse Device** (il hérite de `creative_device`).
3. **Build Verse Code** (`Ctrl+Shift+B`).
4. Pose le device **`quiz_manager`** dans une map **vide**.
5. Dans **Details**, branche :
   - `FloorAsset` → un prop de **sol/dalle** (`creative_prop_asset`),
   - `PortalAsset` → un prop de **portail/arche**,
   - règle `Randomize`, `StreakBonus` si besoin.
6. **Joue** (Alt+P) : la map se génère, l'UI affiche la question, traverse le bon portail pour avancer.

## ✏️ Adapter
- **Nombre / contenu des questions** → édite `MakeQuestions()` dans `quiz_manager.verse`.
  La map s'allonge automatiquement (1 question = 1 segment).
- **Forme du parcours** → paramètres en haut de `map_builder.verse`
  (`SegmentLength`, `LaneSpacing`, `GateRatio`…).
- **3 ou 5 réponses** → `LaneCount` (+ adapter la banque et l'UI).

## ⚠️ À savoir (honnêteté technique)
- L'**API Verse évolue** selon la version de Fortnite. Si le compilateur proteste sur un nom
  (`SpawnProp`, `GetPlayerUI`, `AddWidget`, `text_block`, `canvas_slot`, `TeleportTo`, `Floor`,
  `IdentityRotation`, `GetRandomInt`…), vérifie la signature exacte dans l'**API Reference** intégrée
  et corrige — les helpers sont isolés pour faciliter ça.
- Verse **ne peut pas** spawner de *devices* au runtime → la détection se fait **par position**
  (le joueur franchit la ligne d'un portail), pas par mutator zone. C'est volontaire et documenté.

## 📖 Explication détaillée
Architecture et choix de conception : [`../docs/05-verse/`](../docs/05-verse/00-architecture-pro.md)
(notamment `12-generation-procedurale.md`).
