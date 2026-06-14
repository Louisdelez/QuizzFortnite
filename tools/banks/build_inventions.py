#!/usr/bin/env python3
# Quizz "Inventions & decouvertes" (texte) : "Qui a invente/decouvert X ?"
# (objet FR,EN,ES,DE,IT, inventeur, palier). Inventeur identique x5 langues.
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, make_draws, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT

# (objet x5, inventeur/decouvreur, type 'inv'|'dec', palier)
T = [
 (("l'ampoule electrique","the light bulb","la bombilla","die Gluehbirne","la lampadina"),"Thomas Edison","inv",0),
 (("le telephone","the telephone","el telefono","das Telefon","il telefono"),"Alexander Graham Bell","inv",0),
 (("la radio","the radio","la radio","das Radio","la radio"),"Guglielmo Marconi","inv",0),
 (("le vaccin contre la rage","the rabies vaccine","la vacuna contra la rabia","den Tollwutimpfstoff","il vaccino contro la rabbia"),"Louis Pasteur","inv",0),
 (("la penicilline","penicillin","la penicilina","das Penicillin","la penicillina"),"Alexander Fleming","dec",0),
 (("la gravitation universelle","universal gravitation","la gravitacion universal","die Gravitation","la gravitazione universale"),"Isaac Newton","dec",0),
 (("la relativite","relativity","la relatividad","die Relativitaetstheorie","la relativita"),"Albert Einstein","dec",0),
 (("le telegraphe et son code","the telegraph code","el telegrafo y su codigo","den Telegrafencode","il telegrafo e il suo codice"),"Samuel Morse","inv",0),
 (("la dynamite","dynamite","la dinamita","das Dynamit","la dinamite"),"Alfred Nobel","inv",0),
 (("l'imprimerie en Europe","the printing press in Europe","la imprenta en Europa","den Buchdruck in Europa","la stampa in Europa"),"Johannes Gutenberg","inv",0),
 (("le telescope astronomique ameliore","the improved telescope","el telescopio mejorado","das verbesserte Teleskop","il telescopio migliorato"),"Galileo Galilei","inv",0),
 (("l'avion (premier vol motorise)","the airplane","el avion","das Flugzeug","l'aereo"),"Les freres Wright","inv",0),
 (("le cinema","cinema","el cine","das Kino","il cinema"),"Les freres Lumiere","inv",0),
 (("la pile electrique","the electric battery","la pila electrica","die Batterie","la pila elettrica"),"Alessandro Volta","inv",0),
 (("le paratonnerre","the lightning rod","el pararrayos","den Blitzableiter","il parafulmine"),"Benjamin Franklin","inv",0),
 (("l'Amerique (1492)","America (1492)","America (1492)","Amerika (1492)","l'America (1492)"),"Christophe Colomb","dec",0),
 (("le World Wide Web","the World Wide Web","la World Wide Web","das World Wide Web","il World Wide Web"),"Tim Berners-Lee","inv",0),
 (("le vaccin contre la polio","the polio vaccine","la vacuna contra la polio","den Polioimpfstoff","il vaccino contro la polio"),"Jonas Salk","inv",0),
 (("la machine a vapeur amelioree","the improved steam engine","la maquina de vapor mejorada","die verbesserte Dampfmaschine","la macchina a vapore migliorata"),"James Watt","inv",0),
 (("la theorie de l'evolution","the theory of evolution","la teoria de la evolucion","die Evolutionstheorie","la teoria dell'evoluzione"),"Charles Darwin","dec",0),
 (("le pole Sud (premier a l'atteindre)","the South Pole (first to reach)","el Polo Sur (primero en llegar)","den Suedpol (Erstbesteiger)","il Polo Sud (primo ad arrivarci)"),"Roald Amundsen","dec",0),
 (("la radioactivite (etude, prix Nobel)","radioactivity","la radiactividad","die Radioaktivitaet","la radioattivita"),"Marie Curie","dec",0),
 (("l'automobile a essence","the gasoline automobile","el automovil de gasolina","das Benzinauto","l'automobile a benzina"),"Karl Benz","inv",0),
 (("le systeme heliocentrique","the heliocentric system","el sistema heliocentrico","das heliozentrische Weltbild","il sistema eliocentrico"),"Nicolas Copernic","dec",0),
 (("le pneumatique","the pneumatic tyre","el neumatico","den Luftreifen","lo pneumatico"),"John Dunlop","inv",0),
 (("le tableau periodique des elements","the periodic table","la tabla periodica","das Periodensystem","la tavola periodica"),"Dmitri Mendeleiev","dec",0),
 (("le moteur Diesel","the Diesel engine","el motor diesel","den Dieselmotor","il motore diesel"),"Rudolf Diesel","inv",0),
 (("le telephone portable (premier appel)","the mobile phone","el telefono movil","das Mobiltelefon","il telefono cellulare"),"Martin Cooper","inv",0),
 (("la dynamo et l'induction","the dynamo and induction","la dinamo y la induccion","den Dynamo und die Induktion","la dinamo e l'induzione"),"Michael Faraday","inv",0),
 # ---- palier 1 ----
 (("la photographie (premier procede)","photography","la fotografia","die Fotografie","la fotografia"),"Nicephore Niepce","inv",1),
 (("le daguerreotype","the daguerreotype","el daguerrotipo","die Daguerreotypie","il dagherrotipo"),"Louis Daguerre","inv",1),
 (("le stethoscope","the stethoscope","el estetoscopio","das Stethoskop","lo stetoscopio"),"Rene Laennec","inv",1),
 (("la pasteurisation","pasteurization","la pasteurizacion","die Pasteurisierung","la pastorizzazione"),"Louis Pasteur","inv",1),
 (("le Braille","Braille","el braille","die Blindenschrift","il braille"),"Louis Braille","inv",1),
 (("la machine a coudre","the sewing machine","la maquina de coser","die Naehmaschine","la macchina da cucire"),"Isaac Singer","inv",1),
 (("le telegraphe sans fil","wireless telegraphy","la telegrafia sin hilos","die drahtlose Telegrafie","la telegrafia senza fili"),"Guglielmo Marconi","inv",1),
 (("le velo moderne (chaine)","the modern bicycle","la bicicleta moderna","das moderne Fahrrad","la bicicletta moderna"),"John Kemp Starley","inv",1),
 (("le helicoptere moderne","the modern helicopter","el helicoptero moderno","den modernen Hubschrauber","l'elicottero moderno"),"Igor Sikorsky","inv",1),
 (("le moteur a reaction","the jet engine","el motor a reaccion","das Strahltriebwerk","il motore a reazione"),"Frank Whittle","inv",1),
 (("la television electronique","electronic television","la television electronica","das elektronische Fernsehen","la televisione elettronica"),"Philo Farnsworth","inv",1),
 (("le transistor","the transistor","el transistor","den Transistor","il transistor"),"John Bardeen","inv",1),
 (("le laser","the laser","el laser","den Laser","il laser"),"Theodore Maiman","inv",1),
 (("le stylo a bille","the ballpoint pen","el boligrafo","den Kugelschreiber","la penna a sfera"),"Laszlo Biro","inv",1),
 (("la fermeture eclair","the zipper","la cremallera","den Reissverschluss","la cerniera lampo"),"Gideon Sundback","inv",1),
 (("le Velcro","Velcro","el velcro","den Klettverschluss","il velcro"),"George de Mestral","inv",1),
 (("le four a micro-ondes","the microwave oven","el horno microondas","den Mikrowellenherd","il forno a microonde"),"Percy Spencer","inv",1),
 (("la structure de l'ADN","the structure of DNA","la estructura del ADN","die DNA-Struktur","la struttura del DNA"),"Watson et Crick","dec",1),
 (("les ondes radio (preuve experimentale)","radio waves","las ondas de radio","die Radiowellen","le onde radio"),"Heinrich Hertz","dec",1),
 (("les rayons X","X-rays","los rayos X","die Roentgenstrahlen","i raggi X"),"Wilhelm Roentgen","dec",1),
 (("la circulation sanguine","blood circulation","la circulacion sanguinea","den Blutkreislauf","la circolazione del sangue"),"William Harvey","dec",1),
 (("l'electron","the electron","el electron","das Elektron","l'elettrone"),"J.J. Thomson","dec",1),
 (("l'insuline (isolement)","insulin","la insulina","das Insulin","l'insulina"),"Frederick Banting","dec",1),
 (("les lois de l'heredite","the laws of heredity","las leyes de la herencia","die Vererbungsgesetze","le leggi dell'eredita"),"Gregor Mendel","dec",1),
 (("la vulcanisation du caoutchouc","rubber vulcanization","la vulcanizacion del caucho","die Kautschukvulkanisation","la vulcanizzazione della gomma"),"Charles Goodyear","inv",1),
 (("le code-barres","the barcode","el codigo de barras","den Barcode","il codice a barre"),"Norman Joseph Woodland","inv",1),
 (("le GPS (concept)","GPS","el GPS","das GPS","il GPS"),"Roger Easton","inv",1),
 # ---- palier 2 ----
 (("le metier a tisser automatique (carte perforee)","the Jacquard loom","el telar de Jacquard","den Jacquard-Webstuhl","il telaio Jacquard"),"Joseph Marie Jacquard","inv",2),
 (("la premiere machine a calculer mecanique","the mechanical calculator","la calculadora mecanica","die Rechenmaschine","la calcolatrice meccanica"),"Blaise Pascal","inv",2),
 (("la machine analytique (ancetre de l'ordinateur)","the analytical engine","la maquina analitica","die Analytical Engine","la macchina analitica"),"Charles Babbage","inv",2),
 (("le premier programme informatique","the first computer program","el primer programa informatico","das erste Computerprogramm","il primo programma informatico"),"Ada Lovelace","inv",2),
 (("la theorie de l'information","information theory","la teoria de la informacion","die Informationstheorie","la teoria dell'informazione"),"Claude Shannon","dec",2),
 (("le concept de machine universelle","the universal machine","la maquina universal","die universelle Maschine","la macchina universale"),"Alan Turing","dec",2),
 (("la dynamite... non, la nitroglycerine","nitroglycerin","la nitroglicerina","das Nitroglyzerin","la nitroglicerina"),"Ascanio Sobrero","dec",2),
 (("le thermometre a mercure","the mercury thermometer","el termometro de mercurio","das Quecksilberthermometer","il termometro a mercurio"),"Daniel Fahrenheit","inv",2),
 (("le barometre","the barometer","el barometro","das Barometer","il barometro"),"Evangelista Torricelli","inv",2),
 (("le microscope (pionnier des microbes)","the microscope (microbe pioneer)","el microscopio (pionero de microbios)","das Mikroskop (Mikrobenpionier)","il microscopio (pioniere dei microbi)"),"Antonie van Leeuwenhoek","inv",2),
 (("la theorie des germes (chirurgie aseptique)","antiseptic surgery","la cirugia antiseptica","die antiseptische Chirurgie","la chirurgia antisettica"),"Joseph Lister","dec",2),
 (("les groupes sanguins","blood groups","los grupos sanguineos","die Blutgruppen","i gruppi sanguigni"),"Karl Landsteiner","dec",2),
 (("la supraconductivite","superconductivity","la superconductividad","die Supraleitung","la superconduttivita"),"Heike Kamerlingh Onnes","dec",2),
 (("la fission nucleaire","nuclear fission","la fision nuclear","die Kernspaltung","la fissione nucleare"),"Otto Hahn","dec",2),
 (("le neutron","the neutron","el neutron","das Neutron","il neutrone"),"James Chadwick","dec",2),
 (("la pression atmospherique (loi des gaz)","the gas law","la ley de los gases","das Gasgesetz","la legge dei gas"),"Robert Boyle","dec",2),
 (("l'oxygene (isolement)","oxygen","el oxigeno","den Sauerstoff","l'ossigeno"),"Antoine Lavoisier","dec",2),
 (("la vaccination (variole)","vaccination (smallpox)","la vacunacion (viruela)","die Pockenimpfung","la vaccinazione (vaiolo)"),"Edward Jenner","inv",2),
 (("le sonar moderne","modern sonar","el sonar moderno","das moderne Sonar","il sonar moderno"),"Paul Langevin","inv",2),
 (("le cinematographe couleur (procede)","color film process","el cine en color","den Farbfilm","la pellicola a colori"),"les freres Lumiere","inv",2),
 (("la dynamo de bicyclette... le moteur electrique","the electric motor","el motor electrico","den Elektromotor","il motore elettrico"),"Nikola Tesla","inv",2),
 (("le courant alternatif (systeme)","alternating current","la corriente alterna","den Wechselstrom","la corrente alternata"),"Nikola Tesla","inv",2),
 (("le ballon dirigeable rigide","the rigid airship","el dirigible rigido","das Starrluftschiff","il dirigibile rigido"),"Ferdinand von Zeppelin","inv",2),
 (("la cocotte-minute... le canon de Papin","the pressure cooker","la olla a presion","den Dampfkochtopf","la pentola a pressione"),"Denis Papin","inv",2),
 (("le systeme de numeration decimale moderne (Europe)","decimal numerals in Europe","la numeracion decimal en Europa","das Dezimalsystem in Europa","la numerazione decimale in Europa"),"Fibonacci","inv",2),
 (("la pile a combustible","the fuel cell","la pila de combustible","die Brennstoffzelle","la cella a combustibile"),"William Grove","inv",2),
 (("la geometrie analytique","analytic geometry","la geometria analitica","die analytische Geometrie","la geometria analitica"),"Rene Descartes","dec",2),
]

