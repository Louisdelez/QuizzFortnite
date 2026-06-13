#!/usr/bin/env python3
# ============================================================
#  build_capitals.py — Quizz "Capitales du monde" (195 pays)
#  Pas d'image : enonce "Quelle est la capitale : {Pays} ?",
#  4 reponses = capitales (distracteurs de la MEME region,
#  deterministes). 3 paliers, analyses CAPITale par capitale :
#  les pieges celebres (Canberra, Ottawa, Brasilia, Berne,
#  Wellington, Pretoria, Ankara, Rabat...) sont releves d'un
#  palier vs la notoriete du pays.
#  Genere tools/_capitals_bank.verse.txt (CapDiff + MakeCapitalQuestions).
# ============================================================
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_en import EN, CAP_EN, THE_EN
from country_es import ES, CAP_ES
from country_de import DE, CAP_DE
from country_it import IT, CAP_IT

# (iso, pays FR ascii, capitale FR ascii, region, palier 0/1/2)
C = [
    # --- Europe de l'Ouest / Nord ---
    ("fr","France","Paris","EUR_W",0), ("de","Allemagne","Berlin","EUR_W",0), ("it","Italie","Rome","EUR_W",0),
    ("es","Espagne","Madrid","EUR_W",0), ("pt","Portugal","Lisbonne","EUR_W",0), ("gb","Royaume-Uni","Londres","EUR_W",0),
    ("ie","Irlande","Dublin","EUR_W",0), ("be","Belgique","Bruxelles","EUR_W",0), ("nl","Pays-Bas","Amsterdam","EUR_W",0),
    ("lu","Luxembourg","Luxembourg","EUR_W",0), ("ch","Suisse","Berne","EUR_W",1), ("at","Autriche","Vienne","EUR_W",0),
    ("mc","Monaco","Monaco","EUR_W",0), ("ad","Andorre","Andorre-la-Vieille","EUR_W",2), ("li","Liechtenstein","Vaduz","EUR_W",2),
    ("sm","Saint-Marin","Saint-Marin","EUR_W",2), ("va","Vatican","Cite du Vatican","EUR_W",1), ("mt","Malte","La Valette","EUR_W",2),
    ("is","Islande","Reykjavik","EUR_W",1), ("no","Norvege","Oslo","EUR_W",0), ("se","Suede","Stockholm","EUR_W",0),
    ("dk","Danemark","Copenhague","EUR_W",0), ("fi","Finlande","Helsinki","EUR_W",0),
    # --- Europe de l'Est / Balkans / Baltique ---
    ("pl","Pologne","Varsovie","EUR_E",0), ("cz","Tchequie","Prague","EUR_E",0), ("sk","Slovaquie","Bratislava","EUR_E",1),
    ("hu","Hongrie","Budapest","EUR_E",1), ("si","Slovenie","Ljubljana","EUR_E",2), ("hr","Croatie","Zagreb","EUR_E",1),
    ("ba","Bosnie-Herzegovine","Sarajevo","EUR_E",2), ("rs","Serbie","Belgrade","EUR_E",1), ("me","Montenegro","Podgorica","EUR_E",2),
    ("mk","Macedoine du Nord","Skopje","EUR_E",2), ("al","Albanie","Tirana","EUR_E",2), ("gr","Grece","Athenes","EUR_E",0),
    ("bg","Bulgarie","Sofia","EUR_E",1), ("ro","Roumanie","Bucarest","EUR_E",1), ("md","Moldavie","Chisinau","EUR_E",2),
    ("ua","Ukraine","Kiev","EUR_E",0), ("by","Bielorussie","Minsk","EUR_E",1), ("ru","Russie","Moscou","EUR_E",0),
    ("ee","Estonie","Tallinn","EUR_E",1), ("lv","Lettonie","Riga","EUR_E",1), ("lt","Lituanie","Vilnius","EUR_E",1),
    ("cy","Chypre","Nicosie","EUR_E",2),
    # --- Moyen-Orient / Caucase ---
    ("tr","Turquie","Ankara","MEAST",1), ("il","Israel","Jerusalem","MEAST",1), ("ps","Palestine","Ramallah","MEAST",2),
    ("lb","Liban","Beyrouth","MEAST",1), ("sy","Syrie","Damas","MEAST",1), ("jo","Jordanie","Amman","MEAST",2),
    ("iq","Irak","Bagdad","MEAST",1), ("ir","Iran","Teheran","MEAST",1), ("sa","Arabie saoudite","Riyad","MEAST",1),
    ("ye","Yemen","Sanaa","MEAST",2), ("om","Oman","Mascate","MEAST",2), ("ae","Emirats arabes unis","Abou Dabi","MEAST",1),
    ("qa","Qatar","Doha","MEAST",1), ("bh","Bahrein","Manama","MEAST",2), ("kw","Koweit","Koweit City","MEAST",1),
    ("ge","Georgie","Tbilissi","MEAST",2), ("am","Armenie","Erevan","MEAST",2), ("az","Azerbaidjan","Bakou","MEAST",2),
    # --- Asie centrale ---
    ("kz","Kazakhstan","Astana","ASIA_C",2), ("uz","Ouzbekistan","Tachkent","ASIA_C",2), ("tm","Turkmenistan","Achgabat","ASIA_C",2),
    ("kg","Kirghizistan","Bichkek","ASIA_C",2), ("tj","Tadjikistan","Douchanbe","ASIA_C",2), ("af","Afghanistan","Kaboul","ASIA_C",1),
    ("mn","Mongolie","Oulan-Bator","ASIA_C",1),
    # --- Asie ---
    ("cn","Chine","Pekin","ASIA",0), ("jp","Japon","Tokyo","ASIA",0), ("kr","Coree du Sud","Seoul","ASIA",0),
    ("kp","Coree du Nord","Pyongyang","ASIA",1), ("in","Inde","New Delhi","ASIA",0), ("pk","Pakistan","Islamabad","ASIA",1),
    ("bd","Bangladesh","Dacca","ASIA",1), ("lk","Sri Lanka","Colombo","ASIA",2), ("np","Nepal","Katmandou","ASIA",1),
    ("bt","Bhoutan","Thimphou","ASIA",2), ("mv","Maldives","Male","ASIA",2), ("mm","Birmanie","Naypyidaw","ASIA",2),
    ("th","Thailande","Bangkok","ASIA",0), ("la","Laos","Vientiane","ASIA",2), ("kh","Cambodge","Phnom Penh","ASIA",1),
    ("vn","Vietnam","Hanoi","ASIA",0), ("my","Malaisie","Kuala Lumpur","ASIA",1), ("sg","Singapour","Singapour","ASIA",0),
    ("id","Indonesie","Jakarta","ASIA",1), ("bn","Brunei","Bandar Seri Begawan","ASIA",2), ("ph","Philippines","Manille","ASIA",1),
    ("tl","Timor oriental","Dili","ASIA",2),
    # --- Oceanie ---
    ("au","Australie","Canberra","OCE",1), ("nz","Nouvelle-Zelande","Wellington","OCE",2),
    ("pg","Papouasie-Nouvelle-Guinee","Port Moresby","OCE",2), ("fj","Fidji","Suva","OCE",2),
    ("sb","Iles Salomon","Honiara","OCE",2), ("vu","Vanuatu","Port-Vila","OCE",2), ("ws","Samoa","Apia","OCE",2),
    ("to","Tonga","Nuku'alofa","OCE",2), ("tv","Tuvalu","Funafuti","OCE",2), ("ki","Kiribati","Tarawa","OCE",2),
    ("nr","Nauru","Yaren","OCE",2), ("pw","Palaos","Ngerulmud","OCE",2), ("fm","Micronesie","Palikir","OCE",2),
    ("mh","Iles Marshall","Majuro","OCE",2),
    # --- Afrique ---
    ("ma","Maroc","Rabat","AFR",1), ("dz","Algerie","Alger","AFR",0), ("tn","Tunisie","Tunis","AFR",0),
    ("ly","Libye","Tripoli","AFR",1), ("eg","Egypte","Le Caire","AFR",0), ("sd","Soudan","Khartoum","AFR",1),
    ("ss","Soudan du Sud","Djouba","AFR",2), ("et","Ethiopie","Addis-Abeba","AFR",1), ("er","Erythree","Asmara","AFR",2),
    ("dj","Djibouti","Djibouti","AFR",1), ("so","Somalie","Mogadiscio","AFR",1), ("ke","Kenya","Nairobi","AFR",1),
    ("ug","Ouganda","Kampala","AFR",2), ("tz","Tanzanie","Dodoma","AFR",2), ("rw","Rwanda","Kigali","AFR",2),
    ("bi","Burundi","Gitega","AFR",2), ("cd","RD Congo","Kinshasa","AFR",1), ("cg","Congo","Brazzaville","AFR",2),
    ("ga","Gabon","Libreville","AFR",2), ("gq","Guinee equatoriale","Malabo","AFR",2), ("cm","Cameroun","Yaounde","AFR",1),
    ("cf","Centrafrique","Bangui","AFR",2), ("td","Tchad","N'Djamena","AFR",2), ("ne","Niger","Niamey","AFR",2),
    ("ng","Nigeria","Abuja","AFR",1), ("bj","Benin","Porto-Novo","AFR",2), ("tg","Togo","Lome","AFR",2),
    ("gh","Ghana","Accra","AFR",1), ("ci","Cote d'Ivoire","Yamoussoukro","AFR",2), ("lr","Liberia","Monrovia","AFR",2),
    ("sl","Sierra Leone","Freetown","AFR",2), ("gn","Guinee","Conakry","AFR",2), ("gw","Guinee-Bissau","Bissau","AFR",2),
    ("sn","Senegal","Dakar","AFR",1), ("gm","Gambie","Banjul","AFR",2), ("ml","Mali","Bamako","AFR",1),
    ("bf","Burkina Faso","Ouagadougou","AFR",1), ("mr","Mauritanie","Nouakchott","AFR",2), ("cv","Cap-Vert","Praia","AFR",2),
    ("st","Sao Tome-et-Principe","Sao Tome","AFR",2), ("ao","Angola","Luanda","AFR",1), ("zm","Zambie","Lusaka","AFR",2),
    ("zw","Zimbabwe","Harare","AFR",1), ("mw","Malawi","Lilongwe","AFR",2), ("mz","Mozambique","Maputo","AFR",2),
    ("mg","Madagascar","Antananarivo","AFR",1), ("km","Comores","Moroni","AFR",2), ("mu","Maurice","Port-Louis","AFR",1),
    ("sc","Seychelles","Victoria","AFR",2), ("za","Afrique du Sud","Pretoria","AFR",2), ("na","Namibie","Windhoek","AFR",2),
    ("bw","Botswana","Gaborone","AFR",2), ("ls","Lesotho","Maseru","AFR",2), ("sz","Eswatini","Mbabane","AFR",2),
    # --- Ameriques ---
    ("us","Etats-Unis","Washington","AMER_N",0), ("ca","Canada","Ottawa","AMER_N",1), ("mx","Mexique","Mexico","AMER_N",0),
    ("gt","Guatemala","Guatemala City","AMER_C",2), ("bz","Belize","Belmopan","AMER_C",2), ("hn","Honduras","Tegucigalpa","AMER_C",2),
    ("sv","Salvador","San Salvador","AMER_C",2), ("ni","Nicaragua","Managua","AMER_C",2), ("cr","Costa Rica","San Jose","AMER_C",1),
    ("pa","Panama","Panama City","AMER_C",1), ("bs","Bahamas","Nassau","AMER_C",2), ("cu","Cuba","La Havane","AMER_C",0),
    ("jm","Jamaique","Kingston","AMER_C",1), ("ht","Haiti","Port-au-Prince","AMER_C",1), ("do","Republique dominicaine","Saint-Domingue","AMER_C",1),
    ("kn","Saint-Kitts-et-Nevis","Basseterre","AMER_C",2), ("ag","Antigua-et-Barbuda","Saint John's","AMER_C",2),
    ("dm","Dominique","Roseau","AMER_C",2), ("lc","Sainte-Lucie","Castries","AMER_C",2), ("vc","Saint-Vincent","Kingstown","AMER_C",2),
    ("bb","Barbade","Bridgetown","AMER_C",2), ("gd","Grenade","Saint-Georges","AMER_C",2), ("tt","Trinite-et-Tobago","Port-d'Espagne","AMER_C",2),
    ("co","Colombie","Bogota","AMER_S",1), ("ve","Venezuela","Caracas","AMER_S",1), ("gy","Guyana","Georgetown","AMER_S",2),
    ("sr","Suriname","Paramaribo","AMER_S",2), ("ec","Equateur","Quito","AMER_S",1), ("pe","Perou","Lima","AMER_S",0),
    ("br","Bresil","Brasilia","AMER_S",1), ("bo","Bolivie","Sucre","AMER_S",2), ("py","Paraguay","Asuncion","AMER_S",2),
    ("uy","Uruguay","Montevideo","AMER_S",1), ("cl","Chili","Santiago","AMER_S",1), ("ar","Argentine","Buenos Aires","AMER_S",0),
]
assert len(C) == 195, len(C)
CAP = {iso: cap for iso, _, cap, _, _ in C}
REGION = {iso: r for iso, _, _, r, _ in C}

