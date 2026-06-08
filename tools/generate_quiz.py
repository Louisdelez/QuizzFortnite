#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
generate_quiz.py — Generateur de map Quizz Fortnite (chemin droit + 4 portails par question).

Objectif : a partir d'une liste de questions (ou d'un nombre N), calculer TOUTE la
geometrie du parcours (sol, portails, depart, arrivee) et produire :
  1) un apercu ASCII (vue de dessus) du parcours,
  2) un resume des dimensions de la map,
  3) un fichier layout.json (toutes les positions, en cm) - pour verification / import,
  4) un extrait Verse de la banque de questions (a coller dans quiz_manager.verse),
  5) un extrait Verse de config (les memes nombres que le builder runtime).

=> Pour ADAPTER : change les questions dans QUESTIONS (ou charge un JSON), ou ajuste
   les parametres dans CONFIG. Tout le reste se recalcule automatiquement.

Usage :
    python generate_quiz.py                 # utilise la banque d'exemple ci-dessous
    python generate_quiz.py questions.json  # charge une banque depuis un fichier JSON
    python generate_quiz.py --count 12      # genere 12 segments "placeholder"

Aucune dependance externe (stdlib uniquement).
"""

import json
import math
import sys

# ───────────────────────────────────────────────────────────────────────────
#  CONFIG — les seuls reglages a toucher pour adapter la forme du parcours.
#  Unites en centimetres (comme Verse / UEFN).
# ───────────────────────────────────────────────────────────────────────────
CONFIG = {
    "segment_length": 1024.0,   # longueur (axe X) d'une question
    "lane_spacing":    300.0,   # ecart (axe Y) entre 2 portails
    "lane_count":         4,    # nombre de reponses / portails (4 = A,B,C,D)
    "floor_tile_size":  512.0,  # taille d'une dalle de sol
    "gate_ratio":        0.85,  # ou placer les portails dans le segment (0..1)
    "start_pad_length": 768.0,  # longueur du sas de depart (X negatif)
    "end_pad_length":   768.0,  # longueur de la salle d'arrivee
    "floor_margin":     200.0,  # marge de sol de chaque cote des lanes
}

LETTERS = ["A", "B", "C", "D", "E", "F"]

# ───────────────────────────────────────────────────────────────────────────
#  BANQUE D'EXEMPLE — remplace par tes questions (ou charge un JSON).
#  "correct" = index 0..lane_count-1 (0=A, 1=B, 2=C, 3=D).
# ───────────────────────────────────────────────────────────────────────────
QUESTIONS = [
    {"q": "Combien de joueurs max en BR classique ?",
     "a": ["50", "100", "150", "200"], "correct": 1, "points": 100},
    {"q": "Quel materiau est le plus resistant ?",
     "a": ["Bois", "Pierre", "Metal", "Or"], "correct": 2, "points": 150},
    {"q": "Comment s'appelle le vehicule de depart ?",
     "a": ["Battle Bus", "Sky Van", "War Jet", "Combat Cab"], "correct": 0, "points": 100},
    {"q": "Quelle est la monnaie premium ?",
     "a": ["Or", "V-Bucks", "Credits", "Gemmes"], "correct": 1, "points": 100},
    {"q": "Quel objet fait danser les ennemis ?",
     "a": ["Boogie Bomb", "Grenade", "Piege", "Mur"], "correct": 0, "points": 150},
]


def lane_y(i, cfg):
    """Position Y (cm) du portail/lane d'index i, centree sur 0."""
    return (i - (cfg["lane_count"] - 1) / 2.0) * cfg["lane_spacing"]


def build_layout(questions, cfg):
    """Calcule toutes les positions de la map a partir des questions + config."""
    seg_len = cfg["segment_length"]
    n = len(questions)

    floor_width = cfg["lane_count"] * cfg["lane_spacing"] + 2 * cfg["floor_margin"]
    total_path = cfg["start_pad_length"] + n * seg_len + cfg["end_pad_length"]

    floors = []
    portals = []
    markers = {}

    # --- Sol : sas de depart -> segments -> salle d'arrivee (dalles en grille) ---
    x_start = -cfg["start_pad_length"]
    x_end = n * seg_len + cfg["end_pad_length"]
    tile = cfg["floor_tile_size"]
    nx = max(1, math.ceil((x_end - x_start) / tile))
    ny = max(1, math.ceil(floor_width / tile))
    for ix in range(nx):
        for iy in range(ny):
            fx = x_start + (ix + 0.5) * tile
            fy = -floor_width / 2 + (iy + 0.5) * tile
            floors.append({"x": round(fx, 1), "y": round(fy, 1), "z": 0.0})

    # --- Portails : 4 par segment, au "gate_ratio" du segment ---
    for q_index, q in enumerate(questions):
        gate_x = q_index * seg_len + seg_len * cfg["gate_ratio"]
        seg_portals = []
        for i in range(cfg["lane_count"]):
            seg_portals.append({
                "segment": q_index,
                "answer_index": i,
                "letter": LETTERS[i],
                "is_correct": (i == q["correct"]),
                "x": round(gate_x, 1),
                "y": round(lane_y(i, cfg), 1),
                "z": 0.0,
            })
        portals.append(seg_portals)

    markers["spawn"] = {"x": round(x_start + cfg["start_pad_length"] / 2, 1), "y": 0.0, "z": 0.0}
    markers["victory"] = {"x": round(n * seg_len + cfg["end_pad_length"] / 2, 1), "y": 0.0, "z": 0.0}

    dims = {
        "questions": n,
        "lanes": cfg["lane_count"],
        "path_length_cm": round(total_path, 1),
        "path_length_m": round(total_path / 100, 1),
        "floor_width_cm": round(floor_width, 1),
        "floor_tiles": len(floors),
        "portals_total": n * cfg["lane_count"],
    }
    return {"config": cfg, "dims": dims, "floors": floors,
            "portals": portals, "markers": markers}


