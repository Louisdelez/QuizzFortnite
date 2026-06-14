#!/usr/bin/env python3
# Quizz "Botanique" (photo -> nom de la plante/fleur/arbre).
# (wiki, nom, t) ou (wiki, FR,EN,ES,DE,IT, t)
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

B = [
 ("Rose","Rose","Rose","Rosa","Rose","Rosa",0),
 ("Tulip","Tulipe","Tulip","Tulipan","Tulpe","Tulipano",0),
 ("Common sunflower","Tournesol","Sunflower","Girasol","Sonnenblume","Girasole",0),
 ("Bellis perennis","Marguerite","Daisy","Margarita","Gaensebluemchen","Margherita",0),
 ("Taraxacum","Pissenlit","Dandelion","Diente de leon","Loewenzahn","Tarassaco",0),
 ("Papaver rhoeas","Coquelicot","Poppy","Amapola","Mohn","Papavero",0),
 ("Lavandula","Lavande","Lavender","Lavanda","Lavendel","Lavanda",0),
 ("Cactus","Cactus","Cactus","Cactus","Kaktus","Cactus",0),
 ("Orchidaceae","Orchidee","Orchid","Orquidea","Orchidee","Orchidea",0),
 ("Bamboo","Bambou","Bamboo","Bambu","Bambus","Bambu",0),
 ("Arecaceae","Palmier","Palm tree","Palmera","Palme","Palma",0),
 ("Oak","Chene","Oak","Roble","Eiche","Quercia",0),
 ("Fir","Sapin","Fir","Abeto","Tanne","Abete",0),
 ("Maple","Erable","Maple","Arce","Ahorn","Acero",0),
 ("Birch","Bouleau","Birch","Abedul","Birke","Betulla",0),
 ("Salix babylonica","Saule pleureur","Weeping willow","Sauce lloron","Trauerweide","Salice piangente",0),
 ("Olive","Olivier","Olive tree","Olivo","Olivenbaum","Ulivo",0),
 ("Cherry blossom","Cerisier du Japon","Cherry blossom","Cerezo japones","Kirschbluete","Ciliegio giapponese",0),
 ("Lily of the valley","Muguet","Lily of the valley","Lirio de los valles","Maigloeckchen","Mughetto",0),
 ("Clover","Trefle","Clover","Trebol","Klee","Trifoglio",0),
 ("Hedera","Lierre","Ivy","Hiedra","Efeu","Edera",0),
 ("Fern","Fougere","Fern","Helecho","Farn","Felce",0),
 ("Wheat","Ble","Wheat","Trigo","Weizen","Grano",0),
 ("Maize","Mais","Corn","Maiz","Mais","Mais",0),
 ("Rice","Riz","Rice","Arroz","Reis","Riso",0),
 ("Vitis vinifera","Vigne","Grapevine","Vid","Weinrebe","Vite",0),
 # ---- palier 1 ----
 ("Lilium","Lys","Lily","Lirio","Lilie","Giglio",1),
 ("Iris (plant)","Iris","Iris","Iris","Iris","Iris",1),
 ("Narcissus (plant)","Jonquille","Daffodil","Narciso","Narzisse","Narciso",1),
 ("Hyacinth (plant)","Jacinthe","Hyacinth","Jacinto","Hyazinthe","Giacinto",1),
 ("Peony","Pivoine","Peony","Peonia","Pfingstrose","Peonia",1),
 ("Hydrangea","Hortensia","Hydrangea","Hortensia","Hortensie","Ortensia",1),
 ("Geranium","Geranium","Geranium","Geranio","Geranie","Geranio",1),
 ("Magnolia","Magnolia",1),
 ("Camellia","Camelia","Camellia","Camelia","Kamelie","Camelia",1),
 ("Dahlia","Dahlia","Dahlia","Dalia","Dahlie","Dalia",1),
 ("Syringa","Lilas","Lilac","Lila","Flieder","Lilla",1),
 ("Wisteria","Glycine","Wisteria","Glicina","Glyzinie","Glicine",1),
 ("Leontopodium nivale","Edelweiss","Edelweiss","Edelweiss","Edelweiss","Stella alpina",1),
 ("Galanthus","Perce-neige","Snowdrop","Campanilla de invierno","Schneegloeckchen","Bucaneve",1),
 ("Centaurea cyanus","Bleuet","Cornflower","Aciano","Kornblume","Fiordaliso",1),
 ("Eucalyptus","Eucalyptus","Eucalyptus","Eucalipto","Eukalyptus","Eucalipto",1),
 ("Sequoiadendron giganteum","Sequoia geant","Giant sequoia","Secuoya gigante","Riesenmammutbaum","Sequoia gigante",1),
 ("Adansonia","Baobab","Baobab","Baobab","Affenbrotbaum","Baobab",1),
 ("Cupressus","Cypres","Cypress","Cipres","Zypresse","Cipresso",1),
 ("Cedrus","Cedre","Cedar","Cedro","Zeder","Cedro",1),
 ("Platanus","Platane","Plane tree","Platano","Platane","Platano",1),
 ("Populus","Peuplier","Poplar","Alamo","Pappel","Pioppo",1),
 ("Beech","Hetre","Beech","Haya","Buche","Faggio",1),
 ("Aloe vera","Aloe vera",1),
 ("Mentha","Menthe","Mint","Menta","Minze","Menta",1),
 ("Basil","Basilic","Basil","Albahaca","Basilikum","Basilico",1),
 # ---- palier 2 ----
 ("Rafflesia","Rafflesia","Rafflesia","Rafflesia","Rafflesie","Rafflesia",2),
 ("Venus flytrap","Dionee attrape-mouche","Venus flytrap","Venus atrapamoscas","Venusfliegenfalle","Dionea",2),
 ("Nepenthes","Nepenthes","Nepenthes","Nepenthes","Kannenpflanze","Nepenthes",2),
 ("Welwitschia","Welwitschia",2),
 ("Ginkgo biloba","Ginkgo",2),
 ("Mandrake","Mandragore","Mandrake","Mandragora","Alraune","Mandragora",2),
 ("Atropa belladonna","Belladone","Belladonna","Belladona","Tollkirsche","Belladonna",2),
 ("Conium maculatum","Grande cigue","Hemlock","Cicuta","Schierling","Cicuta",2),
 ("Urtica dioica","Ortie","Nettle","Ortiga","Brennnessel","Ortica",2),
 ("Thistle","Chardon","Thistle","Cardo","Distel","Cardo",2),
 ("Rosemary","Romarin","Rosemary","Romero","Rosmarin","Rosmarino",2),
 ("Thyme","Thym","Thyme","Tomillo","Thymian","Timo",2),
 ("Salvia officinalis","Sauge","Sage","Salvia","Salbei","Salvia",2),
 ("Saffron","Safran","Saffron","Azafran","Safran","Zafferano",2),
 ("Hops","Houblon","Hops","Lupulo","Hopfen","Luppolo",2),
 ("Flax","Lin","Flax","Lino","Lein","Lino",2),
 ("Cotton","Coton","Cotton","Algodon","Baumwolle","Cotone",2),
 ("Sugarcane","Canne a sucre","Sugarcane","Cana de azucar","Zuckerrohr","Canna da zucchero",2),
 ("Camellia sinensis","Theier","Tea plant","Planta del te","Teestrauch","Pianta del te",2),
 ("Coffea","Cafeier","Coffee plant","Cafeto","Kaffeepflanze","Pianta del caffe",2),
 ("Theobroma cacao","Cacaoyer","Cacao tree","Arbol del cacao","Kakaobaum","Albero del cacao",2),
 ("Ficus carica","Figuier","Fig tree","Higuera","Feigenbaum","Fico",2),
 ("Pomegranate","Grenadier","Pomegranate","Granado","Granatapfel","Melograno",2),
 ("Hibiscus","Hibiscus","Hibiscus","Hibisco","Hibiskus","Ibisco",2),
 ("Nelumbo nucifera","Lotus","Lotus","Loto","Lotosblume","Fior di loto",2),
 ("Monstera deliciosa","Monstera","Monstera","Monstera","Fensterblatt","Monstera",2),
 ("Bird-of-paradise flower","Oiseau de paradis","Bird of paradise","Ave del paraiso","Paradiesvogelblume","Strelizia",2),
 ("Anthurium","Anthurium","Anthurium","Anturio","Flamingoblume","Anturio",2),
 ("Bromeliaceae","Bromeliacee","Bromeliad","Bromelia","Bromelie","Bromeliacea",2),
 ("Protea","Protea","Protea","Protea","Protea","Protea",2),
 ("Bougainvillea","Bougainvillier","Bougainvillea","Buganvilla","Bougainvillea","Buganvillea",2),
 ("Jasmine","Jasmin","Jasmine","Jazmin","Jasmin","Gelsomino",2),
 ("Gardenia","Gardenia","Gardenia","Gardenia","Gardenie","Gardenia",2),
 ("Foxglove","Digitale","Foxglove","Dedalera","Fingerhut","Digitale",2),
 ("Lupinus","Lupin","Lupine","Lupino","Lupine","Lupino",2),
 ("Helianthus tuberosus","Topinambour","Jerusalem artichoke","Tupinambo","Topinambur","Topinambur",2),
]

items = []
for row in B:
    if len(row) == 3:
        w, nm, t = row
        names = {"FR": nm, "EN": nm, "ES": nm, "DE": nm, "IT": nm}
    else:
        w, fr, en, es, de, it, t = row
        names = {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}
    items.append({"id": w, "wiki": w, "tier": t, "names": names})
print("Botanique :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/botanique", "bot")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images botanique/")

ENONCE = {"FR": "Quelle est cette plante ?", "EN": "What plant is this?",
          "ES": "Que planta es esta?", "DE": "Welche Pflanze ist das?",
          "IT": "Quale pianta e questa?"}
emit_bank(f"{ROOT}/verse/botanique_bank.verse",
          "botanique_bank.verse — Quizz BOTANIQUE (photos Wikipedia)",
          "BotaniqueDiff", "Botanique", ENONCE, items, shared=False, seed_prefix="botanique",
          img_ref_of=lambda i: "botanique.bot_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
