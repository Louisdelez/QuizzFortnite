#!/usr/bin/env python3
# ============================================================
#  build_pokemon.py — Quizz "Pokemon" complet (1025 Pokemon, Gen 1-9)
#  1. Telecharge les noms officiels FR/EN/ES/DE/IT (PokeAPI CSV).
#     ES et IT utilisent officiellement les noms anglais -> wrappers.
#  2. Telecharge les 1025 artworks officiels (PokeAPI sprites) et les
#     normalise pour UEFN : canvas 246x164 RGBA transparent (ratio du
#     bloc image du HUD), artwork ajuste centre.
#     Sortie : pokemon/poke_0001.png ... poke_1025.png
#  3. Genere verse/pokemon_bank.verse (fichier SEPARE de quiz_manager,
#     fonctions decoupees en blocs de 205 questions pour la compile) :
#     - PokeDiff (palier 0/1/2 par question)
#     - MakePokemonQuestions()/EN/ES/DE/IT : 4 reponses, distracteurs
#       de la MEME generation, tirages deterministes IDENTIQUES.
#
#  Difficulte par generation (notoriete decroissante) :
#    0 = Facile    : Gen 1 (#1-151)
#    1 = Moyen     : Gen 2-3 (#152-386)
#    2 = Difficile : Gen 4-9 (#387-1025)
#
#  NOTE PROPRIETE INTELLECTUELLE : images et noms (c) Nintendo /
#  The Pokemon Company. Usage prive/test OK ; risque de moderation
#  Epic a la publication d'une ile utilisant une licence tierce.
# ============================================================
import csv, io, os, random, sys, unicodedata, urllib.request
from concurrent.futures import ThreadPoolExecutor
from PIL import Image

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/pokemon"
os.makedirs(OUT, exist_ok=True)

N_MAX = 1025                     # Gen 1-9 complet (#1025 Pechaminus)
CANVAS_W, CANVAS_H = 246, 164    # bloc image du HUD (meme que drapeaux)
ART = 158                        # cote max de l'artwork dans le canvas

CSV_URL = "https://raw.githubusercontent.com/PokeAPI/pokeapi/master/data/v2/csv/pokemon_species_names.csv"
ART_URL = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/{id}.png"

# generations (bornes incluses) -> palier
GENS = [(1,151),(152,251),(252,386),(387,493),(494,649),(650,721),(722,809),(810,905),(906,1025)]
def gen_of(i):
    for g,(a,b) in enumerate(GENS, 1):
        if a <= i <= b: return g
    return 9
def tier_of(i):
    g = gen_of(i)
    if g == 1: return 0
    if g <= 3: return 1
    return 2

# PIEGE UEFN : les fichiers *_1001..*_2000 sont interpretes comme tuiles UDIM
# et fusionnes en une seule texture ! Au-dela de 1000 on insere un "x".
def poke_name(i):
    return "poke_x%d" % i if i >= 1001 else "poke_%04d" % i

def ascii_fold(s):
    s = s.replace("♀", " F").replace("♂", " M")  # Nidoran femelle/male
    s = s.replace("’", "'").replace("‘", "'")
    s = unicodedata.normalize("NFKD", s)
    s = "".join(c for c in s if not unicodedata.combining(c))
    s = s.encode("ascii", "ignore").decode("ascii")
    return " ".join(s.split())

# ---------------- 1) noms officiels 5 langues ----------------
print("Telechargement des noms (PokeAPI CSV)...")
raw = urllib.request.urlopen(CSV_URL, timeout=60).read().decode("utf-8")
NAMES = {L: {} for L in (5, 6, 7, 8, 9)}   # 5=fr 6=de 7=es 8=it 9=en
for row in csv.DictReader(io.StringIO(raw)):
    sid = int(row["pokemon_species_id"])
    lang = int(row["local_language_id"])
    if sid <= N_MAX and lang in NAMES:
        NAMES[lang][sid] = ascii_fold(row["name"])
FR, DE_, ES_, IT_, EN_ = NAMES[5], NAMES[6], NAMES[7], NAMES[8], NAMES[9]
for L, d in (("FR",FR),("EN",EN_),("ES",ES_),("DE",DE_),("IT",IT_)):
    missing = [i for i in range(1, N_MAX+1) if i not in d]
    for i in missing: d[i] = EN_.get(i, f"Pokemon {i}")
    if missing: print(f"  {L}: {len(missing)} noms manquants -> nom EN")
es_is_en = all(ES_[i] == EN_[i] for i in range(1, N_MAX+1))
it_is_en = all(IT_[i] == EN_[i] for i in range(1, N_MAX+1))
print(f"OK noms : ES==EN {es_is_en} | IT==EN {it_is_en}")

