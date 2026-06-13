#!/usr/bin/env python3
# ============================================================
#  build_dragonball.py — Quizz "Dragon Ball" (personnages de tout
#  le lore : Dragon Ball, Z, GT, Super) via l'API Jikan (MAL).
#  Meme pipeline que build_naruto.py / build_onepiece.py :
#  1. Recupere les personnages des 4 series, fusionne les doublons
#     (max favoris), filtre les images placeholder.
#  2. Telecharge les portraits -> dragonball/db_0001.png...
#  3. Genere verse/dragonball_bank.verse (fichier SEPARE) :
#     - DragonBallDiff (palier 0/1/2 par FAVORIS MAL)
#     - MakeDragonBallQuestions() (FR, blocs de 205) + wrappers
#       EN/ES/DE/IT (noms identiques, seul l'enonce change).
#
#  NOTE PROPRIETE INTELLECTUELLE : personnages (c) Akira Toriyama /
#  Shueisha / Toei Animation. Usage prive/test OK ; risque de
#  moderation Epic a la publication (licence tierce).
# ============================================================
import json, os, random, sys, time, unicodedata, urllib.request
from concurrent.futures import ThreadPoolExecutor
from PIL import Image

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/dragonball"
os.makedirs(OUT, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 240, 158
BORDER = (26, 26, 42)

SERIES = [223, 813, 225, 30694]   # Dragon Ball, Z, GT, Super
CACHE = f"{ROOT}/tools/_dragonball_chars.json"

# PIEGE UEFN : *_1001..*_2000 = tuiles UDIM -> "x" au-dela de 1000.
def db_name(i):
    return "db_x%d" % i if i >= 1001 else "db_%04d" % i

# romanisation MAL -> formes usuelles (connues du grand public)
import re
FIXUPS = {"Gokuu": "Goku", "Gokou": "Goku", "Kuririn": "Krillin",
          "Muten-Roushi": "Master Roshi", "Juubei": "Jubei"}
def fix_android(s):
    # "Jinzouningen 18-gou" -> "Android 18" (C-18 etc.)
    return re.sub(r"Jinzouningen (\d+)-gou", r"Android \1", s)

def ascii_fold(s):
    s = s.replace("’", "'").replace("‘", "'")
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c))
    return " ".join(s.encode("ascii", "ignore").decode("ascii").split())

def display_name(mal_name):
    # Dragon Ball : ordre japonais usuel ("Son, Gokuu" -> "Son Goku").
    s = mal_name.replace(", ", " ")
    for a, b in FIXUPS.items():
        s = s.replace(a, b)
    return fix_android(s)

# ---------------- 1) personnages des 4 series ----------------
if os.path.exists(CACHE):
    chars = json.load(open(CACHE, encoding="utf-8"))
    print(f"Cache personnages : {len(chars)}")
else:
    merged = {}
    for sid in SERIES:
        url = f"https://api.jikan.moe/v4/anime/{sid}/characters"
        req = urllib.request.Request(url, headers={"User-Agent": "QuizzFortnite/1.0"})
        data = json.load(urllib.request.urlopen(req, timeout=60))["data"]
        print(f"  serie MAL {sid} : {len(data)} personnages")
        for e in data:
            c = e["character"]
            cid = c["mal_id"]
            img = (c.get("images", {}).get("jpg", {}) or {}).get("image_url") or ""
            fav = e.get("favorites") or 0
            if cid in merged:
                merged[cid]["fav"] = max(merged[cid]["fav"], fav)
            else:
                merged[cid] = {"id": cid, "name": c["name"], "img": img, "fav": fav}
        time.sleep(1.5)
    chars = list(merged.values())
    json.dump(chars, open(CACHE, "w", encoding="utf-8"))
    print(f"Total fusionne : {len(chars)}")

chars = [c for c in chars if c["img"] and "questionmark" not in c["img"] and c["name"].strip()]
for c in chars:
    c["disp"] = ascii_fold(display_name(c["name"]))
chars = [c for c in chars if c["disp"]]
best = {}
for c in chars:
    if c["disp"] not in best or c["fav"] > best[c["disp"]]["fav"]:
        best[c["disp"]] = c
chars = sorted(best.values(), key=lambda c: (-c["fav"], c["disp"]))
N = len(chars)
print(f"Personnages retenus : {N}")

# ---------------- 2) paliers par notoriete ----------------
EASY_N, MED_N = 50, 150
def tier_of(idx):
    if idx < EASY_N: return 0
    if idx < EASY_N + MED_N: return 1
    return 2

