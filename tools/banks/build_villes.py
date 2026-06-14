#!/usr/bin/env python3
# Quizz "Villes" (texte) : "Dans quel pays se trouve {Ville} ?"
# Reponses = noms de pays (tables x5 langues). Ville : str ou (FR,EN,ES,DE,IT).
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from country_core import C, NAME, REGION
from country_en import EN
from country_es import ES
from country_de import DE
from country_it import IT
from quiz_common import emit_custom, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT
NAMES = {"FR": NAME, "EN": EN, "ES": ES, "DE": DE, "IT": IT}

V = [
 ("New York","us",0),(("Londres","London","Londres","London","Londra"),"gb",0),
 ("Tokyo","jp",0),(("Rome","Rome","Roma","Rom","Roma"),"it",0),
 ("Madrid","es",0),("Berlin","de",0),
 (("Moscou","Moscow","Moscu","Moskau","Mosca"),"ru",0),
 (("Pekin","Beijing","Pekin","Peking","Pechino"),"cn",0),
 ("Sydney","au",0),("Rio de Janeiro","br",0),("Toronto","ca",0),
 (("Barcelone","Barcelona","Barcelona","Barcelona","Barcellona"),"es",0),
 (("Venise","Venice","Venecia","Venedig","Venezia"),"it",0),
 ("Amsterdam","nl",0),
 (("Lisbonne","Lisbon","Lisboa","Lissabon","Lisbona"),"pt",0),
 (("Athenes","Athens","Atenas","Athen","Atene"),"gr",0),
 (("Le Caire","Cairo","El Cairo","Kairo","Il Cairo"),"eg",0),
 ("Dubai","ae",0),("Istanbul","tr",0),("Mumbai","in",0),
 ("Los Angeles","us",0),("Las Vegas","us",0),("Miami","us",0),
 ("Marrakech","ma",0),
 (("Geneve","Geneva","Ginebra","Genf","Ginevra"),"ch",0),
 ("Hong Kong","cn",0),("Shanghai","cn",0),
 # ---- palier 1 ----
 ("Kyoto","jp",1),("Osaka","jp",1),("Seoul","kr",1),("Bangkok","th",1),
 ("Hanoi","vn",1),("Jakarta","id",1),(("Manille","Manila","Manila","Manila","Manila"),"ph",1),
 (("Saint-Petersbourg","Saint Petersburg","San Petersburgo","Sankt Petersburg","San Pietroburgo"),"ru",1),
 (("Cracovie","Krakow","Cracovia","Krakau","Cracovia"),"pl",1),
 (("Munich","Munich","Munich","Muenchen","Monaco di Baviera"),"de",1),
 (("Hambourg","Hamburg","Hamburgo","Hamburg","Amburgo"),"de",1),
 (("Milan","Milan","Milan","Mailand","Milano"),"it",1),
 (("Naples","Naples","Napoles","Neapel","Napoli"),"it",1),
 (("Florence","Florence","Florencia","Florenz","Firenze"),"it",1),
 (("Seville","Seville","Sevilla","Sevilla","Siviglia"),"es",1),
 (("Valence","Valencia","Valencia","Valencia","Valencia"),"es",1),
 ("Porto","pt",1),
 (("Edimbourg","Edinburgh","Edimburgo","Edinburgh","Edimburgo"),"gb",1),
 ("Zurich","ch",1),("Chicago","us",1),("San Francisco","us",1),
 ("Boston","us",1),("Seattle","us",1),
 (("La Nouvelle-Orleans","New Orleans","Nueva Orleans","New Orleans","New Orleans"),"us",1),
 ("Vancouver","ca",1),("Montreal","ca",1),("Sao Paulo","br",1),
 ("Medellin","co",1),("Cusco","pe",1),("Casablanca","ma",1),
 (("Le Cap","Cape Town","Ciudad del Cabo","Kapstadt","Citta del Capo"),"za",1),
 ("Johannesburg","za",1),("Melbourne","au",1),("Auckland","nz",1),
 # ---- palier 2 ----
 ("Bilbao","es",2),("Bruges","be",2),
 (("Anvers","Antwerp","Amberes","Antwerpen","Anversa"),"be",2),
 ("Rotterdam","nl",2),
 (("Goteborg","Gothenburg","Gotemburgo","Goeteborg","Goteborg"),"se",2),
 ("Bergen","no",2),
 (("Salzbourg","Salzburg","Salzburgo","Salzburg","Salisburgo"),"at",2),
 ("Innsbruck","at",2),("Lausanne","ch",2),
 (("Dresde","Dresden","Dresde","Dresden","Dresda"),"de",2),
 (("Cologne","Cologne","Colonia","Koeln","Colonia"),"de",2),
 (("Francfort","Frankfurt","Francfort","Frankfurt","Francoforte"),"de",2),
 (("Turin","Turin","Turin","Turin","Torino"),"it",2),
 (("Bologne","Bologna","Bolonia","Bologna","Bologna"),"it",2),
 (("Palerme","Palermo","Palermo","Palermo","Palermo"),"it",2),
 (("Verone","Verona","Verona","Verona","Verona"),"it",2),
 (("Salonique","Thessaloniki","Salonica","Thessaloniki","Salonicco"),"gr",2),
 ("Izmir","tr",2),
 (("Fes","Fez","Fez","Fes","Fes"),"ma",2),
 (("Tanger","Tangier","Tanger","Tanger","Tangeri"),"ma",2),
 ("Mombasa","ke",2),("Zanzibar","tz",2),
 (("Tombouctou","Timbuktu","Tombuctu","Timbuktu","Timbuctu"),"ml",2),
 ("Lagos","ng",2),("Kolkata","in",2),("Varanasi","in",2),
 ("Chiang Mai","th",2),("Da Nang","vn",2),("Busan","kr",2),
 ("Sapporo","jp",2),("Nagoya","jp",2),
 (("Canton","Guangzhou","Canton","Guangzhou","Canton"),"cn",2),
 ("Macao","cn",2),("Cebu","ph",2),("Perth","au",2),("Brisbane","au",2),
 ("Christchurch","nz",2),("Guadalajara","mx",2),("Monterrey","mx",2),
 (("Carthagene","Cartagena","Cartagena","Cartagena","Cartagena"),"co",2),
 ("Valparaiso","cl",2),("Mendoza","ar",2),("Recife","br",2),
 ("Detroit","us",2),("Houston","us",2),("Dallas","us",2),
 (("Philadelphie","Philadelphia","Filadelfia","Philadelphia","Filadelfia"),"us",2),
 ("Denver","us",2),("Calgary","ca",2),
]

TPL = {"FR": "Dans quel pays se trouve %s ?", "EN": "In which country is %s?",
       "ES": "En que pais esta %s?", "DE": "In welchem Land liegt %s?",
       "IT": "In quale paese si trova %s?"}

rows = {lang: [] for lang in LANGS}
diffs = []
for city, iso, tier in V:
    cnames = {lang: city for lang in LANGS} if isinstance(city, str) else dict(zip(LANGS, city))
    rng = random.Random("villes-%s-%s" % (cnames["EN"], iso))
    reg = [j for j, *_ in C if j != iso and REGION[j] == REGION[iso]]
    oth = [j for j, *_ in C if j != iso and REGION[j] != REGION[iso]]
    rng.shuffle(reg); rng.shuffle(oth)
    picks = (reg + oth)[:3]
    answers = [iso] + picks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(iso)
    for lang in LANGS:
        rows[lang].append((TPL[lang] % cnames[lang], [NAMES[lang][a] for a in answers], ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/villes_bank.verse",
            "villes_bank.verse — Quizz VILLES (dans quel pays...)",
            "VillesDiff", "Villes", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
