#!/usr/bin/env python3
# ============================================================
#  build_flags.py — Quizz "Drapeaux du monde" complet (195 pays)
#  1. Telecharge les VRAIS drapeaux des 195 pays (193 ONU + Vatican
#     + Palestine) depuis flagcdn.com (domaine public).
#  2. Normalise pour UEFN : canvas 246x164 (ratio 3:2 du HUD),
#     drapeau ajuste centre, cadre sombre (lisibilite sur le ciel).
#     Sortie : flags/flag_<iso2>.png
#  3. Genere la banque Verse (tools/_flags_bank.verse.txt) :
#     - FlagDiff (palier 0/1/2 par question)
#     - MakeQuestions() avec 4 reponses par question, distracteurs
#       INTELLIGENTS : drapeaux visuellement similaires (Tchad/Roumanie,
#       Indonesie/Monaco/Pologne, croix nordiques, panafricains,
#       panarabes...) puis meme region. Deterministe (seed par pays).
#
#  Difficulte (analyse notoriete pays + identifiabilite drapeau) :
#    0 = Facile    : pays tres connus, drapeaux iconiques (~41)
#    1 = Moyen     : pays connus, drapeaux moins distinctifs (~62)
#    2 = Difficile : micro-Etats, pays peu connus, drapeaux confusables (~92)
# ============================================================
import os, random, sys, urllib.request
from PIL import Image
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT

BANK_ONLY = "--bank-only" in sys.argv

ROOT = "D:/QuizzFortnite"
OUT = f"{ROOT}/assets/flags"
os.makedirs(OUT, exist_ok=True)

CANVAS_W, CANVAS_H = 246, 164   # taille d'affichage HUD (ratio 3:2)
INNER_W, INNER_H = 240, 158     # zone drapeau (cadre 3px)
BORDER = (26, 26, 42)           # cadre sombre

