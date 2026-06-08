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
- **Multijoueur** — état indépendant par joueur (score, progression, série).
- **UI Verse** — question, 4 réponses colorées, score, **chronomètre**, **feedback Correct/Faux/Timeout**, **classement final partagé**.
- **Scoring riche** — points par question + **combo** (série) + **bonus de rapidité**.
- **Outils** — un générateur Python qui prévisualise la map et produit la géométrie 3D importable.

## 📁 Structure du dépôt

```
verse/      Le code Verse du quiz (cœur du projet) — 7 modules
docs/       Documentation complète et hiérarchisée (00 → 08)
tools/      Générateurs Python (aperçu, géométrie OBJ, script éditeur, MCP)
```

| Dossier | Contenu |
|---------|---------|
| [`verse/`](./verse) | Code Verse prêt à l'emploi (`quiz_manager`, `map_builder`, `quiz_hud`, …). Voir [`verse/README.md`](./verse/README.md). |
| [`docs/`](./docs) | Guide complet : prérequis, conception, **architecture Verse**, génération, création hors UEFN, tests, publication. Voir [`docs/README.md`](./docs/README.md). |
| [`tools/`](./tools) | `generate_quiz.py`, `build_map_obj.py`, `build_map.py`, exemple MCP. Voir [`tools/README.md`](./tools/README.md). |

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
