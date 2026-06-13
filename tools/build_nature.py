#!/usr/bin/env python3
# Quizz "Records naturels" (texte) : fleuves, montagnes, deserts, oceans, lacs...
# (Q FR,EN,ES,DE,IT, bonne_cle, [3 distracteurs cles], palier) + vocab V.
import os, random, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import emit_custom, LANGS

ROOT = "D:/QuizzFortnite"

V = {
 # fleuves
 "nil": ("Le Nil","The Nile","El Nilo","Der Nil","Il Nilo"),
 "amazone": ("L'Amazone","The Amazon","El Amazonas","Der Amazonas","Il Rio delle Amazzoni"),
 "yangtse": ("Le Yangtse","The Yangtze","El Yangtse","Der Jangtsekiang","Lo Yangtze"),
 "mississippi": ("Le Mississippi","The Mississippi","El Misisipi","Der Mississippi","Il Mississippi"),
 "danube": ("Le Danube","The Danube","El Danubio","Die Donau","Il Danubio"),
 "volga": ("La Volga","The Volga","El Volga","Die Wolga","Il Volga"),
 "rhin": ("Le Rhin","The Rhine","El Rin","Der Rhein","Il Reno"),
 "seine": ("La Seine","The Seine","El Sena","Die Seine","La Senna"),
 "gange": ("Le Gange","The Ganges","El Ganges","Der Ganges","Il Gange"),
 "congo_f": ("Le Congo","The Congo River","El rio Congo","Der Kongo","Il Congo"),
 # montagnes
 "everest": ("L'Everest","Mount Everest","El Everest","Der Mount Everest","L'Everest"),
 "k2": ("Le K2","K2","El K2","Der K2","Il K2"),
 "kilimandjaro": ("Le Kilimandjaro","Mount Kilimanjaro","El Kilimanjaro","Der Kilimandscharo","Il Kilimangiaro"),
 "montblanc": ("Le Mont Blanc","Mont Blanc","El Mont Blanc","Der Montblanc","Il Monte Bianco"),
 "aconcagua": ("L'Aconcagua","Aconcagua","El Aconcagua","Der Aconcagua","L'Aconcagua"),
 "denali": ("Le Denali","Denali","El Denali","Der Denali","Il Denali"),
 "elbrouz": ("L'Elbrouz","Mount Elbrus","El Elbrus","Der Elbrus","L'Elbrus"),
 "fuji": ("Le mont Fuji","Mount Fuji","El monte Fuji","Der Fuji","Il monte Fuji"),
 "matterhorn": ("Le Cervin","The Matterhorn","El Cervino","Das Matterhorn","Il Cervino"),
 # deserts
 "sahara": ("Le Sahara","The Sahara","El Sahara","Die Sahara","Il Sahara"),
 "gobi": ("Le Gobi","The Gobi","El Gobi","Die Gobi","Il Gobi"),
 "kalahari": ("Le Kalahari","The Kalahari","El Kalahari","Die Kalahari","Il Kalahari"),
 "atacama": ("L'Atacama","The Atacama","El Atacama","Die Atacama","L'Atacama"),
 "antarctique_d": ("L'Antarctique","Antarctica","La Antartida","Die Antarktis","L'Antartide"),
 "arabique": ("Le desert d'Arabie","The Arabian Desert","El desierto de Arabia","Die Arabische Wueste","Il deserto Arabico"),
 # oceans / mers
 "pacifique": ("L'ocean Pacifique","The Pacific Ocean","El oceano Pacifico","Der Pazifik","L'oceano Pacifico"),
 "atlantique": ("L'ocean Atlantique","The Atlantic Ocean","El oceano Atlantico","Der Atlantik","L'oceano Atlantico"),
 "indien": ("L'ocean Indien","The Indian Ocean","El oceano Indico","Der Indische Ozean","L'oceano Indiano"),
 "arctique": ("L'ocean Arctique","The Arctic Ocean","El oceano Artico","Das Nordpolarmeer","L'oceano Artico"),
 "mediterranee": ("La Mediterranee","The Mediterranean","El Mediterraneo","Das Mittelmeer","Il Mediterraneo"),
 "caspienne": ("La mer Caspienne","The Caspian Sea","El mar Caspio","Das Kaspische Meer","Il mar Caspio"),
 "rouge": ("La mer Rouge","The Red Sea","El mar Rojo","Das Rote Meer","Il mar Rosso"),
 "morte": ("La mer Morte","The Dead Sea","El mar Muerto","Das Tote Meer","Il mar Morto"),
 # lacs
 "baikal": ("Le lac Baikal","Lake Baikal","El lago Baikal","Der Baikalsee","Il lago Bajkal"),
 "superieur": ("Le lac Superieur","Lake Superior","El lago Superior","Der Obere See","Il lago Superiore"),
 "victoria": ("Le lac Victoria","Lake Victoria","El lago Victoria","Der Victoriasee","Il lago Vittoria"),
 "tanganyika": ("Le lac Tanganyika","Lake Tanganyika","El lago Tanganica","Der Tanganjikasee","Il lago Tanganica"),
 "titicaca": ("Le lac Titicaca","Lake Titicaca","El lago Titicaca","Der Titicacasee","Il lago Titicaca"),
 # divers
 "angel": ("Les chutes Angel","Angel Falls","El Salto Angel","Der Angel-Wasserfall","Le cascate Angel"),
 "niagara": ("Les chutes du Niagara","Niagara Falls","Las cataratas del Niagara","Die Niagarafaelle","Le cascate del Niagara"),
 "amazonie": ("La foret amazonienne","The Amazon rainforest","La selva amazonica","Der Amazonas-Regenwald","La foresta amazzonica"),
 "grandcanyon": ("Le Grand Canyon","The Grand Canyon","El Gran Canon","Der Grand Canyon","Il Grand Canyon"),
 "barriere": ("La Grande Barriere de corail","The Great Barrier Reef","La Gran Barrera de Coral","Das Great Barrier Reef","La Grande Barriera Corallina"),
 "groenland_i": ("Le Groenland","Greenland","Groenlandia","Groenland","La Groenlandia"),
 "mekong": ("Le Mekong","The Mekong","El Mekong","Der Mekong","Il Mekong"),
 "niger_f": ("Le Niger","The Niger River","El rio Niger","Der Niger","Il Niger"),
 "zambeze": ("Le Zambeze","The Zambezi","El Zambeze","Der Sambesi","Lo Zambesi"),
 "colorado_f": ("Le Colorado","The Colorado River","El rio Colorado","Der Colorado","Il Colorado"),
 "rhone": ("Le Rhone","The Rhone","El Rodano","Die Rhone","Il Rodano"),
 "loire": ("La Loire","The Loire","El Loira","Die Loire","La Loira"),
 "tamise": ("La Tamise","The Thames","El Tamesis","Die Themse","Il Tamigi"),
 "tibre": ("Le Tibre","The Tiber","El Tiber","Der Tiber","Il Tevere"),
 "indus": ("L'Indus","The Indus","El Indo","Der Indus","L'Indo"),
 "etna": ("L'Etna","Mount Etna","El Etna","Der Aetna","L'Etna"),
 "vesuve": ("Le Vesuve","Mount Vesuvius","El Vesubio","Der Vesuv","Il Vesuvio"),
 "krakatoa": ("Le Krakatoa","Krakatoa","El Krakatoa","Der Krakatau","Il Krakatoa"),
 "annapurna": ("L'Annapurna","Annapurna","El Annapurna","Der Annapurna","L'Annapurna"),
 "maunakea": ("Le Mauna Kea","Mauna Kea","El Mauna Kea","Der Mauna Kea","Il Mauna Kea"),
 "namib": ("Le Namib","The Namib","El Namib","Die Namib","Il Namib"),
 "mojave": ("Le Mojave","The Mojave","El Mojave","Die Mojave","Il Mojave"),
 "thar": ("Le Thar","The Thar","El Thar","Die Thar","Il Thar"),
 "leman": ("Le lac Leman","Lake Geneva","El lago Leman","Der Genfersee","Il lago di Ginevra"),
 "garde": ("Le lac de Garde","Lake Garda","El lago de Garda","Der Gardasee","Il lago di Garda"),
 "michigan": ("Le lac Michigan","Lake Michigan","El lago Michigan","Der Michigansee","Il lago Michigan"),
 "aral": ("La mer d'Aral","The Aral Sea","El mar de Aral","Der Aralsee","Il lago d'Aral"),
 "tchad_l": ("Le lac Tchad","Lake Chad","El lago Chad","Der Tschadsee","Il lago Ciad"),
 "noire": ("La mer Noire","The Black Sea","El mar Negro","Das Schwarze Meer","Il mar Nero"),
 "baltique": ("La mer Baltique","The Baltic Sea","El mar Baltico","Die Ostsee","Il mar Baltico"),
 "caraibes": ("La mer des Caraibes","The Caribbean Sea","El mar Caribe","Die Karibik","Il mar dei Caraibi"),
 "iguazu": ("Les chutes d'Iguazu","Iguazu Falls","Las cataratas del Iguazu","Die Iguazu-Wasserfaelle","Le cascate dell'Iguazu"),
 "victoria_f": ("Les chutes Victoria","Victoria Falls","Las cataratas Victoria","Die Victoriafaelle","Le cascate Vittoria"),
 "madagascar_i": ("Madagascar","Madagascar","Madagascar","Madagaskar","Madagascar"),
 "borneo": ("Borneo","Borneo","Borneo","Borneo","Borneo"),
 "honshu": ("Honshu","Honshu","Honshu","Honshu","Honshu"),
 "vatnajokull": ("Le Vatnajokull","Vatnajokull","El Vatnajokull","Der Vatnajoekull","Il Vatnajokull"),
 "caspienne2": ("La depression de la Caspienne","The Caspian Depression","La depresion del Caspio","Die Kaspische Senke","La depressione caspica"),
 "baffin": ("L'ile de Baffin","Baffin Island","La isla de Baffin","Die Baffininsel","L'isola di Baffin"),
 "sumatra": ("Sumatra","Sumatra","Sumatra","Sumatra","Sumatra"),
 "mariana": ("La fosse des Mariannes","The Mariana Trench","La fosa de las Marianas","Der Marianengraben","La fossa delle Marianne"),
}

