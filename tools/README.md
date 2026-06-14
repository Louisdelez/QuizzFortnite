# 🛠️ tools/ — Générateurs Python

Scripts qui produisent **les banques de questions**, **les textures d'UI** et **la géométrie de map**.
Sorties : images/audio dans [`../assets/`](../assets/README.md), banques dans [`../verse/`](../verse/README.md).
Vue d'ensemble du pipeline : [`../STRUCTURE.md`](../STRUCTURE.md).

## 📂 Organisation

| Sous-dossier | Contenu | Sortie |
|--------------|---------|--------|
| `lib/`      | Modules **partagés importés** : `quiz_common.py` (helpers images/banques), `country_core/en/es/de/it.py` (données pays multilingues) | — |
| `banks/`    | Un `build_<quiz>.py` **par banque de questions** (35) + `inject_banks.py` | `assets/<quiz>/` + `verse/<quiz>_bank.verse` |
| `textures/` | Générateurs de **textures UI** : HUD, lobby, rangs, résultats, icônes, SFX | `assets/<ui>/` |
| `map/`      | **Géométrie & aperçu** de la map : `generate_quiz.py`, `build_map_obj.py`, `build_map_gltf.py`, `build_map.py` | `*.obj` / `*.glb` / manifeste |
| `lucide_svgs/` | Cache local des SVG Lucide (source des icônes) | — |

> 🔗 **Convention d'import** : les scripts de `banks/` importent les modules partagés via
> `sys.path` pointant sur `../lib`. Si tu déplaces un script entre sous-dossiers, garde cette règle.
>
> 📍 Tous les scripts écrivent via `ROOT = "D:/QuizzFortnite"` (chemins absolus) :
> assets sous `ROOT/assets/…`, banques sous `ROOT/verse/…`. Adapte `ROOT` si le projet change de place.

## 🧩 banks/ — banques de questions

Chaque script télécharge/normalise les images (le cas échéant) et **écrit la banque Verse**.
Mapping complet quiz → dossier d'assets → banque : voir [`../assets/README.md`](../assets/README.md).

```bash
python banks/build_pokemon.py      # ex. : images Pokémon -> assets/pokemon/ + verse/pokemon_bank.verse
python banks/build_flags_pixel.py  # drapeaux pixelisés (source : assets/flags/)
```
`inject_banks.py` assemble les banques multilingues intermédiaires (ex. capitales) dans les `.verse`.

## 🎨 textures/ — interface

```bash
python textures/build_jeu.py      # panneaux arrondis du HUD
python textures/build_lobby.py    # lobby
python textures/build_rangs.py     # 18 emblèmes de rangs
python textures/build_resultats.py  # écran de fin
python textures/build_icons.py             # icônes Lucide (cache lucide_svgs/)
python textures/build_sfx.py               # effets sonores
```

## 🗺️ map/ — géométrie & aperçu

| Script | Rôle | Doc |
|--------|------|-----|
| `generate_quiz.py` | Aperçu ASCII + `layout.json` + extraits Verse (banque, config) | [05-verse/13](../docs/05-verse/13-generateur-externe.md) |
| `build_map_obj.py` | **Géométrie 3D** `quiz_map.obj`/`.mtl` + `placement_manifest.json` | [08/02](../docs/08-creation-hors-uefn/02-mesh-import.md) |
| `build_map_gltf.py`| Variante glTF (`quiz_map.glb` / `quiz_couloir.glb`, textures embarquées) | [08/02](../docs/08-creation-hors-uefn/02-mesh-import.md) |
| `build_map.py` | Script **Python d'éditeur UEFN** : place mesh + repères depuis le manifeste (bêta) | [08/03](../docs/08-creation-hors-uefn/03-python-et-mcp.md) |

```bash
python map/generate_quiz.py                 # banque d'exemple intégrée
python map/generate_quiz.py questions.json  # ta banque (voir format dans la doc)
python map/build_map_obj.py --count 10      # géométrie pour 10 questions
```
> ⚠️ `build_map.py` lit le manifeste dans `tools/map/placement_manifest.json` (`MANIFEST_PATH`),
> là où `build_map_obj.py` l'écrit. À exécuter **dans** UEFN (module `unreal`, Python scripting bêta).

### Fichiers produits par `generate_quiz.py`
| Fichier | Contenu |
|---------|---------|
| `layout.json` | Toutes les positions (cm) : sol, portails, spawn, victoire |
| `question_bank.verse.txt` | Banque de questions au format Verse |
| `builder_config.verse.txt` | Config `@editable` (mêmes nombres que `map_builder.verse`) |

> 🌍 Toutes les solutions de création hors UEFN et d'import : [`../docs/08-creation-hors-uefn/`](../docs/08-creation-hors-uefn/01-panorama-solutions.md).
