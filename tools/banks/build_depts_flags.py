#!/usr/bin/env python3
# ============================================================
#  build_depts_flags.py — Quizz "Drapeaux des departements" (101, 3 paliers)
#
#  Les departements n'ont pas de drapeau officiel standardise : on utilise
#  le DRAPEAU si Wikidata en donne un (P41), sinon le BLASON (P94). Les noms
#  de fichiers Wikimedia Commons sont dans depts_core.DEPT_FLAG_FILE.
#
#  3 difficultes (le moteur filtre par palier) :
#    0 = FACILE    : ~40 departements communs   -> image NORMALE
#    1 = MOYEN     : ~61 moins communs            -> image NORMALE
#    2 = DIFFICILE : les 101 departements          -> image PIXELISEE
#  Banque = 202 questions (101 normal + 101 pixel), DepFlagsDiff aligne.
#
#  Pipeline :
#  1. Telecharge chaque image via le rendu PNG de Wikimedia Commons (API
#     imageinfo iiurlwidth) -> normalise 246x164 cadre sombre -> assets/dep_flags/dflag_<code>.png
#  2. Pixelise -> assets/dep_flags_pixel/dfpx_<code>.png
#  3. Genere verse/depflags_bank.verse (5 langues ; noms FR ASCII identiques,
#     enonce traduit ; distracteurs = meme region, seed deterministe).
#
#  --bank-only : ne re-telecharge ni ne re-pixelise les images.
# ============================================================
import os, random, sys, time, urllib.request, urllib.parse, json, ssl
from PIL import Image
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from depts_core import DEPS, NAME, REGION, TIER, DEPT_FLAG_FILE
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT
OUT = f"{ROOT}/assets/dep_flags"
OUT_PX = f"{ROOT}/assets/dep_flags_pixel"
os.makedirs(OUT, exist_ok=True)
os.makedirs(OUT_PX, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 230, 150
BORDER = (26, 26, 42)
PIX = 11
CTX = ssl.create_default_context()
UA = {"User-Agent": "QuizzFortnite/1.0 (loicdelez.ch@gmail.com)"}
TWIN = {"2A": "2B", "2B": "2A"}   # Corse : meme drapeau -> jamais distracteur l'un de l'autre

def fkey(code):
    return code.lower()

def get(url, tries=5):
    for k in range(tries):
        try:
            return urllib.request.urlopen(urllib.request.Request(url, headers=UA), context=CTX, timeout=60).read()
        except urllib.error.HTTPError as e:
            if e.code == 429 and k < tries - 1:
                time.sleep(3 * (k + 1)); continue
            raise

def render_url(filename, width=400):
    api = ("https://commons.wikimedia.org/w/api.php?action=query&format=json&prop=imageinfo"
           "&iiprop=url&iiurlwidth=%d&titles=%s" % (width, urllib.parse.quote("File:" + filename)))
    d = json.loads(get(api))
    pg = list(d["query"]["pages"].values())[0]
    ii = pg.get("imageinfo")
    if not ii:
        return None
    return ii[0].get("thumburl") or ii[0].get("url")

def fetch_and_norm(code):
    dst = f"{OUT}/dflag_{fkey(code)}.png"
    if os.path.exists(dst):
        return True   # reprise : deja telecharge
    fn = DEPT_FLAG_FILE.get(code, "")
    if not fn:
        print("  PAS DE FICHIER:", code); return False
    url = render_url(fn)
    if not url:
        print("  RENDU INTROUVABLE:", code, fn); return False
    raw = f"{OUT}/_raw_{fkey(code)}"
    data = get(url)
    open(raw, "wb").write(data)
    img = Image.open(raw).convert("RGBA")
    bg = Image.new("RGBA", img.size, (0, 0, 0, 0)); bg.paste(img, (0, 0), img); img = bg
    s = min(INNER_W / img.width, INNER_H / img.height)
    nw, nh = max(1, round(img.width * s)), max(1, round(img.height * s))
    img = img.resize((nw, nh), Image.LANCZOS)
    canvas = Image.new("RGB", (CANVAS_W, CANVAS_H), BORDER)
    canvas.paste(img, ((CANVAS_W - nw) // 2, (CANVAS_H - nh) // 2), img)
    canvas.save(f"{OUT}/dflag_{fkey(code)}.png", optimize=True)
    os.remove(raw)
    time.sleep(0.4)   # debit poli (evite le 429 Wikimedia)
    return True

def pixelize(code):
    img = Image.open(f"{OUT}/dflag_{fkey(code)}.png").convert("RGB")
    small = img.resize((max(1, CANVAS_W // PIX), max(1, CANVAS_H // PIX)), Image.BILINEAR)
    small.resize((CANVAS_W, CANVAS_H), Image.NEAREST).save(f"{OUT_PX}/dfpx_{fkey(code)}.png", optimize=True)

if not BANK_ONLY:
    print("Telechargement des %d images (Wikimedia)..." % len(DEPS))
    ok = 0
    for i, (code, nm, _, _) in enumerate(DEPS, 1):
        if fetch_and_norm(code):
            ok += 1
        if i % 20 == 0:
            print(f"  {i}/{len(DEPS)}...")
    print(f"OK : {ok}/{len(DEPS)} images normalisees dans {OUT}")
    print("Pixelisation...")
    for code, *_ in DEPS:
        if os.path.exists(f"{OUT}/dflag_{fkey(code)}.png"):
            pixelize(code)
    print(f"OK : images pixelisees dans {OUT_PX}")
else:
    print("(--bank-only : images non re-generees)")

# ---------------- banque Verse ----------------
ENONCE_N = {"FR": "Quel est ce departement ?", "EN": "Which French department is this?",
            "ES": "Que departamento frances es este?", "DE": "Welches franzoesische Departement ist das?",
            "IT": "Quale dipartimento francese e questo?"}
ENONCE_P = {"FR": "Quel est ce departement ? (drapeau pixelise)", "EN": "Which French department is this? (pixelated)",
            "ES": "Que departamento frances es este? (pixelado)", "DE": "Welches franzoesische Departement ist das? (verpixelt)",
            "IT": "Quale dipartimento francese e questo? (pixelato)"}
ALLCODES = [c for c, *_ in DEPS]

def distractors(code, seed):
    rng = random.Random(seed + code)
    twin = TWIN.get(code)
    pool = [c for c, _, r, _ in DEPS if r == REGION[code] and c != code and c != twin]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [c for c in ALLCODES if c != code and c != twin and c not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
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
    out = ["MakeDepFlagsQuestions%s() : []question =" % tag, "    array:"]
    for code, *_ in DEPS:   # 101 NORMAUX (palier 0/1)
        out += q_block(code, ENONCE_N[t], "dep_flags.dflag_%s" % fkey(code), "depflag-")
    for code, *_ in DEPS:   # 101 PIXELISES (palier 2)
        out += q_block(code, ENONCE_P[t], "dep_flags_pixel.dfpx_%s" % fkey(code), "depflag-px-")
    return "\n".join(out)

diffs = ", ".join([str(TIER[c]) for c, *_ in DEPS] + ["2"] * len(DEPS))
header = """using { /Verse.org/Assets }

# ============================================================
#  depflags_bank.verse — Banque DRAPEAUX DES DEPARTEMENTS (202 = 101 normal + 101 pixel).
#  GENERE par tools/banks/build_depts_flags.py — NE PAS EDITER A LA MAIN.
#  Drapeau si officiel (Wikidata P41) sinon blason (P94). Sources Wikimedia Commons.
#  3 paliers : Facile (communs) / Moyen / Difficile (pixelise).
# ============================================================

DepFlagsDiff : []int = array{%s}
""" % diffs

blocks = [header, bank("FR"),
          "MakeDepFlagsQuestions() : []question =\n    MakeDepFlagsQuestionsFR()",
          bank("EN"), bank("ES"), bank("DE"), bank("IT")]
dst = f"{ROOT}/verse/depflags_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
ts = [TIER[c] for c, *_ in DEPS]
print(f"OK : {dst}")
print("Paliers : Facile=%d / Moyen=%d / Difficile=%d (pixelise)" % (ts.count(0), ts.count(1), len(DEPS)))
