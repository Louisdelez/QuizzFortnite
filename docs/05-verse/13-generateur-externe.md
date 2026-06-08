# 05.13 — Générateur externe (`tools/generate_quiz.py`)

Un outil **que l'on exécute hors UEFN** pour produire/adapter la map **instantanément** selon le
nombre de questions. Il calcule toute la géométrie, l'affiche, et génère les **extraits Verse**
prêts à coller. C'est le moyen le plus rapide d'**itérer** et de **visualiser** avant de builder.

> 📂 Fichier : [`../../tools/generate_quiz.py`](../../tools/generate_quiz.py) — Python 3, **zéro dépendance**.

## 🎯 À quoi il sert

1. **Visualiser** le parcours en ASCII (vue de dessus) avant de toucher UEFN.
2. **Calculer** toutes les positions (sol, portails, spawn, victoire) → `layout.json`.
3. **Générer** la banque de questions au format Verse → `question_bank.verse.txt`.
4. **Générer** la config (mêmes nombres que le builder runtime) → `builder_config.verse.txt`.
5. **Adapter** : un seul fichier à éditer pour changer questions/dimensions.

> 🔗 Les **mêmes formules** sont utilisées ici et dans `map_builder.verse`
> ([`12-generation-procedurale.md`](./12-generation-procedurale.md)) → l'aperçu Python
> correspond **exactement** à ce que le builder construit en jeu.

## ▶️ Utilisation

```bash
# Avec la banque d'exemple intégrée :
python generate_quiz.py

# Avec ta propre banque (fichier JSON) :
python generate_quiz.py questions.json

# Juste pour tester la forme avec N segments "placeholder" :
python generate_quiz.py --count 12
```

### Format de `questions.json`
```json
[
  { "q": "Combien de joueurs max en BR classique ?",
    "a": ["50", "100", "150", "200"], "correct": 1, "points": 100 },
  { "q": "Quel materiau est le plus resistant ?",
    "a": ["Bois", "Pierre", "Metal", "Or"], "correct": 2, "points": 150 }
]
```
- `correct` = index **0..3** (0=A, 1=B, 2=C, 3=D).
- `points` = optionnel (défaut 100).

## 🖥️ Exemple de sortie (5 questions)

```
================================================================
 GENERATEUR DE MAP QUIZZ FORTNITE
================================================================
  Questions        : 5
  Portails (total) : 20  (4 par question)
  Longueur parcours: 66.6 m  (6656.0 cm)
  Largeur sol      : 1600.0 cm
  Dalles de sol    : 52
  Spawn            : {'x': -384.0, 'y': 0.0, 'z': 0.0}
  Victoire         : {'x': 5504.0, 'y': 0.0, 'z': 0.0}

   DEPART  (spawn)
     |
  Q1  Combien de joueurs max en BR classique ?
     [A ]  [B*]  [C ]  [D ]   ( * = bonne reponse )
     |
  Q2  Quel materiau est le plus resistant ?
     [A ]  [B ]  [C*]  [D ]   ( * = bonne reponse )
     |
  ...
   ARRIVEE  (victoire)
```

Et pour **12 questions** : longueur **138,2 m**, **48 portails**, **108 dalles** — recalculé
automatiquement. **Tu ne modifies qu'une chose : la liste des questions.**

## 🔧 Les paramètres (en haut du script, dict `CONFIG`)

```python
CONFIG = {
    "segment_length": 1024.0,   # longueur d'une question (X)
    "lane_spacing":    300.0,   # ecart entre portails (Y)
    "lane_count":         4,    # nombre de reponses
    "floor_tile_size":  512.0,  # taille d'une dalle
    "gate_ratio":        0.85,  # position des portails dans le segment
    "start_pad_length": 768.0,  # sas de depart
    "end_pad_length":   768.0,  # salle d'arrivee
    "floor_margin":     200.0,  # marge de sol
}
```

> ⚠️ **Garde ces valeurs identiques** à celles de `map_builder.verse`. Le fichier
> `builder_config.verse.txt` généré contient justement ces nombres au format `@editable` pour
> que tu les recopies **sans risque d'écart**.

## 🔁 Le workflow recommandé

```
1. Édite tes questions (QUESTIONS dans le script, ou questions.json)
2. (option) Ajuste CONFIG pour la forme du parcours
3. python generate_quiz.py
4. Regarde l'aperçu ASCII → la map te convient ?
5. Copie question_bank.verse.txt   → dans quiz_manager.verse (MakeQuestions)
6. Copie builder_config.verse.txt  → dans map_builder / quiz_manager (@editable)
7. Compile (Ctrl+Shift+B) et teste : la map se génère selon N
```

## 🤖 « Que tu puisses le faire facilement et l'adapter »

Cet outil est conçu pour que **n'importe quelle adaptation soit triviale** :
- **Plus de questions** → ajoute des entrées, relance le script. La map s'allonge seule.
- **Nouveau thème** → change les textes, rien d'autre.
- **Autre forme** → un nombre dans `CONFIG`.
- **Besoin d'un autre format de sortie** (CSV, autre moteur, positions absolues…) → le script est
  court et lisible ; on ajoute une fonction `verse_xxx()` / `export_xxx()` en quelques lignes.

> 💡 Tu peux me demander de **regénérer** la map pour un nombre de questions donné, d'**ajouter
> des questions**, ou de **changer la disposition** : je modifie le script / la banque et je
> relance — la sortie (aperçu + extraits Verse) est immédiate.

## 📦 Fichiers produits (dans `tools/`)
| Fichier | Contenu | Usage |
|---------|---------|-------|
| `layout.json` | Toutes les positions (cm) | Vérif / import / debug |
| `question_bank.verse.txt` | Banque au format Verse | Coller dans `quiz_manager.verse` |
| `builder_config.verse.txt` | Config `@editable` | Coller dans le builder |

→ Retour : [`12-generation-procedurale.md`](./12-generation-procedurale.md) · [`00-architecture-pro.md`](./00-architecture-pro.md)