# ---------------- 195 pays : (iso2, nom_fr_ascii, region, palier) ----------------
C = [
    # --- Europe de l'Ouest / Nord ---
    ("fr", "France", "EUR_W", 0), ("de", "Allemagne", "EUR_W", 0), ("it", "Italie", "EUR_W", 0),
    ("es", "Espagne", "EUR_W", 0), ("pt", "Portugal", "EUR_W", 0), ("gb", "Royaume-Uni", "EUR_W", 0),
    ("ie", "Irlande", "EUR_W", 0), ("be", "Belgique", "EUR_W", 0), ("nl", "Pays-Bas", "EUR_W", 0),
    ("lu", "Luxembourg", "EUR_W", 1), ("ch", "Suisse", "EUR_W", 0), ("at", "Autriche", "EUR_W", 0),
    ("mc", "Monaco", "EUR_W", 1), ("ad", "Andorre", "EUR_W", 2), ("li", "Liechtenstein", "EUR_W", 2),
    ("sm", "Saint-Marin", "EUR_W", 2), ("va", "Vatican", "EUR_W", 1), ("mt", "Malte", "EUR_W", 1),
    ("is", "Islande", "EUR_W", 1), ("no", "Norvege", "EUR_W", 0), ("se", "Suede", "EUR_W", 0),
    ("dk", "Danemark", "EUR_W", 0), ("fi", "Finlande", "EUR_W", 0),
    # --- Europe de l'Est / Balkans / Baltique ---
    ("pl", "Pologne", "EUR_E", 0), ("cz", "Tchequie", "EUR_E", 1), ("sk", "Slovaquie", "EUR_E", 2),
    ("hu", "Hongrie", "EUR_E", 1), ("si", "Slovenie", "EUR_E", 2), ("hr", "Croatie", "EUR_E", 1),
    ("ba", "Bosnie-Herzegovine", "EUR_E", 2), ("rs", "Serbie", "EUR_E", 1), ("me", "Montenegro", "EUR_E", 2),
    ("mk", "Macedoine du Nord", "EUR_E", 2), ("al", "Albanie", "EUR_E", 1), ("gr", "Grece", "EUR_E", 0),
    ("bg", "Bulgarie", "EUR_E", 1), ("ro", "Roumanie", "EUR_E", 1), ("md", "Moldavie", "EUR_E", 2),
    ("ua", "Ukraine", "EUR_E", 0), ("by", "Bielorussie", "EUR_E", 1), ("ru", "Russie", "EUR_E", 0),
    ("ee", "Estonie", "EUR_E", 1), ("lv", "Lettonie", "EUR_E", 1), ("lt", "Lituanie", "EUR_E", 1),
    ("cy", "Chypre", "EUR_E", 2),
    # --- Moyen-Orient / Caucase ---
    ("tr", "Turquie", "MEAST", 0), ("il", "Israel", "MEAST", 0), ("ps", "Palestine", "MEAST", 1),
    ("lb", "Liban", "MEAST", 1), ("sy", "Syrie", "MEAST", 1), ("jo", "Jordanie", "MEAST", 2),
    ("iq", "Irak", "MEAST", 1), ("ir", "Iran", "MEAST", 1), ("sa", "Arabie saoudite", "MEAST", 0),
    ("ye", "Yemen", "MEAST", 2), ("om", "Oman", "MEAST", 2), ("ae", "Emirats arabes unis", "MEAST", 1),
    ("qa", "Qatar", "MEAST", 1), ("bh", "Bahrein", "MEAST", 2), ("kw", "Koweit", "MEAST", 1),
    ("ge", "Georgie", "MEAST", 2), ("am", "Armenie", "MEAST", 2), ("az", "Azerbaidjan", "MEAST", 2),
    # --- Asie centrale ---
    ("kz", "Kazakhstan", "ASIA_C", 1), ("uz", "Ouzbekistan", "ASIA_C", 2), ("tm", "Turkmenistan", "ASIA_C", 2),
    ("kg", "Kirghizistan", "ASIA_C", 2), ("tj", "Tadjikistan", "ASIA_C", 2), ("af", "Afghanistan", "ASIA_C", 1),
    ("mn", "Mongolie", "ASIA_C", 1),
    # --- Asie ---
    ("cn", "Chine", "ASIA", 0), ("jp", "Japon", "ASIA", 0), ("kr", "Coree du Sud", "ASIA", 0),
    ("kp", "Coree du Nord", "ASIA", 1), ("in", "Inde", "ASIA", 0), ("pk", "Pakistan", "ASIA", 1),
    ("bd", "Bangladesh", "ASIA", 1), ("lk", "Sri Lanka", "ASIA", 2), ("np", "Nepal", "ASIA", 1),
    ("bt", "Bhoutan", "ASIA", 2), ("mv", "Maldives", "ASIA", 2), ("mm", "Birmanie", "ASIA", 2),
    ("th", "Thailande", "ASIA", 0), ("la", "Laos", "ASIA", 2), ("kh", "Cambodge", "ASIA", 1),
    ("vn", "Vietnam", "ASIA", 0), ("my", "Malaisie", "ASIA", 1), ("sg", "Singapour", "ASIA", 1),
    ("id", "Indonesie", "ASIA", 1), ("bn", "Brunei", "ASIA", 2), ("ph", "Philippines", "ASIA", 1),
    ("tl", "Timor oriental", "ASIA", 2),
    # --- Oceanie ---
    ("au", "Australie", "OCE", 0), ("nz", "Nouvelle-Zelande", "OCE", 0),
    ("pg", "Papouasie-Nouvelle-Guinee", "OCE", 2), ("fj", "Fidji", "OCE", 2),
    ("sb", "Iles Salomon", "OCE", 2), ("vu", "Vanuatu", "OCE", 2), ("ws", "Samoa", "OCE", 2),
    ("to", "Tonga", "OCE", 2), ("tv", "Tuvalu", "OCE", 2), ("ki", "Kiribati", "OCE", 2),
    ("nr", "Nauru", "OCE", 2), ("pw", "Palaos", "OCE", 2), ("fm", "Micronesie", "OCE", 2),
    ("mh", "Iles Marshall", "OCE", 2),
    # --- Afrique ---
    ("ma", "Maroc", "AFR", 0), ("dz", "Algerie", "AFR", 0), ("tn", "Tunisie", "AFR", 0),
    ("ly", "Libye", "AFR", 1), ("eg", "Egypte", "AFR", 0), ("sd", "Soudan", "AFR", 2),
    ("ss", "Soudan du Sud", "AFR", 2), ("et", "Ethiopie", "AFR", 1), ("er", "Erythree", "AFR", 2),
    ("dj", "Djibouti", "AFR", 2), ("so", "Somalie", "AFR", 1), ("ke", "Kenya", "AFR", 1),
    ("ug", "Ouganda", "AFR", 2), ("tz", "Tanzanie", "AFR", 1), ("rw", "Rwanda", "AFR", 2),
    ("bi", "Burundi", "AFR", 2), ("cd", "RD Congo", "AFR", 1), ("cg", "Congo", "AFR", 2),
    ("ga", "Gabon", "AFR", 2), ("gq", "Guinee equatoriale", "AFR", 2), ("cm", "Cameroun", "AFR", 1),
    ("cf", "Centrafrique", "AFR", 2), ("td", "Tchad", "AFR", 2), ("ne", "Niger", "AFR", 2),
    ("ng", "Nigeria", "AFR", 1), ("bj", "Benin", "AFR", 2), ("tg", "Togo", "AFR", 2),
    ("gh", "Ghana", "AFR", 1), ("ci", "Cote d'Ivoire", "AFR", 1), ("lr", "Liberia", "AFR", 2),
    ("sl", "Sierra Leone", "AFR", 2), ("gn", "Guinee", "AFR", 2), ("gw", "Guinee-Bissau", "AFR", 2),
    ("sn", "Senegal", "AFR", 1), ("gm", "Gambie", "AFR", 2), ("ml", "Mali", "AFR", 1),
    ("bf", "Burkina Faso", "AFR", 2), ("mr", "Mauritanie", "AFR", 2), ("cv", "Cap-Vert", "AFR", 2),
    ("st", "Sao Tome-et-Principe", "AFR", 2), ("ao", "Angola", "AFR", 1), ("zm", "Zambie", "AFR", 2),
    ("zw", "Zimbabwe", "AFR", 1), ("mw", "Malawi", "AFR", 2), ("mz", "Mozambique", "AFR", 2),
    ("mg", "Madagascar", "AFR", 1), ("km", "Comores", "AFR", 2), ("mu", "Maurice", "AFR", 2),
    ("sc", "Seychelles", "AFR", 2), ("za", "Afrique du Sud", "AFR", 0), ("na", "Namibie", "AFR", 2),
    ("bw", "Botswana", "AFR", 2), ("ls", "Lesotho", "AFR", 2), ("sz", "Eswatini", "AFR", 2),
    # --- Ameriques ---
    ("us", "Etats-Unis", "AMER_N", 0), ("ca", "Canada", "AMER_N", 0), ("mx", "Mexique", "AMER_N", 0),
    ("gt", "Guatemala", "AMER_C", 2), ("bz", "Belize", "AMER_C", 2), ("hn", "Honduras", "AMER_C", 2),
    ("sv", "Salvador", "AMER_C", 2), ("ni", "Nicaragua", "AMER_C", 2), ("cr", "Costa Rica", "AMER_C", 1),
    ("pa", "Panama", "AMER_C", 1), ("bs", "Bahamas", "AMER_C", 2), ("cu", "Cuba", "AMER_C", 0),
    ("jm", "Jamaique", "AMER_C", 1), ("ht", "Haiti", "AMER_C", 1), ("do", "Republique dominicaine", "AMER_C", 1),
    ("kn", "Saint-Kitts-et-Nevis", "AMER_C", 2), ("ag", "Antigua-et-Barbuda", "AMER_C", 2),
    ("dm", "Dominique", "AMER_C", 2), ("lc", "Sainte-Lucie", "AMER_C", 2), ("vc", "Saint-Vincent", "AMER_C", 2),
    ("bb", "Barbade", "AMER_C", 2), ("gd", "Grenade", "AMER_C", 2), ("tt", "Trinite-et-Tobago", "AMER_C", 2),
    ("co", "Colombie", "AMER_S", 1), ("ve", "Venezuela", "AMER_S", 1), ("gy", "Guyana", "AMER_S", 2),
    ("sr", "Suriname", "AMER_S", 2), ("ec", "Equateur", "AMER_S", 1), ("pe", "Perou", "AMER_S", 1),
    ("br", "Bresil", "AMER_S", 0), ("bo", "Bolivie", "AMER_S", 1), ("py", "Paraguay", "AMER_S", 2),
    ("uy", "Uruguay", "AMER_S", 1), ("cl", "Chili", "AMER_S", 1), ("ar", "Argentine", "AMER_S", 0),
]
assert len(C) == 195, len(C)
NAME = {iso: n for iso, n, _, _ in C}
REGION = {iso: r for iso, _, r, _ in C}
TIER = {iso: t for iso, _, _, t in C}

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
    ["cz", "ph", "cu", "pr_x", "cl"],               # triangle lateral (pr_x ignore)
    ["gr", "uy", "il"],                             # rayures bleu-blanc
    ["kp", "kr", "th", "cr", "cu"],
    ["bg", "hu", "it", "mx"],
    ["az", "uz", "tm"], ["ge", "dk", "ch"], ["am", "co", "ve"],
    ["la", "kh", "th"], ["mm", "gh", "zw"],
    ["sb", "vu", "mz", "zw"], ["ws", "to", "tw_x"], ["ki", "nr", "mh", "fm", "pw"],
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
    # ajuste dans la zone interieure en conservant le ratio
    s = min(INNER_W / img.width, INNER_H / img.height)
    nw, nh = max(1, round(img.width * s)), max(1, round(img.height * s))
    img = img.resize((nw, nh), Image.LANCZOS)
    canvas = Image.new("RGB", (CANVAS_W, CANVAS_H), BORDER)
    canvas.paste(img, ((CANVAS_W - nw) // 2, (CANVAS_H - nh) // 2))
    canvas.save(dst, optimize=True)

# purge des anciens drapeaux (noms francais) AVANT regeneration
if BANK_ONLY:
    print("(--bank-only : drapeaux non re-telecharges)")
for f in (os.listdir(OUT) if not BANK_ONLY else []):
    if f.startswith("flag_") and f.endswith(".png"):
        os.remove(f"{OUT}/{f}")

if not BANK_ONLY:
    print("Telechargement des 195 drapeaux (flagcdn.com)...")
    for i, (iso, name, _, _) in enumerate(C):
        fetch_and_norm(iso)
        if (i + 1) % 40 == 0:
            print(f"  {i + 1}/195...")
    for f in os.listdir(OUT):
        if f.startswith("_raw_"):
            os.remove(f"{OUT}/{f}")
    print(f"OK : 195 drapeaux normalises {CANVAS_W}x{CANVAS_H} dans {OUT}")

# ---------------- 2) generation de la banque Verse ----------------
def distractors(iso):
    rng = random.Random("quizz-" + iso)   # deterministe par pays
    pool = list(CONF_MAP.get(iso, []))
    region_pool = [x for x, _, r, _ in [(a, b, c, d) for a, b, c, d in C]
                   if REGION[x] == REGION[iso] and x != iso and x not in pool]
    rng.shuffle(pool)
    rng.shuffle(region_pool)
    picks = (pool + region_pool)[:3]
    # complement mondial si la region est trop petite
    if len(picks) < 3:
        rest = [x for x, _, _, _ in C if x != iso and x not in picks]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    return picks, rng

def bank(fn, enonce, name_of, comment):
    out = ["    " + comment, "    %s() : []question =" % fn, "        array:"]
    for iso, name, region, tier in C:
        picks, rng = distractors(iso)
        answers = [iso] + picks
        correct = rng.randrange(4)
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("            question:")
        out.append('                Enonce := "%s"' % enonce)
        out.append("                Image := option{ flags.flag_%s }" % iso)
        out.append("                Reponses := array{%s}" % ", ".join('"%s"' % name_of(a) for a in answers))
        out.append("                BonneReponse := %d" % answers.index(iso))
    return "\n".join(out) + "\n"

diffs = [str(t) for *_, t in C]
flagdiff = ("    # Palier de chaque question (index aligne sur MakeQuestions) — GENERE par build_flags.py.\n"
            "    FlagDiff : []int = array{%s}\n" % ", ".join(diffs))
bank_fr = bank("MakeQuestions", "Quel est ce pays ?", lambda i: NAME[i],
               "# ===== Banque DRAPEAUX FR (195) — GENEREE par build_flags.py, NE PAS EDITER =====")
bank_en = bank("MakeQuestionsEN", "Which country is this?", lambda i: EN[i],
               "# ===== Banque DRAPEAUX EN (195) — memes tirages/indices que la banque FR =====")
bank_es = bank("MakeQuestionsES", "Que pais es este?", lambda i: ES[i],
               "# ===== Banque DRAPEAUX ES (195) — memes tirages/indices que la banque FR =====")
bank_de = bank("MakeQuestionsDE", "Welches Land ist das?", lambda i: DE[i],
               "# ===== Banque DRAPEAUX DE (195) — memes tirages/indices que la banque FR =====")
bank_it = bank("MakeQuestionsIT", "Quale paese e questo?", lambda i: IT[i],
               "# ===== Banque DRAPEAUX IT (195) — memes tirages/indices que la banque FR =====")

with open(f"{ROOT}/tools/_flags_bank.verse.txt", "w", encoding="utf-8", newline="\n") as f:
    f.write(flagdiff + "\n" + bank_fr + "\n" + bank_en + "\n" + bank_es + "\n" + bank_de + "\n" + bank_it)
print("OK : banques drapeaux FR+EN+ES+DE+IT generees")
print("Paliers : Facile=%s Moyen=%s Difficile=%s" % (diffs.count("0"), diffs.count("1"), diffs.count("2")))