# ---------------- 3) portraits ----------------
def fetch_one(args):
    idx, c = args
    dst = f"{OUT}/{db_name(idx + 1)}.png"
    if os.path.exists(dst): return None
    raw_p = f"{OUT}/_raw_{c['id']}.img"
    try:
        if not os.path.exists(raw_p):
            req = urllib.request.Request(c["img"], headers={"User-Agent": "QuizzFortnite/1.0"})
            open(raw_p, "wb").write(urllib.request.urlopen(req, timeout=60).read())
        img = Image.open(raw_p).convert("RGB")
        s = min(INNER_W / img.width, INNER_H / img.height)
        nw, nh = max(1, round(img.width * s)), max(1, round(img.height * s))
        img = img.resize((nw, nh), Image.LANCZOS)
        canvas = Image.new("RGB", (CANVAS_W, CANVAS_H), BORDER)
        canvas.paste(img, ((CANVAS_W - nw) // 2, (CANVAS_H - nh) // 2))
        canvas.save(dst, optimize=True)
        os.remove(raw_p)
        return None
    except Exception as e:
        return f"#{idx+1} {c['disp']}: {type(e).__name__} {e}"

if not BANK_ONLY:
    print(f"Telechargement des {N} portraits (MAL CDN)...")
    errs = []
    with ThreadPoolExecutor(max_workers=8) as ex:
        for k, r in enumerate(ex.map(fetch_one, enumerate(chars)), 1):
            if r: errs.append(r)
            if k % 100 == 0: print(f"  {k}/{N}...")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]
        sys.exit(1)
    print(f"OK : {N} portraits normalises {CANVAS_W}x{CANVAS_H} dans {OUT}")

# ---------------- 4) generation de dragonball_bank.verse ----------------
ENONCE = {"FR": "Quel est ce personnage ?", "EN": "Who is this character?",
          "ES": "Quien es este personaje?", "DE": "Wer ist dieser Charakter?",
          "IT": "Chi e questo personaggio?"}

def distractors(idx):
    rng = random.Random("dragonball-%d" % chars[idx]["id"])
    t = tier_of(idx)
    pool = [j for j in range(N) if j != idx and tier_of(j) == t]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [j for j in range(N) if j != idx and j not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    correct = rng.randrange(4)
    return picks, correct

CHUNK = 205
nchunks = (N + CHUNK - 1) // CHUNK
parts = []
for ci in range(nchunks):
    lo, hi = ci*CHUNK, min((ci+1)*CHUNK, N) - 1
    out = ["MakeDragonBallQuestionsFR%d() : []question =" % (ci+1), "    array:"]
    for idx in range(lo, hi+1):
        picks, correct = distractors(idx)
        answers = [idx] + picks
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("        question:")
        out.append('            Enonce := "%s"' % ENONCE["FR"])
        out.append("            Image := option{ dragonball.%s }" % db_name(idx + 1))
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % chars[a]["disp"] for a in answers))
        out.append("            BonneReponse := %d" % answers.index(idx))
    parts.append("\n".join(out))
parts.append("MakeDragonBallQuestionsFR() : []question =\n    " +
             " + ".join("MakeDragonBallQuestionsFR%d()" % (c+1) for c in range(nchunks)))
parts.append("MakeDragonBallQuestions() : []question =\n    MakeDragonBallQuestionsFR()")
for tag in ("EN", "ES", "DE", "IT"):
    # NB : l'appel est HISSE hors du for (erreur 3512 sinon)
    parts.append("MakeDragonBallQuestions%s() : []question =\n"
                 "    Base := MakeDragonBallQuestionsFR()\n"
                 "    for (Q : Base):\n"
                 '        question{ Enonce := "%s", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }'
                 % (tag, ENONCE[tag]))

diffs = ", ".join(str(tier_of(i)) for i in range(N))
header = """using { /Verse.org/Assets }

# ============================================================
#  dragonball_bank.verse — Banque du quizz DRAGON BALL (%d persos,
#  DB + Z + GT + Super, source MyAnimeList/Jikan).
#  GENERE par tools/build_dragonball.py — NE PAS EDITER A LA MAIN.
#  Noms identiques dans les 5 langues -> banque FR + wrappers.
# ============================================================

# Palier par question (0 = cultes, 1 = connus, 2 = obscurs ; favoris MAL).
DragonBallDiff : []int = array{%s}
""" % (N, diffs)

dst = f"{ROOT}/verse/dragonball_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write(header + "\n" + "\n\n".join(parts) + "\n")
nl = sum(1 for _ in open(dst, encoding="utf-8"))
print(f"OK : {dst} genere ({nl} lignes)")
t0 = sum(1 for i in range(N) if tier_of(i) == 0)
t1 = sum(1 for i in range(N) if tier_of(i) == 1)
print("Paliers : Facile=%d Moyen=%d Difficile=%d" % (t0, t1, N - t0 - t1))
print("Top 15 :", ", ".join(c["disp"] for c in chars[:15]))
