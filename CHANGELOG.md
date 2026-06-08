# Changelog

Tous les changements notables de ce projet sont documentés dans ce fichier.

Le format s'appuie sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/),
et le projet suit le [Semantic Versioning](https://semver.org/lang/fr/).

## [Non publié]

### À venir
- Lives / vies par joueur (mode élimination optionnel).
- Sons et effets de victoire.
- Ordre des réponses mélangé par question (anti par-cœur renforcé).

## [0.2.0] - 2026-06-08

### Ajouté
- **Chronomètre par question** affiché dans l'UI (compte à rebours).
- **Bonus de rapidité** (`MaxSpeedBonus`) ajouté au score selon le temps restant.
- **Gestion du timeout** : temps écoulé → retour au début du segment + flash « TEMPS ECOULE ! ».
- **Classement final partagé** affiché à **tous** les joueurs quand la partie est terminée.
- **Banque de 25 questions** Fortnite (au lieu de 5).
- Feedback unifié `Flash` (CORRECT ! +points / FAUX ! / TEMPS ECOULE !).

### Modifié
- `player_state` : ajout des champs de chrono (`TimeLeft`, `LastShownSecond`).
- `quiz_hud` : ligne de chrono, méthode `Flash`, `ShowLeaderboard` multi-lignes.
- `quiz_manager` : boucle par joueur gère désormais chrono + détection ; nouveaux réglages
  `QuestionTimeSeconds`, `MaxSpeedBonus`, `PollSeconds`.
- `leaderboard` : ajout de `RankingLines()` pour l'affichage du classement.

## [0.1.0] - 2026-06-08

### Ajouté
- **Code Verse** du quiz (dossier `verse/`), 100 % piloté par Verse, sans device de gameplay :
  - `quiz_types`, `question_bank` (avec mélange aléatoire), `player_state` (+ registre par joueur),
    `map_builder` (génération procédurale via `SpawnProp`), `quiz_hud` (UI Verse), `leaderboard`,
    et l'orchestrateur `quiz_manager`.
  - Génération de la map (chemin droit + 4 portails) selon le nombre de questions.
  - Téléportation en Verse (`TeleportTo`), détection de réponse par position du joueur.
  - Feedback « Correct / Faux », impulsion du portail à la bonne réponse, écran de fin + rang.
- **Documentation** complète et hiérarchisée (`docs/`, sections 00 → 08) :
  introduction, prérequis, conception, construction, devices (référence), **architecture Verse pro**,
  tests & publication, annexes, et **création de maps hors UEFN** (mesh, Datasmith, Python, MCP).
- **Outils** (`tools/`) :
  - `generate_quiz.py` — aperçu ASCII + extraits Verse + `layout.json`.
  - `build_map_obj.py` — génération de la géométrie 3D (`.obj`/`.mtl`) + manifeste de placement.
  - `build_map.py` — script Python d'éditeur UEFN (placement assisté).
  - `mcp.json.example` — exemple de configuration MCP.
- Fichiers de dépôt : `LICENSE` (MIT), `README.md`, `.gitignore`, ce `CHANGELOG.md`.

[Non publié]: https://github.com/Louisdelez/QuizzFortnite/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/Louisdelez/QuizzFortnite/releases/tag/v0.2.0
[0.1.0]: https://github.com/Louisdelez/QuizzFortnite/releases/tag/v0.1.0
