#!/usr/bin/env python3
# ============================================================
#  parse_culture.py — extrait les 900 questions FR de
#  docs/culture-generale/{facile,moyen,difficile}.md (source de verite)
#  vers tools/_culture_fr.json (intermediaire, lu par build_culture.py).
#  Format attendu d'une question :
#    **F-HIS-01.** Enonce ?
#    A. Rep ✅ — B. Rep — C. Rep — D. Rep   (✅ = bonne reponse)
# ============================================================
import re, json
ROOT = "D:/QuizzFortnite"
TIERS = {"facile": 0, "moyen": 1, "difficile": 2}

out, problems = [], []
for fname, tier in TIERS.items():
    lines = open(f"{ROOT}/docs/culture-generale/{fname}.md", encoding="utf-8").read().split("\n")
    for i, l in enumerate(lines):
        m = re.match(r"^\*\*([FMD]-[A-Z]{3}-\d{2})\.\*\*\s*(.+)$", l)
        if not m:
            continue
        qid, enonce = m.group(1), m.group(2).strip()
        parts = [p.strip() for p in lines[i + 1].strip().split(" — ")]
        if len(parts) != 4:
            problems.append((qid, "nb reponses != 4")); continue
        answers, correct = [], -1
        for k, p in enumerate(parts):
            p = re.sub(r"^[A-D]\.\s*", "", p)
            if "✅" in p:                       # ✅
                correct = k; p = p.replace("✅", "").strip()
            answers.append(p)
        if correct < 0:
            problems.append((qid, "pas de bonne reponse")); continue
        out.append({"id": qid, "tier": tier, "correct": correct, "q_fr": enonce, "a_fr": answers})

json.dump(out, open(f"{ROOT}/tools/_culture_fr.json", "w", encoding="utf-8"), ensure_ascii=False, indent=0)
print(f"OK : {len(out)} questions -> tools/_culture_fr.json")
if problems:
    print("PROBLEMES :", problems[:20])
