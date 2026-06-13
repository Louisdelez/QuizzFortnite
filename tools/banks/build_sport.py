#!/usr/bin/env python3
# Quizz "Sport" (texte) : regles, disciplines, JO. QCM A/B/C/D.
# Deux types : reponse-numerique (langue-neutre) et reponse-mot (vocab x5).
import os, random, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, LANGS

ROOT = "D:/QuizzFortnite"

# vocabulaire reponses (cle -> x5)
V = {
 "foot": ("Le football","Football","El futbol","Fussball","Il calcio"),
 "basket": ("Le basket","Basketball","El baloncesto","Basketball","La pallacanestro"),
 "volley": ("Le volley","Volleyball","El voleibol","Volleyball","La pallavolo"),
 "rugby": ("Le rugby","Rugby","El rugby","Rugby","Il rugby"),
 "tennis": ("Le tennis","Tennis","El tenis","Tennis","Il tennis"),
 "handball": ("Le handball","Handball","El balonmano","Handball","La pallamano"),
 "hockey": ("Le hockey sur glace","Ice hockey","El hockey sobre hielo","Eishockey","L'hockey su ghiaccio"),
 "baseball": ("Le baseball","Baseball","El beisbol","Baseball","Il baseball"),
 "cricket": ("Le cricket","Cricket","El criquet","Cricket","Il cricket"),
 "golf": ("Le golf","Golf","El golf","Golf","Il golf"),
 "boxe": ("La boxe","Boxing","El boxeo","Boxen","La boxe"),
 "judo": ("Le judo","Judo","El judo","Judo","Il judo"),
 "escrime": ("L'escrime","Fencing","La esgrima","Fechten","La scherma"),
 "natation": ("La natation","Swimming","La natacion","Schwimmen","Il nuoto"),
 "athletisme": ("L'athletisme","Athletics","El atletismo","Leichtathletik","L'atletica"),
 "cyclisme": ("Le cyclisme","Cycling","El ciclismo","Radsport","Il ciclismo"),
 "aviron": ("L'aviron","Rowing","El remo","Rudern","Il canottaggio"),
 "ski": ("Le ski","Skiing","El esqui","Skifahren","Lo sci"),
 "f1": ("La Formule 1","Formula 1","La Formula 1","Formel 1","La Formula 1"),
 "petanque": ("La petanque","Petanque","La petanca","Petanque","Le bocce"),
 "marathon_d": ("42 km","42 km","42 km","42 km","42 km"),
 "wimbledon": ("Wimbledon","Wimbledon","Wimbledon","Wimbledon","Wimbledon"),
 "rolandgarros": ("Roland-Garros","Roland Garros","Roland Garros","Roland Garros","Roland Garros"),
 "usopen": ("l'US Open","the US Open","el US Open","die US Open","gli US Open"),
 "australian": ("l'Open d'Australie","the Australian Open","el Abierto de Australia","die Australian Open","gli Australian Open"),
 "tourdefrance": ("le Tour de France","the Tour de France","el Tour de Francia","die Tour de France","il Tour de France"),
 "superbowl": ("le Super Bowl","the Super Bowl","la Super Bowl","den Super Bowl","il Super Bowl"),
 "ballondor": ("le Ballon d'Or","the Ballon d'Or","el Balon de Oro","den Ballon d'Or","il Pallone d'Oro"),
 "greece": ("la Grece","Greece","Grecia","Griechenland","la Grecia"),
 "paris_v": ("Paris","Paris","Paris","Paris","Parigi"),
 "tokyo_v": ("Tokyo","Tokyo","Tokio","Tokio","Tokyo"),
 "londres_v": ("Londres","London","Londres","London","Londra"),
 "athenes_v": ("Athenes","Athens","Atenas","Athen","Atene"),
 "losangeles_v": ("Los Angeles","Los Angeles","Los Angeles","Los Angeles","Los Angeles"),
 "pekin_v": ("Pekin","Beijing","Pekin","Peking","Pechino"),
 "rio_v": ("Rio de Janeiro","Rio de Janeiro","Rio de Janeiro","Rio de Janeiro","Rio de Janeiro"),
 "barcelone_v": ("Barcelone","Barcelona","Barcelona","Barcelona","Barcellona"),
 "or": ("L'or","Gold","El oro","Gold","L'oro"),
 "argent_m": ("L'argent","Silver","La plata","Silber","L'argento"),
 "bronze_m": ("Le bronze","Bronze","El bronce","Bronze","Il bronzo"),
 "knockout": ("Le KO","Knockout","El KO","Knockout","Il KO"),
 "essai": ("L'essai","The try","El ensayo","Der Versuch","La meta"),
 "but": ("Le but","The goal","El gol","Das Tor","Il gol"),
 "panier": ("Le panier","The basket","La canasta","Der Korb","Il canestro"),
 "ace": ("L'ace","The ace","El ace","Das Ass","L'ace"),
 "birdie": ("Le birdie","Birdie","El birdie","Birdie","Il birdie"),
 "strike": ("Le strike","Strike","El strike","Strike","Lo strike"),
 "tatami": ("Le tatami","The tatami","El tatami","Die Tatami","Il tatami"),
 "ring": ("Le ring","The ring","El ring","Der Ring","Il ring"),
 "court": ("Le court","The court","La pista","Der Platz","Il campo"),
 "piste": ("La piste","The track","La pista","Die Bahn","La pista"),
 "pingpong": ("Le tennis de table","Table tennis","El tenis de mesa","Tischtennis","Il ping pong"),
 "badminton": ("Le badminton","Badminton","El badminton","Badminton","Il badminton"),
 "surf": ("Le surf","Surfing","El surf","Surfen","Il surf"),
 "skate": ("Le skateboard","Skateboarding","El skate","Skateboarding","Lo skateboard"),
 "taekwondo": ("Le taekwondo","Taekwondo","El taekwondo","Taekwondo","Il taekwondo"),
 "lutte": ("La lutte","Wrestling","La lucha","Ringen","La lotta"),
 "halterophilie": ("L'halterophilie","Weightlifting","La halterofilia","Gewichtheben","Il sollevamento pesi"),
 "triathlon": ("Le triathlon","Triathlon","El triatlon","Triathlon","Il triathlon"),
 "equitation": ("L'equitation","Equestrian","La equitacion","Reitsport","L'equitazione"),
 "tir_arc": ("Le tir a l'arc","Archery","El tiro con arco","Bogenschiessen","Il tiro con l'arco"),
 "gymnastique": ("La gymnastique","Gymnastics","La gimnasia","Turnen","La ginnastica"),
 "patinage": ("Le patinage artistique","Figure skating","El patinaje artistico","Eiskunstlauf","Il pattinaggio artistico"),
 "waterpolo": ("Le water-polo","Water polo","El waterpolo","Wasserball","La pallanuoto"),
 "curling": ("Le curling","Curling","El curling","Curling","Il curling"),
 "biathlon": ("Le biathlon","Biathlon","El biatlon","Biathlon","Il biathlon"),
 "set": ("Le set","The set","El set","Der Satz","Il set"),
 "penalty": ("Le penalty","The penalty","El penalti","Der Elfmeter","Il rigore"),
 "dunk": ("Le dunk","The dunk","El mate","Der Dunk","La schiacciata"),
 "hattrick": ("Le coup du chapeau","The hat-trick","El hat-trick","Der Hattrick","La tripletta"),
 "berlin_v": ("Berlin","Berlin","Berlin","Berlin","Berlino"),
 "moscou_v": ("Moscou","Moscow","Moscu","Moskau","Mosca"),
 "sydney_v": ("Sydney","Sydney","Sidney","Sydney","Sydney"),
 "rome_v": ("Rome","Rome","Roma","Rom","Roma"),
}

