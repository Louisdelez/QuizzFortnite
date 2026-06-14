#!/usr/bin/env python3
# ============================================================
#  build_records.py — Quizz "Records geo" (texte, sans image)
#  Donnees reelles REST Countries (population + superficie) pour nos
#  195 pays. 4 types de questions PAR PAYS quand l'ecart est net
#  (ratio >= 1.6 pour eviter toute ambiguite) :
#   - plus grande / plus petite population
#   - plus grande / plus petite superficie
#  Palier = palier de notoriete du pays-reponse (country_core).
#  Sortie : verse/records_bank.verse (5 banques, noms pays x5 langues)
# ============================================================
import json, os, random, sys, urllib.request
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION, TIER
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT

ROOT = _ROOT
# Donnees : Natural Earth 10m (deja telecharge par build_carte.py).
# POP_EST = population estimee ; superficie calculee depuis les polygones
# (approximation equirectangulaire — suffisante avec le garde-fou ratio 1.6).
import math
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)
GEO = f"{ROOT}/tools/_ne10m_countries.geojson"
gj = json.load(open(GEO, encoding="utf-8"))
POP, AREA = {}, {}
def ring_area_km2(r):
    a = 0.0
    for i in range(len(r) - 1):
        a += r[i][0]*r[i+1][1] - r[i+1][0]*r[i][1]
    lat0 = sum(p[1] for p in r) / len(r)
    return abs(a) / 2.0 * (111.32 ** 2) * math.cos(math.radians(lat0))
for f in gj["features"]:
    pr = f["properties"]
    iso = (pr.get("ISO_A2_EH") or pr.get("ISO_A2") or "").lower()
    if iso == "-99": iso = (pr.get("ISO_A2") or "").lower()
    if iso not in NAME: continue
    POP[iso] = max(POP.get(iso, 0), int(pr.get("POP_EST") or 0))
    g = f["geometry"]
    polys = [g["coordinates"]] if g["type"] == "Polygon" else (g["coordinates"] if g["type"] == "MultiPolygon" else [])
    area = sum(ring_area_km2(poly[0]) for poly in polys)
    AREA[iso] = AREA.get(iso, 0.0) + area
missing = [i for i, *_ in C if i not in POP or POP[i] <= 0]
assert not missing, missing

LANGS = ("FR", "EN", "ES", "DE", "IT")
NAMES = {"FR": NAME, "EN": EN, "ES": ES, "DE": DE, "IT": IT}
ENONCES = {
 "popmax": ("Quel pays a la plus grande population ?", "Which country has the largest population?",
            "Que pais tiene mayor poblacion?", "Welches Land hat die groesste Bevoelkerung?",
            "Quale paese ha la popolazione piu grande?"),
 "popmin": ("Quel pays a la plus petite population ?", "Which country has the smallest population?",
            "Que pais tiene menor poblacion?", "Welches Land hat die kleinste Bevoelkerung?",
            "Quale paese ha la popolazione piu piccola?"),
 "areamax": ("Quel pays est le plus grand (superficie) ?", "Which country is the largest by area?",
             "Que pais es el mas grande (superficie)?", "Welches Land ist das groesste (Flaeche)?",
             "Quale paese e il piu grande (superficie)?"),
 "areamin": ("Quel pays est le plus petit (superficie) ?", "Which country is the smallest by area?",
             "Que pais es el mas pequeno (superficie)?", "Welches Land ist das kleinste (Flaeche)?",
             "Quale paese e il piu piccolo (superficie)?"),
}
RATIO = 1.6

def gen(kind, val, want_max):
    qs = []
    for iso, *_ in C:
        v = val[iso]
        if v <= 0: continue
        rng = random.Random("records-%s-%s" % (kind, iso))
        # distracteurs clairement au-dessus/en-dessous, meme region en priorite
        def ok(j):
            w = val[j]
            if w <= 0: return False
            return (v >= w * RATIO) if want_max else (w >= v * RATIO)
        reg = [j for j, *_ in C if j != iso and REGION[j] == REGION[iso] and ok(j)]
        oth = [j for j, *_ in C if j != iso and REGION[j] != REGION[iso] and ok(j)]
        rng.shuffle(reg); rng.shuffle(oth)
        picks = (reg + oth)[:3]
        if len(picks) < 3: continue
        answers = [iso] + picks
        correct = rng.randrange(4)
        answers[0], answers[correct] = answers[correct], answers[0]
        qs.append((kind, answers, answers.index(iso), TIER[iso]))
    return qs

ALL = (gen("popmax", POP, True) + gen("popmin", POP, False) +
       gen("areamax", AREA, True) + gen("areamin", AREA, False))
print("Questions records :", len(ALL))

parts = []
for li, lang in enumerate(LANGS):
    out = ["MakeRecordsQuestions%s() : []question =" % lang, "    array:"]
    for kind, answers, correct, tier in ALL:
        out.append("        question:")
        out.append('            Enonce := "%s"' % ENONCES[kind][li])
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % NAMES[lang][a] for a in answers))
        out.append("            BonneReponse := %d" % correct)
    parts.append("\n".join(out))
parts.append("MakeRecordsQuestions() : []question =\n    MakeRecordsQuestionsFR()")

diffs = ", ".join(str(t) for _, _, _, t in ALL)
header = ("# Quizz RECORDS GEO (population/superficie, donnees REST Countries)\n"
          "# GENERE par tools/build_records.py — NE PAS EDITER A LA MAIN.\n\n"
          "RecordsDiff : []int = array{%s}\n" % diffs)
dst = f"{ROOT}/verse/records_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write(header + "\n" + "\n\n".join(parts) + "\n")
print("OK :", dst)
t = [q[3] for q in ALL]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
