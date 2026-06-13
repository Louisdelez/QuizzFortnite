#!/usr/bin/env python3
# ============================================================
#  build_flags_pixel.py — Quizz "Drapeaux pixelises" (variante hardcore)
#  Reutilise les 195 drapeaux deja telecharges (flags/flag_<iso>.png),
#  les pixelise fortement -> flags_pixel/fpx_<iso>.png (246x164).
#  Banque : memes 195 pays x5 langues, tirages propres (seed distinct).
#  Difficulte : on DECALE tout d'un cran vers le haut (un drapeau facile
#  pixelise = moyen, etc.) -> paliers 0/1/2 recalcules.
# ============================================================
import os, random, sys
from PIL import Image
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from country_core import C, NAME, REGION, TIER
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"
SRC = f"{ROOT}/flags"
OUT = f"{ROOT}/flags_pixel"
os.makedirs(OUT, exist_ok=True)
W, H = 246, 164
PIX = 11   # taille du bloc de pixelisation (plus grand = plus dur)

if not BANK_ONLY:
    print("Pixelisation des 195 drapeaux...")
    for iso, *_ in C:
        src = f"{SRC}/flag_{iso}.png"
        if not os.path.exists(src):
            print("MANQUE:", src); sys.exit(1)
        img = Image.open(src).convert("RGB")
        small = img.resize((max(1, W // PIX), max(1, H // PIX)), Image.BILINEAR)
        pix = small.resize((W, H), Image.NEAREST)
        pix.save(f"{OUT}/fpx_{iso}.png", optimize=True)
    print(f"OK : 195 drapeaux pixelises dans {OUT}")

# memes paliers que les drapeaux (un drapeau facile pixelise reste reconnaissable)
def tier_px(iso):
    return TIER[iso]

ENONCE = {"FR": "Quel est ce drapeau (pixelise) ?", "EN": "Which pixelated flag is this?",
          "ES": "Que bandera (pixelada) es esta?", "DE": "Welche verpixelte Flagge ist das?",
          "IT": "Quale bandiera (pixelata) e questa?"}
NAMES = {"FR": NAME, "EN": EN, "ES": ES, "DE": DE, "IT": IT}

def distractors(iso):
    rng = random.Random("fpx-" + iso)
    pool = [x for x, _, r, _ in C if r == REGION[iso] and x != iso]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [x for x, _, _, _ in C if x != iso and x not in picks]
        rng.shuffle(rest); picks += rest[:3 - len(picks)]
    correct = rng.randrange(4)
    return picks, correct

def bank(tag, name_of):
    out = ["MakeFlagsPixelQuestions%s() : []question =" % tag, "    array:"]
    for iso, *_ in C:
        picks, correct = distractors(iso)
        answers = [iso] + picks
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("        question:")
        out.append('            Enonce := "%s"' % ENONCE[tag if tag else "FR"])
        out.append("            Image := option{ flags_pixel.fpx_%s }" % iso)
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers))
        out.append("            BonneReponse := %d" % answers.index(iso))
    return "\n".join(out)

diffs = ", ".join(str(tier_px(iso)) for iso, *_ in C)
header = ("using { /Verse.org/Assets }\n\n# flags_pixel_bank.verse — Quizz DRAPEAUX PIXELISES\n"
          "# GENERE par tools/build_flags_pixel.py.\n\n"
          "FlagsPixelDiff : []int = array{%s}\n" % diffs)
blocks = [header, bank("FR", lambda i: NAME[i]),
          "MakeFlagsPixelQuestions() : []question =\n    MakeFlagsPixelQuestionsFR()",
          bank("EN", lambda i: EN[i]), bank("ES", lambda i: ES[i]),
          bank("DE", lambda i: DE[i]), bank("IT", lambda i: IT[i])]
dst = f"{ROOT}/verse/flags_pixel_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
print("OK :", dst)
ts = [tier_px(iso) for iso, *_ in C]
print("Paliers : %d/%d/%d" % (ts.count(0), ts.count(1), ts.count(2)))
