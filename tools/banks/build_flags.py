#!/usr/bin/env python3
# ============================================================
#  build_flags.py — Quizz "Drapeaux du monde" (195 pays, 3 paliers)
#
#  UN SEUL quizz, 3 difficultes (le moteur filtre par palier) :
#    0 = FACILE    : ~65 drapeaux communs/iconiques   -> image NORMALE
#    1 = MOYEN     : ~130 drapeaux moins communs       -> image NORMALE
#    2 = DIFFICILE : les 195 drapeaux                   -> image PIXELISEE
#
#  La banque generee contient donc 390 questions :
#    [195 questions image normale]  (palier 0 ou 1 selon notoriete)
#  + [195 questions image pixelisee] (palier 2, tous les pays)
#  FlagDiff est aligne sur cet ordre.
#
#  Pipeline :
#  1. Telecharge les VRAIS drapeaux (flagcdn.com, domaine public),
#     normalise 246x164 (ratio 3:2 du HUD, cadre sombre)
#       -> assets/flags/flag_<iso>.png
#  2. Pixelise fortement chaque drapeau (bloc PIX px)
#       -> assets/flags_pixel/fpx_<iso>.png
#  3. Genere la banque Verse (tools/_flags_bank.verse.txt) en 5 langues
#     (FR/EN/ES/DE/IT, memes tirages/indices). Distracteurs INTELLIGENTS :
#     drapeaux visuellement similaires (Tchad/Roumanie, Indonesie/Monaco...)
#     puis meme region. Deterministe (seed par pays).
#
#  --bank-only : ne re-telecharge ni ne re-pixelise les images.
# ============================================================
import os, random, sys, urllib.request
from PIL import Image
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION, EASY
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv

