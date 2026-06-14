# -*- coding: utf-8 -*-
"""
build_map.py — Script Python d'EDITEUR pour UEFN (module `unreal`).

But : placer A L'AVANCE, dans l'editeur, les elements de la map quiz a partir du
manifeste (placement_manifest.json) : le static mesh importe + des repere-acteurs
aux positions des portails / spawn / victoire / quiz_manager.

=> A executer DANS UEFN (console Python ou via init_unreal.py), pas au runtime du jeu.

PREREQUIS :
  - UEFN avec le **Python editor scripting** ACTIVE (fonctionnalite beta / acces restreint).
  - Le mesh quiz_map deja importe dans le projet (voir 08.02), ou adapte MESH_PATH.
  - placement_manifest.json accessible (mets son chemin dans MANIFEST_PATH).

ATTENTION (honnetete technique) :
  - L'API d'editeur UEFN evolue et est restreinte ; certaines classes de **devices**
    ne sont pas forcement instanciables par script. Ce fichier est un TEMPLATE :
    la partie "static mesh + reperes" est la plus fiable ; la partie "device" est a
    adapter selon les classes exposees par TON UEFN.
  - Verifie les noms d'API (`unreal.EditorLevelLibrary`, `spawn_actor_from_class`, etc.)
    dans la doc "Scripting the Unreal Editor Using Python".
"""

import json
import unreal  # disponible uniquement dans l'editeur
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

# --- A ADAPTER ---
MANIFEST_PATH = f"{_ROOT}/tools/map/placement_manifest.json"
MESH_PATH = "/Game/Imported/quiz_map"          # chemin de l'asset mesh importe
MARKER_MESH = "/Engine/BasicShapes/Cube"        # petit cube repere (fallback)
# -----------------


def load_manifest(path):
    with open(path, "r", encoding="utf-8") as f:
        return json.load(f)


def vec(d):
    # Manifeste en cm, axe +X avant. unreal.Vector attend des cm aussi.
    return unreal.Vector(float(d["x"]), float(d["y"]), float(d["z"]))


def spawn_static_mesh(asset_path, location, rotation=None, label=None, scale=None):
    rotation = rotation or unreal.Rotator(0.0, 0.0, 0.0)
    mesh = unreal.EditorAssetLibrary.load_asset(asset_path)
    if mesh is None:
        unreal.log_warning(f"Asset introuvable : {asset_path}")
        return None
    actor = unreal.EditorLevelLibrary.spawn_actor_from_object(mesh, location, rotation)
    if actor and label:
        actor.set_actor_label(label)
    if actor and scale:
        actor.set_actor_scale3d(unreal.Vector(*scale))
    return actor


def main():
    manifest = load_manifest(MANIFEST_PATH)

    # 1) Le static mesh de la map (couloir + portails), place a l'origine.
    spawn_static_mesh(MESH_PATH, unreal.Vector(0.0, 0.0, 0.0), label="QuizMap_Geometry")

    # 2) Reperes de portails (petits cubes) — utiles pour caler la logique Verse.
    #    (Remplace MARKER_MESH par tes propres props/portails si tu en as.)
    for p in manifest.get("portals", []):
        label = f"Portal_Q{p['segment']+1}_{p['letter']}"
        a = spawn_static_mesh(MARKER_MESH, vec(p), label=label, scale=(0.25, 0.25, 0.25))

    # 3) Repere de spawn et de victoire.
    spawn_static_mesh(MARKER_MESH, vec(manifest["spawn"]), label="Marker_Spawn", scale=(0.5, 0.5, 0.5))
    spawn_static_mesh(MARKER_MESH, vec(manifest["victory"]), label="Marker_Victory", scale=(0.5, 0.5, 0.5))

    # 4) (A ADAPTER) Repere de l'emplacement du quiz_manager.
    spawn_static_mesh(MARKER_MESH, vec(manifest["quiz_manager"]), label="Marker_QuizManager", scale=(0.5, 0.5, 0.5))

    # 5) (OPTIONNEL / AVANCE) Placer un VRAI device par script :
    #    necessite que la classe du device soit exposee a Python dans TON UEFN.
    #    Exemple generique (a verifier) :
    #
    #    device_class = unreal.load_class(None, "/Script/FortniteRuntime.BuildingActor")  # exemple
    #    if device_class:
    #        unreal.EditorLevelLibrary.spawn_actor_from_class(
    #            device_class, vec(manifest["quiz_manager"]), unreal.Rotator(0,0,0))

    unreal.EditorLevelLibrary.save_current_level()
    unreal.log("build_map.py : placement termine.")


if __name__ == "__main__":
    main()