Q = [
 # palier 0
 (("Quel est le plus long fleuve du monde ?","What is the longest river?","Cual es el rio mas largo del mundo?","Was ist der laengste Fluss der Welt?","Qual e il fiume piu lungo del mondo?"),"nil",["amazone","yangtse","mississippi"],0),
 (("Quelle est la plus haute montagne du monde ?","What is the highest mountain?","Cual es la montana mas alta?","Was ist der hoechste Berg der Welt?","Qual e la montagna piu alta del mondo?"),"everest",["k2","kilimandjaro","montblanc"],0),
 (("Quel est le plus grand desert chaud du monde ?","What is the largest hot desert?","Cual es el mayor desierto calido?","Was ist die groesste heisse Wueste?","Qual e il piu grande deserto caldo?"),"sahara",["gobi","kalahari","atacama"],0),
 (("Quel est le plus grand ocean du monde ?","What is the largest ocean?","Cual es el oceano mas grande?","Was ist der groesste Ozean?","Qual e l'oceano piu grande?"),"pacifique",["atlantique","indien","arctique"],0),
 (("Quelle est la plus haute montagne d'Afrique ?","What is the highest mountain in Africa?","Cual es la montana mas alta de Africa?","Was ist der hoechste Berg Afrikas?","Qual e la montagna piu alta dell'Africa?"),"kilimandjaro",["everest","montblanc","aconcagua"],0),
 (("Quelle est la plus haute montagne des Alpes ?","What is the highest mountain in the Alps?","Cual es la montana mas alta de los Alpes?","Was ist der hoechste Berg der Alpen?","Qual e la montagna piu alta delle Alpi?"),"montblanc",["matterhorn","everest","fuji"],0),
 (("Quel fleuve traverse Paris ?","Which river flows through Paris?","Que rio cruza Paris?","Welcher Fluss fliesst durch Paris?","Quale fiume attraversa Parigi?"),"seine",["rhin","danube","volga"],0),
 (("Quel fleuve a le plus grand debit du monde ?","Which river has the greatest flow?","Que rio tiene mayor caudal?","Welcher Fluss hat die groesste Wassermenge?","Quale fiume ha la portata maggiore?"),"amazone",["nil","yangtse","congo_f"],0),
 (("Quelle mer borde le sud de la France ?","Which sea borders southern France?","Que mar bana el sur de Francia?","Welches Meer grenzt an Suedfrankreich?","Quale mare bagna il sud della Francia?"),"mediterranee",["atlantique","rouge","caspienne"],0),
 (("Quelle est la plus grande foret tropicale ?","What is the largest rainforest?","Cual es la mayor selva tropical?","Was ist der groesste Regenwald?","Qual e la piu grande foresta pluviale?"),"amazonie",["barriere","grandcanyon","sahara"],0),
 (("Quel ocean separe l'Europe de l'Amerique ?","Which ocean separates Europe from America?","Que oceano separa Europa de America?","Welcher Ozean trennt Europa von Amerika?","Quale oceano separa l'Europa dall'America?"),"atlantique",["pacifique","indien","arctique"],0),
 (("Quel est le plus haut sommet d'Amerique du Sud ?","What is the highest peak in South America?","Cual es el pico mas alto de Sudamerica?","Was ist der hoechste Gipfel Suedamerikas?","Qual e la vetta piu alta del Sud America?"),"aconcagua",["everest","denali","kilimandjaro"],0),
 (("Quelles celebres chutes sont entre USA et Canada ?","Which famous falls lie between the US and Canada?","Que famosas cataratas estan entre EEUU y Canada?","Welche beruehmten Faelle liegen zwischen USA und Kanada?","Quali famose cascate sono tra USA e Canada?"),"niagara",["angel","amazonie","grandcanyon"],0),
 # palier 1
 (("Quel est le 2e plus haut sommet du monde ?","What is the 2nd highest mountain?","Cual es la 2a montana mas alta?","Was ist der zweithoechste Berg?","Qual e la 2a montagna piu alta?"),"k2",["everest","kilimandjaro","denali"],1),
 (("Quel est le lac le plus profond du monde ?","What is the deepest lake?","Cual es el lago mas profundo?","Was ist der tiefste See der Welt?","Qual e il lago piu profondo del mondo?"),"baikal",["superieur","victoria","titicaca"],1),
 (("Quel est le plus grand lac d'Afrique ?","What is the largest lake in Africa?","Cual es el mayor lago de Africa?","Was ist der groesste See Afrikas?","Qual e il piu grande lago dell'Africa?"),"victoria",["tanganyika","baikal","titicaca"],1),
 (("Quel desert froid couvre la Mongolie ?","Which cold desert covers Mongolia?","Que desierto frio cubre Mongolia?","Welche kalte Wueste bedeckt die Mongolei?","Quale deserto freddo copre la Mongolia?"),"gobi",["sahara","kalahari","atacama"],1),
 (("Quel desert est le plus aride du monde ?","Which desert is the driest in the world?","Que desierto es el mas arido del mundo?","Welche Wueste ist die trockenste der Welt?","Quale deserto e il piu arido del mondo?"),"atacama",["sahara","gobi","kalahari"],1),
 (("Quel fleuve est le plus long d'Europe ?","Which is the longest river in Europe?","Cual es el rio mas largo de Europa?","Welcher Fluss ist der laengste Europas?","Qual e il fiume piu lungo d'Europa?"),"volga",["danube","rhin","seine"],1),
 (("Quel fleuve traverse 10 pays d'Europe ?","Which river crosses 10 European countries?","Que rio cruza 10 paises de Europa?","Welcher Fluss durchquert 10 europaeische Laender?","Quale fiume attraversa 10 paesi europei?"),"danube",["rhin","volga","seine"],1),
 (("Quelle mer tres salee ne permet pas de couler ?","Which very salty sea makes you float?","Que mar muy salado te hace flotar?","In welchem sehr salzigen Meer treibt man?","In quale mare molto salato si galleggia?"),"morte",["rouge","caspienne","mediterranee"],1),
 (("Quel est le plus grand lac (mer fermee) du monde ?","What is the world's largest lake (inland sea)?","Cual es el mayor lago (mar interior) del mundo?","Was ist der groesste See (Binnenmeer) der Welt?","Qual e il piu grande lago (mare chiuso) del mondo?"),"caspienne",["superieur","baikal","victoria"],1),
 (("Quel fleuve sacre coule en Inde ?","Which sacred river flows in India?","Que rio sagrado fluye en India?","Welcher heilige Fluss fliesst in Indien?","Quale fiume sacro scorre in India?"),"gange",["yangtse","nil","mississippi"],1),
 (("Quel plus grand lac d'Amerique du Nord ?","What is the largest lake in North America?","Cual es el mayor lago de Norteamerica?","Was ist der groesste See Nordamerikas?","Qual e il piu grande lago del Nord America?"),"superieur",["victoria","baikal","titicaca"],1),
 (("Quel recif corallien geant borde l'Australie ?","Which giant coral reef borders Australia?","Que arrecife gigante bordea Australia?","Welches riesige Korallenriff saeumt Australien?","Quale gigantesca barriera corallina costeggia l'Australia?"),"barriere",["amazonie","grandcanyon","niagara"],1),
 (("Quel sommet est le plus haut d'Amerique du Nord ?","What is the highest peak in North America?","Cual es el pico mas alto de Norteamerica?","Was ist der hoechste Gipfel Nordamerikas?","Qual e la vetta piu alta del Nord America?"),"denali",["aconcagua","everest","montblanc"],1),
 (("Quel volcan est le symbole du Japon ?","Which volcano is Japan's symbol?","Que volcan es simbolo de Japon?","Welcher Vulkan ist Japans Wahrzeichen?","Quale vulcano e simbolo del Giappone?"),"fuji",["matterhorn","montblanc","kilimandjaro"],1),
 # palier 2
 (("Quel est le plus haut sommet d'Europe (Caucase) ?","What is Europe's highest peak (Caucasus)?","Cual es el pico mas alto de Europa (Caucaso)?","Was ist Europas hoechster Gipfel (Kaukasus)?","Qual e la vetta piu alta d'Europa (Caucaso)?"),"elbrouz",["montblanc","matterhorn","everest"],2),
 (("Quelle est la plus haute cascade du monde ?","What is the world's tallest waterfall?","Cual es la cascada mas alta del mundo?","Was ist der hoechste Wasserfall der Welt?","Qual e la cascata piu alta del mondo?"),"angel",["niagara","amazonie","grandcanyon"],2),
 (("Quel lac d'Afrique est le plus long et profond ?","Which African lake is the longest and deepest?","Que lago africano es el mas largo y profundo?","Welcher afrikanische See ist der laengste und tiefste?","Quale lago africano e il piu lungo e profondo?"),"tanganyika",["victoria","baikal","superieur"],2),
 (("Quel est le plus haut lac navigable du monde ?","What is the highest navigable lake?","Cual es el lago navegable mas alto?","Was ist der hoechste schiffbare See?","Qual e il lago navigabile piu alto?"),"titicaca",["baikal","victoria","superieur"],2),
 (("Quel desert d'Afrique australe partage son nom avec un peuple ?","Which southern African desert shares its name with a people?","Que desierto del sur de Africa comparte nombre con un pueblo?","Welche Wueste im suedlichen Afrika teilt ihren Namen mit einem Volk?","Quale deserto dell'Africa australe condivide il nome con un popolo?"),"kalahari",["sahara","gobi","atacama"],2),
 (("Quel ocean entoure le pole Nord ?","Which ocean surrounds the North Pole?","Que oceano rodea el Polo Norte?","Welcher Ozean umgibt den Nordpol?","Quale oceano circonda il Polo Nord?"),"arctique",["pacifique","indien","atlantique"],2),
 (("Quelle mer separe l'Afrique de l'Arabie ?","Which sea separates Africa from Arabia?","Que mar separa Africa de Arabia?","Welches Meer trennt Afrika von Arabien?","Quale mare separa l'Africa dall'Arabia?"),"rouge",["morte","mediterranee","caspienne"],2),
 (("Quel fleuve d'Asie est le plus long ?","Which Asian river is the longest?","Cual es el rio mas largo de Asia?","Welcher Fluss Asiens ist der laengste?","Qual e il fiume piu lungo dell'Asia?"),"yangtse",["gange","volga","nil"],2),
 (("Quel canyon geant est creuse par le Colorado ?","Which giant canyon was carved by the Colorado?","Que canon gigante excavo el Colorado?","Welche riesige Schlucht schuf der Colorado?","Quale gigantesco canyon ha scavato il Colorado?"),"grandcanyon",["barriere","niagara","amazonie"],2),
 (("Quelle est la plus grande ile du monde ?","What is the largest island in the world?","Cual es la isla mas grande del mundo?","Was ist die groesste Insel der Welt?","Qual e l'isola piu grande del mondo?"),"groenland_i",["amazonie","barriere","sahara"],2),
 (("Quel desert est en realite le plus grand (froid) ?","Which desert is actually the largest (cold)?","Que desierto es en realidad el mayor (frio)?","Welche Wueste ist tatsaechlich die groesste (kalt)?","Quale deserto e in realta il piu grande (freddo)?"),"antarctique_d",["sahara","gobi","arabique"],2),
 (("Quel grand desert se trouve dans la peninsule arabique ?","Which large desert lies in the Arabian Peninsula?","Que gran desierto esta en la peninsula arabiga?","Welche grosse Wueste liegt auf der Arabischen Halbinsel?","Quale grande deserto si trova nella penisola arabica?"),"arabique",["sahara","gobi","kalahari"],2),
 (("Quel fleuve d'Afrique centrale traverse l'equateur 2 fois ?","Which Central African river crosses the equator twice?","Que rio de Africa central cruza el ecuador 2 veces?","Welcher zentralafrikanische Fluss kreuzt den Aequator zweimal?","Quale fiume dell'Africa centrale attraversa l'equatore due volte?"),"congo_f",["nil","gange","volga"],2),
 (("Quel sommet alpin a une forme de pyramide celebre ?","Which Alpine peak has a famous pyramid shape?","Que pico alpino tiene forma de piramide famosa?","Welcher Alpengipfel hat eine beruehmte Pyramidenform?","Quale vetta alpina ha la famosa forma a piramide?"),"matterhorn",["montblanc","everest","fuji"],2),
 # ---- ajouts palier 0 ----
 (("Quel grand fleuve traverse Londres ?","Which river flows through London?","Que rio cruza Londres?","Welcher Fluss fliesst durch London?","Quale fiume attraversa Londra?"),"tamise",["seine","rhin","tibre"],0),
 (("Quel fleuve traverse Rome ?","Which river flows through Rome?","Que rio cruza Roma?","Welcher Fluss fliesst durch Rom?","Quale fiume attraversa Roma?"),"tibre",["tamise","seine","rhone"],0),
 (("Quel celebre volcan domine Naples ?","Which famous volcano towers over Naples?","Que famoso volcan domina Napoles?","Welcher Vulkan ueberragt Neapel?","Quale famoso vulcano domina Napoli?"),"vesuve",["etna","krakatoa","fuji"],0),
 (("Quel volcan est le plus actif de Sicile ?","Which volcano is the most active in Sicily?","Que volcan es el mas activo de Sicilia?","Welcher Vulkan ist der aktivste Siziliens?","Quale vulcano e il piu attivo della Sicilia?"),"etna",["vesuve","krakatoa","maunakea"],0),
 (("Quel grand fleuve d'Asie du Sud-Est traverse 6 pays ?","Which SE Asian river crosses 6 countries?","Que rio del sudeste asiatico cruza 6 paises?","Welcher suedostasiatische Fluss durchquert 6 Laender?","Quale fiume del sud-est asiatico attraversa 6 paesi?"),"mekong",["gange","indus","yangtse"],0),
 (("Quelles chutes spectaculaires sont entre Bresil et Argentine ?","Which spectacular falls lie between Brazil and Argentina?","Que espectaculares cataratas estan entre Brasil y Argentina?","Welche spektakulaeren Faelle liegen zwischen Brasilien und Argentinien?","Quali spettacolari cascate sono tra Brasile e Argentina?"),"iguazu",["niagara","victoria_f","angel"],0),
 (("Quelle mer borde la Cote d'Azur et l'Italie ?","Which sea borders the Riviera and Italy?","Que mar bordea la Costa Azul e Italia?","Welches Meer saeumt die Riviera und Italien?","Quale mare bagna la Costa Azzurra e l'Italia?"),"mediterranee",["noire","baltique","caraibes"],0),
 (("Quel fleuve passe a Lyon ?","Which river flows through Lyon?","Que rio pasa por Lyon?","Welcher Fluss fliesst durch Lyon?","Quale fiume passa per Lione?"),"rhone",["loire","seine","tamise"],0),
 (("Quel est le plus long fleuve de France ?","What is the longest river in France?","Cual es el rio mas largo de Francia?","Was ist der laengste Fluss Frankreichs?","Qual e il fiume piu lungo della Francia?"),"loire",["seine","rhone","rhin"],0),
 (("Quelle mer chaude borde les Antilles ?","Which warm sea borders the Caribbean islands?","Que mar calido bordea las Antillas?","Welches warme Meer saeumt die Antillen?","Quale mare caldo bagna le Antille?"),"caraibes",["baltique","noire","rouge"],0),
 (("Quelles chutes d'Afrique australe sont nommees comme une reine ?","Which southern African falls are named after a queen?","Que cataratas del sur de Africa llevan nombre de reina?","Welche Faelle im suedlichen Afrika tragen einen Koeniginnennamen?","Quali cascate dell'Africa australe portano il nome di una regina?"),"victoria_f",["iguazu","niagara","angel"],0),
 # ---- ajouts palier 1 ----
 (("Quel lac borde Geneve ?","Which lake borders Geneva?","Que lago bordea Ginebra?","Welcher See grenzt an Genf?","Quale lago costeggia Ginevra?"),"leman",["garde","michigan","aral"],1),
 (("Quel est le plus grand lac d'Italie ?","What is the largest lake in Italy?","Cual es el mayor lago de Italia?","Was ist der groesste See Italiens?","Qual e il piu grande lago d'Italia?"),"garde",["leman","michigan","baikal"],1),
 (("Quelle mer du nord de l'Europe est presque fermee ?","Which northern European sea is almost enclosed?","Que mar del norte de Europa esta casi cerrado?","Welches nordeuropaeische Meer ist fast geschlossen?","Quale mare del nord Europa e quasi chiuso?"),"baltique",["noire","caraibes","rouge"],1),
 (("Quelle mer borde l'Ukraine et la Turquie ?","Which sea borders Ukraine and Turkey?","Que mar bordea Ucrania y Turquia?","Welches Meer grenzt an die Ukraine und die Tuerkei?","Quale mare bagna Ucraina e Turchia?"),"noire",["baltique","caspienne","mediterranee"],1),
 (("Quel fleuve traverse l'Egypte... non, le Pakistan ?","Which river crosses Pakistan?","Que rio cruza Pakistan?","Welcher Fluss durchquert Pakistan?","Quale fiume attraversa il Pakistan?"),"indus",["gange","mekong","niger_f"],1),
 (("Quel fleuve d'Afrique de l'Ouest donne son nom a 2 pays ?","Which West African river names two countries?","Que rio de Africa occidental da nombre a 2 paises?","Welcher westafrikanische Fluss benennt zwei Laender?","Quale fiume dell'Africa occidentale da il nome a 2 paesi?"),"niger_f",["zambeze","mekong","congo_f"],1),
 (("Quel fleuve a creuse le Grand Canyon ?","Which river carved the Grand Canyon?","Que rio excavo el Gran Canon?","Welcher Fluss schuf den Grand Canyon?","Quale fiume ha scavato il Grand Canyon?"),"colorado_f",["mississippi","mekong","zambeze"],1),
 (("Quel sommet de l'Himalaya depasse 8000 m (8e plus haut) ?","Which Himalayan peak tops 8000 m (8th highest)?","Que cumbre del Himalaya supera 8000 m (8a)?","Welcher Himalaya-Gipfel ueberschreitet 8000 m (8.)?","Quale vetta dell'Himalaya supera 8000 m (8a)?"),"annapurna",["everest","k2","denali"],1),
 (("Quel volcan d'Hawai est la plus haute montagne (base sous-marine) ?","Which Hawaiian volcano is the tallest from base?","Que volcan de Hawai es la montana mas alta desde la base?","Welcher hawaiianische Vulkan ist von der Basis der hoechste Berg?","Quale vulcano hawaiano e la montagna piu alta dalla base?"),"maunakea",["fuji","etna","vesuve"],1),
 (("Quel desert cotier longe la Namibie ?","Which coastal desert runs along Namibia?","Que desierto costero recorre Namibia?","Welche Kuestenwueste saeumt Namibia?","Quale deserto costiero costeggia la Namibia?"),"namib",["kalahari","sahara","mojave"],1),
 (("Quel grand lac americain touche Chicago ?","Which Great Lake touches Chicago?","Que gran lago americano toca Chicago?","Welcher Grosse See beruehrt Chicago?","Quale grande lago americano tocca Chicago?"),"michigan",["superieur","leman","garde"],1),
 (("Quelle plus grande ile d'Asie du Sud-Est (partagee en 3) ?","Which is the largest SE Asian island (split in 3)?","Cual es la mayor isla del sudeste asiatico (en 3)?","Welche groesste suedostasiatische Insel (in 3 geteilt)?","Qual e la piu grande isola del sud-est asiatico (in 3)?"),"borneo",["sumatra","honshu","madagascar_i"],1),
 # ---- ajouts palier 2 ----
 (("Quel desert indien borde le Pakistan ?","Which Indian desert borders Pakistan?","Que desierto indio bordea Pakistan?","Welche indische Wueste grenzt an Pakistan?","Quale deserto indiano confina col Pakistan?"),"thar",["gobi","namib","mojave"],2),
 (("Quel desert americain abrite la Vallee de la Mort ?","Which US desert holds Death Valley?","Que desierto de EEUU alberga el Valle de la Muerte?","Welche US-Wueste birgt das Death Valley?","Quale deserto USA ospita la Valle della Morte?"),"mojave",["thar","namib","kalahari"],2),
 (("Quelle mer interieure d'Asie a presque disparu ?","Which Asian inland sea nearly vanished?","Que mar interior de Asia casi desaparecio?","Welches asiatische Binnenmeer ist fast verschwunden?","Quale mare interno asiatico e quasi scomparso?"),"aral",["caspienne","noire","baltique"],2),
 (("Quel lac africain a beaucoup retreci (Sahel) ?","Which African lake has shrunk greatly (Sahel)?","Que lago africano se ha reducido mucho (Sahel)?","Welcher afrikanische See ist stark geschrumpft (Sahel)?","Quale lago africano si e molto ridotto (Sahel)?"),"tchad_l",["victoria","tanganyika","aral"],2),
 (("Quel fleuve d'Afrique australe alimente les chutes Victoria ?","Which southern African river feeds Victoria Falls?","Que rio del sur de Africa alimenta las cataratas Victoria?","Welcher Fluss speist die Victoriafaelle?","Quale fiume alimenta le cascate Vittoria?"),"zambeze",["niger_f","congo_f","nil"],2),
 (("Quel est l'endroit le plus profond des oceans ?","What is the deepest point of the oceans?","Cual es el punto mas profundo de los oceanos?","Was ist der tiefste Punkt der Ozeane?","Qual e il punto piu profondo degli oceani?"),"mariana",["mariana","mariana","mariana"][:0] + ["baikal","caspienne","morte"],2),
 (("Quelle plus grande calotte glaciaire d'Europe (Islande) ?","Which is Europe's largest ice cap (Iceland)?","Cual es el mayor casquete glaciar de Europa (Islandia)?","Welche ist Europas groesste Eiskappe (Island)?","Qual e la piu grande calotta glaciale d'Europa (Islanda)?"),"vatnajokull",["everest","montblanc","elbrouz"],2),
 (("Quelle est la plus grande ile de l'ocean Indien ?","What is the largest island in the Indian Ocean?","Cual es la mayor isla del oceano Indico?","Was ist die groesste Insel im Indischen Ozean?","Qual e la piu grande isola dell'oceano Indiano?"),"madagascar_i",["borneo","sumatra","baffin"],2),
 (("Quelle grande ile arctique appartient au Canada ?","Which large Arctic island belongs to Canada?","Que gran isla artica pertenece a Canada?","Welche grosse arktische Insel gehoert zu Kanada?","Quale grande isola artica appartiene al Canada?"),"baffin",["groenland_i","honshu","borneo"],2),
 (("Sur quelle ile japonaise se trouve Tokyo ?","On which Japanese island is Tokyo?","En que isla japonesa esta Tokio?","Auf welcher japanischen Insel liegt Tokio?","Su quale isola giapponese si trova Tokyo?"),"honshu",["borneo","sumatra","madagascar_i"],2),
 (("Quelle ile indonesienne fut frappee par une eruption en 1883 ?","Which Indonesian island had an 1883 eruption?","Que isla indonesia sufrio una erupcion en 1883?","Welche indonesische Insel hatte 1883 einen Ausbruch?","Quale isola indonesiana ebbe un'eruzione nel 1883?"),"krakatoa",["etna","vesuve","maunakea"],2),
 # ---- complement pour atteindre 80+ ----
 (("Quel grand fleuve des USA se jette dans le golfe du Mexique ?","Which big US river flows into the Gulf of Mexico?","Que gran rio de EEUU desemboca en el golfo de Mexico?","Welcher grosse US-Fluss muendet in den Golf von Mexiko?","Quale grande fiume USA sfocia nel golfo del Messico?"),"mississippi",["colorado_f","amazone","mekong"],0),
 (("Quel ocean borde l'ouest de l'Afrique ?","Which ocean borders West Africa?","Que oceano bordea el oeste de Africa?","Welcher Ozean grenzt an Westafrika?","Quale oceano bagna l'Africa occidentale?"),"atlantique",["indien","pacifique","arctique"],0),
 (("Quel grand fleuve allemand se jette dans la mer du Nord ?","Which big German river flows to the North Sea?","Que gran rio aleman desemboca en el mar del Norte?","Welcher grosse deutsche Fluss muendet in die Nordsee?","Quale grande fiume tedesco sfocia nel mare del Nord?"),"rhin",["danube","volga","seine"],1),
 (("Quel ocean borde l'est de l'Afrique et l'Inde ?","Which ocean borders East Africa and India?","Que oceano bordea el este de Africa e India?","Welcher Ozean grenzt an Ostafrika und Indien?","Quale oceano bagna l'Africa orientale e l'India?"),"indien",["atlantique","pacifique","arctique"],1),
 (("Quelle grande ile de la Mediterranee a un volcan actif ?","Which large Mediterranean island has an active volcano?","Que gran isla del Mediterraneo tiene un volcan activo?","Welche grosse Mittelmeerinsel hat einen aktiven Vulkan?","Quale grande isola del Mediterraneo ha un vulcano attivo?"),"etna",["vesuve","krakatoa","fuji"],2),
 (("Quel immense desert de sel se trouve en Bolivie ?","Which huge salt flat is in Bolivia?","Que enorme salar esta en Bolivia?","Welche riesige Salzwueste liegt in Bolivien?","Quale immensa distesa di sale si trova in Bolivia?"),"atacama",["sahara","gobi","namib"],2),
]

TPL = {"FR": "%s", "EN": "%s", "ES": "%s", "DE": "%s", "IT": "%s"}
rows = {lang: [] for lang in LANGS}
diffs = []
for q, key, dks, tier in Q:
    qq = dict(zip(LANGS, q))
    rng = random.Random("nature-" + key + qq["EN"][:10])
    answers = [key] + dks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(key)
    for li, lang in enumerate(LANGS):
        rows[lang].append((qq[lang], [V[a][li] for a in answers], ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/nature_bank.verse",
            "nature_bank.verse — Quizz RECORDS NATURELS (fleuves/monts/oceans...)",
            "NatureDiff", "Nature", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
