#!/usr/bin/env python3
# Quizz "Dates historiques" (texte) : "En quelle annee : {evenement} ?"
# Reponses = annees (distracteurs proches, meme epoque). Evenement x5 langues.
# (FR,EN,ES,DE,IT, annee, palier) — annee negative = av. J.-C.
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, LANGS

ROOT = "D:/QuizzFortnite"

E = [
 ("la Revolution francaise","the French Revolution","la Revolucion francesa","die Franzoesische Revolution","la Rivoluzione francese",1789,0),
 ("la chute du mur de Berlin","the fall of the Berlin Wall","la caida del Muro de Berlin","der Fall der Berliner Mauer","la caduta del Muro di Berlino",1989,0),
 ("le debut de la Premiere Guerre mondiale","the start of World War I","el inicio de la Primera Guerra Mundial","der Beginn des Ersten Weltkriegs","l'inizio della Prima guerra mondiale",1914,0),
 ("la fin de la Premiere Guerre mondiale","the end of World War I","el fin de la Primera Guerra Mundial","das Ende des Ersten Weltkriegs","la fine della Prima guerra mondiale",1918,0),
 ("le debut de la Seconde Guerre mondiale","the start of World War II","el inicio de la Segunda Guerra Mundial","der Beginn des Zweiten Weltkriegs","l'inizio della Seconda guerra mondiale",1939,0),
 ("la fin de la Seconde Guerre mondiale","the end of World War II","el fin de la Segunda Guerra Mundial","das Ende des Zweiten Weltkriegs","la fine della Seconda guerra mondiale",1945,0),
 ("le premier pas sur la Lune","the first Moon landing","la llegada del hombre a la Luna","die erste Mondlandung","il primo sbarco sulla Luna",1969,0),
 ("la decouverte de l'Amerique","the discovery of America","el descubrimiento de America","die Entdeckung Amerikas","la scoperta dell'America",1492,0),
 ("les attentats du 11 septembre","the September 11 attacks","los atentados del 11 de septiembre","die Anschlaege vom 11. September","gli attentati dell'11 settembre",2001,0),
 ("le couronnement de Charlemagne","the coronation of Charlemagne","la coronacion de Carlomagno","die Kroenung Karls des Grossen","l'incoronazione di Carlo Magno",800,0),
 ("le sacre de Napoleon","the coronation of Napoleon","la coronacion de Napoleon","die Kroenung Napoleons","l'incoronazione di Napoleone",1804,0),
 ("le naufrage du Titanic","the sinking of the Titanic","el hundimiento del Titanic","der Untergang der Titanic","l'affondamento del Titanic",1912,0),
 ("l'independance des Etats-Unis","the independence of the United States","la independencia de Estados Unidos","die Unabhaengigkeit der USA","l'indipendenza degli Stati Uniti",1776,0),
 ("l'inauguration de la tour Eiffel","the opening of the Eiffel Tower","la inauguracion de la Torre Eiffel","die Eroeffnung des Eiffelturms","l'inaugurazione della Torre Eiffel",1889,0),
 ("les premiers JO modernes","the first modern Olympics","los primeros JJOO modernos","die ersten modernen Olympischen Spiele","le prime Olimpiadi moderne",1896,0),
 ("la victoire de la France au Mondial","France winning the World Cup","la victoria de Francia en el Mundial","Frankreichs WM-Sieg","la vittoria della Francia ai Mondiali",1998,0),
 ("la mise en circulation de l'euro","the launch of euro coins","la entrada en circulacion del euro","die Einfuehrung des Euro-Bargelds","l'entrata in circolazione dell'euro",2002,0),
 ("la chute de l'Empire romain d'Occident","the fall of the Western Roman Empire","la caida del Imperio romano de Occidente","der Untergang Westroms","la caduta dell'Impero romano d'Occidente",476,0),
 ("la bataille d'Hastings","the Battle of Hastings","la batalla de Hastings","die Schlacht von Hastings","la battaglia di Hastings",1066,0),
 ("la Grande Charte (Magna Carta)","the Magna Carta","la Carta Magna","die Magna Carta","la Magna Carta",1215,0),
 ("l'arrivee de la peste noire en Europe","the Black Death reaching Europe","la llegada de la peste negra a Europa","die Ankunft des Schwarzen Todes in Europa","l'arrivo della peste nera in Europa",1347,0),
 ("le traite de Versailles","the Treaty of Versailles","el Tratado de Versalles","der Versailler Vertrag","il Trattato di Versailles",1919,0),
 ("le debarquement de Normandie","D-Day","el desembarco de Normandia","die Landung in der Normandie","lo sbarco in Normandia",1944,0),
 ("l'assassinat de JFK","the assassination of JFK","el asesinato de JFK","die Ermordung von JFK","l'assassinio di JFK",1963,0),
 ("la liberation de Nelson Mandela","the release of Nelson Mandela","la liberacion de Nelson Mandela","die Freilassung Nelson Mandelas","la liberazione di Nelson Mandela",1990,0),
 ("la bataille de Marignan","the Battle of Marignano","la batalla de Marignano","die Schlacht bei Marignano","la battaglia di Marignano",1515,0),
 ("la prise de la Bastille","the storming of the Bastille","la toma de la Bastilla","der Sturm auf die Bastille","la presa della Bastiglia",1789,0),
 # ---- palier 1 ----
 ("la bataille d'Austerlitz","the Battle of Austerlitz","la batalla de Austerlitz","die Schlacht bei Austerlitz","la battaglia di Austerlitz",1805,1),
 ("la bataille de Waterloo","the Battle of Waterloo","la batalla de Waterloo","die Schlacht bei Waterloo","la battaglia di Waterloo",1815,1),
 ("le debut de la guerre de Secession","the start of the American Civil War","el inicio de la guerra de Secesion","der Beginn des Sezessionskriegs","l'inizio della guerra di secessione",1861,1),
 ("l'abolition de l'esclavage en France","the abolition of slavery in France","la abolicion de la esclavitud en Francia","die Abschaffung der Sklaverei in Frankreich","l'abolizione della schiavitu in Francia",1848,1),
 ("la Commune de Paris","the Paris Commune","la Comuna de Paris","die Pariser Kommune","la Comune di Parigi",1871,1),
 ("la revolution russe","the Russian Revolution","la Revolucion rusa","die Russische Revolution","la Rivoluzione russa",1917,1),
 ("le krach de Wall Street","the Wall Street Crash","el crac de Wall Street","der Boersenkrach an der Wall Street","il crollo di Wall Street",1929,1),
 ("l'arrivee d'Hitler au pouvoir","Hitler coming to power","la llegada de Hitler al poder","Hitlers Machtergreifung","l'ascesa al potere di Hitler",1933,1),
 ("le debut de la guerre d'Espagne","the start of the Spanish Civil War","el inicio de la Guerra Civil espanola","der Beginn des Spanischen Buergerkriegs","l'inizio della guerra civile spagnola",1936,1),
 ("l'independance de l'Inde","the independence of India","la independencia de la India","die Unabhaengigkeit Indiens","l'indipendenza dell'India",1947,1),
 ("la creation de l'Etat d'Israel","the creation of Israel","la creacion de Israel","die Gruendung Israels","la creazione di Israele",1948,1),
 ("la creation de l'OTAN","the creation of NATO","la creacion de la OTAN","die Gruendung der NATO","la creazione della NATO",1949,1),
 ("la mort de Staline","the death of Stalin","la muerte de Stalin","der Tod Stalins","la morte di Stalin",1953,1),
 ("le traite de Rome","the Treaty of Rome","el Tratado de Roma","die Roemischen Vertraege","il Trattato di Roma",1957,1),
 ("le lancement de Spoutnik","the launch of Sputnik","el lanzamiento del Sputnik","der Start von Sputnik","il lancio dello Sputnik",1957,1),
 ("la construction du mur de Berlin","the building of the Berlin Wall","la construccion del Muro de Berlin","der Bau der Berliner Mauer","la costruzione del Muro di Berlino",1961,1),
 ("la crise des missiles de Cuba","the Cuban Missile Crisis","la crisis de los misiles de Cuba","die Kubakrise","la crisi dei missili di Cuba",1962,1),
 ("Mai 68","the May 68 protests in France","Mayo del 68","die Mai-Unruhen 1968","il Maggio francese",1968,1),
 ("le festival de Woodstock","the Woodstock festival","el festival de Woodstock","das Woodstock-Festival","il festival di Woodstock",1969,1),
 ("la fin de la guerre du Vietnam","the end of the Vietnam War","el fin de la guerra de Vietnam","das Ende des Vietnamkriegs","la fine della guerra del Vietnam",1975,1),
 ("la catastrophe de Tchernobyl","the Chernobyl disaster","el desastre de Chernobil","die Katastrophe von Tschernobyl","il disastro di Chernobyl",1986,1),
 ("la guerre du Golfe","the Gulf War","la guerra del Golfo","der Zweite Golfkrieg","la guerra del Golfo",1991,1),
 ("la dissolution de l'URSS","the dissolution of the USSR","la disolucion de la URSS","die Aufloesung der UdSSR","la dissoluzione dell'URSS",1991,1),
 ("le traite de Maastricht","the Maastricht Treaty","el Tratado de Maastricht","der Vertrag von Maastricht","il Trattato di Maastricht",1992,1),
 ("la retrocession de Hong Kong","the handover of Hong Kong","la devolucion de Hong Kong","die Rueckgabe Hongkongs","la restituzione di Hong Kong",1997,1),
 ("le referendum du Brexit","the Brexit referendum","el referendum del Brexit","das Brexit-Referendum","il referendum sulla Brexit",2016,1),
 ("la pandemie de COVID-19 declaree","the COVID-19 pandemic declared","la declaracion de la pandemia de COVID-19","die Erklaerung der COVID-19-Pandemie","la dichiarazione della pandemia di COVID-19",2020,1),
 # ---- palier 2 ----
 ("la fondation de Rome","the founding of Rome","la fundacion de Roma","die Gruendung Roms","la fondazione di Roma",-753,2),
 ("la bataille de Marathon","the Battle of Marathon","la batalla de Maraton","die Schlacht bei Marathon","la battaglia di Maratona",-490,2),
 ("la mort d'Alexandre le Grand","the death of Alexander the Great","la muerte de Alejandro Magno","der Tod Alexanders des Grossen","la morte di Alessandro Magno",-323,2),
 ("l'assassinat de Jules Cesar","the assassination of Julius Caesar","el asesinato de Julio Cesar","die Ermordung Caesars","l'assassinio di Giulio Cesare",-44,2),
 ("l'eruption du Vesuve (Pompei)","the eruption of Vesuvius (Pompeii)","la erupcion del Vesubio (Pompeya)","der Ausbruch des Vesuvs (Pompeji)","l'eruzione del Vesuvio (Pompei)",79,2),
 ("l'edit de Milan","the Edict of Milan","el Edicto de Milan","das Edikt von Mailand","l'editto di Milano",313,2),
 ("l'Hegire","the Hijra","la Hegira","die Hidschra","l'Egira",622,2),
 ("la bataille de Poitiers (Charles Martel)","the Battle of Tours","la batalla de Poitiers","die Schlacht von Tours","la battaglia di Poitiers",732,2),
 ("la premiere croisade","the First Crusade","la primera cruzada","der Erste Kreuzzug","la prima crociata",1096,2),
 ("la chute de Constantinople","the fall of Constantinople","la caida de Constantinopla","der Fall Konstantinopels","la caduta di Costantinopoli",1453,2),
 ("le massacre de la Saint-Barthelemy","the St. Bartholomew's Day massacre","la matanza de San Bartolome","die Bartholomaeusnacht","la strage di San Bartolomeo",1572,2),
 ("l'edit de Nantes","the Edict of Nantes","el Edicto de Nantes","das Edikt von Nantes","l'editto di Nantes",1598,2),
 ("le voyage du Mayflower","the voyage of the Mayflower","el viaje del Mayflower","die Fahrt der Mayflower","il viaggio del Mayflower",1620,2),
 ("la grande peste de Londres","the Great Plague of London","la gran peste de Londres","die Grosse Pest von London","la grande peste di Londra",1665,2),
 ("la publication des Principia de Newton","the publication of Newton's Principia","la publicacion de los Principia de Newton","die Veroeffentlichung von Newtons Principia","la pubblicazione dei Principia di Newton",1687,2),
 ("l'abolition de l'esclavage au Royaume-Uni","the abolition of slavery in the UK","la abolicion de la esclavitud en Reino Unido","die Abschaffung der Sklaverei in Grossbritannien","l'abolizione della schiavitu nel Regno Unito",1833,2),
 ("la publication de L'Origine des especes","the publication of On the Origin of Species","la publicacion de El origen de las especies","die Veroeffentlichung von Die Entstehung der Arten","la pubblicazione de L'origine delle specie",1859,2),
 ("l'ouverture du canal de Suez","the opening of the Suez Canal","la apertura del canal de Suez","die Eroeffnung des Sueskanals","l'apertura del canale di Suez",1869,2),
 ("le brevet du telephone","the patent of the telephone","la patente del telefono","das Telefon-Patent","il brevetto del telefono",1876,2),
 ("le premier vol des freres Wright","the Wright brothers' first flight","el primer vuelo de los hermanos Wright","der erste Flug der Brueder Wright","il primo volo dei fratelli Wright",1903,2),
 ("la decouverte de la penicilline","the discovery of penicillin","el descubrimiento de la penicilina","die Entdeckung des Penicillins","la scoperta della penicillina",1928,2),
 ("la decouverte de la structure de l'ADN","the discovery of the structure of DNA","el descubrimiento de la estructura del ADN","die Entdeckung der DNA-Struktur","la scoperta della struttura del DNA",1953,2),
 ("la premiere greffe du coeur","the first heart transplant","el primer trasplante de corazon","die erste Herztransplantation","il primo trapianto di cuore",1967,2),
 ("l'invention du World Wide Web","the invention of the World Wide Web","la invencion de la World Wide Web","die Erfindung des World Wide Web","l'invenzione del World Wide Web",1989,2),
 ("le lancement du premier iPhone","the launch of the first iPhone","el lanzamiento del primer iPhone","die Vorstellung des ersten iPhones","il lancio del primo iPhone",2007,2),
 ("la creation du Bitcoin","the creation of Bitcoin","la creacion de Bitcoin","die Schaffung von Bitcoin","la creazione di Bitcoin",2009,2),
]

