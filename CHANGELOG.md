# Changelog

Tous les changements notables de ce projet sont documentés dans ce fichier.

Le format s'appuie sur [Keep a Changelog](https://keepachangelog.com/fr/1.1.0/),
et le projet suit le [Semantic Versioning](https://semver.org/lang/fr/).

## [Non publié]

### Ajouté
- **Lobby « Sélection du Quizz »** complet (au pixel d'une maquette) : choix du quizz, de la
  **difficulté** (Facile / Moyen / Difficile) et de la **langue**, catégories, file d'attente/playlist.
- **Localisation 5 langues** FR / EN / ES / DE / IT : UI **et** banques (questions + réponses)
  traduites ; chaque joueur joue dans sa langue, le groupe partage le même tirage.
- **Rangs persistants** : 18 paliers sauvegardés entre sessions (`weak_map`), emblèmes dédiés.
- **Scores persistants par quizz × difficulté** : meilleur score (+ bonnes réponses) de chaque joueur
  sauvegardé **par combo** (`BestSave` entrelacé, `weak_map` par joueur) → retrouvé à la reconnexion.
  **TOP 10 séparé par quizz × difficulté** (`HallByCombo`), reconstruit à partir des records persistés
  des joueurs présents sur le serveur, affiché à l'écran de résultats. (Pas de classement global
  inter-serveurs : Verse ne persiste que par joueur — limite UEFN assumée.)
- **Écran de résultats** : podium, classement partagé, stats, gains de rang.
- **Brassage aléatoire complet et partagé** : à chaque round, tirage aléatoire des questions, de leur
  ordre **et de l'ordre des réponses A/B/C/D** (au runtime, RNG moteur). Le **chef génère les
  permutations** et les **diffuse à tout le groupe** → tous les amis ont **mêmes questions, mêmes
  réponses, même ordre des réponses** (équitable). Anti-par-cœur : les positions changent à chaque partie.
- **~35 banques de questions** générées par Python (Drapeaux, Capitales, Pokémon, Naruto, One Piece,
  Dragon Ball, Culture Générale ×N, Sport, etc.) — multilingues.
- **Pipeline d'outils** rangé : `tools/lib` (données partagées), `tools/banks` (générateurs de banques),
  `tools/textures` (textures UI), `tools/map` (géométrie). Réorg du dépôt (`assets/`, `docs/`, `STRUCTURE.md`).

### Modifié — refonte Quizz Drapeaux (2026-06)
- **Drapeaux du monde** refondu en **un seul quizz à 3 difficultés** (le moteur filtre par palier) :
  Facile = ~65 drapeaux communs (image normale), Moyen = ~130 moins communs (image normale),
  Difficile = **les 195 drapeaux pixelisés**. L'ancien quizz séparé « Drapeaux pixelisés » est **fusionné**.
  Banque de 390 questions × 5 langues ; 25 questions tirées au hasard par partie.
- **Lobby réduit** au seul quizz Drapeaux + catégorie « Culture Generale » (les autres quizz restent
  dans le dépôt mais **dormants**, retirés de la map UEFN ; ils reviendront un par un, retravaillés).
- **Réorganisation des assets** : dossiers d'images alignés et **à plat** dans le Content UEFN
  (contrainte de module Verse) ; dossiers de textures renommés (`jeu`, `lobby`, `rangs`, `resultats`).

### Ajouté — quizz géographie (2026-06)
- **Pays sur carte** réactivé sur le modèle 3 paliers (silhouettes Natural Earth, Difficile = pixelisé).
- **Drapeaux des départements** (101 dép. FR + outre-mer) : drapeau si officiel (Wikidata P41) sinon
  blason (P94), images Wikimedia Commons ; 3 paliers (Difficile = pixelisé).
- **Départements sur carte** (101) : silhouettes (geojson gregoiredavid), 3 paliers (Difficile = pixelisé).
- **Capitales du monde** (195) réactivé : texte seul (question + 4 capitales), 3 paliers par notoriété
  (pièges Berne/Canberra/Ottawa/Brasilia/Pretoria/Ankara/Rabat relevés), 5 langues.
- Données départements mutualisées dans `tools/lib/depts_core.py` (codes INSEE, noms ASCII, régions).

### Ajouté — système de flammes (2026-06)
- **Flammes = heures pleines consécutives** : +1 flamme par **heure** restée connecté **d'affilée**
  (la progression d'une session est perdue si on se déconnecte avant 60 min). Le **total** de flammes
  est **persistant par joueur** (`weak_map`, 4ᵉ variable) → conservé à la reconnexion. Pastille
  **« 🔥 N / HEURES »** ajoutée dans l'en-tête du lobby, **à gauche du rang** (d'après la maquette).

### À venir
- Réactivation progressive des autres quizz (un par un, « propre »).
- Lives / vies par joueur (mode élimination optionnel).
- Sons et effets de victoire.

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
