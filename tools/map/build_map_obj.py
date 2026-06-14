#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
build_map_obj.py — Construit A L'AVANCE la geometrie de la map Quizz Fortnite.

Genere un vrai modele 3D (.obj + .mtl) du parcours : chemin droit, murs, et
4 portails colores par question. Importable dans UEFN comme static mesh.
Produit aussi un manifeste de placement (portails, spawn, victoire, device).

=> C'est MOI (le script) qui cree la map. Tu changes le nombre de questions,
   tu relances, la map est reconstruite.

Usage :
    python build_map_obj.py                 # banque d'exemple (5 questions)
    python build_map_obj.py --count 10      # 10 questions
    python build_map_obj.py questions.json  # ta banque

Sorties (dans tools/) :
    quiz_map.obj            geometrie (a importer dans UEFN)
    quiz_map.mtl            materiaux/couleurs
    placement_manifest.json positions des portails / spawn / victoire / device

Unites : centimetres (comme UEFN). Axe +X = avant, +Y = lateral, +Z = haut.
Aucune dependance externe.
"""

import json
import math
import sys

CONFIG = {
    "segment_length": 1024.0,
    "lane_spacing":    300.0,
    "lane_count":         4,
    "gate_ratio":        0.85,
    "start_pad_length": 768.0,
    "end_pad_length":   768.0,
    "floor_margin":     200.0,
    "floor_thickness":   20.0,
    "wall_height":      350.0,
    "wall_thickness":    20.0,
    "portal_width":     220.0,   # largeur libre d'un portail
    "portal_height":    300.0,   # hauteur du portail
    "frame_thickness":   40.0,   # epaisseur des montants/linteau
    "lane_dividers":    True,    # petits murs entre les lanes (aide a choisir)
}

LETTERS = ["A", "B", "C", "D", "E", "F"]
# Couleurs RGB (0..1) par lane : A=rouge, B=bleu, C=vert, D=jaune
LANE_COLORS = [(0.85, 0.15, 0.15), (0.15, 0.35, 0.85),
               (0.15, 0.70, 0.25), (0.90, 0.80, 0.15),
               (0.70, 0.20, 0.70), (0.20, 0.70, 0.70)]

QUESTIONS = [
    {"q": "Combien de joueurs max en BR classique ?", "a": ["50", "100", "150", "200"], "correct": 1},
    {"q": "Quel materiau est le plus resistant ?", "a": ["Bois", "Pierre", "Metal", "Or"], "correct": 2},
    {"q": "Comment s'appelle le vehicule de depart ?", "a": ["Battle Bus", "Sky Van", "War Jet", "Combat Cab"], "correct": 0},
    {"q": "Quelle est la monnaie premium ?", "a": ["Or", "V-Bucks", "Credits", "Gemmes"], "correct": 1},
    {"q": "Quel objet fait danser les ennemis ?", "a": ["Boogie Bomb", "Grenade", "Piege", "Mur"], "correct": 0},
]


class ObjBuilder:
    """Accumule des boites et ecrit un .obj + .mtl."""
    def __init__(self):
        self.vlines = []      # vertices
        self.flines = []      # faces (avec usemtl)
        self.vcount = 0
        self.materials = {}   # name -> (r,g,b)

    def mat(self, name, rgb):
        self.materials[name] = rgb
        return name

    def box(self, center, size, material):
        cx, cy, cz = center
        sx, sy, sz = size
        hx, hy, hz = sx / 2, sy / 2, sz / 2
        verts = [
            (cx - hx, cy - hy, cz - hz), (cx + hx, cy - hy, cz - hz),
            (cx + hx, cy + hy, cz - hz), (cx - hx, cy + hy, cz - hz),
            (cx - hx, cy - hy, cz + hz), (cx + hx, cy - hy, cz + hz),
            (cx + hx, cy + hy, cz + hz), (cx - hx, cy + hy, cz + hz),
        ]
        b = self.vcount
        for (x, y, z) in verts:
            self.vlines.append(f"v {x:.2f} {y:.2f} {z:.2f}")
        # 6 quads (indices 1-based, decales de b)
        quads = [(1, 2, 3, 4), (5, 8, 7, 6), (1, 5, 6, 2),
                 (2, 6, 7, 3), (3, 7, 8, 4), (4, 8, 5, 1)]
        self.flines.append(f"usemtl {material}")
        for q in quads:
            self.flines.append("f " + " ".join(str(b + i) for i in q))
        self.vcount += 8

    def triangles(self):
        return len(self.flines and [l for l in self.flines if l.startswith("f ")]) * 2

    def write(self, obj_path, mtl_path):
        with open(mtl_path, "w", encoding="utf-8") as f:
            for name, (r, g, b) in self.materials.items():
                f.write(f"newmtl {name}\nKd {r:.3f} {g:.3f} {b:.3f}\nKa 0 0 0\nKs 0 0 0\n\n")
        with open(obj_path, "w", encoding="utf-8") as f:
            f.write(f"mtllib {mtl_path.split('/')[-1].split(chr(92))[-1]}\n")
            f.write("\n".join(self.vlines))
            f.write("\n")
            f.write("\n".join(self.flines))
            f.write("\n")


def lane_y(i, cfg):
    return (i - (cfg["lane_count"] - 1) / 2.0) * cfg["lane_spacing"]


def gate_x(q, cfg):
    return q * cfg["segment_length"] + cfg["segment_length"] * cfg["gate_ratio"]


def build(questions, cfg):
    n = len(questions)
    floor_width = cfg["lane_count"] * cfg["lane_spacing"] + 2 * cfg["floor_margin"]
    x_start = -cfg["start_pad_length"]
    x_end = n * cfg["segment_length"] + cfg["end_pad_length"]
    length = x_end - x_start

    ob = ObjBuilder()
    m_floor = ob.mat("floor", (0.55, 0.57, 0.60))
    m_wall = ob.mat("wall", (0.28, 0.30, 0.34))
    m_start = ob.mat("start_pad", (0.20, 0.55, 0.95))
    m_finish = ob.mat("finish_pad", (0.95, 0.75, 0.10))
    lane_mats = []
    for i in range(cfg["lane_count"]):
        r, g, b = LANE_COLORS[i % len(LANE_COLORS)]
        lane_mats.append(ob.mat(f"portal_{LETTERS[i]}", (r, g, b)))

    # --- Sol ---
    ob.box((x_start + length / 2, 0.0, -cfg["floor_thickness"] / 2),
           (length, floor_width, cfg["floor_thickness"]), m_floor)

    # --- Dalle de depart et d'arrivee (couleurs reperes) ---
    ob.box((x_start + cfg["start_pad_length"] / 2, 0.0, 0.6),
           (cfg["start_pad_length"], floor_width, 6.0), m_start)
    ob.box((n * cfg["segment_length"] + cfg["end_pad_length"] / 2, 0.0, 0.6),
           (cfg["end_pad_length"], floor_width, 6.0), m_finish)

    # --- Murs lateraux ---
    for side in (-1, 1):
        ob.box((x_start + length / 2, side * floor_width / 2, cfg["wall_height"] / 2),
               (length, cfg["wall_thickness"], cfg["wall_height"]), m_wall)

    # --- Portails + dividers par segment ---
    manifest_portals = []
    fw = cfg["frame_thickness"]
    pw = cfg["portal_width"]
    ph = cfg["portal_height"]
    for q_index, q in enumerate(questions):
        gx = gate_x(q_index, cfg)
        for i in range(cfg["lane_count"]):
            ly = lane_y(i, cfg)
            mat = lane_mats[i]
            # 2 montants
            ob.box((gx, ly - pw / 2 - fw / 2, ph / 2), (fw, fw, ph), mat)
            ob.box((gx, ly + pw / 2 + fw / 2, ph / 2), (fw, fw, ph), mat)
            # linteau
            ob.box((gx, ly, ph + fw / 2), (fw, pw + 2 * fw, fw), mat)
            manifest_portals.append({
                "segment": q_index, "answer_index": i, "letter": LETTERS[i],
                "is_correct": (i == q["correct"]),
                "x": round(gx, 1), "y": round(ly, 1), "z": 0.0,
            })
        # dividers entre lanes (petits murs le long de X dans le segment)
        if cfg["lane_dividers"]:
            seg_x0 = q_index * cfg["segment_length"]
            div_len = cfg["segment_length"] * 0.5
            div_cx = seg_x0 + cfg["segment_length"] * 0.6
            for i in range(cfg["lane_count"] - 1):
                dy = (lane_y(i, cfg) + lane_y(i + 1, cfg)) / 2
                ob.box((div_cx, dy, cfg["wall_height"] * 0.25),
                       (div_len, cfg["wall_thickness"], cfg["wall_height"] * 0.5), m_wall)

    dims = {
        "questions": n, "lanes": cfg["lane_count"],
        "length_cm": round(length, 1), "length_m": round(length / 100, 1),
        "width_cm": round(floor_width, 1),
        "portals_total": n * cfg["lane_count"],
        "vertices": ob.vcount,
    }
    manifest = {
        "config": cfg, "dims": dims,
        "spawn": {"x": round(x_start + cfg["start_pad_length"] / 2, 1), "y": 0.0, "z": 100.0},
        "victory": {"x": round(n * cfg["segment_length"] + cfg["end_pad_length"] / 2, 1), "y": 0.0, "z": 100.0},
        "quiz_manager": {"x": round(x_start + 50, 1), "y": round(floor_width / 2 + 100, 1), "z": 100.0},
        "portals": manifest_portals,
    }
    return ob, manifest, dims


def main():
    argv = sys.argv
    if len(argv) >= 2 and argv[1] == "--count":
        n = int(argv[2]) if len(argv) >= 3 else 5
        questions = [{"q": f"Q{k+1}", "a": ["A", "B", "C", "D"], "correct": k % 4} for k in range(n)]
    elif len(argv) >= 2:
        with open(argv[1], "r", encoding="utf-8") as f:
            questions = json.load(f)
    else:
        questions = QUESTIONS

    ob, manifest, dims = build(questions, CONFIG)
    ob.write("quiz_map.obj", "quiz_map.mtl")
    with open("placement_manifest.json", "w", encoding="utf-8") as f:
        json.dump(manifest, f, ensure_ascii=False, indent=2)

    print("=" * 60)
    print(" MAP CONSTRUITE (geometrie pre-fabriquee)")
    print("=" * 60)
    print(f"  Questions     : {dims['questions']}")
    print(f"  Portails      : {dims['portals_total']} ({dims['lanes']} par question)")
    print(f"  Longueur      : {dims['length_m']} m")
    print(f"  Largeur       : {dims['width_cm']} cm")
    print(f"  Sommets (obj) : {dims['vertices']}")
    print()
    print("  Fichiers ecrits :")
    print("    quiz_map.obj / quiz_map.mtl   -> importer dans UEFN (static mesh)")
    print("    placement_manifest.json       -> positions portails/spawn/victoire/device")
    print("=" * 60)


if __name__ == "__main__":
    main()
