#!/usr/bin/env python3
# ============================================================
#  build_carte.py — Quizz "Pays sur carte" (195 silhouettes)
#  1. Telecharge Natural Earth 10m admin_0_countries (GeoJSON, domaine public).
#  2. Rend la silhouette de chaque pays (blanc sur fond sombre, 246x164) :
#     - exclut les territoires lointains (outre-mer : Guyane pour la France,
#       Alaska/Hawai pour les USA...) -> silhouette "principale" reconnaissable
#     - gere l'antimeridien (Russie, Fidji) et les trous (Lesotho)
#     Sortie : carte/map_<iso>.png
#  3. Genere verse/carte_bank.verse : CarteDiff (paliers des drapeaux) +
#     MakeCarteQuestions()/EN/ES/DE/IT (noms pays ×5 langues, memes tirages).
# ============================================================
import json, math, os, random, sys, urllib.request
from PIL import Image, ImageDraw
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION, TIER
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/carte"
os.makedirs(OUT, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 216, 134     # marges
BG = (26, 26, 42, 255)
FILL = (232, 236, 248, 255)
SS = 4                           # supersampling

GEO = f"{ROOT}/tools/_ne10m_countries.geojson"
GEO_URL = "https://raw.githubusercontent.com/nvkelso/natural-earth-vector/master/geojson/ne_10m_admin_0_countries.geojson"

def ring_area(r):
    a = 0.0
    for i in range(len(r) - 1):
        a += r[i][0]*r[i+1][1] - r[i+1][0]*r[i][1]
    return abs(a) / 2.0

def centroid(r):
    xs = [p[0] for p in r]; ys = [p[1] for p in r]
    return sum(xs)/len(xs), sum(ys)/len(ys)

def render_country(iso, polys):
    # polys : liste de polygones [ [outer, hole1, ...], ... ]
    # 1) antimeridien : si l'etendue > 180, decale les lons negatives
    lons = [p[0] for poly in polys for ring in poly for p in ring]
    if max(lons) - min(lons) > 180:
        polys = [[[(x + 360 if x < 0 else x, y) for x, y in ring] for ring in poly] for poly in polys]
    # 2) garde le polygone principal + les parts proches et significatives
    areas = [ring_area(poly[0]) for poly in polys]
    main = polys[areas.index(max(areas))]
    cx0, cy0 = centroid(main[0])
    amax = max(areas)
    kept = []
    for poly, a in zip(polys, areas):
        cx, cy = centroid(poly[0])
        if poly is main or (a >= amax * 0.01 and abs(cx - cx0) < 40 and abs(cy - cy0) < 40):
            kept.append(poly)
    # 3) projection equirectangulaire corrigee en latitude
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
        outer = [(x * s + ox, y * s + oy) for x, y in poly[0]]
        d.polygon([(x * SS, y * SS) for x, y in outer], fill=FILL)
        for hole in poly[1:]:
            hp = [((x * s + ox) * SS, (y * s + oy) * SS) for x, y in [proj_pt for proj_pt in hole]]
            d.polygon(hp, fill=BG)
    img = img.resize((CANVAS_W, CANVAS_H), Image.LANCZOS)
    img.convert("RGB").save(f"{OUT}/map_{iso}.png", optimize=True)

if not BANK_ONLY:
    if not os.path.exists(GEO):
        print("Telechargement Natural Earth 10m (~25 Mo)...")
        urllib.request.urlretrieve(GEO_URL, GEO)
    print("Lecture GeoJSON...")
    gj = json.load(open(GEO, encoding="utf-8"))
    shapes = {}
    for f in gj["features"]:
        pr = f["properties"]
        iso = (pr.get("ISO_A2_EH") or pr.get("ISO_A2") or "").lower()
        if iso == "-99":
            iso = (pr.get("ISO_A2") or "").lower()
        if iso not in NAME: continue
        g = f["geometry"]
        if g["type"] == "Polygon":
            polys = [g["coordinates"]]
        elif g["type"] == "MultiPolygon":
            polys = g["coordinates"]
        else:
            continue
        shapes.setdefault(iso, []).extend(polys)
    missing = [iso for iso, _, _, _ in C if iso not in shapes]
    if missing:
        print("MANQUANTS dans Natural Earth:", missing); sys.exit(1)
    print("Rendu des 195 silhouettes...")
    for i, (iso, _, _, _) in enumerate(C, 1):
        render_country(iso, shapes[iso])
        if i % 40 == 0: print(f"  {i}/195...")
    print(f"OK : 195 silhouettes dans {OUT}")

# ---------------- banque Verse ----------------
ENONCE = {"FR": "Quel est ce pays ?", "EN": "Which country is this?",
          "ES": "Que pais es este?", "DE": "Welches Land ist das?",
          "IT": "Quale paese e questo?"}

def distractors(iso):
    rng = random.Random("carte-" + iso)
    pool = [x for x, _, r, _ in C if r == REGION[iso] and x != iso]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [x for x, _, _, _ in C if x != iso and x not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    correct = rng.randrange(4)
    return picks, correct

def bank(tag, name_of):
    out = ["MakeCarteQuestions%s() : []question =" % tag, "    array:"]
    for iso, _, _, _ in C:
        picks, correct = distractors(iso)
        answers = [iso] + picks
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("        question:")
        out.append('            Enonce := "%s"' % ENONCE[tag if tag else "FR"])
        out.append("            Image := option{ carte.map_%s }" % iso)
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers))
        out.append("            BonneReponse := %d" % answers.index(iso))
    return "\n".join(out)

diffs = ", ".join(str(t) for *_, t in C)
header = """using { /Verse.org/Assets }

# ============================================================
#  carte_bank.verse — Banque du quizz PAYS SUR CARTE (195).
#  GENERE par tools/build_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes Natural Earth (domaine public). Tirages identiques x5 langues.
# ============================================================

CarteDiff : []int = array{%s}
""" % diffs

blocks = [header]
blocks.append(bank("FR", lambda i: NAME[i]))
blocks.append("MakeCarteQuestions() : []question =\n    MakeCarteQuestionsFR()")
blocks.append(bank("EN", lambda i: EN[i]))
blocks.append(bank("ES", lambda i: ES[i]))
blocks.append(bank("DE", lambda i: DE[i]))
blocks.append(bank("IT", lambda i: IT[i]))

dst = f"{ROOT}/verse/carte_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
print(f"OK : {dst} genere ({sum(1 for _ in open(dst, encoding='utf-8'))} lignes)")
print("Paliers : %d/%d/%d" % (diffs.split(', ').count('0') if False else sum(1 for *_, t in C if t==0),
      sum(1 for *_, t in C if t==1), sum(1 for *_, t in C if t==2)))