TPL = {"FR": "En quelle annee : %s ?", "EN": "In what year: %s?",
       "ES": "En que ano: %s?", "DE": "In welchem Jahr: %s?",
       "IT": "In che anno: %s?"}
BC = {"FR": "%d av. J.-C.", "EN": "%d BC", "ES": "%d a.C.", "DE": "%d v. Chr.", "IT": "%d a.C."}

def fmt(y, lang):
    return (BC[lang] % -y) if y < 0 else str(y)

rows = {lang: [] for lang in LANGS}
diffs = []
for fr, en, es, de, it, year, tier in E:
    evt = dict(zip(LANGS, (fr, en, es, de, it)))
    rng = random.Random("dates-%s" % en)
    offs = [o for o in (-30,-20,-15,-10,-7,-5,-3,-2,-1,1,2,3,5,7,10,15,20,30) ]
    rng.shuffle(offs)
    cands = []
    for o in offs:
        v = year + o
        if (year < 0) == (v < 0) and v != 0 and v not in cands:
            cands.append(v)
        if len(cands) == 3: break
    answers = [year] + cands
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(year)
    for lang in LANGS:
        rows[lang].append((TPL[lang] % evt[lang], [fmt(a, lang) for a in answers], ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/dates_bank.verse",
            "dates_bank.verse — Quizz DATES HISTORIQUES (en quelle annee...)",
            "DatesDiff", "Dates", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
