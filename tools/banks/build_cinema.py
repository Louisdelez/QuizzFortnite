#!/usr/bin/env python3
# Quizz "Cinema" (texte) : "Qui a realise {Film} ?" — titres par langue,
# reponse = realisateur (identique x5). Film : str ou (FR,EN,ES,DE,IT).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, make_draws, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT

F = [
 ("Titanic","James Cameron",0),("Avatar","James Cameron",0),
 ("Jurassic Park","Steven Spielberg",0),("E.T.","Steven Spielberg",0),
 (("Les Dents de la mer","Jaws","Tiburon","Der weisse Hai","Lo squalo"),"Steven Spielberg",0),
 ("Pulp Fiction","Quentin Tarantino",0),("Kill Bill","Quentin Tarantino",0),
 ("Inception","Christopher Nolan",0),("Interstellar","Christopher Nolan",0),
 ("The Dark Knight","Christopher Nolan",0),("Oppenheimer","Christopher Nolan",0),
 ("Star Wars","George Lucas",0),
 (("Le Parrain","The Godfather","El Padrino","Der Pate","Il Padrino"),"Francis Ford Coppola",0),
 (("Psychose","Psycho","Psicosis","Psycho","Psyco"),"Alfred Hitchcock",0),
 (("Les Oiseaux","The Birds","Los pajaros","Die Voegel","Gli uccelli"),"Alfred Hitchcock",0),
 (("La Liste de Schindler","Schindler's List","La lista de Schindler","Schindlers Liste","Schindler's List"),"Steven Spielberg",0),
 ("Gladiator","Ridley Scott",0),("Alien","Ridley Scott",0),
 (("Shining","The Shining","El resplandor","Shining","Shining"),"Stanley Kubrick",0),
 ("Forrest Gump","Robert Zemeckis",0),
 (("Retour vers le futur","Back to the Future","Regreso al futuro","Zurueck in die Zukunft","Ritorno al futuro"),"Robert Zemeckis",0),
 ("Matrix","Les Wachowski",0),("Terminator","James Cameron",0),
 (("Le Fabuleux Destin d'Amelie Poulain","Amelie","Amelie","Die fabelhafte Welt der Amelie","Il favoloso mondo di Amelie"),"Jean-Pierre Jeunet",0),
 (("Le Grand Bleu","The Big Blue","El gran azul","Im Rausch der Tiefe","Le Grand Bleu"),"Luc Besson",0),
 ("Leon","Luc Besson",0),
 (("Le Cinquieme Element","The Fifth Element","El quinto elemento","Das fuenfte Element","Il quinto elemento"),"Luc Besson",0),
 # ---- palier 1 ----
 ("Fight Club","David Fincher",1),("Seven","David Fincher",1),
 ("Gone Girl","David Fincher",1),("The Social Network","David Fincher",1),
 ("Django Unchained","Quentin Tarantino",1),("Inglourious Basterds","Quentin Tarantino",1),
 ("Once Upon a Time in Hollywood","Quentin Tarantino",1),
 (("Dunkerque","Dunkirk","Dunkerque","Dunkirk","Dunkirk"),"Christopher Nolan",1),
 ("Tenet","Christopher Nolan",1),
 (("Les Affranchis","Goodfellas","Uno de los nuestros","GoodFellas","Quei bravi ragazzi"),"Martin Scorsese",1),
 ("Taxi Driver","Martin Scorsese",1),
 (("Le Loup de Wall Street","The Wolf of Wall Street","El lobo de Wall Street","The Wolf of Wall Street","The Wolf of Wall Street"),"Martin Scorsese",1),
 ("Casino","Martin Scorsese",1),("Apocalypse Now","Francis Ford Coppola",1),
 ("Full Metal Jacket","Stanley Kubrick",1),
 (("Orange mecanique","A Clockwork Orange","La naranja mecanica","Uhrwerk Orange","Arancia meccanica"),"Stanley Kubrick",1),
 (("Il faut sauver le soldat Ryan","Saving Private Ryan","Salvar al soldado Ryan","Der Soldat James Ryan","Salvate il soldato Ryan"),"Steven Spielberg",1),
 (("Les Aventuriers de l'arche perdue","Raiders of the Lost Ark","En busca del arca perdida","Jaeger des verlorenen Schatzes","I predatori dell'arca perduta"),"Steven Spielberg",1),
 ("Blade Runner","Ridley Scott",1),
 (("Seul sur Mars","The Martian","Marte","Der Marsianer","The Martian"),"Ridley Scott",1),
 ("Mad Max: Fury Road","George Miller",1),("Joker","Todd Phillips",1),
 ("La La Land","Damien Chazelle",1),("Whiplash","Damien Chazelle",1),
 ("Parasite","Bong Joon-ho",1),("Old Boy","Park Chan-wook",1),
 (("Le Voyage de Chihiro","Spirited Away","El viaje de Chihiro","Chihiros Reise ins Zauberland","La citta incantata"),"Hayao Miyazaki",1),
 (("Princesse Mononoke","Princess Mononoke","La princesa Mononoke","Prinzessin Mononoke","Principessa Mononoke"),"Hayao Miyazaki",1),
 # ---- palier 2 ----
 ("Citizen Kane","Orson Welles",2),
 (("Sueurs froides","Vertigo","Vertigo","Vertigo","La donna che visse due volte"),"Alfred Hitchcock",2),
 (("Fenetre sur cour","Rear Window","La ventana indiscreta","Das Fenster zum Hof","La finestra sul cortile"),"Alfred Hitchcock",2),
 ("Metropolis","Fritz Lang",2),
 (("Le Dictateur","The Great Dictator","El gran dictador","Der grosse Diktator","Il grande dittatore"),"Charlie Chaplin",2),
 (("Les Temps modernes","Modern Times","Tiempos modernos","Moderne Zeiten","Tempi moderni"),"Charlie Chaplin",2),
 ("La Dolce Vita","Federico Fellini",2),("8 1/2","Federico Fellini",2),
 (("Le Bon, la Brute et le Truand","The Good, the Bad and the Ugly","El bueno, el feo y el malo","Zwei glorreiche Halunken","Il buono, il brutto, il cattivo"),"Sergio Leone",2),
 (("Il etait une fois dans l'Ouest","Once Upon a Time in the West","Hasta que llego su hora","Spiel mir das Lied vom Tod","C'era una volta il West"),"Sergio Leone",2),
 (("Les Sept Samourais","Seven Samurai","Los siete samurais","Die sieben Samurai","I sette samurai"),"Akira Kurosawa",2),
 ("Ran","Akira Kurosawa",2),
 (("A bout de souffle","Breathless","Al final de la escapada","Ausser Atem","Fino all'ultimo respiro"),"Jean-Luc Godard",2),
 (("Les 400 Coups","The 400 Blows","Los cuatrocientos golpes","Sie kuessten und sie schlugen ihn","I 400 colpi"),"Francois Truffaut",2),
 ("Requiem for a Dream","Darren Aronofsky",2),("Black Swan","Darren Aronofsky",2),
 ("Birdman","Alejandro G. Inarritu",2),("The Revenant","Alejandro G. Inarritu",2),
 ("The Grand Budapest Hotel","Wes Anderson",2),("Moonrise Kingdom","Wes Anderson",2),
 ("Drive","Nicolas Winding Refn",2),("Her","Spike Jonze",2),
 ("Eternal Sunshine of the Spotless Mind","Michel Gondry",2),
 ("Melancholia","Lars von Trier",2),
 (("Le Pianiste","The Pianist","El pianista","Der Pianist","Il pianista"),"Roman Polanski",2),
 ("Dune","Denis Villeneuve",2),
 (("Premier Contact","Arrival","La llegada","Arrival","Arrival"),"Denis Villeneuve",2),
 ("Blade Runner 2049","Denis Villeneuve",2),
]

TPL = {"FR": "Qui a realise %s ?", "EN": "Who directed %s?",
       "ES": "Quien dirigio %s?", "DE": "Wer fuehrte Regie bei %s?",
       "IT": "Chi ha diretto %s?"}

items = []
titles = []
for film, director, tier in F:
    tt = {lang: film for lang in LANGS} if isinstance(film, str) else dict(zip(LANGS, film))
    titles.append(tt)
    items.append({"id": tt["EN"], "tier": tier,
                  "names": {lang: director for lang in LANGS}})
draws = make_draws(items, "cinema")
rows = {lang: [] for lang in LANGS}
for i in range(len(items)):
    answers, correct = draws[i]
    for lang in LANGS:
        rows[lang].append((TPL[lang] % titles[i][lang],
                           [items[a]["names"][lang] for a in answers], correct))
diffs = [it["tier"] for it in items]
emit_custom(f"{ROOT}/verse/cinema_bank.verse",
            "cinema_bank.verse — Quizz CINEMA (qui a realise...)",
            "CinemaDiff", "Cinema", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
