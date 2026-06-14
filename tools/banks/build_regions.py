#!/usr/bin/env python3
# Quizz "Drapeaux regionaux" (drapeau -> etat/region), pages "Flag of X" Wikipedia.
# (wiki, FR,EN,ES,DE,IT, t) ou (wiki, nom, t)
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

R = [
 ("Flag of Scotland","Ecosse","Scotland","Escocia","Schottland","Scozia",0),
 ("Flag of Wales","Pays de Galles","Wales","Gales","Wales","Galles",0),
 ("Flag of England","Angleterre","England","Inglaterra","England","Inghilterra",0),
 ("Flag of California","Californie","California","California","Kalifornien","California",0),
 ("Flag of Texas","Texas","Texas","Texas","Texas","Texas",0),
 ("Flag of Florida","Floride","Florida","Florida","Florida","Florida",0),
 ("Flag of Hawaii","Hawai","Hawaii","Hawai","Hawaii","Hawaii",0),
 ("Flag of Alaska","Alaska","Alaska","Alaska","Alaska","Alaska",0),
 ("Flag of Arizona","Arizona","Arizona","Arizona","Arizona","Arizona",0),
 ("Flag of Bavaria","Baviere","Bavaria","Baviera","Bayern","Baviera",0),
 ("Flag of Catalonia","Catalogne","Catalonia","Cataluna","Katalonien","Catalogna",0),
 ("Flag of the Basque Country","Pays basque","Basque Country","Pais Vasco","Baskenland","Paesi Baschi",0),
 ("Flag of Andalusia","Andalousie","Andalusia","Andalucia","Andalusien","Andalusia",0),
 ("Flag of Brittany","Bretagne","Brittany","Bretana","Bretagne","Bretagna",0),
 ("Flag of Corsica","Corse","Corsica","Corcega","Korsika","Corsica",0),
 ("Flag of Normandy","Normandie","Normandy","Normandia","Normandie","Normandia",0),
 ("Flag of Quebec","Quebec","Quebec","Quebec","Quebec","Quebec",0),
 ("Flag of Sicily","Sicile","Sicily","Sicilia","Sizilien","Sicilia",0),
 ("Flag of Colorado","Colorado","Colorado","Colorado","Colorado","Colorado",0),
 ("Flag of New Mexico","Nouveau-Mexique","New Mexico","Nuevo Mexico","New Mexico","Nuovo Messico",0),
 ("Flag of Maryland","Maryland","Maryland","Maryland","Maryland","Maryland",0),
 ("Flag of Puerto Rico","Porto Rico","Puerto Rico","Puerto Rico","Puerto Rico","Porto Rico",0),
 ("Flag of Greenland","Groenland","Greenland","Groenlandia","Groenland","Groenlandia",0),
 ("Flag of New York (state)","Etat de New York","New York","Nueva York","New York","New York",0),
 ("Flag of Nevada","Nevada","Nevada","Nevada","Nevada","Nevada",0),
 ("Flag of Georgia (U.S. state)","Georgie (USA)","Georgia","Georgia","Georgia","Georgia",0),
 # ---- palier 1 ----
 ("Flag of Sardinia","Sardaigne","Sardinia","Cerdena","Sardinien","Sardegna",1),
 ("Flag of Galicia","Galice","Galicia","Galicia","Galicien","Galizia",1),
 ("Flag of the Canary Islands","Iles Canaries","Canary Islands","Islas Canarias","Kanarische Inseln","Isole Canarie",1),
 ("Flag of the Balearic Islands","Iles Baleares","Balearic Islands","Islas Baleares","Balearen","Isole Baleari",1),
 ("Flag of Saxony","Saxe","Saxony","Sajonia","Sachsen","Sassonia",1),
 ("Flag of Berlin","Berlin","Berlin","Berlin","Berlin","Berlino",1),
 ("Flag of Hamburg","Hambourg","Hamburg","Hamburgo","Hamburg","Amburgo",1),
 ("Flag of Ontario","Ontario","Ontario","Ontario","Ontario","Ontario",1),
 ("Flag of British Columbia","Colombie-Britannique","British Columbia","Columbia Britanica","British Columbia","Columbia Britannica",1),
 ("Flag of Alberta","Alberta","Alberta","Alberta","Alberta","Alberta",1),
 ("Flag of the Faroe Islands","Iles Feroe","Faroe Islands","Islas Feroe","Faeroeer","Isole Faroe",1),
 ("Flag of Washington","Etat de Washington","Washington","Washington","Washington","Washington",1),
 ("Flag of Oregon","Oregon","Oregon","Oregon","Oregon","Oregon",1),
 ("Flag of Utah","Utah","Utah","Utah","Utah","Utah",1),
 ("Flag of Ohio","Ohio","Ohio","Ohio","Ohio","Ohio",1),
 ("Flag of Louisiana","Louisiane","Louisiana","Luisiana","Louisiana","Louisiana",1),
 ("Flag of Tennessee","Tennessee","Tennessee","Tennessee","Tennessee","Tennessee",1),
 ("Flag of South Carolina","Caroline du Sud","South Carolina","Carolina del Sur","South Carolina","Carolina del Sud",1),
 ("Flag of Virginia","Virginie","Virginia","Virginia","Virginia","Virginia",1),
 ("Flag of Wyoming","Wyoming","Wyoming","Wyoming","Wyoming","Wyoming",1),
 ("Flag of Montana","Montana","Montana","Montana","Montana","Montana",1),
 ("Flag of French Polynesia","Polynesie francaise","French Polynesia","Polinesia Francesa","Franzoesisch-Polynesien","Polinesia Francese",1),
 ("Flag of Alsace","Alsace","Alsace","Alsacia","Elsass","Alsazia",1),
 ("Flag of Occitania","Occitanie","Occitania","Occitania","Okzitanien","Occitania",1),
 ("Flag of Veneto","Venetie","Veneto","Veneto","Venetien","Veneto",1),
 ("Flag of Tuscany","Toscane","Tuscany","Toscana","Toskana","Toscana",1),
 # ---- palier 2 ----
 ("Flag of Aragon","Aragon","Aragon","Aragon","Aragonien","Aragona",2),
 ("Flag of Asturias","Asturies","Asturias","Asturias","Asturien","Asturie",2),
 ("Flag of Cantabria","Cantabrie","Cantabria","Cantabria","Kantabrien","Cantabria",2),
 ("Flag of Murcia","Murcie","Murcia","Murcia","Murcia","Murcia",2),
 ("Flag of Extremadura","Estremadure","Extremadura","Extremadura","Extremadura","Estremadura",2),
 ("Flag of Baden-Wurttemberg","Bade-Wurtemberg","Baden-Wurttemberg","Baden-Wurtemberg","Baden-Wuerttemberg","Baden-Wuerttemberg",2),
 ("Flag of Hesse","Hesse","Hesse","Hesse","Hessen","Assia",2),
 ("Flag of Thuringia","Thuringe","Thuringia","Turingia","Thueringen","Turingia",2),
 ("Flag of Brandenburg","Brandebourg","Brandenburg","Brandeburgo","Brandenburg","Brandeburgo",2),
 ("Flag of Manitoba","Manitoba","Manitoba","Manitoba","Manitoba","Manitoba",2),
 ("Flag of Saskatchewan","Saskatchewan","Saskatchewan","Saskatchewan","Saskatchewan","Saskatchewan",2),
 ("Flag of Nova Scotia","Nouvelle-Ecosse","Nova Scotia","Nueva Escocia","Nova Scotia","Nuova Scozia",2),
 ("Flag of Nunavut","Nunavut","Nunavut","Nunavut","Nunavut","Nunavut",2),
 ("Flag of Kansas","Kansas","Kansas","Kansas","Kansas","Kansas",2),
 ("Flag of Nebraska","Nebraska","Nebraska","Nebraska","Nebraska","Nebraska",2),
 ("Flag of Idaho","Idaho","Idaho","Idaho","Idaho","Idaho",2),
 ("Flag of Maine","Maine","Maine","Maine","Maine","Maine",2),
 ("Flag of Vermont","Vermont","Vermont","Vermont","Vermont","Vermont",2),
 ("Flag of Delaware","Delaware","Delaware","Delaware","Delaware","Delaware",2),
 ("Flag of Arkansas","Arkansas","Arkansas","Arkansas","Arkansas","Arkansas",2),
 ("Flag of Oklahoma","Oklahoma","Oklahoma","Oklahoma","Oklahoma","Oklahoma",2),
 ("Flag of Lombardy","Lombardie","Lombardy","Lombardia","Lombardei","Lombardia",2),
 ("Flag of Calabria","Calabre","Calabria","Calabria","Kalabrien","Calabria",2),
 ("Flag of Liguria","Ligurie","Liguria","Liguria","Ligurien","Liguria",2),
 ("Flag of Madeira","Madere","Madeira","Madeira","Madeira","Madera",2),
 ("Flag of the Azores","Acores","Azores","Azores","Azoren","Azzorre",2),
 ("Flag of Piedmont","Piemont","Piedmont","Piamonte","Piemont","Piemonte",2),
 ("Flag of Emilia-Romagna","Emilie-Romagne","Emilia-Romagna","Emilia-Romana","Emilia-Romagna","Emilia-Romagna",2),
 ("Flag of Campania","Campanie","Campania","Campania","Kampanien","Campania",2),
 ("Flag of Apulia","Pouilles","Apulia","Apulia","Apulien","Puglia",2),
 ("Flag of Friuli-Venezia Giulia","Frioul","Friuli","Friul","Friaul","Friuli",2),
 ("Flag of Pennsylvania","Pennsylvanie","Pennsylvania","Pensilvania","Pennsylvania","Pennsylvania",2),
 ("Flag of Massachusetts","Massachusetts","Massachusetts","Massachusetts","Massachusetts","Massachusetts",2),
 ("Flag of Michigan","Michigan","Michigan","Michigan","Michigan","Michigan",2),
 ("Flag of Indiana","Indiana","Indiana","Indiana","Indiana","Indiana",2),
 ("Flag of North Dakota","Dakota du Nord","North Dakota","Dakota del Norte","North Dakota","Dakota del Nord",2),
]

items = []
for row in R:
    if len(row) == 3:
        w, nm, t = row
        names = {"FR": nm, "EN": nm, "ES": nm, "DE": nm, "IT": nm}
    else:
        w, fr, en, es, de, it, t = row
        names = {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}
    items.append({"id": w, "wiki": w, "tier": t, "names": names})
print("Regions :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/regions", "reg")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images regions/")

ENONCE = {"FR": "Quel etat ou region a ce drapeau ?", "EN": "Which state or region has this flag?",
          "ES": "Que estado o region tiene esta bandera?", "DE": "Welche Region hat diese Flagge?",
          "IT": "Quale stato o regione ha questa bandiera?"}
emit_bank(f"{ROOT}/verse/regions_bank.verse",
          "regions_bank.verse — Quizz DRAPEAUX REGIONAUX (pages Flag of X)",
          "RegionsDiff", "Regions", ENONCE, items, shared=False, seed_prefix="regions",
          img_ref_of=lambda i: "regions.reg_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
