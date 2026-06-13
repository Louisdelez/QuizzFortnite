#!/usr/bin/env python3
# ============================================================
#  build_naruto.py — Quizz "Naruto" (personnages de tout le lore :
#  Naruto, Naruto Shippuden, Boruto) via l'API Jikan (MyAnimeList).
#  1. Recupere les personnages des 3 series (MAL 20 / 1735 / 34566),
#     fusionne les doublons (max favoris), filtre les images placeholder.
#  2. Telecharge les portraits officiels et les normalise pour UEFN :
#     canvas 246x164 (bloc image du HUD), portrait ajuste centre,
#     fond sombre (meme cadre que les drapeaux).
#     Sortie : naruto/naru_0001.png ...
#  3. Genere verse/naruto_bank.verse (fichier SEPARE) :
#     - NarutoDiff (palier 0/1/2 par question, selon les FAVORIS MAL :
#       0 = persos cultes, 1 = connus, 2 = obscurs)
#     - MakeNarutoQuestions() (FR, par blocs de 205) + wrappers
#       EN/ES/DE/IT (noms identiques dans toutes les langues,
#       seul l'enonce change) -> memes tirages partout.
#
#  NOTE PROPRIETE INTELLECTUELLE : personnages (c) Masashi Kishimoto /
#  Shueisha / Studio Pierrot. Usage prive/test OK ; risque de
#  moderation Epic a la publication (licence tierce).
# ============================================================
import json, os, random, sys, time, unicodedata, urllib.request
from concurrent.futures import ThreadPoolExecutor
from PIL import Image

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/naruto"
os.makedirs(OUT, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164
INNER_W, INNER_H = 240, 158
BORDER = (26, 26, 42)

SERIES = [20, 1735, 34566]   # Naruto, Naruto Shippuden, Boruto: NNG
CACHE = f"{ROOT}/tools/_naruto_chars.json"

# PIEGE UEFN : *_1001..*_2000 = tuiles UDIM -> "x" au-dela de 1000.
def naru_name(i):
    return "naru_x%d" % i if i >= 1001 else "naru_%04d" % i

def ascii_fold(s):
    s = s.replace("’", "'").replace("‘", "'")
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c))
    return " ".join(s.encode("ascii", "ignore").decode("ascii").split())

def display_name(mal_name):
    # MAL : "Uchiha, Sasuke" -> "Sasuke Uchiha" ; sinon tel quel.
    if ", " in mal_name:
        last, first = mal_name.split(", ", 1)
        return f"{first} {last}"
    return mal_name

# ---------------- 1) personnages des 3 series ----------------
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
        time.sleep(1.5)   # rate limit Jikan
    chars = list(merged.values())
    json.dump(chars, open(CACHE, "w", encoding="utf-8"))
    print(f"Total fusionne : {len(chars)}")

# filtre : image placeholder ("questionmark") ou absente, nom vide
chars = [c for c in chars if c["img"] and "questionmark" not in c["img"] and c["name"].strip()]
# noms affiches ASCII + dedoublonnage par nom (garde le plus connu)
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

# ---------------- 2) paliers par notoriete (favoris MAL) ----------------
EASY_N, MED_N = 60, 180   # top 60 = facile, 60..240 = moyen, reste = difficile
def tier_of(idx):
    if idx < EASY_N: return 0
    if idx < EASY_N + MED_N: return 1
    return 2

# ---------------- 3) telechargement des portraits ----------------
def fetch_one(args):
    idx, c = args
    dst = f"{OUT}/{naru_name(idx + 1)}.png"
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

# ---------------- 4) generation de naruto_bank.verse ----------------
ENONCE = {"FR": "Quel est ce personnage ?", "EN": "Who is this character?",
          "ES": "Quien es este personaje?", "DE": "Wer ist dieser Charakter?",
          "IT": "Chi e questo personaggio?"}

def distractors(idx):
    rng = random.Random("naruto-%d" % chars[idx]["id"])   # deterministe
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
    out = ["MakeNarutoQuestionsFR%d() : []question =" % (ci+1), "    array:"]
    for idx in range(lo, hi+1):
        picks, correct = distractors(idx)
        answers = [idx] + picks
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("        question:")
        out.append('            Enonce := "%s"' % ENONCE["FR"])
        out.append("            Image := option{ naruto.%s }" % naru_name(idx + 1))
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % chars[a]["disp"] for a in answers))
        out.append("            BonneReponse := %d" % answers.index(idx))
    parts.append("\n".join(out))
parts.append("MakeNarutoQuestionsFR() : []question =\n    " +
             " + ".join("MakeNarutoQuestionsFR%d()" % (c+1) for c in range(nchunks)))
parts.append("MakeNarutoQuestions() : []question =\n    MakeNarutoQuestionsFR()")
for tag in ("EN", "ES", "DE", "IT"):
    # NB : l'appel est HISSE hors du for (erreur 3512 sinon : no_rollback en contexte d'echec)
    parts.append("MakeNarutoQuestions%s() : []question =\n"
                 "    Base := MakeNarutoQuestionsFR()\n"
                 "    for (Q : Base):\n"
                 '        question{ Enonce := "%s", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }'
                 % (tag, ENONCE[tag]))

diffs = ", ".join(str(tier_of(i)) for i in range(N))
header = """using { /Verse.org/Assets }

# ============================================================
#  naruto_bank.verse — Banque du quizz NARUTO (%d personnages,
#  Naruto + Shippuden + Boruto, source MyAnimeList/Jikan).
#  GENERE par tools/build_naruto.py — NE PAS EDITER A LA MAIN.
#  Noms identiques dans les 5 langues -> banque FR + wrappers.
# ============================================================

# Palier par question (0 = cultes, 1 = connus, 2 = obscurs ; favoris MAL).
NarutoDiff : []int = array{%s}
""" % (N, diffs)

dst = f"{ROOT}/verse/naruto_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write(header + "\n" + "\n\n".join(parts) + "\n")
nl = sum(1 for _ in open(dst, encoding="utf-8"))
print(f"OK : {dst} genere ({nl} lignes)")
t0 = sum(1 for i in range(N) if tier_of(i) == 0)
t1 = sum(1 for i in range(N) if tier_of(i) == 1)
print("Paliers : Facile=%d Moyen=%d Difficile=%d" % (t0, t1, N - t0 - t1))
print("Top 10 :", ", ".join(c["disp"] for c in chars[:10]))
