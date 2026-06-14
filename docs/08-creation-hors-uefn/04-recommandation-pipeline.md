# 08.04 — Pipeline recommandé (concret, chiffré)

Le chemin le plus court et fiable pour avoir ta map **créée à l'avance par moi**, puis **importée**.

## 🏁 Vue d'ensemble

```
  [ MOI ]                                   [ TOI, dans UEFN ]
  generate_quiz.py   ──► aperçu + banque Verse + layout
  build_map_obj.py   ──► quiz_map.obj (+ .mtl) + placement_manifest.json
        │                         │
        │  (option D/E)           ▼
        │                  1. Importer le mesh  (FBX/glTF/OBJ)
        └─ build_map.py ─► 2. Placer mesh + repères (script éditeur, si bêta Python)
                                  3. Poser 1 device quiz_manager
                                  4. Coller les modules Verse (section 05)
                                  5. Compiler + tester + publier
```

## ✅ Pipeline « universel » (marche pour tout le monde)

### Étape 1 — Je génère les fichiers (déjà fait)
- `tools/quiz_map.obj` + `tools/quiz_map.mtl` : la **géométrie** (couloir + 4 portails/question).
- `tools/placement_manifest.json` : **positions** des portails, spawn, victoire, device.
- `tools/question_bank.verse.txt` : la **banque** au format Verse.
- 🔁 Pour un autre nombre de questions : je relance `build_map_obj.py` / `generate_quiz.py`.

### Étape 2 — Tu importes la géométrie
- UEFN → **Import** `quiz_map.obj` (ou converti en **FBX/glTF** via Blender si refus de l'OBJ).
- **Generate Collision** ✅, échelle en **cm**, place le mesh à l'**origine** (0,0,0).
- 📖 [`02-mesh-import.md`](./02-mesh-import.md).

### Étape 3 — Tu ajoutes la logique (1 device + Verse)
- Pose **un** device **`quiz_manager`** (compilé depuis la section `05`).
- Colle la **banque** générée dans `MakeQuestions()`.
- Branche les `@editable` ; pour la **détection**, deux choix :
  - **par position** (le joueur franchit la ligne d'un portail) — aucune zone à placer ;
  - **par zones** (si tu préfères) — place 4 mutator zones aux positions du manifeste.
- 📖 [`../05-verse/`](../05-verse/00-architecture-pro.md).

### Étape 4 — Test & publication
- PIE (Alt+P), puis **Launch Session** (multi), puis **publier** (section `06`).

> ⏱️ **Temps estimé** côté UEFN : ~15–30 min (import + 1 device + collage Verse + test).
> Tout le reste (géométrie, positions, banque) est **déjà produit**.

## ⚡ Pipeline « automatisé » (si tu actives le Python scripting)

1. Active le **Python editor scripting** (bêta) dans UEFN.
2. Importe le mesh une fois.
3. Lance **`tools/map/build_map.py`** → place le mesh + tous les **repères** automatiquement.
4. (option **MCP**) connecte le serveur MCP → **je pilote** le placement en direct.
- 📖 [`03-python-et-mcp.md`](./03-python-et-mcp.md).

## 🧩 Ce que je peux refaire/adapter instantanément

| Besoin | Je relance / modifie | Tu réimportes |
|--------|----------------------|---------------|
| Autre **nombre de questions** | `build_map_obj.py --count N` | le nouveau `quiz_map.obj` |
| **Portails plus écartés** | `CONFIG["lane_spacing"]` | idem |
| **Couloir plus long** | `CONFIG["segment_length"]` | idem |
| **3 ou 5 réponses** | `CONFIG["lane_count"]` | idem (+ adapter banque/UI) |
| Nouvelle **banque de questions** | `question_bank.verse.txt` | (pas de réimport mesh) |

## 🧪 Vérification déjà effectuée
- `build_map_obj.py` **exécuté** : 5 questions → `quiz_map.obj` (66,6 m, 20 portails, 640 sommets).
- `generate_quiz.py` **exécuté** : 5 → 66,6 m ; 12 → 138,2 m (banque + config régénérées).
- Les fichiers sont dans **`tools/`**, prêts à l'import.

## 🎯 Décision qui t'appartient
Le seul vrai choix : **assemblage manuel léger** (universel) **ou automatisé** (D/E, bêta).
Dis-moi ton cas et je prépare les fichiers/scripts en conséquence (ex. te sortir directement un
**FBX** au lieu d'OBJ, ou un **convert.py** Blender, ou affiner `build_map.py`).

→ Retour : [`01-panorama-solutions.md`](./01-panorama-solutions.md) · [index](../README.md)
