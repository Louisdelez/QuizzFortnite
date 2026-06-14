#!/usr/bin/env python3
# ============================================================
#  build_carte.py — Quizz "Pays sur carte" (195 silhouettes, 3 paliers)
#
#  UN SEUL quizz, 3 difficultes (le moteur filtre par palier) :
#    0 = FACILE    : ~65 pays communs/connus    -> silhouette NORMALE
#    1 = MOYEN     : ~130 pays moins connus       -> silhouette NORMALE
#    2 = DIFFICILE : les 195 pays                  -> silhouette PIXELISEE
#
#  Banque = 390 questions :
#    [195 silhouettes normales] (palier 0/1 selon EASY de country_core)
#  + [195 silhouettes pixelisees] (palier 2, tous les pays)
#  CarteDiff est aligne sur cet ordre.
#
#  Pipeline :
#  1. Telecharge Natural Earth 10m admin_0_countries (GeoJSON, domaine public).
#  2. Rend la silhouette de chaque pays (blanc sur fond sombre, 246x164) :
#     exclut les territoires lointains, gere l'antimeridien et les trous.
#       -> assets/carte/map_<iso>.png
#  3. Pixelise chaque silhouette (bloc PIX px) -> assets/carte_pixel/mpx_<iso>.png
#  4. Genere verse/carte_bank.verse : CarteDiff(390) + MakeCarteQuestions()/EN/ES/DE/IT
#     (noms pays x5 langues, memes tirages ; distracteurs = meme region).
#
#  --bank-only : ne re-rend ni ne re-pixelise les images.
# ============================================================
import json, math, os, random, sys, urllib.request
from PIL import Image, ImageDraw
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION, EASY
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/carte"
OUT_PX = f"{ROOT}/assets/carte_pixel"
os.makedirs(OUT, exist_ok=True)
os.makedirs(OUT_PX, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 216, 134     # marges
BG = (26, 26, 42, 255)
FILL = (232, 236, 248, 255)
SS = 4                           # supersampling
PIX = 9                          # taille du bloc de pixelisation (palier Difficile)

GEO = f"{ROOT}/tools/_ne10m_countries.geojson"
GEO_URL = "https://raw.githubusercontent.com/nvkelso/natural-earth-vector/master/geojson/ne_10m_admin_0_countries.geojson"

def tier_normal(iso):
    return 0 if iso in EASY else 1

def ring_area(r):
    a = 0.0
    for i in range(len(r) - 1):
        a += r[i][0]*r[i+1][1] - r[i+1][0]*r[i][1]
    return abs(a) / 2.0

def centroid(r):
    xs = [p[0] for p in r]; ys = [p[1] for p in r]
    return sum(xs)/len(xs), sum(ys)/len(ys)

def render_country(iso, polys):
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

def pixelize(iso):
    src = f"{OUT}/map_{iso}.png"
    img = Image.open(src).convert("RGB")
    small = img.resize((max(1, CANVAS_W // PIX), max(1, CANVAS_H // PIX)), Image.BILINEAR)
    pix = small.resize((CANVAS_W, CANVAS_H), Image.NEAREST)
    pix.save(f"{OUT_PX}/mpx_{iso}.png", optimize=True)

if not BANK_ONLY:
    missing = [iso for iso, *_ in C if not os.path.exists(f"{OUT}/map_{iso}.png")]
    if missing:
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
        absent = [iso for iso in missing if iso not in shapes]
        if absent:
            print("MANQUANTS dans Natural Earth:", absent); sys.exit(1)
        print(f"Rendu de {len(missing)} silhouettes manquantes...")
        for iso in missing:
            render_country(iso, shapes[iso])
    else:
        print("(silhouettes normales deja presentes -> pas de rendu)")
    print("Pixelisation des 195 silhouettes...")
    for iso, *_ in C:
        pixelize(iso)
    print(f"OK : silhouettes normales dans {OUT}, pixelisees dans {OUT_PX}")
else:
    print("(--bank-only : images non re-generees)")

# ---------------- banque Verse ----------------
ENONCE_N = {"FR": "Quel est ce pays ?", "EN": "Which country is this?",
            "ES": "Que pais es este?", "DE": "Welches Land ist das?",
            "IT": "Quale paese e questo?"}
ENONCE_P = {"FR": "Quel est ce pays ? (carte pixelisee)", "EN": "Which country is this? (pixelated map)",
            "ES": "Que pais es este? (mapa pixelado)", "DE": "Welches Land ist das? (verpixelte Karte)",
            "IT": "Quale paese e questo? (mappa pixelata)"}

def distractors(iso, seed):
    rng = random.Random(seed + iso)
    pool = [x for x, _, r, _ in C if r == REGION[iso] and x != iso]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [x for x, _, _, _ in C if x != iso and x not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    correct = rng.randrange(4)
    return picks, correct

def q_block(iso, name_of, enonce, img_ref, seed):
    picks, correct = distractors(iso, seed)
    answers = [iso] + picks
    answers[0], answers[correct] = answers[correct], answers[0]
    return [
        "        question:",
        '            Enonce := "%s"' % enonce,
        "            Image := option{ %s }" % img_ref,
        "            Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers),
        "            BonneReponse := %d" % answers.index(iso),
    ]

def bank(tag, name_of):
    t = tag if tag else "FR"
    out = ["MakeCarteQuestions%s() : []question =" % tag, "    array:"]
    # 195 silhouettes NORMALES (palier 0/1)
    for iso, *_ in C:
        out += q_block(iso, name_of, ENONCE_N[t], "carte.map_%s" % iso, "carte-")
    # 195 silhouettes PIXELISEES (palier 2)
    for iso, *_ in C:
        out += q_block(iso, name_of, ENONCE_P[t], "carte_pixel.mpx_%s" % iso, "carte-px-")
    return "\n".join(out)

# CarteDiff : [tier normal x195] + [2 x195]
diffs = ", ".join([str(tier_normal(iso)) for iso, *_ in C] + ["2"] * len(C))
header = """using { /Verse.org/Assets }

# ============================================================
#  carte_bank.verse — Banque du quizz PAYS SUR CARTE (390 = 195 normales + 195 pixelisees).
#  GENERE par tools/banks/build_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes Natural Earth (domaine public). Tirages identiques x5 langues.
#  3 paliers : Facile (communs) / Moyen / Difficile (pixelise).
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
ts = [tier_normal(iso) for iso, *_ in C]
print(f"OK : {dst} genere")
print("Paliers : Facile=%d (normal) / Moyen=%d (normal) / Difficile=%d (pixelise)"
      % (ts.count(0), ts.count(1), len(C)))