TPL_INV = {"FR": "Qui a invente %s ?", "EN": "Who invented %s?", "ES": "Quien invento %s?",
           "DE": "Wer erfand %s?", "IT": "Chi ha inventato %s?"}
TPL_DEC = {"FR": "Qui a decouvert %s ?", "EN": "Who discovered %s?", "ES": "Quien descubrio %s?",
           "DE": "Wer entdeckte %s?", "IT": "Chi ha scoperto %s?"}

items, objs, types = [], [], []
for obj, who, typ, tier in T:
    oo = dict(zip(LANGS, obj))
    objs.append(oo); types.append(typ)
    items.append({"id": oo["EN"], "tier": tier, "names": {lang: who for lang in LANGS}})
draws = make_draws(items, "inventions")
rows = {lang: [] for lang in LANGS}
for i in range(len(items)):
    answers, correct = draws[i]
    tpl = TPL_INV if types[i] == "inv" else TPL_DEC
    for lang in LANGS:
        rows[lang].append((tpl[lang] % objs[i][lang], [items[a]["names"][lang] for a in answers], correct))
diffs = [it["tier"] for it in items]
emit_custom(f"{ROOT}/verse/inventions_bank.verse",
            "inventions_bank.verse — Quizz INVENTIONS & DECOUVERTES",
            "InventionsDiff", "Inventions", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
