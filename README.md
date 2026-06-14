# 🎮 QuizzFortnite

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)
[![Verse](https://img.shields.io/badge/code-Verse%20%2F%20UEFN-blue.svg)](./verse)
[![Version](https://img.shields.io/badge/version-0.2.0-green.svg)](./CHANGELOG.md)

> Une **map Quizz pour Fortnite** entièrement codée en **Verse / UEFN** : un parcours en ligne
> droite, **4 portails par question** (1 par réponse). Bonne réponse → on avance ; mauvaise → on
> est renvoyé. Le parcours est **généré par code** selon le nombre de questions.

## ✨ Caractéristiques

- **100 % Verse** — aucun device de gameplay à poser/câbler : téléport (`TeleportTo`), génération
  de la map (`SpawnProp`), détection par position, UI, score… tout est en code.
- **Génération procédurale** — la map s'allonge automatiquement selon la taille de la banque de questions.
- **Architecture pro modulaire** — un fichier `.verse` par responsabilité.
- **Lobby de sélection** — choix du **quizz**, de la **difficulté** (Facile / Moyen / Difficile) et de
  la **langue**, au pixel près d'une maquette dédiée.
- **5 langues** — FR / EN / ES / DE / IT : UI **et** questions/réponses traduites, chaque joueur dans sa langue.
- **Multijoueur** — état indépendant par joueur (score, progression, série).
- **UI Verse** — question, 4 réponses colorées, score, **chronomètre**, **feedback Correct/Faux/Timeout**.
- **Rangs persistants** — 18 paliers sauvegardés entre les sessions, emblèmes dédiés.
- **Écran de résultats** — podium, classement partagé, stats, gains de rang.
- **Scoring riche** — points par question + **combo** (série) + **bonus de rapidité**.
- **Outils** — générateurs Python : banques de questions multilingues, textures d'UI, géométrie 3D de la map.

> 🚧 **État du contenu (refonte en cours, 2026-06) :** un seul quizz est actuellement **actif** —
> **Drapeaux du monde** (195 pays, 3 difficultés : Facile = drapeaux communs · Moyen = moins communs ·
> Difficile = **tous, pixelisés** ; 25 questions tirées au hasard par partie). Les autres quizz
> existent dans le dépôt mais sont **dormants** ; ils reviennent un par un, retravaillés « propre ».

## 📁 Structure du dépôt

```
verse/      Le code Verse du quiz (cœur) — 7 modules moteur + ~35 banques (1 active, le reste dormant)  [tracké]
tools/      Générateurs Python — lib/ banks/ textures/ map/                              [tracké]
assets/     Images / audio / 3D GÉNÉRÉS (staging d'import UEFN)                           [gitignoré]
docs/       Documentation hiérarchisée (00 → 08) + design/                               [tracké]
maps/       Le vrai projet UEFN local                                                    [gitignoré]
```

> 🗺️ **Carte complète + pipeline de build + contraintes :** [`STRUCTURE.md`](./STRUCTURE.md).

| Dossier | Contenu |
|---------|---------|
| [`verse/`](./verse) | Code Verse prêt à l'emploi (`quiz_manager`, `map_builder`, `quiz_hud`, …) + banques `*_bank.verse`. Voir [`verse/README.md`](./verse/README.md). |
| [`tools/`](./tools) | Générateurs Python rangés en `lib/`, `banks/`, `textures/`, `map/`. Voir [`tools/README.md`](./tools/README.md). |
| [`assets/`](./assets) | Médias générés (gitignorés, régénérables). Manifeste : [`assets/README.md`](./assets/README.md). |
| [`docs/`](./docs) | Guide complet : prérequis, conception, **architecture Verse**, génération, création hors UEFN, tests, publication. Voir [`docs/README.md`](./docs/README.md). |

## 🚀 Démarrage rapide

1. **Code Verse** : crée les fichiers de [`verse/`](./verse) dans UEFN (`quiz_manager` = Verse Device),
   compile (`Ctrl+Shift+B`), pose le device `quiz_manager`, branche `FloorAsset` / `PortalAsset`,
   et joue. La map se génère selon `MakeQuestions()`.
2. **Aperçu / géométrie** : `python tools/generate_quiz.py` (aperçu ASCII) ou
   `python tools/build_map_obj.py` (génère un mesh `.obj` importable).

> ▶️ **Pour jouer pas-à-pas (de zéro à jouable) :** voir **[`docs/COMMENT-JOUER.md`](./docs/COMMENT-JOUER.md)**.

Détails : [`verse/README.md`](./verse/README.md) · [`docs/README.md`](./docs/README.md).

## 🧩 Le concept

```
DEPART ─► Q1 [A][B*][C][D] ─► Q2 [A][B][C*][D] ─► ... ─► ARRIVEE   ( * = bonne réponse )
```

## 🗒️ Versions

Voir [`CHANGELOG.md`](./CHANGELOG.md). Le projet suit le [Semantic Versioning](https://semver.org/lang/fr/).

## ⚠️ Note technique

L'API Verse évolue selon les versions de Fortnite/UEFN. Certaines signatures (`SpawnProp`,
`TeleportTo`, `GetPlayerUI`, `MoveTo`, …) peuvent nécessiter un ajustement : elles sont **isolées**
dans des helpers pour faciliter la correction. Voir les notes dans [`docs/05-verse/`](./docs/05-verse).

## 📄 Licence

[MIT](./LICENSE) © 2026 Louis Delez
