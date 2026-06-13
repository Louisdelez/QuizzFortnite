#!/usr/bin/env python3
# ============================================================
#  build_elements.py — Quizz "Elements chimiques" (118, texte, sans image)
#  "Quel element a le symbole {S} ?" — paliers : Z 1-20 / 21-56 / 57-118.
#  Lignes "Sym|FR|EN|ES|DE|IT" ou "Sym|Nom" (identique x5).
# ============================================================
import random

E = """H|Hydrogene|Hydrogen|Hidrogeno|Wasserstoff|Idrogeno
He|Helium|Helium|Helio|Helium|Elio
Li|Lithium|Lithium|Litio|Lithium|Litio
Be|Beryllium|Beryllium|Berilio|Beryllium|Berillio
B|Bore|Boron|Boro|Bor|Boro
C|Carbone|Carbon|Carbono|Kohlenstoff|Carbonio
N|Azote|Nitrogen|Nitrogeno|Stickstoff|Azoto
O|Oxygene|Oxygen|Oxigeno|Sauerstoff|Ossigeno
F|Fluor|Fluorine|Fluor|Fluor|Fluoro
Ne|Neon
Na|Sodium|Sodium|Sodio|Natrium|Sodio
Mg|Magnesium|Magnesium|Magnesio|Magnesium|Magnesio
Al|Aluminium|Aluminium|Aluminio|Aluminium|Alluminio
Si|Silicium|Silicon|Silicio|Silizium|Silicio
P|Phosphore|Phosphorus|Fosforo|Phosphor|Fosforo
S|Soufre|Sulfur|Azufre|Schwefel|Zolfo
Cl|Chlore|Chlorine|Cloro|Chlor|Cloro
Ar|Argon
K|Potassium|Potassium|Potasio|Kalium|Potassio
Ca|Calcium|Calcium|Calcio|Kalzium|Calcio
Sc|Scandium|Scandium|Escandio|Scandium|Scandio
Ti|Titane|Titanium|Titanio|Titan|Titanio
V|Vanadium|Vanadium|Vanadio|Vanadium|Vanadio
Cr|Chrome|Chromium|Cromo|Chrom|Cromo
Mn|Manganese|Manganese|Manganeso|Mangan|Manganese
Fe|Fer|Iron|Hierro|Eisen|Ferro
Co|Cobalt|Cobalt|Cobalto|Cobalt|Cobalto
Ni|Nickel|Nickel|Niquel|Nickel|Nichel
Cu|Cuivre|Copper|Cobre|Kupfer|Rame
Zn|Zinc|Zinc|Cinc|Zink|Zinco
Ga|Gallium|Gallium|Galio|Gallium|Gallio
Ge|Germanium|Germanium|Germanio|Germanium|Germanio
As|Arsenic|Arsenic|Arsenico|Arsen|Arsenico
Se|Selenium|Selenium|Selenio|Selen|Selenio
Br|Brome|Bromine|Bromo|Brom|Bromo
Kr|Krypton|Krypton|Cripton|Krypton|Kripton
Rb|Rubidium|Rubidium|Rubidio|Rubidium|Rubidio
Sr|Strontium|Strontium|Estroncio|Strontium|Stronzio
Y|Yttrium|Yttrium|Itrio|Yttrium|Ittrio
Zr|Zirconium|Zirconium|Circonio|Zirkonium|Zirconio
Nb|Niobium|Niobium|Niobio|Niob|Niobio
Mo|Molybdene|Molybdenum|Molibdeno|Molybdaen|Molibdeno
Tc|Technetium|Technetium|Tecnecio|Technetium|Tecnezio
Ru|Ruthenium|Ruthenium|Rutenio|Ruthenium|Rutenio
Rh|Rhodium|Rhodium|Rodio|Rhodium|Rodio
Pd|Palladium|Palladium|Paladio|Palladium|Palladio
Ag|Argent|Silver|Plata|Silber|Argento
Cd|Cadmium|Cadmium|Cadmio|Cadmium|Cadmio
In|Indium|Indium|Indio|Indium|Indio
Sn|Etain|Tin|Estano|Zinn|Stagno
Sb|Antimoine|Antimony|Antimonio|Antimon|Antimonio
Te|Tellure|Tellurium|Telurio|Tellur|Tellurio
I|Iode|Iodine|Yodo|Iod|Iodio
Xe|Xenon|Xenon|Xenon|Xenon|Xeno
Cs|Cesium|Caesium|Cesio|Caesium|Cesio
Ba|Baryum|Barium|Bario|Barium|Bario
La|Lanthane|Lanthanum|Lantano|Lanthan|Lantanio
Ce|Cerium|Cerium|Cerio|Cer|Cerio
Pr|Praseodyme|Praseodymium|Praseodimio|Praseodym|Praseodimio
Nd|Neodyme|Neodymium|Neodimio|Neodym|Neodimio
Pm|Promethium|Promethium|Prometio|Promethium|Promezio
Sm|Samarium|Samarium|Samario|Samarium|Samario
Eu|Europium|Europium|Europio|Europium|Europio
Gd|Gadolinium|Gadolinium|Gadolinio|Gadolinium|Gadolinio
Tb|Terbium|Terbium|Terbio|Terbium|Terbio
Dy|Dysprosium|Dysprosium|Disprosio|Dysprosium|Disprosio
Ho|Holmium|Holmium|Holmio|Holmium|Olmio
Er|Erbium|Erbium|Erbio|Erbium|Erbio
Tm|Thulium|Thulium|Tulio|Thulium|Tulio
Yb|Ytterbium|Ytterbium|Iterbio|Ytterbium|Itterbio
Lu|Lutecium|Lutetium|Lutecio|Lutetium|Lutezio
Hf|Hafnium|Hafnium|Hafnio|Hafnium|Afnio
Ta|Tantale|Tantalum|Tantalo|Tantal|Tantalio
W|Tungstene|Tungsten|Wolframio|Wolfram|Tungsteno
Re|Rhenium|Rhenium|Renio|Rhenium|Renio
Os|Osmium|Osmium|Osmio|Osmium|Osmio
Ir|Iridium|Iridium|Iridio|Iridium|Iridio
Pt|Platine|Platinum|Platino|Platin|Platino
Au|Or|Gold|Oro|Gold|Oro
Hg|Mercure|Mercury|Mercurio|Quecksilber|Mercurio
Tl|Thallium|Thallium|Talio|Thallium|Tallio
Pb|Plomb|Lead|Plomo|Blei|Piombo
Bi|Bismuth|Bismuth|Bismuto|Bismut|Bismuto
Po|Polonium|Polonium|Polonio|Polonium|Polonio
At|Astate|Astatine|Astato|Astat|Astato
Rn|Radon
Fr|Francium|Francium|Francio|Francium|Francio
Ra|Radium|Radium|Radio|Radium|Radio
Ac|Actinium|Actinium|Actinio|Actinium|Attinio
Th|Thorium|Thorium|Torio|Thorium|Torio
Pa|Protactinium|Protactinium|Protactinio|Protactinium|Protoattinio
U|Uranium|Uranium|Uranio|Uran|Uranio
Np|Neptunium|Neptunium|Neptunio|Neptunium|Nettunio
Pu|Plutonium|Plutonium|Plutonio|Plutonium|Plutonio
Am|Americium|Americium|Americio|Americium|Americio
Cm|Curium|Curium|Curio|Curium|Curio
Bk|Berkelium|Berkelium|Berkelio|Berkelium|Berkelio
Cf|Californium|Californium|Californio|Californium|Californio
Es|Einsteinium|Einsteinium|Einstenio|Einsteinium|Einsteinio
Fm|Fermium|Fermium|Fermio|Fermium|Fermio
Md|Mendelevium|Mendelevium|Mendelevio|Mendelevium|Mendelevio
No|Nobelium|Nobelium|Nobelio|Nobelium|Nobelio
Lr|Lawrencium|Lawrencium|Laurencio|Lawrencium|Laurenzio
Rf|Rutherfordium|Rutherfordium|Rutherfordio|Rutherfordium|Rutherfordio
Db|Dubnium|Dubnium|Dubnio|Dubnium|Dubnio
Sg|Seaborgium|Seaborgium|Seaborgio|Seaborgium|Seaborgio
Bh|Bohrium|Bohrium|Bohrio|Bohrium|Bohrio
Hs|Hassium|Hassium|Hassio|Hassium|Hassio
Mt|Meitnerium|Meitnerium|Meitnerio|Meitnerium|Meitnerio
Ds|Darmstadtium|Darmstadtium|Darmstatio|Darmstadtium|Darmstadtio
Rg|Roentgenium|Roentgenium|Roentgenio|Roentgenium|Roentgenio
Cn|Copernicium|Copernicium|Copernicio|Copernicium|Copernicio
Nh|Nihonium|Nihonium|Nihonio|Nihonium|Nihonio
Fl|Flerovium|Flerovium|Flerovio|Flerovium|Flerovio
Mc|Moscovium|Moscovium|Moscovio|Moscovium|Moscovio
Lv|Livermorium|Livermorium|Livermorio|Livermorium|Livermorio
Ts|Tennesse|Tennessine|Teneso|Tenness|Tennessinio
Og|Oganesson|Oganesson|Oganeson|Oganesson|Oganesson""".strip().split("\n")

