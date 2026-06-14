# 🗺️ Structure du projet QuizzFortnite

Carte de référence de l'organisation du dépôt et du **pipeline de build**.
À lire en premier pour comprendre où vit chaque chose et **pourquoi**.

---

## 1. Arborescence de haut niveau

```
QuizzFortnite/
├── verse/        Code Verse du jeu (cœur) : 7 modules moteur + ~40 banques de questions   [TRACKÉ]
├── tools/        Générateurs Python (banques, textures, géométrie de map)                  [TRACKÉ]
│   ├── lib/          Modules partagés importés (quiz_common, country_*)
│   ├── banks/        Un script build_<quiz>.py par banque de questions
│   ├── textures/     Générateurs de textures UI (HUD, lobby, rangs, résultats, icônes, SFX)
│   ├── map/          Géométrie & aperçu de la map (generate_quiz, build_map*, OBJ/glTF)
│   └── lucide_svgs/  Cache de SVG Lucide (source des icônes)
├── assets/       Images / audio / 3D GÉNÉRÉS — staging d'import UEFN                        [GITIGNORÉ]
│   └── README.md     Manifeste (le SEUL fichier d'assets tracké)
├── docs/         Documentation hiérarchisée 00 → 08 + design/                              [TRACKÉ]
├── maps/         Le VRAI projet UEFN local (lourd, spécifique machine)                     [GITIGNORÉ]
│   └── quizz/Content/   Là où UEFN compile (voir §3)
├── README.md · CHANGELOG.md · LICENSE · STRUCTURE.md
```

> **Tracké** = versionné dans git. **Gitignoré** = local, lourd, **régénérable** (ne pas chercher à le committer).

---

## 2. Le pipeline de build (qui produit quoi)

```
            tools/lib/ (données + helpers partagés)
                     │  import
                     ▼
   tools/banks/build_<quiz>.py ──► assets/<quiz>/*.png   (images de réponses)   [gitignoré]
                     └──────────► verse/<quiz>_bank.verse (questions + refs)     [tracké]

   tools/textures/build_*.py  ──► assets/<ui>/*.png       (HUD, lobby, rangs…)   [gitignoré]
   tools/map/build_map*.py    ──► *.glb / *.obj           (géométrie de map)     [gitignoré]
```

1. On lance un script `tools/banks/build_xxx.py`.
2. Il écrit **les images** dans `assets/xxx/` (staging) **et** **la banque** dans `verse/xxx_bank.verse`.
3. On **importe manuellement** `assets/xxx/` dans UEFN → atterrit dans `maps/quizz/Content/xxx/`.
4. On **synchronise** les `.verse` vers `maps/quizz/Content/` (voir §3) et on compile dans UEFN.

> Tous les scripts utilisent un chemin absolu `ROOT = "D:/QuizzFortnite"`.
> Les sorties d'assets vont sous `ROOT/assets/…`, les banques sous `ROOT/verse/…`.

---

## 3. Contraintes dures (à NE PAS casser) ⛔

| Règle | Raison |
|-------|--------|
| **`verse/` doit rester À PLAT** (pas de sous-dossiers) | En Verse, le dossier fait partie du **chemin de module**. Sous-dossiers ⇒ la compilation casse. |
| **`maps/quizz/Content/` = la vraie cible UEFN** | Les `.verse` y sont **à plat** + les dossiers d'assets `Content/<quiz>/`. C'est de là qu'UEFN compile, **pas** depuis `verse/`. |
| **`verse/` est un miroir à synchroniser** | Source de vérité tracké = `verse/`. À recopier vers `maps/quizz/Content/` après chaque édition (manuel). |
| **Les dossiers d'assets aussi doivent rester À PLAT dans `Content/`** (pas de dossier parent type `ressources/`) | Un dossier d'assets imbriqué devient un **module Verse `internal`** → inaccessible depuis `quiz_manager` (erreur de compil **3593**). Donc `flags/`, `icons/`, `jeu/`, `lobby/`, … sont enfants directs de `Content/`. |
| **Les noms de dossiers `assets/<quiz>/` sont couplés à l'import UEFN** | Renommer un dossier oblige à réimporter dans UEFN. Les noms du dépôt (`assets/<nom>/`) sont alignés sur ceux du Content (`<nom>/`). |
| **`assets/` est gitignoré et régénérable** | Ne jamais committer le contenu ; seul `assets/README.md` est tracké. |

---

## 4. Où trouver quoi

| Je veux… | Aller dans |
|----------|-----------|
| Comprendre le code du jeu | [`verse/README.md`](./verse/README.md) + [`docs/05-verse/`](./docs/05-verse/) |
| Ajouter / régénérer une banque de questions | [`tools/README.md`](./tools/README.md) → `tools/banks/` |
| Savoir quel dossier d'assets va avec quel quiz | [`assets/README.md`](./assets/README.md) |
| Jouer de zéro à jouable | [`docs/COMMENT-JOUER.md`](./docs/COMMENT-JOUER.md) |
| L'interface Verse (UI, boutons, limites) | [`docs/05-verse/15-interface-verse.md`](./docs/05-verse/15-interface-verse.md) |
| Ce qui reste à faire / les plans | [`docs/07-annexes/`](./docs/07-annexes/) |
