# tools/ — Générateurs & build de map

| Script | Rôle | Doc |
|--------|------|-----|
| `generate_quiz.py` | Aperçu ASCII + `layout.json` + extraits Verse (banque, config) | [05-verse/13](../docs/05-verse/13-generateur-externe.md) |
| `build_map_obj.py` | **Génère la géométrie 3D** `quiz_map.obj`/`.mtl` + `placement_manifest.json` | [08/02](../docs/08-creation-hors-uefn/02-mesh-import.md) |
| `build_map.py` | Script **Python d'éditeur UEFN** : place mesh + repères depuis le manifeste (bêta) | [08/03](../docs/08-creation-hors-uefn/03-python-et-mcp.md) |

> 🌍 Pour **toutes les solutions** de création hors UEFN et d'import : [`../docs/08-creation-hors-uefn/`](../docs/08-creation-hors-uefn/01-panorama-solutions.md).

## `generate_quiz.py`
Génère l'aperçu de la map (chemin droit + 4 portails par question) **selon le nombre de questions**,
et produit les extraits Verse à coller.

📖 Documentation complète : [`../docs/05-verse/13-generateur-externe.md`](../docs/05-verse/13-generateur-externe.md)

## `build_map_obj.py`
**Construit la géométrie 3D** de la map (sol, murs, portails colorés) → `quiz_map.obj` + `.mtl`,
et `placement_manifest.json` (positions portails/spawn/victoire/device). Importable dans UEFN.

```bash
python build_map_obj.py             # 5 questions (exemple)
python build_map_obj.py --count 10  # 10 questions
python build_map_obj.py questions.json
```

## `build_map.py`
Script **Python d'éditeur UEFN** (module `unreal`) : place le mesh importé + des repères aux
positions du manifeste. À exécuter **dans** UEFN avec le Python scripting activé (bêta).

### Lancer
```bash
python generate_quiz.py                 # banque d'exemple intégrée
python generate_quiz.py questions.json  # ta banque (voir format dans la doc)
python generate_quiz.py --count 12      # tester la forme avec 12 segments
```
Python 3, aucune dépendance externe.

### Fichiers produits
| Fichier | Contenu |
|---------|---------|
| `layout.json` | Toutes les positions (cm) : sol, portails, spawn, victoire |
| `question_bank.verse.txt` | Banque de questions au format Verse |
| `builder_config.verse.txt` | Config `@editable` (mêmes nombres que `map_builder.verse`) |

### Adapter
- **Questions** : édite `QUESTIONS` dans le script (ou passe un `questions.json`).
- **Forme du parcours** : édite le dict `CONFIG` en haut du script.
- Tout le reste (positions, longueur, dalles) se **recalcule automatiquement**.
