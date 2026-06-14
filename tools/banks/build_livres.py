#!/usr/bin/env python3
# Quizz "Livres" (texte) : "Qui a ecrit {titre} ?" — titres par langue,
# reponse = auteur (variantes par langue pour Tolstoi/Dostoievski/Homere...).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, make_draws, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT

AUTH = {
 "tolstoi": ("Leon Tolstoi","Leo Tolstoy","Leon Tolstoi","Leo Tolstoi","Lev Tolstoj"),
 "dosto": ("Dostoievski","Dostoevsky","Dostoyevski","Dostojewski","Dostoevskij"),
 "homere": ("Homere","Homer","Homero","Homer","Omero"),
}
def auth_names(a):
    if a in AUTH:
        return dict(zip(LANGS, AUTH[a]))
    return {lang: a for lang in LANGS}

B = [
 ("Harry Potter","J.K. Rowling",0),
 (("Le Seigneur des anneaux","The Lord of the Rings","El Senor de los Anillos","Der Herr der Ringe","Il Signore degli Anelli"),"J.R.R. Tolkien",0),
 (("Le Hobbit","The Hobbit","El hobbit","Der Hobbit","Lo Hobbit"),"J.R.R. Tolkien",0),
 (("Le Petit Prince","The Little Prince","El principito","Der kleine Prinz","Il piccolo principe"),"Antoine de Saint-Exupery",0),
 ("1984","George Orwell",0),
 (("La Ferme des animaux","Animal Farm","Rebelion en la granja","Farm der Tiere","La fattoria degli animali"),"George Orwell",0),
 (("Romeo et Juliette","Romeo and Juliet","Romeo y Julieta","Romeo und Julia","Romeo e Giulietta"),"William Shakespeare",0),
 ("Hamlet","William Shakespeare",0),
 ("Les Miserables","Victor Hugo",0),
 (("Notre-Dame de Paris","The Hunchback of Notre-Dame","Nuestra Senora de Paris","Der Gloeckner von Notre-Dame","Notre-Dame de Paris"),"Victor Hugo",0),
 (("Le Comte de Monte-Cristo","The Count of Monte Cristo","El conde de Montecristo","Der Graf von Monte Christo","Il conte di Montecristo"),"Alexandre Dumas",0),
 (("Les Trois Mousquetaires","The Three Musketeers","Los tres mosqueteros","Die drei Musketiere","I tre moschettieri"),"Alexandre Dumas",0),
 (("Don Quichotte","Don Quixote","Don Quijote","Don Quijote","Don Chisciotte"),"Miguel de Cervantes",0),
 (("L'Etranger","The Stranger","El extranjero","Der Fremde","Lo straniero"),"Albert Camus",0),
 (("Vingt Mille Lieues sous les mers","Twenty Thousand Leagues Under the Seas","Veinte mil leguas de viaje submarino","20000 Meilen unter dem Meer","Ventimila leghe sotto i mari"),"Jules Verne",0),
 (("Le Tour du monde en 80 jours","Around the World in 80 Days","La vuelta al mundo en 80 dias","In 80 Tagen um die Welt","Il giro del mondo in 80 giorni"),"Jules Verne",0),
 ("Dracula","Bram Stoker",0),
 ("Frankenstein","Mary Shelley",0),
 (("Les Aventures de Sherlock Holmes","The Adventures of Sherlock Holmes","Las aventuras de Sherlock Holmes","Die Abenteuer des Sherlock Holmes","Le avventure di Sherlock Holmes"),"Arthur Conan Doyle",0),
 (("Le Crime de l'Orient-Express","Murder on the Orient Express","Asesinato en el Orient Express","Mord im Orient-Express","Assassinio sull'Orient Express"),"Agatha Christie",0),
 (("Ils etaient dix","And Then There Were None","Diez negritos","Und dann gabs keines mehr","Dieci piccoli indiani"),"Agatha Christie",0),
 (("Le Trone de fer","A Game of Thrones","Juego de tronos","A Game of Thrones","Il Trono di Spade"),"George R.R. Martin",0),
 (("Ca","It","It","Es","It"),"Stephen King",0),
 ("Shining","Stephen King",0),
 (("Da Vinci Code","The Da Vinci Code","El codigo Da Vinci","Sakrileg","Il codice da Vinci"),"Dan Brown",0),
 (("Alice au pays des merveilles","Alice in Wonderland","Alicia en el pais de las maravillas","Alice im Wunderland","Alice nel paese delle meraviglie"),"Lewis Carroll",0),
 ("Pinocchio","Carlo Collodi",0),
 # ---- palier 1 ----
 (("Orgueil et Prejuges","Pride and Prejudice","Orgullo y prejuicio","Stolz und Vorurteil","Orgoglio e pregiudizio"),"Jane Austen",1),
 ("Jane Eyre","Charlotte Bronte",1),
 (("Les Hauts de Hurlevent","Wuthering Heights","Cumbres borrascosas","Sturmhoehe","Cime tempestose"),"Emily Bronte",1),
 (("Gatsby le Magnifique","The Great Gatsby","El gran Gatsby","Der grosse Gatsby","Il grande Gatsby"),"F. Scott Fitzgerald",1),
 (("Le Vieil Homme et la Mer","The Old Man and the Sea","El viejo y el mar","Der alte Mann und das Meer","Il vecchio e il mare"),"Ernest Hemingway",1),
 (("Des souris et des hommes","Of Mice and Men","De ratones y hombres","Von Maeusen und Menschen","Uomini e topi"),"John Steinbeck",1),
 (("Les Raisins de la colere","The Grapes of Wrath","Las uvas de la ira","Fruechte des Zorns","Furore"),"John Steinbeck",1),
 (("Crime et Chatiment","Crime and Punishment","Crimen y castigo","Schuld und Suehne","Delitto e castigo"),"dosto",1),
 (("Les Freres Karamazov","The Brothers Karamazov","Los hermanos Karamazov","Die Brueder Karamasow","I fratelli Karamazov"),"dosto",1),
 (("Guerre et Paix","War and Peace","Guerra y paz","Krieg und Frieden","Guerra e pace"),"tolstoi",1),
 (("Anna Karenine","Anna Karenina","Anna Karenina","Anna Karenina","Anna Karenina"),"tolstoi",1),
 ("Madame Bovary","Gustave Flaubert",1),
 ("Germinal","Emile Zola",1),
 (("Le Rouge et le Noir","The Red and the Black","Rojo y negro","Rot und Schwarz","Il rosso e il nero"),"Stendhal",1),
 ("Candide","Voltaire",1),
 ("Le Misanthrope","Moliere",1),
 ("Cyrano de Bergerac","Edmond Rostand",1),
 ("Moby Dick","Herman Melville",1),
 (("Les Aventures de Tom Sawyer","The Adventures of Tom Sawyer","Las aventuras de Tom Sawyer","Tom Sawyers Abenteuer","Le avventure di Tom Sawyer"),"Mark Twain",1),
 (("L'Attrape-coeurs","The Catcher in the Rye","El guardian entre el centeno","Der Faenger im Roggen","Il giovane Holden"),"J.D. Salinger",1),
 (("Ne tirez pas sur l'oiseau moqueur","To Kill a Mockingbird","Matar a un ruisenor","Wer die Nachtigall stoert","Il buio oltre la siepe"),"Harper Lee",1),
 ("Fahrenheit 451","Ray Bradbury",1),
 (("Le Meilleur des mondes","Brave New World","Un mundo feliz","Schoene neue Welt","Il mondo nuovo"),"Aldous Huxley",1),
 ("Dune","Frank Herbert",1),
 (("Fondation","Foundation","Fundacion","Foundation","Fondazione"),"Isaac Asimov",1),
 (("Cent Ans de solitude","One Hundred Years of Solitude","Cien anos de soledad","Hundert Jahre Einsamkeit","Cent'anni di solitudine"),"Gabriel Garcia Marquez",1),
 (("L'Alchimiste","The Alchemist","El alquimista","Der Alchimist","L'alchimista"),"Paulo Coelho",1),
 # ---- palier 2 ----
 (("La Metamorphose","The Metamorphosis","La metamorfosis","Die Verwandlung","La metamorfosi"),"Franz Kafka",2),
 (("Le Proces","The Trial","El proceso","Der Process","Il processo"),"Franz Kafka",2),
 (("Ulysse","Ulysses","Ulises","Ulysses","Ulisse"),"James Joyce",2),
 (("A la recherche du temps perdu","In Search of Lost Time","En busca del tiempo perdido","Auf der Suche nach der verlorenen Zeit","Alla ricerca del tempo perduto"),"Marcel Proust",2),
 (("Voyage au bout de la nuit","Journey to the End of the Night","Viaje al fin de la noche","Reise ans Ende der Nacht","Viaggio al termine della notte"),"Louis-Ferdinand Celine",2),
 (("La Peste","The Plague","La peste","Die Pest","La peste"),"Albert Camus",2),
 (("La Nausee","Nausea","La nausea","Der Ekel","La nausea"),"Jean-Paul Sartre",2),
 ("Faust","Goethe",2),
 (("Les Souffrances du jeune Werther","The Sorrows of Young Werther","Las penas del joven Werther","Die Leiden des jungen Werthers","I dolori del giovane Werther"),"Goethe",2),
 (("L'Odyssee","The Odyssey","La Odisea","Die Odyssee","Odissea"),"homere",2),
 (("L'Iliade","The Iliad","La Iliada","Die Ilias","Iliade"),"homere",2),
 (("L'Enfer","Inferno","Infierno","Inferno","Inferno"),"Dante Alighieri",2),
 (("Le Prince","The Prince","El principe","Der Fuerst","Il Principe"),"Machiavel",2),
 (("Le Nom de la rose","The Name of the Rose","El nombre de la rosa","Der Name der Rose","Il nome della rosa"),"Umberto Eco",2),
 (("Le Parfum","Perfume","El perfume","Das Parfum","Il profumo"),"Patrick Suskind",2),
 (("L'Ombre du vent","The Shadow of the Wind","La sombra del viento","Der Schatten des Windes","L'ombra del vento"),"Carlos Ruiz Zafon",2),
 ("Millenium","Stieg Larsson",2),
 (("Sa Majeste des mouches","Lord of the Flies","El senor de las moscas","Herr der Fliegen","Il signore delle mosche"),"William Golding",2),
 (("La Route","The Road","La carretera","Die Strasse","La strada"),"Cormac McCarthy",2),
 (("Le Joueur d'echecs","The Royal Game","Novela de ajedrez","Schachnovelle","Novella degli scacchi"),"Stefan Zweig",2),
 (("L'Insoutenable Legerete de l'etre","The Unbearable Lightness of Being","La insoportable levedad del ser","Die unertraegliche Leichtigkeit des Seins","L'insostenibile leggerezza dell'essere"),"Milan Kundera",2),
 ("Hunger Games","Suzanne Collins",2),
 ("Twilight","Stephenie Meyer",2),
 (("Le Monde de Narnia","The Chronicles of Narnia","Las cronicas de Narnia","Die Chroniken von Narnia","Le cronache di Narnia"),"C.S. Lewis",2),
 (("Charlie et la Chocolaterie","Charlie and the Chocolate Factory","Charlie y la fabrica de chocolate","Charlie und die Schokoladenfabrik","La fabbrica di cioccolato"),"Roald Dahl",2),
 (("Croc-Blanc","White Fang","Colmillo Blanco","Wolfsblut","Zanna Bianca"),"Jack London",2),
]

TPL = {"FR": "Qui a ecrit %s ?", "EN": "Who wrote %s?", "ES": "Quien escribio %s?",
       "DE": "Wer schrieb %s?", "IT": "Chi ha scritto %s?"}

items = []
titles = []
for book, author, tier in B:
    tt = {lang: book for lang in LANGS} if isinstance(book, str) else dict(zip(LANGS, book))
    titles.append(tt)
    items.append({"id": tt["EN"], "tier": tier, "names": auth_names(author)})
draws = make_draws(items, "livres")
rows = {lang: [] for lang in LANGS}
for i in range(len(items)):
    answers, correct = draws[i]
    for lang in LANGS:
        rows[lang].append((TPL[lang] % titles[i][lang],
                           [items[a]["names"][lang] for a in answers], correct))
diffs = [it["tier"] for it in items]
emit_custom(f"{ROOT}/verse/livres_bank.verse",
            "livres_bank.verse — Quizz LIVRES (qui a ecrit...)",
            "LivresDiff", "Livres", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
