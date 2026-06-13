#!/usr/bin/env python3
# Quizz "Celebrites" (photo -> nom). Noms identiques x5 -> FR + wrappers.
# ⚠ droit a l'image : OK serveur prive (decision utilisateur).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

# (titre_wiki_EN, nom_affiche, palier)
P = [
 ("Beyonce","Beyonce",0),("Rihanna","Rihanna",0),("Taylor Swift","Taylor Swift",0),
 ("Eminem","Eminem",0),("Drake (musician)","Drake",0),("Michael Jackson","Michael Jackson",0),
 ("Madonna","Madonna",0),("Elvis Presley","Elvis Presley",0),("Freddie Mercury","Freddie Mercury",0),
 ("Leonardo DiCaprio","Leonardo DiCaprio",0),("Brad Pitt","Brad Pitt",0),
 ("Angelina Jolie","Angelina Jolie",0),("Johnny Depp","Johnny Depp",0),
 ("Tom Cruise","Tom Cruise",0),("Will Smith","Will Smith",0),
 ("Dwayne Johnson","Dwayne Johnson",0),("Keanu Reeves","Keanu Reeves",0),
 ("Morgan Freeman","Morgan Freeman",0),("Robert Downey Jr.","Robert Downey Jr.",0),
 ("Scarlett Johansson","Scarlett Johansson",0),("Jennifer Lawrence","Jennifer Lawrence",0),
 ("Emma Watson","Emma Watson",0),("Tom Hanks","Tom Hanks",0),
 ("Denzel Washington","Denzel Washington",0),("Jim Carrey","Jim Carrey",0),
 ("Adele","Adele",0),("Ed Sheeran","Ed Sheeran",0),("Justin Bieber","Justin Bieber",0),
 ("Ariana Grande","Ariana Grande",0),("Billie Eilish","Billie Eilish",0),
 ("Lady Gaga","Lady Gaga",0),("Katy Perry","Katy Perry",0),("Shakira","Shakira",0),
 ("Jennifer Lopez","Jennifer Lopez",0),("Snoop Dogg","Snoop Dogg",0),
 ("Kanye West","Kanye West",0),("Kim Kardashian","Kim Kardashian",0),
 ("Elon Musk","Elon Musk",0),("Bill Gates","Bill Gates",0),
 ("Mark Zuckerberg","Mark Zuckerberg",0),("Barack Obama","Barack Obama",0),
 ("Donald Trump","Donald Trump",0),("Emmanuel Macron","Emmanuel Macron",0),
 ("Oprah Winfrey","Oprah Winfrey",0),
 # ---- palier 1 ----
 ("Al Pacino","Al Pacino",1),("Robert De Niro","Robert De Niro",1),
 ("Jack Nicholson","Jack Nicholson",1),("Anthony Hopkins","Anthony Hopkins",1),
 ("Samuel L. Jackson","Samuel L. Jackson",1),("Harrison Ford","Harrison Ford",1),
 ("Sylvester Stallone","Sylvester Stallone",1),("Arnold Schwarzenegger","Arnold Schwarzenegger",1),
 ("Bruce Willis","Bruce Willis",1),("Mel Gibson","Mel Gibson",1),
 ("George Clooney","George Clooney",1),("Matt Damon","Matt Damon",1),
 ("Ben Affleck","Ben Affleck",1),("Ryan Gosling","Ryan Gosling",1),
 ("Ryan Reynolds","Ryan Reynolds",1),("Hugh Jackman","Hugh Jackman",1),
 ("Chris Hemsworth","Chris Hemsworth",1),("Chris Evans (actor)","Chris Evans",1),
 ("Natalie Portman","Natalie Portman",1),("Anne Hathaway","Anne Hathaway",1),
 ("Julia Roberts","Julia Roberts",1),("Nicole Kidman","Nicole Kidman",1),
 ("Charlize Theron","Charlize Theron",1),("Meryl Streep","Meryl Streep",1),
 ("Sandra Bullock","Sandra Bullock",1),("Penelope Cruz","Penelope Cruz",1),
 ("Monica Bellucci","Monica Bellucci",1),("Jean Dujardin","Jean Dujardin",1),
 ("Omar Sy","Omar Sy",1),("Marion Cotillard","Marion Cotillard",1),
 ("Steven Spielberg","Steven Spielberg",1),("Quentin Tarantino","Quentin Tarantino",1),
 ("Christopher Nolan","Christopher Nolan",1),("Martin Scorsese","Martin Scorsese",1),
 ("Alfred Hitchcock","Alfred Hitchcock",1),("Bruno Mars","Bruno Mars",1),
 ("The Weeknd","The Weeknd",1),("Dua Lipa","Dua Lipa",1),
 ("David Guetta","David Guetta",1),("Daft Punk","Daft Punk",1),
 ("Celine Dion","Celine Dion",1),("Stromae","Stromae",1),
 ("Zinedine Zidane","Zinedine Zidane",1),("Tom Holland","Tom Holland",1),
 ("Zendaya","Zendaya",1),
 # ---- palier 2 ----
 ("Jean Reno","Jean Reno",2),("Vincent Cassel","Vincent Cassel",2),
 ("Gerard Depardieu","Gerard Depardieu",2),("Sophie Marceau","Sophie Marceau",2),
 ("Louis de Funes","Louis de Funes",2),("Alain Delon","Alain Delon",2),
 ("Jean-Paul Belmondo","Jean-Paul Belmondo",2),("Brigitte Bardot","Brigitte Bardot",2),
 ("Catherine Deneuve","Catherine Deneuve",2),("Audrey Tautou","Audrey Tautou",2),
 ("Charles Aznavour","Charles Aznavour",2),("Edith Piaf","Edith Piaf",2),
 ("Serge Gainsbourg","Serge Gainsbourg",2),("Johnny Hallyday","Johnny Hallyday",2),
 ("Mylene Farmer","Mylene Farmer",2),("Christopher Walken","Christopher Walken",2),
 ("Gary Oldman","Gary Oldman",2),("Willem Dafoe","Willem Dafoe",2),
 ("Javier Bardem","Javier Bardem",2),("Antonio Banderas","Antonio Banderas",2),
 ("Salma Hayek","Salma Hayek",2),("Joaquin Phoenix","Joaquin Phoenix",2),
 ("Jared Leto","Jared Leto",2),("Timothee Chalamet","Timothee Chalamet",2),
 ("Margot Robbie","Margot Robbie",2),("Pedro Pascal","Pedro Pascal",2),
 ("Millie Bobby Brown","Millie Bobby Brown",2),("Jenna Ortega","Jenna Ortega",2),
 ("MrBeast","MrBeast",2),("PewDiePie","PewDiePie",2),("Squeezie","Squeezie",2),
 ("Pharrell Williams","Pharrell Williams",2),("Jay-Z","Jay-Z",2),
 ("50 Cent","50 Cent",2),("Travis Scott","Travis Scott",2),
 ("Post Malone","Post Malone",2),("Doja Cat","Doja Cat",2),
 ("Nicki Minaj","Nicki Minaj",2),("Keanu?","_skip",2),
]
P = [r for r in P if r[1] != "_skip"]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in P]
print("Celebrites :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/celebrites", "cel")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images celebrites/")

ENONCE = {"FR": "Qui est cette celebrite ?", "EN": "Who is this celebrity?",
          "ES": "Quien es esta celebridad?", "DE": "Wer ist diese Beruehmtheit?",
          "IT": "Chi e questa celebrita?"}
emit_bank(f"{ROOT}/verse/celebrites_bank.verse",
          "celebrites_bank.verse — Quizz CELEBRITES (photos Wikipedia)",
          "CelebritesDiff", "Celebrites", ENONCE, items, shared=True, seed_prefix="celebrites",
          img_ref_of=lambda i: "celebrites.cel_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