def distractors(iso):
    rng = random.Random("capitales-" + iso)
    pool = [x for x, _, _, r, _ in C if r == REGION[iso] and x != iso and CAP[x] != CAP[iso]]
    rng.shuffle(pool)
    picks = pool[:3]
    if len(picks) < 3:
        rest = [x for x, _, _, _, _ in C if x != iso and x not in picks and CAP[x] != CAP[iso]]
        rng.shuffle(rest)
        picks += rest[:3 - len(picks)]
    return picks, rng

CAPEN = {iso: CAP_EN.get(iso, cap) for iso, _, cap, _, _ in C}
CAPES = {iso: CAP_ES.get(iso, cap) for iso, _, cap, _, _ in C}
CAPDE = {iso: CAP_DE.get(iso, cap) for iso, _, cap, _, _ in C}
CAPIT = {iso: CAP_IT.get(iso, cap) for iso, _, cap, _, _ in C}

def enonce_en(iso, pays_en):
    art = "the " if iso in THE_EN else ""
    return "What is the capital of %s%s?" % (art, pays_en)

def bank(fn, comment, cap_of, enonce_of):
    out = ["    " + comment, "    %s() : []question =" % fn, "        array:"]
    for iso, pays, cap, region, tier in C:
        picks, rng = distractors(iso)
        answers = [iso] + picks
        correct = rng.randrange(4)
        answers[0], answers[correct] = answers[correct], answers[0]
        out.append("            question:")
        out.append('                Enonce := "%s"' % enonce_of(iso, pays))
        out.append("                Reponses := array{%s}" % ", ".join(chr(34) + cap_of(a) + chr(34) for a in answers))
        out.append("                BonneReponse := %d" % answers.index(iso))
    return "\n".join(out) + "\n"

