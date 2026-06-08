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
| `quiz_hud.verse` | UI par joueur : question, réponses A/B/C/D colorées, score, **flash Correct/Faux**, **écran de fin**. |
| `leaderboard.verse` | **Score & classement** (rang, tri décroissant). |
| `quiz_manager.verse` | **Orchestrateur** (le device à poser) : build + état + détection + score + feedback + fin. |

### Nouveautés (tout en Verse pur)
- **Feedback** : flash « CORRECT ! » / « FAUX ! » dans l'UI (async, ~1 s).
- **Effet portail** : le bon portail fait une **impulsion verticale** (`MoveTo`) — aucun nouvel asset.
- **Classement** : à la fin, l'UI affiche **Score + Rang X/Y** (module `leaderboard.verse`).

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
