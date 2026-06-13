#!/usr/bin/env python3
# Quizz "Dirigeants" (texte) : "De quel pays {X} est-il/elle le dirigeant ?"
# Reponse = pays (tables x5 langues de country_*). Dirigeant = nom (identique x5).
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT
from quiz_common import emit_custom, LANGS

ROOT = "D:/QuizzFortnite"
NAMES = {"FR": NAME, "EN": EN, "ES": ES, "DE": DE, "IT": IT}

# (dirigeant, iso_pays, palier) — chefs d'Etat/gouvernement et figures historiques
D = [
 ("Emmanuel Macron","fr",0),("Donald Trump","us",0),("Vladimir Poutine","ru",0),
 ("Xi Jinping","cn",0),("Charles III","gb",0),("Narendra Modi","in",0),
 ("Justin Trudeau","ca",0),("Lula","br",0),("Volodymyr Zelensky","ua",0),
 ("Recep Tayyip Erdogan","tr",0),("Benjamin Netanyahou","il",0),
 ("Kim Jong-un","kp",0),("Javier Milei","ar",0),("Giorgia Meloni","it",0),
 ("Pedro Sanchez","es",0),("Olaf Scholz","de",0),("Andres Manuel Lopez Obrador","mx",0),
 ("Cyril Ramaphosa","za",0),("Anthony Albanese","au",0),
 ("Mohammed VI","ma",0),("Abdelmadjid Tebboune","dz",0),
 ("Keir Starmer","gb",0),("Felipe VI","es",0),("Sergio Mattarella","it",0),
 ("Gabriel Boric","cl",0),("Joe Biden","us",0),("Fumio Kishida","jp",0),
 # figures historiques nationales (palier 1)
 ("Angela Merkel","de",1),("Barack Obama","us",1),("Nelson Mandela","za",1),
 ("Margaret Thatcher","gb",1),("Winston Churchill","gb",1),("Charles de Gaulle","fr",1),
 ("Napoleon Bonaparte","fr",1),("Louis XIV","fr",1),("Jules Cesar","it",1),
 ("Mao Zedong","cn",1),("Mahatma Gandhi","in",1),("Fidel Castro","cu",1),
 ("Hugo Chavez","ve",1),("Che Guevara","ar",1),("Simon Bolivar","ve",1),
 ("Mustafa Kemal Ataturk","tr",1),("Mikhail Gorbatchev","ru",1),("Joseph Staline","ru",1),
 ("Lenine","ru",1),("Benito Mussolini","it",1),("Francisco Franco","es",1),
 ("Reine Victoria","gb",1),("Elizabeth II","gb",1),("Abraham Lincoln","us",1),
 ("George Washington","us",1),("John F. Kennedy","us",1),("Ronald Reagan","us",1),
 ("Helmut Kohl","de",1),("Jacques Chirac","fr",1),("Francois Mitterrand","fr",1),
 ("Silvio Berlusconi","it",1),("Tony Blair","gb",1),("Lech Walesa","pl",1),
 ("Boris Eltsine","ru",1),("Indira Gandhi","in",1),("Golda Meir","il",1),
 # palier 2 (plus pointus / plus anciens)
 ("Otto von Bismarck","de",2),("Guillaume II","de",2),("Frederic le Grand","de",2),
 ("Catherine la Grande","ru",2),("Pierre le Grand","ru",2),("Ivan le Terrible","ru",2),
 ("Henri VIII","gb",2),("Elizabeth Ire","gb",2),("Guillaume le Conquerant","gb",2),
 ("Cromwell","gb",2),("Garibaldi","it",2),("Victor-Emmanuel II","it",2),
 ("Charlemagne","fr",2),("Clovis","fr",2),("Robespierre","fr",2),
 ("Toussaint Louverture","ht",2),("Pancho Villa","mx",2),("Benito Juarez","mx",2),
 ("Dom Pedro II","br",2),("Getulio Vargas","br",2),("Juan Peron","ar",2),
 ("Augusto Pinochet","cl",2),("Salvador Allende","cl",2),
 ("Kwame Nkrumah","gh",2),("Jomo Kenyatta","ke",2),("Haile Selassie","et",2),
 ("Gamal Abdel Nasser","eg",2),("Anouar el-Sadate","eg",2),("Mouammar Kadhafi","ly",2),
 ("Saddam Hussein","iq",2),("Rouhollah Khomeini","ir",2),("Soliman le Magnifique","tr",2),
 ("Hirohito","jp",2),("Sun Yat-sen","cn",2),("Tchang Kai-chek","cn",2),
 ("Ho Chi Minh","vn",2),("Pol Pot","kh",2),("Soekarno","id",2),
 ("Jawaharlal Nehru","in",2),("Ashoka","in",2),("Genghis Khan","mn",2),
 ("Eva Peron","ar",2),("Tito","rs",2),
]

TPL = {"FR": "De quel pays %s est-il/elle une figure dirigeante ?",
       "EN": "Which country did %s lead?",
       "ES": "De que pais fue %s dirigente?",
       "DE": "Welches Land fuehrte %s?",
       "IT": "Quale paese ha guidato %s?"}

rows = {lang: [] for lang in LANGS}
diffs = []
for who, iso, tier in D:
    rng = random.Random("dirig-" + who)
    reg = [j for j, *_ in C if j != iso and REGION[j] == REGION[iso]]
    oth = [j for j, *_ in C if j != iso and REGION[j] != REGION[iso]]
    rng.shuffle(reg); rng.shuffle(oth)
    picks = (reg + oth)[:3]
    answers = [iso] + picks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(iso)
    for lang in LANGS:
        rows[lang].append((TPL[lang] % who, [NAMES[lang][a] for a in answers], ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/dirigeants_bank.verse",
            "dirigeants_bank.verse — Quizz DIRIGEANTS (rois & presidents)",
            "DirigeantsDiff", "Dirigeants", rows, diffs)
print("Total : %d | Paliers : %d/%d/%d" % (len(D), diffs.count(0), diffs.count(1), diffs.count(2)))
