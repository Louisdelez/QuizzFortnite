# 🎮 QuizzFortnite — Documentation complète

> Créer une **map Quizz Fortnite** : le joueur lit une **question**, et choisit parmi
> **4 portails** (1 par réponse). Bonne réponse → il avance/marque ; mauvaise → sanction.

> 🎯 **Orientation de ce projet : système 100 % Verse, de niveau professionnel.**
> Toute la logique (état par joueur, UI, score, chrono, classement) est **codée en Verse**,
> avec une **architecture modulaire**. Les devices (zones, téléporteurs) ne sont que des
> capteurs/actionneurs **référencés par le code** — aucune logique en *event binding* manuel.

Cette documentation couvre **tout le projet de A à Z** : des prérequis et de l'installation
de l'outil officiel **UEFN (Unreal Editor for Fortnite)**, jusqu'à la conception, l'**architecture
logicielle Verse** complète, les tests multijoueur et la **publication**.

> 📍 **Le cœur du projet est le dossier [`05-verse/`](./05-verse/)** (architecture pro, 12 fichiers).
> Le dossier `04-devices/` reste fourni comme **référence** des devices que le code Verse pilote.

---

## 🗺️ Comment lire cette documentation

La doc est **hiérarchisée et numérotée**. Lis les dossiers dans l'ordre `00 → 07`.
Chaque dossier traite d'une étape du projet et contient des fichiers numérotés à lire dans l'ordre.

| Dossier | Étape | Contenu |
|---------|-------|---------|
| [`00-introduction/`](./00-introduction/) | 🎯 Comprendre | Vision du jeu, glossaire, sources |
| [`01-prerequis/`](./01-prerequis/) | ⚙️ Préparer | Matériel, comptes, installation, interface UEFN |
| [`02-conception/`](./02-conception/) | ✏️ Concevoir | Game design, level design du parcours, système de questions |
| [`03-construction-map/`](./03-construction-map/) | 🏗️ Construire | Création projet, terrain, chemin, portails, affichage |
| [`04-devices/`](./04-devices/) | 🔌 Référence | Devices (zones, téléporteurs, UI) **pilotés par le Verse** — référence |
| [`05-verse/`](./05-verse/) | 💻 **Coder (cœur)** | **Architecture pro Verse** : modules, état joueur, UI, score, concurrence |
| [`06-tests-publication/`](./06-tests-publication/) | 🚀 Livrer | Playtest, optimisation, publication, monétisation |
| [`07-annexes/`](./07-annexes/) | 📎 Ressources | Banque de questions prête, checklists, dépannage, roadmap |
| [`08-creation-hors-uefn/`](./08-creation-hors-uefn/) | 🌍 **Créer hors UEFN** | Toutes les solutions pour créer la map dehors et l'importer (mesh, Datasmith, Python, MCP) |

---

## ⚡ Parcours rapide selon ton profil

- **Je veux LE système pro en Verse** (objectif principal) → `01` (installer) → [`05-verse/00-architecture-pro.md`](./05-verse/00-architecture-pro.md) → tout le dossier `05`.
- **Je débute totalement** → `00` puis `01`, puis `02` (conception) avant d'attaquer `05`.
- **Je veux comprendre les devices que le code pilote** → `04` (référence).
- **Ma map est prête, je veux publier** → `06`.
- **Je cherche des questions toutes faites** → [`07-annexes/A-banque-questions-fortnite.md`](./07-annexes/A-banque-questions-fortnite.md).

---

## 🎯 Le concept en une image

```
        ┌─────────────────────────────────────────────┐
        │   QUESTION : Quelle est la map OG de 2017 ?  │   ← Panneau (Billboard / HUD)
        └─────────────────────────────────────────────┘
                              │
            ┌─────────┬───────┴───────┬─────────┐
        ┌───┴───┐ ┌───┴───┐       ┌───┴───┐ ┌───┴───┐
        │PORTAIL│ │PORTAIL│       │PORTAIL│ │PORTAIL│
        │   A   │ │   B   │       │   C   │ │   D   │   ← 4 portails = 4 réponses
        │Tilted │ │Pleas. │       │ Retail│ │ Salty │
        └───┬───┘ └───┬───┘       └───┬───┘ └───┬───┘
            │         │ (bon)         │         │
          ❌        ✅ → avance     ❌        ❌
                      vers la
                  question suivante
```

Le joueur **marche dans un couloir / une route**. À chaque palier : une question + 4 portails.
Seul le bon portail mène au palier suivant. On enchaîne ainsi N questions jusqu'à la victoire.

---

## ✅ L'architecture Verse pro en bref

Le système est **découpé en modules** (un rôle par fichier `.verse`), tous orchestrés par un
unique device `quiz_manager`. Détails dans [`05-verse/00-architecture-pro.md`](./05-verse/00-architecture-pro.md).

```
quiz/
├── quiz_types.verse        # Données (question, enums)
├── question_bank.verse     # Banque + mélange aléatoire
├── player_state.verse      # État PAR JOUEUR (map agent→état) + registre
├── quiz_hud.verse          # UI Verse par joueur (question, réponses, score, chrono)
├── answer_portal.verse     # Portail (mutator zone) → événement "réponse i"
├── quiz_manager.verse      # ORCHESTRATEUR (le seul device posé dans la map)
└── leaderboard.verse       # Score & classement (+ persistance)
```

Caractéristiques « pro » : **état indépendant par joueur**, **UI Verse personnalisée**,
**score/combo/chrono**, **classement**, **concurrence** (`race`/`branch`), **nettoyage mémoire**,
**multijoueur** correct, **persistance** optionnelle des records.

### ⭐ Génération automatique de la map (chemin droit + 4 portails, selon N questions)

La map **se génère par code** depuis le nombre de questions — **un seul device à poser** :

- **`map_builder.verse`** ([`05-verse/12`](./05-verse/12-generation-procedurale.md)) : construit
  le sol et les portails au runtime (`SpawnProp`), détecte la réponse par **position** du joueur
  et l'avance par **code** (`TeleportTo`). Aucune zone, aucun téléporteur à placer.
- **`tools/generate_quiz.py`** ([`05-verse/13`](./05-verse/13-generateur-externe.md)) : générateur
  externe qui **calcule et prévisualise** la map (ASCII), et produit les **extraits Verse** prêts
  à coller. Change le nombre de questions → toute la map se recalcule.

```
   DEPART ─► Q1 [A][B*][C][D] ─► Q2 [A][B][C*][D] ─► ... ─► ARRIVEE   ( * = bonne réponse )
```
> Exemple réel : 5 questions = parcours de **66,6 m** ; 12 questions = **138,2 m** — recalculé seul.

> ℹ️ « 100 % Verse » ne supprime pas le besoin de **placer** quelques devices physiques (4 zones,
> téléporteurs, le device `quiz_manager`) puis de les **brancher en `@editable`** — mais **toute la
> logique vit dans le code**, pas dans des liaisons manuelles. Voir [`05-verse/00-architecture-pro.md`](./05-verse/00-architecture-pro.md) §« hors code ».

---

## 📌 Statut du projet

- Document créé le **2026-06-08**.
- Cible : **UEFN / Fortnite Creative 2.0** (outil officiel Epic Games).
- Voir [`07-annexes/D-roadmap-ameliorations.md`](./07-annexes/D-roadmap-ameliorations.md) pour les évolutions.