ROOT = _ROOT
OUT = f"{ROOT}/assets/flags"
OUT_PX = f"{ROOT}/assets/flags_pixel"
os.makedirs(OUT, exist_ok=True)
os.makedirs(OUT_PX, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164   # taille d'affichage HUD (ratio 3:2)
INNER_W, INNER_H = 240, 158     # zone drapeau (cadre 3px)
BORDER = (26, 26, 42)           # cadre sombre
PIX = 11                        # taille du bloc de pixelisation (plus grand = plus dur)

# ---------------- Palier FACILE : ~65 drapeaux communs / iconiques ----------------
# Tout pays hors de cette liste -> palier MOYEN (image normale).
# Le palier DIFFICILE = les 195 pays en version pixelisee (ajoute plus bas).
# EASY est mutualise dans country_core (partage avec build_carte.py) pour eviter
# toute desynchronisation des paliers entre les quizz Drapeaux et Carte.

def tier_normal(iso):
    return 0 if iso in EASY else 1

# ---------------- familles de drapeaux similaires (distracteurs credibles) ----------------
CONFUS = [
    ["ro", "td", "md", "ad"],                       # bleu-jaune-rouge verticaux
    ["id", "mc", "pl", "sg"],                       # rouge-blanc / blanc-rouge
    ["nl", "lu", "ru", "rs", "si", "sk", "hr"],     # tricolores horizontaux slaves
    ["fr", "nl", "ru", "lu"],
    ["ml", "sn", "gn", "cm", "gh", "bf", "bj"],     # panafricains
    ["ci", "ie", "it", "in", "ne"],                 # orange-blanc-vert
    ["no", "is", "dk", "se", "fi"],                 # croix nordiques
    ["au", "nz", "fj", "tv"],                       # Union Jack + etoiles
    ["bh", "qa"],                                   # bord dentele
    ["jo", "ps", "sd", "kw", "ae", "ye", "sy", "iq", "eg"],  # panarabes
    ["ve", "co", "ec"],                             # jaune-bleu-rouge
    ["ar", "uy", "sv", "ni", "hn", "gt"],           # bleu-blanc-bleu
    ["us", "lr", "my"],                             # rayures + canton
    ["tr", "tn", "pk", "dz"],                       # croissant
    ["cn", "vn", "ma"],                             # rouge + etoile(s)
    ("be", "de", "td"), ("mx", "it", "ie"),
    ["lt", "bo", "gh", "et"],                       # jaune-vert-rouge horizontaux
    ["ee", "lv", "at", "hu"],                       # tricolores horizontaux discrets
    ["cz", "ph", "cu", "cl"],                       # triangle lateral
    ["gr", "uy", "il"],                             # rayures bleu-blanc
    ["kp", "kr", "th", "cr", "cu"],
    ["bg", "hu", "it", "mx"],
    ["az", "uz", "tm"], ["ge", "dk", "ch"], ["am", "co", "ve"],
    ["la", "kh", "th"], ["mm", "gh", "zw"],
    ["sb", "vu", "mz", "zw"], ["ws", "to"], ["ki", "nr", "mh", "fm", "pw"],
    ["cg", "cd", "ga", "gq"], ["rw", "ug", "tz", "ke"],
    ["dm", "lc", "vc", "gd", "kn", "ag"],           # micro-Etats caraibes
    ["py", "sr", "gy"], ["bw", "ls", "sz", "na"],
]
CONF_MAP = {}
for grp in CONFUS:
    g = [x for x in grp if x in NAME]
    for iso in g:
        CONF_MAP.setdefault(iso, [])
        CONF_MAP[iso] += [x for x in g if x != iso and x not in CONF_MAP[iso]]

# ---------------- 1) telechargement + normalisation ----------------
def fetch_and_norm(iso):
    dst = f"{OUT}/flag_{iso}.png"
    raw = f"{OUT}/_raw_{iso}.png"
    if not os.path.exists(raw):
        urllib.request.urlretrieve(f"https://flagcdn.com/w320/{iso}.png", raw)
    img = Image.open(raw).convert("RGB")
    s = min(INNER_W / img.width, INNER_H / img.height)
    nw, nh = max(1, round(img.width * s)), max(1, round(img.height * s))
    img = img.resize((nw, nh), Image.LANCZOS)
    canvas = Image.new("RGB", (CANVAS_W, CANVAS_H), BORDER)
    canvas.paste(img, ((CANVAS_W - nw) // 2, (CANVAS_H - nh) // 2))
    canvas.save(dst, optimize=True)

def pixelize(iso):
    src = f"{OUT}/flag_{iso}.png"
    img = Image.open(src).convert("RGB")
    small = img.resize((max(1, CANVAS_W // PIX), max(1, CANVAS_H // PIX)), Image.BILINEAR)
    pix = small.resize((CANVAS_W, CANVAS_H), Image.NEAREST)
    pix.save(f"{OUT_PX}/fpx_{iso}.png", optimize=True)

if not BANK_ONLY:
    # purge des anciens drapeaux AVANT regeneration
    for f in os.listdir(OUT):
        if f.startswith("flag_") and f.endswith(".png"):
            os.remove(f"{OUT}/{f}")
    print("Telechargement + normalisation des 195 drapeaux (flagcdn.com)...")
    for i, (iso, name, _, _) in enumerate(C):
        fetch_and_norm(iso)
        if (i + 1) % 40 == 0:
            print(f"  {i + 1}/195...")
    for f in os.listdir(OUT):
        if f.startswith("_raw_"):
            os.remove(f"{OUT}/{f}")
    print(f"OK : 195 drapeaux normalises {CANVAS_W}x{CANVAS_H} dans {OUT}")
    print("Pixelisation des 195 drapeaux...")
    for iso, *_ in C:
        pixelize(iso)
    print(f"OK : 195 drapeaux pixelises dans {OUT_PX}")
else:
    print("(--bank-only : images non re-generees)")

# ---------------- 2) generation de la banque Verse ----------------
def distractors(iso, seed):
    rng = random.Random(seed + iso)   # deterministe par pays + variante
    pool = list(CONF_MAP.get(iso, []))
    region_pool = [x for x, _, r, _ in C
                   if r == REGION[iso] and x != iso and x not in pool]
    rng.shuffle(pool)
    rng.shuffle(region_pool)
    picks = (pool + region_pool)[:3]
    if len(picks) < 3:
        rest = [x for x, _, _, _ in C if x != iso and x not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    return picks, rng

def q_block(iso, name_of, enonce, img_ref, seed):
    picks, rng = distractors(iso, seed)
    answers = [iso] + picks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    return [
        "            question:",
        '                Enonce := "%s"' % enonce,
        "                Image := option{ %s }" % img_ref,
        "                Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers),
        "                BonneReponse := %d" % answers.index(iso),
    ]

def bank(fn, enonce_n, enonce_p, name_of, comment):
    out = ["    " + comment, "    %s() : []question =" % fn, "        array:"]
    # 195 questions image NORMALE (palier 0/1) — module Verse flags/
    for iso, *_ in C:
        out += q_block(iso, name_of, enonce_n, "flags.flag_%s" % iso, "quizz-")
    # 195 questions image PIXELISEE (palier 2) — module Verse flags_pixel/
    for iso, *_ in C:
        out += q_block(iso, name_of, enonce_p, "flags_pixel.fpx_%s" % iso, "quizz-px-")
    return "\n".join(out) + "\n"

# FlagDiff : [tier normal x195] + [2 x195]  (aligne sur l'ordre des questions)
diffs = [str(tier_normal(iso)) for iso, *_ in C] + ["2"] * len(C)

bank_fr = bank("MakeQuestions",
               "Quel est ce pays ?", "Quel est ce pays ? (drapeau pixelise)",
               lambda i: NAME[i],
               "# ===== Banque DRAPEAUX FR (390) — GENEREE par build_flags.py, NE PAS EDITER =====")
bank_en = bank("MakeQuestionsEN",
               "Which country is this?", "Which country is this? (pixelated flag)",
               lambda i: EN[i],
               "# ===== Banque DRAPEAUX EN (390) — memes tirages/indices que la banque FR =====")
bank_es = bank("MakeQuestionsES",
               "Que pais es este?", "Que pais es este? (bandera pixelada)",
               lambda i: ES[i],
               "# ===== Banque DRAPEAUX ES (390) — memes tirages/indices que la banque FR =====")
bank_de = bank("MakeQuestionsDE",
               "Welches Land ist das?", "Welches Land ist das? (verpixelte Flagge)",
               lambda i: DE[i],
               "# ===== Banque DRAPEAUX DE (390) — memes tirages/indices que la banque FR =====")
bank_it = bank("MakeQuestionsIT",
               "Quale paese e questo?", "Quale paese e questo? (bandiera pixelata)",
               lambda i: IT[i],
               "# ===== Banque DRAPEAUX IT (390) — memes tirages/indices que la banque FR =====")

with open(f"{ROOT}/tools/_flags_bank.verse.txt", "w", encoding="utf-8", newline="\n") as f:
    f.write(bank_fr + "\n" + bank_en + "\n" + bank_es + "\n" + bank_de + "\n" + bank_it)

# La ligne FlagDiff (a coller a la main dans quiz_manager.verse, ligne ~258 ;
# elle n'est PAS dans la zone greffee par inject_banks.py).
flagdiff_line = "    FlagDiff : []int = array{%s}" % ", ".join(diffs)
with open(f"{ROOT}/tools/_flags_diff.txt", "w", encoding="utf-8", newline="\n") as f:
    f.write(flagdiff_line + "\n")

print("OK : banques drapeaux FR+EN+ES+DE+IT generees (390 questions/langue)")
print("OK : FlagDiff (390) ecrit dans tools/_flags_diff.txt")
ts = [tier_normal(iso) for iso, *_ in C]
print("Paliers : Facile=%d (normal) / Moyen=%d (normal) / Difficile=%d (pixelise)"
      % (ts.count(0), ts.count(1), len(C)))
