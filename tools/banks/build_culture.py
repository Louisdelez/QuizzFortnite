#!/usr/bin/env python3
# ============================================================
#  build_culture.py — Quizz "Culture Generale" (900 questions, texte seul)
#
#  Source FR : tools/_culture_fr.json (parse depuis docs/culture-generale/*.md).
#  Traductions EN/ES/DE/IT : tools/culture_trad/<PREFIX>.json (generees par le
#  workflow translate-culture : 36 lots theme x palier).
#
#  3 paliers (Facile/Moyen/Difficile = 300 chacun) ; le moteur tire 25 q/round.
#  Pas d'image. L'ORDRE des 4 reponses est MELANGE par question (seed deterministe,
#  meme ordre applique aux 5 langues -> BonneReponse identique partout).
#  Sortie : verse/culture_bank.verse (MakeCultureQuestions[/EN/ES/DE/IT] + CultureDiff).
#
#  Convention projet : chaines ASCII (accents retires ; allemand ae/oe/ue/ss).
#  Mettre ASCII=False pour conserver les accents (si UEFN gere l'UTF-8).
# ============================================================
import json, os, random, sys, unicodedata, re

ROOT = "D:/QuizzFortnite"
SRC = f"{ROOT}/tools/_culture_fr.json"
TRAD = f"{ROOT}/tools/culture_trad"
DST = f"{ROOT}/verse/culture_bank.verse"
ASCII = True
LANGS = ["fr", "en", "es", "de", "it"]

def fold(s, lang):
    if not ASCII:
        return s
    # apostrophes typographiques -> apostrophe droite (GARDEE : l'eau, Trent'anni)
    for a in ["’", "‘", "‚", "ʼ", "´", "`"]:
        s = s.replace(a, "'")
    # guillemets doubles (tous) -> SUPPRIMES : le " est le delimiteur de chaine Verse
    for q in ['«', '»', '„', '“', '”', '‟', '‹', '›', '"', '〝', '〞', '《', '》']:
        s = s.replace(q, "")
    # ligatures / lettres speciales
    s = (s.replace("œ", "oe").replace("Œ", "Oe").replace("æ", "ae").replace("Æ", "Ae")
           .replace("ð", "d").replace("Ð", "D").replace("þ", "th").replace("Þ", "Th")
           .replace("ø", "o").replace("Ø", "O").replace("ł", "l").replace("Ł", "L"))
    # ponctuation / symboles
    for a, b in [("°", ""), ("º", ""), ("¿", ""), ("¡", ""),
                 ("–", "-"), ("—", "-"), ("−", "-"), ("‐", "-"), ("‑", "-"),
                 ("×", "x"), ("÷", "/"), ("…", "...")]:
        s = s.replace(a, b)
    # exposants -> ^chiffre
    for sup, n in zip("⁰¹²³⁴⁵⁶⁷⁸⁹", "0123456789"):
        s = s.replace(sup, "^" + n)
    # allemand : umlauts/eszett selon convention projet
    if lang == "de":
        for a, b in [("ä","ae"),("ö","oe"),("ü","ue"),("Ä","Ae"),
                     ("Ö","Oe"),("Ü","Ue"),("ß","ss")]:
            s = s.replace(a, b)
    # accents restants -> base
    s = "".join(c for c in unicodedata.normalize("NFKD", s) if not unicodedata.combining(c))
    # filet de securite : retire tout non-ASCII residuel
    s = s.encode("ascii", "ignore").decode("ascii")
    s = re.sub(r"\s+", " ", s).strip()
    return s

# ---- 1) source FR ----
fr = json.load(open(SRC, encoding="utf-8"))
byid = {q["id"]: q for q in fr}

# ---- 2) traductions ----
TIERS = ["F", "M", "D"]
THEMES = ["HIS","GEO","SCI","BIO","NAT","ESP","ART","LIT","MUS","CIN","SPO","MYT"]
trad = {}
missing_files = []
for t in TIERS:
    for th in THEMES:
        p = f"{TRAD}/{t}-{th}.json"
        if not os.path.exists(p):
            missing_files.append(f"{t}-{th}"); continue
        for e in json.load(open(p, encoding="utf-8")):
            trad[e["id"]] = e
if missing_files:
    print("LOTS MANQUANTS:", missing_files)

# ---- 3) controle de completude ----
bad = []
for q in fr:
    e = trad.get(q["id"])
    if not e:
        bad.append((q["id"], "pas de traduction")); continue
    for lg in ["en", "es", "de", "it"]:
        d = e.get(lg)
        if not d or "q" not in d or len(d.get("a", [])) != 4:
            bad.append((q["id"], f"{lg} incomplet"))
if bad:
    print("INCOMPLETS (%d) :" % len(bad), bad[:20])
    if "--force" not in sys.argv:
        print("Abandon (relancer les lots manquants, ou --force pour ignorer)."); sys.exit(1)

# ---- 4) assemblage + melange de l'ordre des reponses ----
def q_text(qid, lang):
    if lang == "fr": return byid[qid]["q_fr"]
    return trad[qid][lang]["q"]
def a_list(qid, lang):
    if lang == "fr": return byid[qid]["a_fr"]
    return trad[qid][lang]["a"]

ENONCE_FALLBACK = ""  # non utilise
def bank(tag, lang):
    out = ["MakeCultureQuestions%s() : []question =" % tag, "    array:"]
    for q in fr:
        qid = q["id"]
        rng = random.Random("culture-" + qid)
        order = [0, 1, 2, 3]
        rng.shuffle(order)
        correct = order.index(q["correct"])      # q["correct"] vaut 0 (FR met la bonne en A)
        answers = [a_list(qid, lang)[i] for i in order]
        out.append("        question:")
        out.append('            Enonce := "%s"' % fold(q_text(qid, lang), lang))
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % fold(a, lang) for a in answers))
        out.append("            BonneReponse := %d" % correct)
    return "\n".join(out)

diffs = ", ".join(str(q["tier"]) for q in fr)
header = ("# ============================================================\n"
          "# culture_bank.verse - Banque CULTURE GENERALE (900, texte seul, 5 langues).\n"
          "# GENERE par tools/banks/build_culture.py - NE PAS EDITER A LA MAIN.\n"
          "# 3 paliers (Facile/Moyen/Difficile = 300). Ordre des reponses melange par question.\n"
          "# ============================================================\n\n"
          "CultureDiff : []int = array{%s}\n" % diffs)

blocks = [header, bank("FR", "fr"),
          "MakeCultureQuestions() : []question =\n    MakeCultureQuestionsFR()",
          bank("EN", "en"), bank("ES", "es"), bank("DE", "de"), bank("IT", "it")]
with open(DST, "w", encoding="utf-8", newline="\n") as f:
    f.write("\n\n".join(blocks) + "\n")
from collections import Counter
c = Counter(q["tier"] for q in fr)
print("OK :", DST)
print("Questions: %d | Facile=%d Moyen=%d Difficile=%d | langues: FR/EN/ES/DE/IT" % (len(fr), c[0], c[1], c[2]))
