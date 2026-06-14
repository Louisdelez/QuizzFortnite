#!/usr/bin/env python3
# ============================================================
#  build_depts_carte.py — Quizz "Carte des departements" (101 silhouettes, 3 paliers)
#
#  3 difficultes (le moteur filtre par palier) :
#    0 = FACILE    : ~40 departements communs   -> silhouette NORMALE
#    1 = MOYEN     : ~61 moins communs            -> silhouette NORMALE
#    2 = DIFFICILE : les 101 departements          -> silhouette PIXELISEE
#  Banque = 202 questions (101 normal + 101 pixel), DepCarteDiff aligne.
#
#  Pipeline :
#  1. Telecharge departements-avec-outre-mer.geojson (gregoiredavid, ODbL).
#  2. Rend chaque silhouette (blanc sur fond sombre, 246x164) -> assets/dep_carte/dmap_<code>.png
#  3. Pixelise -> assets/dep_carte_pixel/dmpx_<code>.png
#  4. Genere verse/depcarte_bank.verse (5 langues ; noms FR ASCII, enonce traduit ;
#     distracteurs = meme region, seed deterministe).
#
#  --bank-only : ne re-rend ni ne re-pixelise les images.
# ============================================================
import json, math, os, random, sys, urllib.request, ssl
from PIL import Image, ImageDraw
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from depts_core import DEPS, NAME, REGION, TIER
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT
OUT = f"{ROOT}/assets/dep_carte"
OUT_PX = f"{ROOT}/assets/dep_carte_pixel"
os.makedirs(OUT, exist_ok=True)
os.makedirs(OUT_PX, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 216, 134
BG = (26, 26, 42, 255)
FILL = (232, 236, 248, 255)
SS = 4
PIX = 9
CTX = ssl.create_default_context()
GEO = f"{ROOT}/tools/_depts.geojson"
GEO_URL = "https://raw.githubusercontent.com/gregoiredavid/france-geojson/master/departements-avec-outre-mer.geojson"

def fkey(code):
    return code.lower()

def ring_area(r):
    a = 0.0
    for i in range(len(r) - 1):
        a += r[i][0]*r[i+1][1] - r[i+1][0]*r[i][1]
    return abs(a) / 2.0

def centroid(r):
    xs = [p[0] for p in r]; ys = [p[1] for p in r]
    return sum(xs)/len(xs), sum(ys)/len(ys)

def render(code, polys):
    lons = [p[0] for poly in polys for ring in poly for p in ring]
    if max(lons) - min(lons) > 180:
        polys = [[[(x + 360 if x < 0 else x, y) for x, y in ring] for ring in poly] for poly in polys]
    areas = [ring_area(poly[0]) for poly in polys]
    main = polys[areas.index(max(areas))]
    cx0, cy0 = centroid(main[0]); amax = max(areas)
    kept = []
    for poly, a in zip(polys, areas):
        cx, cy = centroid(poly[0])
        if poly is main or (a >= amax * 0.01 and abs(cx - cx0) < 8 and abs(cy - cy0) < 8):
            kept.append(poly)
    pts = [p for poly in kept for p in poly[0]]
    lat0 = sum(p[1] for p in pts) / len(pts)
    k = max(0.2, math.cos(math.radians(lat0)))
    def proj(p): return (p[0] * k, -p[1])
    ppolys = [[[proj(p) for p in ring] for ring in poly] for poly in kept]
    xs = [p[0] for poly in ppolys for p in poly[0]]
    ys = [p[1] for poly in ppolys for p in poly[0]]
    minx, maxx, miny, maxy = min(xs), max(xs), min(ys), max(ys)
    w, h = max(maxx - minx, 1e-9), max(maxy - miny, 1e-9)
    s = min(INNER_W / w, INNER_H / h)
    ox = (CANVAS_W - w * s) / 2 - minx * s
    oy = (CANVAS_H - h * s) / 2 - miny * s
    img = Image.new("RGBA", (CANVAS_W * SS, CANVAS_H * SS), BG)
    d = ImageDraw.Draw(img)
    for poly in ppolys:
        outer = [((x * s + ox) * SS, (y * s + oy) * SS) for x, y in poly[0]]
        d.polygon(outer, fill=FILL)
        for hole in poly[1:]:
            hp = [((x * s + ox) * SS, (y * s + oy) * SS) for x, y in hole]
            d.polygon(hp, fill=BG)
    img = img.resize((CANVAS_W, CANVAS_H), Image.LANCZOS)
    img.convert("RGB").save(f"{OUT}/dmap_{fkey(code)}.png", optimize=True)

def pixelize(code):
    img = Image.open(f"{OUT}/dmap_{fkey(code)}.png").convert("RGB")
    small = img.resize((max(1, CANVAS_W // PIX), max(1, CANVAS_H // PIX)), Image.BILINEAR)
    small.resize((CANVAS_W, CANVAS_H), Image.NEAREST).save(f"{OUT_PX}/dmpx_{fkey(code)}.png", optimize=True)

if not BANK_ONLY:
    if not os.path.exists(GEO):
        print("Telechargement geojson departements (~3.6 Mo)...")
        urllib.request.urlretrieve(GEO_URL, GEO)
    gj = json.load(open(GEO, encoding="utf-8"))
    shapes = {}
    for f in gj["features"]:
        code = f["properties"]["code"]
        g = f["geometry"]
        if g["type"] == "Polygon":
            shapes.setdefault(code, []).append(g["coordinates"])
        elif g["type"] == "MultiPolygon":
            shapes.setdefault(code, []).extend(g["coordinates"])
    missing = [c for c, *_ in DEPS if c not in shapes]
    if missing:
        print("MANQUANTS dans le geojson:", missing); sys.exit(1)
    print("Rendu des 101 silhouettes...")
    for i, (code, *_) in enumerate(DEPS, 1):
        render(code, shapes[code])
        if i % 40 == 0: print(f"  {i}/101...")
    print(f"OK : silhouettes dans {OUT}")
    print("Pixelisation...")
    for code, *_ in DEPS:
        pixelize(code)
    print(f"OK : pixelisees dans {OUT_PX}")
else:
    print("(--bank-only : images non re-generees)")

# ---------------- banque Verse ----------------
ENONCE_N = {"FR": "Quel est ce departement ?", "EN": "Which French department is this?",
            "ES": "Que departamento frances es este?", "DE": "Welches franzoesische Departement ist das?",
            "IT": "Quale dipartimento francese e questo?"}
ENONCE_P = {"FR": "Quel est ce departement ? (carte pixelisee)", "EN": "Which French department is this? (pixelated map)",
            "ES": "Que departamento frances es este? (mapa pixelado)", "DE": "Welches franzoesische Departement ist das? (verpixelte Karte)",
            "IT": "Quale dipartimento francese e questo? (mappa pixelata)"}
ALLCODES = [c for c, *_ in DEPS]

def distractors(code, seed):
    rng = random.Random(seed + code)
    pool = [c for c, _, r, _ in DEPS if r == REGION[code] and c != code]
    rng.shuffle(pool); picks = pool[:3]
    if len(picks) < 3:
        rest = [c for c in ALLCODES if c != code and c not in picks]
        rng.shuffle(rest); picks += rest[:3 - len(picks)]
    correct = rng.randrange(4)
    return picks, correct

def q_block(code, enonce, img_ref, seed):
    picks, correct = distractors(code, seed)
    answers = [code] + picks
    answers[0], answers[correct] = answers[correct], answers[0]
    return [
        "        question:",
        '            Enonce := "%s"' % enonce,
        "            Image := option{ %s }" % img_ref,
        "            Reponses := array{%s}" % ", ".join('"%s"' % NAME[a] for a in answers),
        "            BonneReponse := %d" % answers.index(code),
    ]

def bank(tag):
    t = tag if tag else "FR"
    out = ["MakeDepCarteQuestions%s() : []question =" % tag, "    array:"]
    for code, *_ in DEPS:   # 101 NORMALES
        out += q_block(code, ENONCE_N[t], "dep_carte.dmap_%s" % fkey(code), "depcarte-")
    for code, *_ in DEPS:   # 101 PIXELISEES
        out += q_block(code, ENONCE_P[t], "dep_carte_pixel.dmpx_%s" % fkey(code), "depcarte-px-")
    return "\n".join(out)

diffs = ", ".join([str(TIER[c]) for c, *_ in DEPS] + ["2"] * len(DEPS))
header = """using { /Verse.org/Assets }

# ============================================================
#  depcarte_bank.verse — Banque CARTE DES DEPARTEMENTS (202 = 101 normal + 101 pixel).
#  GENERE par tools/banks/build_depts_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes geojson gregoiredavid (ODbL). 3 paliers : Facile / Moyen / Difficile (pixelise).
# ============================================================

DepCarteDiff : []int = array{%s}
""" % diffs

blocks = [header, bank("FR"),
          "MakeDepCarteQuestions() : []question =\n    MakeDepCarteQuestionsFR()",
          bank("EN"), bank("ES"), bank("DE"), bank("IT")]
dst = f"{ROOT}/verse/depcarte_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
ts = [TIER[c] for c, *_ in DEPS]
print(f"OK : {dst}")
print("Paliers : Facile=%d / Moyen=%d / Difficile=%d (pixelise)" % (ts.count(0), ts.count(1), len(DEPS)))
