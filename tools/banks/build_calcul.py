#!/usr/bin/env python3
# ============================================================
#  build_calcul.py — Quizz "Calcul mental" (300 questions generees,
#  langue-neutre : "27 + 58 = ?"). Paliers :
#  0 = additions/soustractions, 1 = tables et sommes 3 chiffres,
#  2 = multiplications 2 chiffres, carres, pourcentages.
#  Distracteurs = presque-bonnes reponses (+-1, +-10, chiffres inverses).
# ============================================================
import random
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

rng = random.Random("calcul-quizz-fortnite")
qs = []   # (enonce, bonne_reponse:int, tier)

def near(v):
    c = {v + 1, v - 1, v + 10, v - 10, v + 2, v - 2, v + 5, v - 5, v + 20, v - 20}
    s = str(v)
    if len(s) >= 2 and s[0] != s[1]:
        c.add(int(s[1] + s[0] + s[2:]))   # deux premiers chiffres inverses
    return sorted(x for x in c if x != v and x >= 0)

seen = set()
def add(en, v, t):
    if en in seen: return
    seen.add(en); qs.append((en, v, t))

# palier 0 : 100 additions / soustractions
while sum(1 for q in qs if q[2] == 0) < 100:
    a, b = rng.randint(11, 89), rng.randint(11, 89)
    if rng.random() < 0.5:
        add("%d + %d = ?" % (a, b), a + b, 0)
    elif a > b:
        add("%d - %d = ?" % (a, b), a - b, 0)

# palier 1 : 100 tables / sommes 3 chiffres
while sum(1 for q in qs if q[2] == 1) < 100:
    r = rng.random()
    if r < 0.5:
        a, b = rng.randint(6, 12), rng.randint(6, 12)
        add("%d x %d = ?" % (a, b), a * b, 1)
    elif r < 0.8:
        a, b = rng.randint(110, 489), rng.randint(110, 489)
        add("%d + %d = ?" % (a, b), a + b, 1)
    else:
        a, b = rng.randint(210, 989), rng.randint(110, 209)
        add("%d - %d = ?" % (a, b), a - b, 1)

# palier 2 : 100 multiplications dures / carres / pourcentages
while sum(1 for q in qs if q[2] == 2) < 100:
    r = rng.random()
    if r < 0.45:
        a, b = rng.randint(13, 49), rng.randint(3, 9)
        add("%d x %d = ?" % (a, b), a * b, 2)
    elif r < 0.7:
        a, b = rng.randint(12, 29), rng.randint(11, 19)
        add("%d x %d = ?" % (a, b), a * b, 2)
    elif r < 0.85:
        a = rng.randint(11, 25)
        add("%d au carre = ?" % a if False else "%d x %d = ?" % (a, a), a * a, 2)
    else:
        p = rng.choice([10, 20, 25, 50, 75])
        v = rng.choice([40, 60, 80, 120, 160, 200, 240, 300, 360, 400, 480])
        add("%d%% de %d = ?" % (p, v), p * v // 100, 2)

parts = []
out = ["MakeCalculQuestionsFR() : []question =", "    array:"]
for i, (en, v, t) in enumerate(qs):
    r2 = random.Random("calcul-%d" % i)
    cands = near(v)
    r2.shuffle(cands)
    answers = [v] + cands[:3]
    correct = r2.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    out.append("        question:")
    out.append('            Enonce := "%s"' % en)
    out.append("            Reponses := array{%s}" % ", ".join('"%d"' % a for a in answers))
    out.append("            BonneReponse := %d" % answers.index(v))
parts.append("\n".join(out))
parts.append("MakeCalculQuestions() : []question =\n    MakeCalculQuestionsFR()")
# memes questions dans toutes les langues (chiffres = langue-neutre)
for lang in ("EN", "ES", "DE", "IT"):
    parts.append("MakeCalculQuestions%s() : []question =\n    MakeCalculQuestionsFR()" % lang)

diffs = ", ".join(str(t) for _, _, t in qs)
header = ("# Quizz CALCUL MENTAL (300 questions generees, langue-neutre)\n"
          "# GENERE par tools/build_calcul.py — NE PAS EDITER A LA MAIN.\n\n"
          "CalculDiff : []int = array{%s}\n" % diffs)
dst = f"{_ROOT}/verse/calcul_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write(header + "\n" + "\n\n".join(parts) + "\n")
print("OK :", dst, "(%d questions)" % len(qs))