def ascii_preview(layout, questions, cfg):
    """Apercu vue de dessus : chaque ligne = un segment, colonnes = lanes A..D."""
    n = len(questions)
    lines = []
    lines.append("   DEPART  (spawn)")
    lines.append("     |")
    for q_index in range(n):
        row = layout["portals"][q_index]
        cells = []
        for p in row:
            mark = "*" if p["is_correct"] else " "
            cells.append(f"[{p['letter']}{mark}]")
        qtext = questions[q_index]["q"]
        if len(qtext) > 46:
            qtext = qtext[:43] + "..."
        lines.append(f"  Q{q_index + 1:<2} {qtext}")
        lines.append("     " + "  ".join(cells) + "   ( * = bonne reponse )")
        lines.append("     |")
    lines.append("   ARRIVEE  (victoire)")
    return "\n".join(lines)


def verse_question_bank(questions):
    """Genere l'extrait Verse de la banque (a coller dans MakeQuestions())."""
    out = ["    MakeQuestions() : []question =", "        array:"]
    for q in questions:
        reps = ", ".join('"' + a.replace('"', "'") + '"' for a in q["a"])
        enonce = q["q"].replace('"', "'")
        out.append("            question:")
        out.append(f'                Enonce := "{enonce}"')
        out.append(f"                Reponses := array{{{reps}}}")
        out.append(f"                BonneReponse := {q['correct']}")
        out.append(f"                Points := {q.get('points', 100)}")
    return "\n".join(out)


def verse_config(cfg, n):
    """Genere l'extrait Verse de config (memes nombres que le builder runtime)."""
    return "\n".join([
        "    # Config generee par generate_quiz.py — colle dans map_builder / quiz_manager",
        f"    @editable SegmentLength : float = {cfg['segment_length']}",
        f"    @editable LaneSpacing : float = {cfg['lane_spacing']}",
        f"    @editable LaneCount : int = {cfg['lane_count']}",
        f"    @editable FloorTileSize : float = {cfg['floor_tile_size']}",
        f"    @editable GateRatio : float = {cfg['gate_ratio']}",
        f"    # Nombre de questions detecte automatiquement : {n}",
    ])


def load_questions(argv):
    if len(argv) >= 2 and argv[1] == "--count":
        n = int(argv[2]) if len(argv) >= 3 else 5
        return [{"q": f"Question placeholder #{k+1}",
                 "a": ["Reponse A", "Reponse B", "Reponse C", "Reponse D"],
                 "correct": k % 4, "points": 100} for k in range(n)]
    if len(argv) >= 2:
        with open(argv[1], "r", encoding="utf-8") as f:
            return json.load(f)
    return QUESTIONS


def main():
    questions = load_questions(sys.argv)
    cfg = CONFIG
    layout = build_layout(questions, cfg)
    d = layout["dims"]

    print("=" * 64)
    print(" GENERATEUR DE MAP QUIZZ FORTNITE")
    print("=" * 64)
    print(f"  Questions        : {d['questions']}")
    print(f"  Portails (total) : {d['portals_total']}  ({d['lanes']} par question)")
    print(f"  Longueur parcours: {d['path_length_m']} m  ({d['path_length_cm']} cm)")
    print(f"  Largeur sol      : {d['floor_width_cm']} cm")
    print(f"  Dalles de sol    : {d['floor_tiles']}")
    print(f"  Spawn            : {layout['markers']['spawn']}")
    print(f"  Victoire         : {layout['markers']['victory']}")
    print()
    print(ascii_preview(layout, questions, cfg))
    print()

    with open("layout.json", "w", encoding="utf-8") as f:
        json.dump(layout, f, ensure_ascii=False, indent=2)
    with open("question_bank.verse.txt", "w", encoding="utf-8") as f:
        f.write(verse_question_bank(questions))
    with open("builder_config.verse.txt", "w", encoding="utf-8") as f:
        f.write(verse_config(cfg, len(questions)))

    print("Fichiers ecrits :")
    print("  - layout.json              (toutes les positions, en cm)")
    print("  - question_bank.verse.txt  (banque a coller dans quiz_manager.verse)")
    print("  - builder_config.verse.txt (config a coller dans le builder)")
    print("=" * 64)


if __name__ == "__main__":
    main()