LANGS = ("FR", "EN", "ES", "DE", "IT")
ENONCE = {"FR": "Quel element a le symbole %s ?", "EN": "Which element has the symbol %s?",
          "ES": "Que elemento tiene el simbolo %s?", "DE": "Welches Element hat das Symbol %s?",
          "IT": "Quale elemento ha il simbolo %s?"}

# facile = elements de la vie courante (27) ; moyen = reste jusqu'au plomb/bismuth ;
# difficile = lourds, lanthanides exotiques et synthetiques.
EASY = {"H","He","C","N","O","F","Ne","Na","Mg","Al","Si","P","S","Cl","K","Ca",
        "Fe","Cu","Zn","Ag","Sn","Au","Hg","Pb","U","Pt","Ni"}
elems = []
for z, line in enumerate(E, 1):
    p = line.split("|")
    sym = p[0]
    names = [p[1]] * 5 if len(p) == 2 else p[1:6]
    tier = 0 if sym in EASY else (1 if z <= 83 else 2)
    elems.append({"sym": sym, "names": dict(zip(LANGS, names)), "tier": tier, "z": z})
assert len(elems) == 118, len(elems)

# tirages communs (distracteurs du meme palier, noms distincts)
draws = []
n = len(elems)
for i, e in enumerate(elems):
    rng = random.Random("elements-" + e["sym"])
    seen = {e["names"]["FR"]}
    pool = []
    for j in rng.sample(range(n), n):
        if j == i or elems[j]["tier"] != e["tier"] or elems[j]["names"]["FR"] in seen: continue
        seen.add(elems[j]["names"]["FR"]); pool.append(j)
        if len(pool) == 3: break
    answers = [i] + pool
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    draws.append((answers, answers.index(i)))