# questions a reponse-mot : (Q x5, cle_bonne, [3 distracteurs], palier)
W = [
 (("Quel sport se joue avec un ballon rond et 11 joueurs ?","Which sport uses a round ball and 11 players?","Que deporte usa un balon redondo y 11 jugadores?","Welcher Sport nutzt einen runden Ball und 11 Spieler?","Quale sport usa un pallone rotondo e 11 giocatori?"),"foot",["rugby","basket","handball"],0),
 (("Dans quel sport marque-t-on un panier ?","In which sport do you score a basket?","En que deporte se anota una canasta?","In welchem Sport erzielt man einen Korb?","In quale sport si segna un canestro?"),"basket",["volley","handball","foot"],0),
 (("Quel sport se joue avec une raquette et un filet (1 contre 1) ?","Which sport uses a racket and a net (1v1)?","Que deporte usa raqueta y red (1 vs 1)?","Welcher Sport nutzt Schlaeger und Netz (1 gegen 1)?","Quale sport usa racchetta e rete (1 contro 1)?"),"tennis",["volley","handball","golf"],0),
 (("Dans quel sport marque-t-on un essai ?","In which sport do you score a try?","En que deporte se marca un ensayo?","In welchem Sport erzielt man einen Versuch?","In quale sport si segna una meta?"),"rugby",["foot","basket","hockey"],0),
 (("Quel sport se pratique sur la glace avec un palet ?","Which sport is played on ice with a puck?","Que deporte se juega en hielo con un disco?","Welcher Sport wird auf Eis mit einem Puck gespielt?","Quale sport si gioca sul ghiaccio con un disco?"),"hockey",["ski","natation","foot"],0),
 (("Dans quel sport frappe-t-on la balle avec une batte (USA) ?","In which sport do you hit the ball with a bat (USA)?","En que deporte se golpea la pelota con un bate (EEUU)?","In welchem Sport schlaegt man den Ball mit einem Schlaeger (USA)?","In quale sport si colpisce la palla con una mazza (USA)?"),"baseball",["cricket","golf","tennis"],0),
 (("Quel sport consiste a mettre une petite balle dans un trou ?","Which sport puts a small ball into a hole?","Que deporte mete una pelotita en un hoyo?","Welcher Sport bringt einen kleinen Ball ins Loch?","Quale sport mette una pallina in una buca?"),"golf",["tennis","cricket","baseball"],0),
 (("Dans quel sport se bat-on avec des gants sur un ring ?","In which sport do you fight with gloves on a ring?","En que deporte se pelea con guantes en un ring?","In welchem Sport kaempft man mit Handschuhen im Ring?","In quale sport si combatte con i guantoni sul ring?"),"boxe",["judo","escrime","rugby"],0),
 (("Quel art martial japonais utilise des prises et un tatami ?","Which Japanese martial art uses throws and a tatami?","Que arte marcial japones usa proyecciones y un tatami?","Welche japanische Kampfkunst nutzt Wuerfe und ein Tatami?","Quale arte marziale giapponese usa proiezioni e un tatami?"),"judo",["boxe","escrime","tennis"],0),
 (("Quel sport se pratique avec un fleuret ou une epee ?","Which sport uses a foil or an epee?","Que deporte usa florete o espada?","Welcher Sport nutzt Florett oder Degen?","Quale sport usa fioretto o spada?"),"escrime",["judo","boxe","golf"],0),
 (("Dans quel sport descend-on une pente enneigee ?","In which sport do you go down a snowy slope?","En que deporte se baja una pendiente nevada?","In welchem Sport faehrt man einen verschneiten Hang hinab?","In quale sport si scende un pendio innevato?"),"ski",["natation","cyclisme","aviron"],0),
 (("Quel tournoi de tennis se joue sur gazon a Londres ?","Which tennis tournament is on grass in London?","Que torneo de tenis se juega en hierba en Londres?","Welches Tennisturnier wird auf Rasen in London gespielt?","Quale torneo di tennis si gioca sull'erba a Londra?"),"wimbledon",["rolandgarros","usopen","australian"],0),
 (("Quel tournoi de tennis se joue sur terre battue a Paris ?","Which tennis tournament is on clay in Paris?","Que torneo de tenis se juega en tierra batida en Paris?","Welches Tennisturnier wird auf Sand in Paris gespielt?","Quale torneo di tennis si gioca sulla terra a Parigi?"),"rolandgarros",["wimbledon","usopen","australian"],0),
 (("Quelle est la plus grande course cycliste annuelle ?","What is the biggest annual cycling race?","Cual es la mayor carrera ciclista anual?","Was ist das groesste jaehrliche Radrennen?","Qual e la piu grande corsa ciclistica annuale?"),"tourdefrance",["wimbledon","superbowl","ballondor"],0),
 (("Quelle finale du football americain est la plus regardee aux USA ?","Which American football final is most watched in the US?","Que final de futbol americano es la mas vista en EEUU?","Welches Football-Finale ist in den USA am meistgesehen?","Quale finale di football americano e la piu vista negli USA?"),"superbowl",["tourdefrance","ballondor","wimbledon"],0),
 (("Dans quel pays sont nes les Jeux olympiques antiques ?","In which country were the ancient Olympics born?","En que pais nacieron los Juegos olimpicos antiguos?","In welchem Land entstanden die antiken Olympischen Spiele?","In quale paese nacquero le antiche Olimpiadi?"),"greece",["paris_v","londres_v","tokyo_v"],0),
 (("Quelle medaille recompense la 1re place aux JO ?","Which medal rewards 1st place at the Olympics?","Que medalla premia el 1er puesto en los JJOO?","Welche Medaille belohnt den 1. Platz bei Olympia?","Quale medaglia premia il 1o posto alle Olimpiadi?"),"or",["argent_m","bronze_m","birdie"],0),
 (("Quel sport consiste a parcourir des longueurs dans l'eau ?","Which sport is about doing lengths in water?","Que deporte consiste en hacer largos en el agua?","Welcher Sport besteht aus Bahnen im Wasser?","Quale sport consiste nel fare vasche in acqua?"),"natation",["aviron","cyclisme","ski"],0),
 # ---- palier 1 ----
 (("Quel sport oppose 6 joueurs de chaque cote d'un filet haut ?","Which sport has 6 players each side of a high net?","Que deporte enfrenta a 6 jugadores por lado de una red alta?","Welcher Sport hat 6 Spieler je Seite an einem hohen Netz?","Quale sport ha 6 giocatori per lato di una rete alta?"),"volley",["basket","handball","tennis"],1),
 (("Quel sport tres populaire en Inde se joue avec une batte plate ?","Which sport popular in India uses a flat bat?","Que deporte popular en India usa un bate plano?","Welcher in Indien beliebte Sport nutzt einen flachen Schlaeger?","Quale sport popolare in India usa una mazza piatta?"),"cricket",["baseball","golf","hockey"],1),
 (("Dans quel sport lance-t-on le ballon a la main vers un but ?","In which sport do you throw the ball by hand at a goal?","En que deporte se lanza el balon con la mano a una porteria?","In welchem Sport wirft man den Ball mit der Hand aufs Tor?","In quale sport si lancia la palla con la mano verso una porta?"),"handball",["foot","rugby","volley"],1),
 (("Quel tournoi de tennis se joue a New York ?","Which tennis tournament is held in New York?","Que torneo de tenis se juega en Nueva York?","Welches Tennisturnier findet in New York statt?","Quale torneo di tennis si gioca a New York?"),"usopen",["wimbledon","rolandgarros","australian"],1),
 (("Quel tournoi du Grand Chelem ouvre la saison (janvier) ?","Which Grand Slam opens the season (January)?","Que Grand Slam abre la temporada (enero)?","Welches Grand-Slam-Turnier eroeffnet die Saison (Januar)?","Quale Slam apre la stagione (gennaio)?"),"australian",["usopen","wimbledon","rolandgarros"],1),
 (("Quel trophee recompense le meilleur footballeur de l'annee ?","Which trophy rewards the best footballer of the year?","Que trofeo premia al mejor futbolista del ano?","Welche Trophaee kuert den besten Fussballer des Jahres?","Quale trofeo premia il miglior calciatore dell'anno?"),"ballondor",["superbowl","tourdefrance","wimbledon"],1),
 (("Quelle medaille recompense la 2e place ?","Which medal rewards 2nd place?","Que medalla premia el 2o puesto?","Welche Medaille belohnt den 2. Platz?","Quale medaglia premia il 2o posto?"),"argent_m",["or","bronze_m","ace"],1),
 (("Comment appelle-t-on un point gagnant direct au service au tennis ?","What is a direct winning serve called in tennis?","Como se llama un saque ganador directo en tenis?","Wie heisst ein direkter Aufschlagpunkt im Tennis?","Come si chiama un servizio vincente diretto nel tennis?"),"ace",["birdie","strike","but"],1),
 (("Au golf, comment nomme-t-on un trou en un coup sous le par ?","In golf, a hole one under par is called?","En golf, un hoyo uno bajo par se llama?","Beim Golf heisst ein Loch eins unter Par?","Nel golf, una buca uno sotto il par si chiama?"),"birdie",["ace","strike","but"],1),
 (("Quelle surface accueille un combat de judo ?","Which surface hosts a judo bout?","Que superficie acoge un combate de judo?","Welche Flaeche traegt einen Judokampf?","Quale superficie ospita un incontro di judo?"),"tatami",["ring","court","piste"],1),
 (("Quel sport se court sur 42,195 km ?","Which event is run over 42.195 km?","Que prueba se corre en 42,195 km?","Welcher Lauf geht ueber 42,195 km?","Quale gara si corre su 42,195 km?"),"athletisme",["natation","cyclisme","aviron"],1),
 (("Quel sport olympique consiste a ramer en equipe ?","Which Olympic sport is rowing as a team?","Que deporte olimpico consiste en remar en equipo?","Welcher olympische Sport ist Mannschaftsrudern?","Quale sport olimpico consiste nel remare in squadra?"),"aviron",["natation","cyclisme","ski"],1),
 (("Dans quelle ville se sont tenus les JO de 2016 ?","Which city hosted the 2016 Olympics?","Que ciudad acogio los JJOO de 2016?","Welche Stadt war Gastgeber von Olympia 2016?","Quale citta ha ospitato le Olimpiadi 2016?"),"rio_v",["londres_v","tokyo_v","pekin_v"],1),
 (("Dans quelle ville se sont tenus les JO de 2021 ?","Which city hosted the 2021 Olympics?","Que ciudad acogio los JJOO de 2021?","Welche Stadt war Gastgeber von Olympia 2021?","Quale citta ha ospitato le Olimpiadi 2021?"),"tokyo_v",["rio_v","londres_v","pekin_v"],1),
 (("Dans quelle ville se sont tenus les JO de 2012 ?","Which city hosted the 2012 Olympics?","Que ciudad acogio los JJOO de 2012?","Welche Stadt war Gastgeber von Olympia 2012?","Quale citta ha ospitato le Olimpiadi 2012?"),"londres_v",["rio_v","tokyo_v","pekin_v"],1),
 (("Quelle est la categorie reine de course automobile ?","What is the top class of motor racing?","Cual es la categoria reina del automovilismo?","Was ist die Koenigsklasse des Motorsports?","Qual e la categoria regina dell'automobilismo?"),"f1",["cyclisme","ski","golf"],1),
 # ---- palier 2 ----
 (("Quelle medaille recompense la 3e place ?","Which medal rewards 3rd place?","Que medalla premia el 3er puesto?","Welche Medaille belohnt den 3. Platz?","Quale medaglia premia il 3o posto?"),"bronze_m",["or","argent_m","essai"],2),
 (("Au bowling, comment nomme-t-on l'abattage des 10 quilles d'un coup ?","In bowling, knocking all 10 pins at once is called?","En los bolos, derribar los 10 pinos de un golpe se llama?","Beim Bowling heisst das Abraeumen aller 10 Pins?","Nel bowling, abbattere tutti i 10 birilli si chiama?"),"strike",["ace","birdie","but"],2),
 (("Dans quelle ville se sont tenus les premiers JO modernes (1896) ?","Which city hosted the first modern Olympics (1896)?","Que ciudad acogio los primeros JJOO modernos (1896)?","Welche Stadt war Gastgeber der ersten modernen Spiele (1896)?","Quale citta ha ospitato le prime Olimpiadi moderne (1896)?"),"athenes_v",["paris_v","londres_v","rio_v"],2),
 (("Dans quelle ville se sont tenus les JO de 2008 ?","Which city hosted the 2008 Olympics?","Que ciudad acogio los JJOO de 2008?","Welche Stadt war Gastgeber von Olympia 2008?","Quale citta ha ospitato le Olimpiadi 2008?"),"pekin_v",["tokyo_v","londres_v","rio_v"],2),
 (("Dans quelle ville se sont tenus les JO de 1992 ?","Which city hosted the 1992 Olympics?","Que ciudad acogio los JJOO de 1992?","Welche Stadt war Gastgeber von Olympia 1992?","Quale citta ha ospitato le Olimpiadi 1992?"),"barcelone_v",["athenes_v","paris_v","rio_v"],2),
 (("Quelle ville accueille les JO d'ete 2028 ?","Which city hosts the 2028 Summer Olympics?","Que ciudad acoge los JJOO de verano 2028?","Welche Stadt richtet Olympia 2028 aus?","Quale citta ospita le Olimpiadi estive 2028?"),"losangeles_v",["paris_v","tokyo_v","barcelone_v"],2),
 (("Quelle ville a accueilli les JO d'ete 2024 ?","Which city hosted the 2024 Summer Olympics?","Que ciudad acogio los JJOO de verano 2024?","Welche Stadt war Gastgeber von Olympia 2024?","Quale citta ha ospitato le Olimpiadi estive 2024?"),"paris_v",["losangeles_v","londres_v","tokyo_v"],2),
 (("Comment nomme-t-on la fin d'un combat de boxe par mise a terre decomptee ?","What is the end of a boxing bout by a counted fall called?","Como se llama el fin de un combate de boxeo por caida contada?","Wie heisst das Ende eines Boxkampfs durch ausgezaehlten Niederschlag?","Come si chiama la fine di un incontro di boxe per atterramento contato?"),"knockout",["strike","ace","essai"],2),
 (("Dans quel sport joue-t-on sur des greens et des fairways ?","In which sport do you play on greens and fairways?","En que deporte se juega en greens y fairways?","In welchem Sport spielt man auf Greens und Fairways?","In quale sport si gioca su green e fairway?"),"golf",["cricket","baseball","tennis"],2),
 (("Quel sport collectif se joue avec une crosse et une balle dure (gazon) ?","Which team sport uses a stick and a hard ball (field)?","Que deporte de equipo usa stick y bola dura (cesped)?","Welcher Mannschaftssport nutzt Schlaeger und harten Ball (Rasen)?","Quale sport di squadra usa bastone e pallina dura (prato)?"),"hockey",["rugby","cricket","baseball"],2),
 (("Comment appelle-t-on l'unite de score au rugby valant 5 points ?","What rugby score worth 5 points is this?","Como se llama la jugada de rugby que vale 5 puntos?","Wie heisst die 5-Punkte-Aktion im Rugby?","Come si chiama l'azione da 5 punti nel rugby?"),"essai",["but","panier","ace"],2),
 (("Quel sport de boules se joue surtout dans le sud de la France ?","Which boules sport is played mostly in southern France?","Que deporte de bolas se juega sobre todo en el sur de Francia?","Welcher Kugelsport wird vor allem in Suedfrankreich gespielt?","Quale gioco di bocce si pratica soprattutto nel sud della Francia?"),"petanque",["golf","cricket","hockey"],2),
 # ---- complement palier 0 ----
 (("Quel sport se joue avec une petite balle et une raquette sur une table ?","Which sport uses a small ball and paddle on a table?","Que deporte usa una pelotita y pala sobre una mesa?","Welcher Sport nutzt einen kleinen Ball und Schlaeger auf einem Tisch?","Quale sport usa una pallina e racchetta su un tavolo?"),"pingpong",["tennis","badminton","golf"],0),
 (("Quel sport se pratique sur les vagues avec une planche ?","Which sport is done on waves with a board?","Que deporte se practica sobre las olas con una tabla?","Welcher Sport wird auf Wellen mit einem Brett gemacht?","Quale sport si pratica sulle onde con una tavola?"),"surf",["skate","ski","natation"],0),
 (("Comment appelle-t-on 3 buts marques par le meme joueur ?","What are 3 goals by the same player called?","Como se llaman 3 goles del mismo jugador?","Wie nennt man 3 Tore desselben Spielers?","Come si chiamano 3 gol dello stesso giocatore?"),"hattrick",["penalty","dunk","ace"],0),
 (("Comment nomme-t-on un tir de reparation au football ?","What is a penalty kick called in football?","Como se llama un tiro desde el punto de penalti?","Wie heisst der Strafstoss im Fussball?","Come si chiama il tiro dal dischetto nel calcio?"),"penalty",["essai","but","ace"],0),
 (("Quel sport olympique consiste a soulever une barre tres lourde ?","Which Olympic sport lifts a very heavy bar?","Que deporte olimpico levanta una barra muy pesada?","Welcher olympische Sport hebt eine sehr schwere Hantel?","Quale sport olimpico solleva un bilanciere pesantissimo?"),"halterophilie",["lutte","judo","boxe"],0),
 (("Quel sport combine natation, velo et course a pied ?","Which sport combines swimming, cycling and running?","Que deporte combina natacion, ciclismo y carrera?","Welcher Sport verbindet Schwimmen, Radfahren und Laufen?","Quale sport combina nuoto, ciclismo e corsa?"),"triathlon",["biathlon","marathon_d","natation"],0),
 # ---- complement palier 1 ----
 (("Quel sport se joue avec un volant et une raquette legere ?","Which sport uses a shuttlecock and a light racket?","Que deporte usa un volante y raqueta ligera?","Welcher Sport nutzt einen Federball und leichten Schlaeger?","Quale sport usa un volano e una racchetta leggera?"),"badminton",["pingpong","tennis","golf"],1),
 (("Comment nomme-t-on un smash percutant au basket dans le panier ?","What is a forceful slam into the basket called?","Como se llama un mate potente en baloncesto?","Wie nennt man einen kraftvollen Korbwurf von oben?","Come si chiama una schiacciata potente nel basket?"),"dunk",["panier","strike","ace"],1),
 (("Quel art martial coreen est olympique (coups de pied) ?","Which Korean martial art is Olympic (kicks)?","Que arte marcial coreano es olimpico (patadas)?","Welche koreanische Kampfkunst ist olympisch (Tritte)?","Quale arte marziale coreana e olimpica (calci)?"),"taekwondo",["judo","boxe","lutte"],1),
 (("Quel sport d'hiver consiste a glisser des pierres vers une cible ?","Which winter sport slides stones toward a target?","Que deporte de invierno desliza piedras hacia una diana?","Welcher Wintersport schiebt Steine zu einem Ziel?","Quale sport invernale fa scivolare pietre verso un bersaglio?"),"curling",["hockey","ski","patinage"],1),
 (("Quel sport d'hiver melange ski de fond et tir a la carabine ?","Which winter sport mixes cross-country skiing and rifle shooting?","Que deporte invernal mezcla esqui de fondo y tiro?","Welcher Wintersport verbindet Langlauf und Schiessen?","Quale sport invernale unisce sci di fondo e tiro?"),"biathlon",["curling","triathlon","ski"],1),
 (("Comment appelle-t-on une serie de jeux remportee au tennis/volley ?","What is a won group of games in tennis/volley called?","Como se llama un grupo de juegos ganado en tenis/voley?","Wie nennt man eine gewonnene Spielgruppe im Tennis/Volley?","Come si chiama un gruppo di game vinto nel tennis/volley?"),"set",["ace","but","panier"],1),
 (("Quel sport olympique se joue dans l'eau avec un ballon et des buts ?","Which Olympic sport is played in water with a ball and goals?","Que deporte olimpico se juega en el agua con balon y porterias?","Welcher olympische Sport spielt im Wasser mit Ball und Toren?","Quale sport olimpico si gioca in acqua con palla e porte?"),"waterpolo",["natation","aviron","triathlon"],1),
 (("Quel sport olympique se pratique a cheval ?","Which Olympic sport is done on horseback?","Que deporte olimpico se practica a caballo?","Welcher olympische Sport wird zu Pferd ausgeuebt?","Quale sport olimpico si pratica a cavallo?"),"equitation",["cyclisme","escrime","tir_arc"],1),
 # ---- complement palier 2 ----
 (("Quel sport olympique consiste a tirer des fleches sur une cible ?","Which Olympic sport shoots arrows at a target?","Que deporte olimpico dispara flechas a una diana?","Welcher olympische Sport schiesst Pfeile auf ein Ziel?","Quale sport olimpico tira frecce su un bersaglio?"),"tir_arc",["escrime","biathlon","lutte"],2),
 (("Quel sport de combat olympique consiste a plaquer l'adversaire au sol sans coups ?","Which Olympic combat sport pins the opponent without strikes?","Que deporte olimpico de combate inmoviliza sin golpes?","Welcher olympische Kampfsport fixiert ohne Schlaege?","Quale sport olimpico immobilizza senza colpi?"),"lutte",["boxe","taekwondo","judo"],2),
 (("Quel sport olympique enchaine sauts et figures sur la glace ?","Which Olympic sport links jumps and spins on ice?","Que deporte olimpico encadena saltos y giros en hielo?","Welcher olympische Sport reiht Spruenge auf dem Eis?","Quale sport olimpico unisce salti e figure sul ghiaccio?"),"patinage",["hockey","curling","biathlon"],2),
 (("Quel sport olympique enchaine agres, sol et poutre ?","Which Olympic sport uses apparatus, floor and beam?","Que deporte olimpico usa aparatos, suelo y barra?","Welcher olympische Sport nutzt Geraete, Boden und Balken?","Quale sport olimpico usa attrezzi, corpo libero e trave?"),"gymnastique",["patinage","lutte","escrime"],2),
 (("Dans quelle ville se sont tenus les JO de 2000 ?","Which city hosted the 2000 Olympics?","Que ciudad acogio los JJOO de 2000?","Welche Stadt war Gastgeber von Olympia 2000?","Quale citta ospito le Olimpiadi 2000?"),"sydney_v",["athenes_v","pekin_v","rio_v"],2),
 (("Dans quelle ville se sont tenus les JO de 1980 ?","Which city hosted the 1980 Olympics?","Que ciudad acogio los JJOO de 1980?","Welche Stadt war Gastgeber von Olympia 1980?","Quale citta ospito le Olimpiadi 1980?"),"moscou_v",["berlin_v","rome_v","sydney_v"],2),
 (("Dans quelle ville se sont tenus les JO de 1936 ?","Which city hosted the 1936 Olympics?","Que ciudad acogio los JJOO de 1936?","Welche Stadt war Gastgeber von Olympia 1936?","Quale citta ospito le Olimpiadi 1936?"),"berlin_v",["moscou_v","rome_v","sydney_v"],2),
 (("Dans quelle ville se sont tenus les JO de 1960 ?","Which city hosted the 1960 Olympics?","Que ciudad acogio los JJOO de 1960?","Welche Stadt war Gastgeber von Olympia 1960?","Quale citta ospito le Olimpiadi 1960?"),"rome_v",["berlin_v","moscou_v","sydney_v"],2),
]

