# 08.02 — Créer la map en mesh & l'importer (FBX / glTF / OBJ)

La voie **recommandée et universelle** : créer la **géométrie** hors UEFN, puis l'importer comme
**static mesh**. C'est ce que je produis déjà avec `tools/build_map_obj.py`.

## 📦 Formats supportés par UEFN

| Format | Support UEFN | Remarque |
|--------|--------------|----------|
| **FBX** | ✅ Officiel (le plus sûr) | Format de référence pour les static meshes. |
| **glTF / GLB** | ✅ Large support | Bon format ouvert ; `.gltf` = JSON + `.bin`. |
| **OBJ** | ⚠️ Variable | Souvent OK ; au besoin, **convertir en FBX/glTF** (Blender, 30 s). |

> ✅ **Recommandation** : viser **FBX** ou **glTF**. Mon générateur sort de l'**OBJ** (lisible,
> que je peux écrire en clair) → si UEFN refuse l'OBJ, **Blender** le convertit en FBX en quelques
> secondes (voir plus bas).

## 🛠️ Ce que je produis (déjà fait)

`tools/build_map_obj.py` génère, à partir du **nombre de questions** :
- **`quiz_map.obj`** + **`quiz_map.mtl`** : sol, murs latéraux, séparateurs de lane, et **4
  portails colorés** (A=rouge, B=bleu, C=vert, D=jaune) par question, dalles de départ/arrivée.
- **`placement_manifest.json`** : positions exactes (cm) des **portails**, du **spawn**, de la
  **victoire** et du **quiz_manager** → pour placer la logique ensuite.

Exemple (5 questions) : couloir de **66,6 m**, **20 portails**, **640 sommets**.
Change le nombre de questions → tout est recalculé.

## 🔄 Si conversion nécessaire (OBJ → FBX/glTF via Blender)

```
1. Ouvre Blender (gratuit)
2. File > Import > Wavefront (.obj)  →  quiz_map.obj
3. Vérifie l'échelle (UEFN = cm ; Blender = m → applique un facteur si besoin)
4. File > Export > FBX (.fbx)   [ou glTF 2.0 (.glb/.gltf)]
   - Forward Axis : +X   (UEFN attend l'avant en +X)
   - Apply Transform : coché
```
> ⚙️ En **ligne de commande** : `blender --background --python convert.py` peut automatiser
> l'import OBJ → export FBX (je peux te fournir ce `convert.py` si tu utilises Blender).

## 📥 Import dans UEFN (étapes officielles)

1. UEFN → **Content Browser** → **Import** (ou glisser-déposer le fichier).
2. Choisis `quiz_map.fbx` (ou `.gltf`/`.obj`).
3. Options d'import :
   - **Generate Collision** : ✅ (UEFN génère la collision physique automatiquement).
   - **Échelle** : vérifie que 1 unité = 1 cm (sinon ajuste l'**Import Uniform Scale**).
   - **Matériaux** : importe les matériaux (couleurs des portails) ou réassigne-les ensuite.
4. Valide → un **Static Mesh** apparaît dans le Content Browser.
5. **Glisse** le mesh dans le Viewport → place-le à l'**origine** (0,0,0) pour coller au manifeste.

## ⚠️ Limites importantes (à comprendre)

- Un mesh importé = **décor + collision**. Il **ne contient aucune logique** ni device.
- Les **portails du mesh sont visuels** : la **détection de réponse** et la **progression** se
  font ensuite via :
  - le **device `quiz_manager`** + la **logique Verse** (section `05`), en utilisant les
    **positions du manifeste** ;
  - ou la détection **par position** (le joueur franchit la ligne d'un portail) — déjà décrite en
    [`../05-verse/12-generation-procedurale.md`](../05-verse/12-generation-procedurale.md), sauf
    qu'ici la géométrie est **importée** au lieu d'être spawnée.

## 🎨 Conseils mesh « simple et design »

- Garde une **géométrie épurée** (boîtes nettes) — le générateur le fait déjà.
- **Couleurs par lane** cohérentes avec l'UI Verse (A=rouge…D=jaune).
- **Pivot à l'origine** et **avant = +X** pour un placement sans surprise.
- Évite un mesh **trop dense** (collision auto plus lourde) : un quiz n'a pas besoin de millions
  de polygones.

## 🧩 Variante « segment réutilisable » (combine avec Prefabs)

Au lieu d'un mesh géant, génère **un seul segment** (1 question, 4 portails) et, dans UEFN,
transforme-le en **Prefab Scene Graph** → instancie **N segments** en Verse. Tu gagnes en
modularité et en poids. Voir [`01-panorama-solutions.md`](./01-panorama-solutions.md) §F.

→ Suite : [`03-python-et-mcp.md`](./03-python-et-mcp.md)