diffs = [str(t) for *_, t in C]
capdiff = ("    # Palier de chaque question capitale (aligne sur MakeCapitalQuestions) — GENERE.\n"
           "    CapDiff : []int = array{%s}\n" % ", ".join(diffs))
bank_fr = bank("MakeCapitalQuestions",
               "# ===== Banque CAPITALES FR (195) — GENEREE par build_capitals.py, NE PAS EDITER =====",
               lambda i: CAP[i], lambda iso, pays: "Quelle est la capitale : %s ?" % pays)
bank_en = bank("MakeCapitalQuestionsEN",
               "# ===== Banque CAPITALES EN (195) — memes tirages/indices que la banque FR =====",
               lambda i: CAPEN[i], lambda iso, pays: enonce_en(iso, EN[iso]))
bank_es = bank("MakeCapitalQuestionsES",
               "# ===== Banque CAPITALES ES (195) — memes tirages/indices que la banque FR =====",
               lambda i: CAPES[i], lambda iso, pays: "Cual es la capital: %s?" % ES[iso])
bank_de = bank("MakeCapitalQuestionsDE",
               "# ===== Banque CAPITALES DE (195) — memes tirages/indices que la banque FR =====",
               lambda i: CAPDE[i], lambda iso, pays: "Was ist die Hauptstadt: %s?" % DE[iso])
bank_it = bank("MakeCapitalQuestionsIT",
               "# ===== Banque CAPITALES IT (195) — memes tirages/indices que la banque FR =====",
               lambda i: CAPIT[i], lambda iso, pays: "Qual e la capitale: %s?" % IT[iso])

with open("D:/QuizzFortnite/tools/_capitals_bank.verse.txt", "w", encoding="utf-8", newline="\n") as f:
    f.write(capdiff + "\n" + bank_fr + "\n" + bank_en + "\n" + bank_es + "\n" + bank_de + "\n" + bank_it)
print("OK : banques capitales FR+EN+ES+DE+IT generees (%d questions)" % len(C))
print("Paliers : Facile=%s Moyen=%s Difficile=%s" % (diffs.count(chr(48)), diffs.count(chr(49)), diffs.count(chr(50))))
