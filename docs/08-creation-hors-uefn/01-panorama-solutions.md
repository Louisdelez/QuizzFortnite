# 08.01 — Panorama : créer des maps hors UEFN & les importer

Analyse de **toutes les solutions** pour créer une map (ou des éléments de map) **en dehors**
d'UEFN, puis l'importer. Avec, pour chacune, la **faisabilité** et si **je (Claude) peux la produire**.

## ⛔ Le point de départ (contrainte fondamentale)

- Un **niveau UEFN = fichier `.umap` binaire** (format Unreal propriétaire). **Impossible** à
  écrire « à la main » de façon fiable hors éditeur.
- On **n'importe pas** un niveau complet « clé en main » dans UEFN. On importe des **briques**
  (meshes, terrain, textures, sons) **ou** on **pilote l'éditeur** par script pour **placer** ces briques.
- Donc « créer la map hors UEFN » = créer des **assets importables** (ce que je peux faire) **+**
  une étape d'**assemblage** dans UEFN (import / script / placement).

## 📊 Tableau comparatif de toutes les solutions

| # | Solution | Ce qu'on crée hors UEFN | Import dans UEFN | Claude peut produire ? | Verdict |
|---|----------|--------------------------|------------------|------------------------|---------|
| **A** | **Mesh statique** (FBX / glTF / OBJ) | la **géométrie** (sol, murs, portails) | ✅ officiel (FBX, glTF) | ✅ **oui** (j'écris OBJ/glTF) | ⭐ **Recommandé** |
| **B** | **Datasmith** (3ds Max, SketchUp, Revit, Rhino) | scène complète (hiérarchie, lumières) | ❌ **non fiable dans UEFN** | partiel | ❌ à éviter pour UEFN |
| **C** | **Landscape heightmap** (Gaea, World Machine, PNG) | le **terrain** (relief) | ✅ via Landscape Import | ✅ oui (PNG niveaux de gris) | ✅ pour du relief |
| **D** | **Python éditeur** (`unreal`, `init_unreal.py`) | un **script** qui place tout dans l'éditeur | ✅ s'exécute dans UEFN | ✅ **oui** (j'écris le script) | ⚠️ **bêta/accès restreint** |
| **E** | **Serveur MCP UEFN** (Claude → UEFN) | Claude **pilote** l'éditeur en direct | ✅ via un listener dans UEFN | ✅ **oui, littéralement** | ⚠️ setup + bêta requis |
| **F** | **Scene Graph / Prefabs** (bêta 2025) | un **prefab** réutilisable | s'édite **dans** UEFN | non (UEFN) | ◽ complément |
| **G** | **Verse runtime** (`SpawnProp`) | du **code** qui génère au lancement | ✅ (déjà couvert §05) | ✅ oui | ◽ (runtime, pas « à l'avance ») |
| **H** | **Écrire `.umap`/`.uasset`** à la main | le niveau binaire | — | ❌ **non** (binaire propriétaire) | ❌ impossible |
| **I** | **Cesium for UEFN** | données géo réelles | ✅ via plugin Cesium | non | ◽ niche |

> 🟢 **Conclusion express** : les seules voies « hors UEFN » réellement fiables sont
> **A (mesh)**, **C (terrain)** et **D/E (script/MCP)**. Pour une map de quiz **plate**, c'est
> **A** (géométrie) + l'**assemblage** dans UEFN (manuel léger, ou D/E si tu actives le scripting).

## 🔍 Détail par solution

### A — Import de mesh statique (FBX / glTF / OBJ) ⭐
- UEFN importe officiellement **FBX** et a un **large support glTF**. **OBJ** : passe mieux
  **converti en FBX/glTF** (Blender, 30 s).
- On importe la **géométrie** (sol, murs, 4 portails par question). UEFN **génère la collision**
  automatiquement. Orientation : avant = **+X**.
- ✅ **Je le fais déjà** : `tools/build_map_obj.py` produit `quiz_map.obj` (+ manifeste).
- ⚠️ Limite : un mesh = **décor**. Les **devices** (quiz_manager) et la **logique Verse** s'ajoutent
  **ensuite** dans UEFN (voir [`04-recommandation-pipeline.md`](./04-recommandation-pipeline.md)).
- 📖 Détail : [`02-mesh-import.md`](./02-mesh-import.md).

### B — Datasmith / scène complète ❌ (pour UEFN)
- Datasmith importe des **scènes entières** (3ds Max, SketchUp, Revit, Rhino, glTF) dans **Unreal**.
- **Mais** : c'est un plugin **d'Unreal Engine**, et UEFN signale des incompatibilités
  (« FBXSceneImportData class not supported »). L'import de **scène/hiérarchie** n'est **pas
  fiable** dans UEFN.
- ➡️ **À éviter** pour UEFN. Reste l'import **mesh par mesh** (solution A).

### C — Landscape (heightmap) ✅ pour le relief
- On génère un **heightmap** (image niveaux de gris : noir = bas, blanc = haut) avec Gaea,
  World Machine, Houdini… ou **directement un PNG** que je peux écrire.
- Import via **Landscape → Import from File**. UE supporte les terrains externes.
- ⚠️ UEFN a des **soucis connus d'export** de heightmap (l'import passe généralement).
- ➡️ Pertinent si tu veux un **terrain accidenté**. Pour un quiz **plat en couloir**, peu utile.

### D — Python éditeur (`unreal` / `init_unreal.py`) ⚠️ bêta
- UEFN peut exécuter du **Python d'éditeur** : module `unreal`, `init_unreal.py` lancé à
  l'ouverture, fonctions `spawn_actor`, `set_actor_transform`, gestion d'assets…
- ➡️ Un **script que j'écris** place **tout** dans l'éditeur (mesh + repères + potentiellement devices).
  C'est « créer la map à l'avance » **au moment de l'édition** (pas au runtime).
- ⚠️ Le **Python éditeur d'UEFN est en bêta / accès restreint**, et le placement de **devices**
  spécifiques peut être limité selon les classes exposées.
- 📖 Détail + script : [`03-python-et-mcp.md`](./03-python-et-mcp.md).

### E — Serveur MCP UEFN (Claude pilote l'éditeur) ⚠️ setup
- Projet communautaire (`uefn-mcp-server`) : un **listener** tourne **dans** UEFN, un **serveur
  MCP** dialogue avec **Claude Code**. Claude appelle `spawn_actor`, `execute_python`, etc.
- ➡️ C'est **littéralement** « c'est Claude qui construit la map » dans ton éditeur.
- ⚠️ Requiert : UEFN **ouvert**, **Python scripting activé** (expérimental, v40+), le **listener**
  lancé, le serveur MCP installé **et enregistré dans cette session Claude Code**. **Non headless**.
- 📖 Détail complet de l'écosystème MCP : [`05-mcp-uefn.md`](./05-mcp-uefn.md) ·
  mise en place pas-à-pas : [`06-mcp-setup.md`](./06-mcp-setup.md). Vue Python : [`03-python-et-mcp.md`](./03-python-et-mcp.md).

### F — Scene Graph / Prefabs (bêta 2025)
- On crée un **prefab** (ex. « segment de question ») = un asset réutilisable ; UEFN génère une
  **classe Verse** du prefab → on instancie N segments **en Verse** (boucle `for`).
- S'édite **dans** UEFN (pas vraiment « hors »), mais excellent pour **dupliquer** proprement.
- ➡️ Complément utile à A : importer le mesh du segment, en faire un prefab, l'instancier N fois.

### G — Verse runtime (`SpawnProp`)
- Génère la géométrie **au lancement** par code (déjà documenté en [`../05-verse/12`](../05-verse/12-generation-procedurale.md)).
- ➡️ Ce n'est **pas** « créé à l'avance » (tu l'as écarté), mais c'est l'alternative **zéro import**.

### H — Écrire `.umap` / `.uasset` à la main ❌
- Format **binaire propriétaire**, versionné, avec références internes. **Non réalisable** hors éditeur.

### I — Cesium for UEFN
- Plugin pour injecter des **données géospatiales réelles** (villes, terrain monde réel). Niche,
  hors sujet pour un quiz.

## 🧭 Que retenir pour TON cas (quiz, créé à l'avance, par moi)

1. **Géométrie** → solution **A** : je génère le mesh (déjà fait : `quiz_map.obj`). ✅ universel.
2. **Assemblage** → deux options :
   - **Manuel léger** : tu importes le mesh + poses **1 device** + colles le **Verse** (positions
     fournies par le manifeste). Marche **pour tout le monde**.
   - **Automatisé (D/E)** : si tu actives le **Python scripting UEFN** (+ MCP), **je place tout**
     via un script. « Claude construit la map » au sens fort. (Bêta/setup requis.)

➡️ Pipeline concret et chiffré : [`04-recommandation-pipeline.md`](./04-recommandation-pipeline.md).

→ Suite : [`02-mesh-import.md`](./02-mesh-import.md)