# ---------------- 2) artworks ----------------
def fetch_one(i):
    dst = f"{OUT}/{poke_name(i)}.png"
    if os.path.exists(dst): return None
    raw_p = f"{OUT}/_raw_{i}.png"
    try:
        if not os.path.exists(raw_p):
            urllib.request.urlretrieve(ART_URL.format(id=i), raw_p)
        img = Image.open(raw_p).convert("RGBA")
        img.thumbnail((ART, ART), Image.LANCZOS)
        canvas = Image.new("RGBA", (CANVAS_W, CANVAS_H), (0, 0, 0, 0))
        canvas.paste(img, ((CANVAS_W - img.width)//2, (CANVAS_H - img.height)//2), img)
        canvas.save(dst, optimize=True)
        os.remove(raw_p)
        return None
    except Exception as e:
        return f"#{i}: {type(e).__name__} {e}"

if not BANK_ONLY:
    print(f"Telechargement des {N_MAX} artworks (PokeAPI sprites)...")
    errs = []
    with ThreadPoolExecutor(max_workers=8) as ex:
        for k, r in enumerate(ex.map(fetch_one, range(1, N_MAX+1)), 1):
            if r: errs.append(r)
            if k % 100 == 0: print(f"  {k}/{N_MAX}...")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]
        sys.exit(1)
    print(f"OK : {N_MAX} artworks normalises {CANVAS_W}x{CANVAS_H} dans {OUT}")

# ---------------- 3) generation de pokemon_bank.verse ----------------
ENONCE = {"FR": "Quel est ce Pokemon ?", "EN": "Who's that Pokemon?",
          "ES": "Quien es ese Pokemon?", "DE": "Wer ist dieses Pokemon?",
          "IT": "Chi e quel Pokemon?"}

def distractors(i):
    rng = random.Random("pokemon-%d" % i)   # deterministe, partage entre langues
    g = gen_of(i)
    a, b = GENS[g-1]
    pool = [x for x in range(a, b+1) if x != i]
    rng.shuffle(pool)
    picks = pool[:3]
    correct = rng.randrange(4)
    return picks, correct

CHUNK = 205
def bank_lang(tag, name_of):
    # fonctions en blocs de 205 questions + aggregateur (limites de compile Verse)
    parts = []
    nchunks = (N_MAX + CHUNK - 1) // CHUNK
    for c in range(nchunks):
        lo, hi = c*CHUNK + 1, min((c+1)*CHUNK, N_MAX)
        out = ["MakePokemonQuestions%s%d() : []question =" % (tag, c+1), "    array:"]
        for i in range(lo, hi+1):
            picks, correct = distractors(i)
            answers = [i] + picks
            answers[0], answers[correct] = answers[correct], answers[0]
            out.append("        question:")
            out.append('            Enonce := "%s"' % ENONCE[tag if tag else "FR"])
            out.append("            Image := option{ pokemon.%s }" % poke_name(i))
            out.append("            Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers))
            out.append("            BonneReponse := %d" % answers.index(i))
        parts.append("\n".join(out))
    agg = "MakePokemonQuestions%s() : []question =\n    %s" % (
        tag, " + ".join("MakePokemonQuestions%s%d()" % (tag, c+1) for c in range(nchunks)))
    parts.append(agg)
    return "\n\n".join(parts)

def wrapper(tag, base):
    return ("MakePokemonQuestions%s() : []question =\n"
            "    for (Q : MakePokemonQuestions%s()):\n"
            '        question{ Enonce := "%s", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }'
            % (tag, base, ENONCE[tag]))

diffs = ", ".join(str(tier_of(i)) for i in range(1, N_MAX+1))
header = """using { /Verse.org/Assets }

# ============================================================
#  pokemon_bank.verse — Banque du quizz POKEMON (1025, Gen 1-9)
#  GENERE par tools/build_pokemon.py — NE PAS EDITER A LA MAIN.
#  Tirages/indices IDENTIQUES dans les 5 langues (seed par Pokemon).
#  ES/IT : noms officiels = noms anglais (wrappers sur la banque EN).
# ============================================================

# Palier de chaque question (0 = Gen 1, 1 = Gen 2-3, 2 = Gen 4-9).
PokeDiff : []int = array{%s}
""" % diffs

blocks = [header]
blocks.append("# ===== Banque POKEMON FR =====\n" + bank_lang("FR", lambda i: FR[i]))
blocks.append("MakePokemonQuestions() : []question =\n    MakePokemonQuestionsFR()")
blocks.append("# ===== Banque POKEMON EN — memes tirages que FR =====\n" + bank_lang("EN", lambda i: EN_[i]))
blocks.append("# ===== Banque POKEMON DE — memes tirages que FR =====\n" + bank_lang("DE", lambda i: DE_[i]))
blocks.append("# ===== Banque POKEMON ES =====\n" + (wrapper("ES", "EN") if es_is_en else bank_lang("ES", lambda i: ES_[i])))
blocks.append("# ===== Banque POKEMON IT =====\n" + (wrapper("IT", "EN") if it_is_en else bank_lang("IT", lambda i: IT_[i])))

dst = f"{ROOT}/verse/pokemon_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
nl = sum(1 for _ in open(dst, encoding="utf-8"))
print(f"OK : {dst} genere ({nl} lignes)")
print("Paliers : Facile=%d Moyen=%d Difficile=%d" % (
    sum(1 for i in range(1,N_MAX+1) if tier_of(i)==0),
    sum(1 for i in range(1,N_MAX+1) if tier_of(i)==1),
    sum(1 for i in range(1,N_MAX+1) if tier_of(i)==2)))