# questions numeriques : (Q x5, bonne, [3 distracteurs], palier)
N = [
 (("Combien de joueurs dans une equipe de football sur le terrain ?","How many players per football team on the pitch?","Cuantos jugadores por equipo de futbol en el campo?","Wie viele Spieler pro Fussballmannschaft auf dem Feld?","Quanti giocatori per squadra di calcio in campo?"),"11",["9","10","12"],0),
 (("Combien de joueurs dans une equipe de basket sur le terrain ?","How many players per basketball team on court?","Cuantos jugadores por equipo de baloncesto en pista?","Wie viele Spieler pro Basketballteam auf dem Feld?","Quanti giocatori per squadra di basket in campo?"),"5",["4","6","7"],0),
 (("Combien de points vaut un panier a 3 points... combien d'anneaux olympiques ?","How many Olympic rings are there?","Cuantos anillos olimpicos hay?","Wie viele olympische Ringe gibt es?","Quanti anelli olimpici ci sono?"),"5",["4","6","7"],0),
 (("Tous les combien d'annees ont lieu les JO d'ete ?","Every how many years are the Summer Olympics?","Cada cuantos anos son los JJOO de verano?","Alle wie viele Jahre finden die Sommerspiele statt?","Ogni quanti anni si tengono le Olimpiadi estive?"),"4",["2","3","5"],0),
 (("Combien de joueurs dans une equipe de volley sur le terrain ?","How many players per volleyball team on court?","Cuantos jugadores por equipo de voleibol en pista?","Wie viele Spieler pro Volleyballteam auf dem Feld?","Quanti giocatori per squadra di pallavolo in campo?"),"6",["5","7","8"],1),
 (("Combien de joueurs dans une equipe de rugby a XV ?","How many players in a rugby union team?","Cuantos jugadores en un equipo de rugby XV?","Wie viele Spieler in einer Rugby-Union-Mannschaft?","Quanti giocatori in una squadra di rugby a 15?"),"15",["13","14","16"],1),
 (("Combien de trous dans un parcours de golf classique ?","How many holes on a standard golf course?","Cuantos hoyos tiene un campo de golf estandar?","Wie viele Loecher hat ein normaler Golfplatz?","Quante buche ha un campo da golf standard?"),"18",["9","12","20"],1),
 (("Combien de joueurs dans une equipe de handball sur le terrain ?","How many players per handball team on court?","Cuantos jugadores por equipo de balonmano en pista?","Wie viele Spieler pro Handballteam auf dem Feld?","Quanti giocatori per squadra di pallamano in campo?"),"7",["6","8","11"],1),
 (("Combien de jeux faut-il (en general) pour gagner un set au tennis ?","How many games usually win a tennis set?","Cuantos juegos suelen ganar un set de tenis?","Wie viele Spiele gewinnen meist einen Tennissatz?","Quanti game di solito vincono un set di tennis?"),"6",["4","5","7"],1),
 (("Combien de joueurs dans une equipe de baseball sur le terrain ?","How many players per baseball team on the field?","Cuantos jugadores por equipo de beisbol en el campo?","Wie viele Spieler pro Baseballteam auf dem Feld?","Quanti giocatori per squadra di baseball in campo?"),"9",["8","10","11"],2),
 (("Combien de joueurs dans une equipe de rugby a XIII ?","How many players in a rugby league team?","Cuantos jugadores en un equipo de rugby XIII?","Wie viele Spieler in einer Rugby-League-Mannschaft?","Quanti giocatori in una squadra di rugby a 13?"),"13",["11","15","17"],2),
 (("Combien de manches (innings) dans un match de baseball ?","How many innings in a baseball game?","Cuantas entradas tiene un partido de beisbol?","Wie viele Innings hat ein Baseballspiel?","Quanti inning ha una partita di baseball?"),"9",["7","11","12"],2),
 (("Combien de quilles vise-t-on au bowling ?","How many pins do you aim at in bowling?","Cuantos pinos hay en los bolos?","Wie viele Pins gibt es beim Bowling?","Quanti birilli ci sono nel bowling?"),"10",["8","9","12"],2),
 (("Combien de points vaut une transformation au rugby ?","How many points is a rugby conversion worth?","Cuantos puntos vale una conversion en rugby?","Wie viele Punkte zaehlt eine Erhoehung im Rugby?","Quanti punti vale una trasformazione nel rugby?"),"2",["1","3","5"],2),
 (("Combien de tours fait-on dans un 800 m sur piste standard ?","How many laps in an 800 m on a standard track?","Cuantas vueltas son 800 m en pista estandar?","Wie viele Runden sind 800 m auf einer Standardbahn?","Quanti giri sono 800 m in pista standard?"),"2",["1","3","4"],2),
]

rows = {lang: [] for lang in LANGS}
diffs = []
for q, key, dks, tier in W:
    qq = dict(zip(LANGS, q))
    rng = random.Random("sport-" + key + qq["EN"][:12])
    answers = [key] + dks
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(key)
    for li, lang in enumerate(LANGS):
        rows[lang].append((qq[lang], [V[a][li] for a in answers], ci))
    diffs.append(tier)
for q, good, ds, tier in N:
    qq = dict(zip(LANGS, q))
    rng = random.Random("sportn-" + good + qq["EN"][:12])
    answers = [good] + ds
    correct = rng.randrange(4)
    answers[0], answers[correct] = answers[correct], answers[0]
    ci = answers.index(good)
    for lang in LANGS:
        rows[lang].append((qq[lang], list(answers), ci))
    diffs.append(tier)

emit_custom(f"{ROOT}/verse/sport_bank.verse",
            "sport_bank.verse — Quizz SPORT (regles, disciplines, JO)",
            "SportDiff", "Sport", rows, diffs)
print("Total : %d | Paliers : %d/%d/%d" % (len(diffs), diffs.count(0), diffs.count(1), diffs.count(2)))