parts = []
for lang in LANGS:
    out = ["MakeElementsQuestions%s() : []question =" % lang, "    array:"]
    for i, e in enumerate(elems):
        answers, correct = draws[i]
        out.append("        question:")
        out.append('            Enonce := "%s"' % (ENONCE[lang] % e["sym"]))
        out.append("            Reponses := array{%s}" % ", ".join('"%s"' % elems[a]["names"][lang] for a in answers))
        out.append("            BonneReponse := %d" % correct)
    parts.append("\n".join(out))
parts.append("MakeElementsQuestions() : []question =\n    MakeElementsQuestionsFR()")

diffs = ", ".join(str(e["tier"]) for e in elems)
header = ("# tableaux_bank style — Quizz ELEMENTS CHIMIQUES (118, texte)\n"
          "# GENERE par tools/build_elements.py — NE PAS EDITER A LA MAIN.\n\n"
          "ElementsDiff : []int = array{%s}\n" % diffs)
dst = "D:/QuizzFortnite/verse/elements_bank.verse"
with open(dst, "w", encoding="utf-8", newline="\n") as f:
    f.write(header + "\n" + "\n\n".join(parts) + "\n")
print("OK :", dst, "(118 questions,", sum(1 for _ in open(dst, encoding="utf-8")), "lignes)")
t = [e["tier"] for e in elems]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
