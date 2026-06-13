# 08.03 — Automatiser : Python éditeur & serveur MCP (Claude construit la map)

Les deux voies où **un script** (ou **moi, Claude**) **place** les éléments dans l'éditeur — la
forme la plus aboutie de « créer la map à l'avance ». ⚠️ **Bêta / setup requis.**

## 🐍 Voie D — Python d'éditeur UEFN (`unreal`)

### Principe
UEFN peut exécuter du **Python d'éditeur** (le module `unreal`) :
- `init_unreal.py` s'exécute **à l'ouverture** du projet.
- API : `spawn_actor_from_object`, `spawn_actor_from_class`, `set_actor_transform`,
  gestion d'assets (`EditorAssetLibrary`), sauvegarde de niveau, etc.
- ➡️ Un **script que j'écris** place le **mesh** + des **repères** (et potentiellement des
  **devices**) **au moment de l'édition**. La map existe ensuite comme acteurs **pré-placés**.

### Ce que j'ai produit
**`tools/map/build_map.py`** : lit `placement_manifest.json` et place dans l'éditeur :
- le **static mesh** du couloir (importé) à l'origine,
- des **cubes-repères** aux positions des **20 portails**, du **spawn**, de la **victoire** et du
  **quiz_manager**,
- puis **sauvegarde** le niveau.

### Comment l'exécuter
```
1. Active le Python editor scripting dans UEFN (Plugins / accès bêta).
2. Importe le mesh quiz_map (voir 08.02) ; note son chemin d'asset.
3. Ouvre la console Python d'UEFN (ou place le script dans init_unreal.py).
4. Adapte MANIFEST_PATH et MESH_PATH en haut de build_map.py.
5. Exécute → les acteurs sont placés et le niveau sauvegardé.
```

### ⚠️ Limites honnêtes
- Le **Python éditeur d'UEFN est en bêta / accès restreint** (pas garanti sur tous les comptes).
- **Placer un vrai device** (ex. `quiz_manager`) par script suppose que sa **classe soit exposée**
  à Python dans ton UEFN — ce n'est **pas toujours** le cas. La partie « mesh + repères » est la
  plus fiable ; la partie « device » est un **template à adapter**.
- Vérifie les noms d'API dans **« Scripting the Unreal Editor Using Python »** (doc Epic).

## 🤖 Voie E — Serveur MCP UEFN (Claude pilote l'éditeur en direct)

### Principe
Un projet communautaire (**`uefn-mcp-server`**) connecte **Claude Code** à **UEFN** :
- un **listener** (`uefn_listener.py`) tourne **dans** l'éditeur (exécute les appels `unreal.*`
  sur le thread principal),
- un **serveur MCP** (`mcp_server.py`) tourne à côté et communique en HTTP,
- Claude appelle des outils : `spawn_actor`, `delete_actors`, `set_actor_transform`,
  `execute_python` (Python arbitraire), outils d'assets, de niveau, de viewport… (~28 outils).

➡️ C'est **littéralement** « **c'est Claude qui construit la map** » : je t'enverrais les
commandes qui placent le mesh, les portails, le device, etc., **dans ton éditeur ouvert**.

### Prérequis (ton côté)
- UEFN **ouvert** avec le **Python scripting activé** (bêta).
- Le **listener** lancé dans UEFN + le **serveur MCP** installé (`pip install mcp`).
- **Claude Code** connecté à ce serveur MCP.
- ⚠️ **Non headless** : UEFN doit tourner sur ta machine ; ce n'est **pas** une compilation
  « hors ligne ». C'est de l'**automatisation de TON éditeur**.

### Ce que ça change pour toi
- Avec ce setup, je peux **régénérer/placer** la map à la demande (« mets 12 questions »,
  « écarte les portails ») et **piloter** la construction, pas seulement fournir des fichiers.
- Sans ce setup, on reste sur **A (mesh) + assemblage manuel léger** — qui marche partout.

## 🧭 Quelle voie choisir ?

| Tu veux… | Voie | Effort de setup |
|----------|------|-----------------|
| Que ça marche **partout, simplement** | **A** (mesh) + pose 1 device | 🟢 faible |
| Que **je place tout** via un script que tu lances | **D** (`build_map.py`) | 🟠 moyen (bêta Python) |
| Que **je construise en direct** dans ton éditeur | **E** (MCP) | 🔴 élevé (listener + MCP + bêta) |

> 💡 **Mon conseil** : commence par **A** (tu as déjà `quiz_map.obj` + le manifeste). Si tu veux
> ensuite automatiser, on active **D**, puis éventuellement **E** pour du pilotage direct.

## 🔐 Sécurité / réalisme
- Les outils MCP exécutent du **code arbitraire** dans ton éditeur : à n'utiliser qu'avec des
  scripts que tu comprends/valides.
- Le scripting éditeur peut **modifier/casser** un niveau : **sauvegarde** ton projet avant.

→ Suite : [`04-recommandation-pipeline.md`](./04-recommandation-pipeline.md)
