#!/usr/bin/env python3
# Quizz "Musique" (texte) : "Qui interprete {titre} ?" — titres universels,
# reponse = artiste (identique x5).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import emit_custom, make_draws, LANGS
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

ROOT = _ROOT

M = [
 ("Thriller","Michael Jackson",0),("Billie Jean","Michael Jackson",0),
 ("Bohemian Rhapsody","Queen",0),("We Will Rock You","Queen",0),
 ("Imagine","John Lennon",0),("Hey Jude","The Beatles",0),
 ("Let It Be","The Beatles",0),("Shape of You","Ed Sheeran",0),
 ("Blinding Lights","The Weeknd",0),("Rolling in the Deep","Adele",0),
 ("Hello","Adele",0),("Bad Guy","Billie Eilish",0),
 ("Poker Face","Lady Gaga",0),("Single Ladies","Beyonce",0),
 ("Umbrella","Rihanna",0),("Diamonds","Rihanna",0),
 ("Smells Like Teen Spirit","Nirvana",0),("Lose Yourself","Eminem",0),
 ("Without Me","Eminem",0),("Gangnam Style","PSY",0),
 ("Despacito","Luis Fonsi",0),("Waka Waka","Shakira",0),
 ("I Will Always Love You","Whitney Houston",0),("Like a Virgin","Madonna",0),
 ("Purple Rain","Prince",0),("Highway to Hell","AC/DC",0),
 ("Back in Black","AC/DC",0),
 # ---- palier 1 ----
 ("Stairway to Heaven","Led Zeppelin",1),("Hotel California","Eagles",1),
 ("Sweet Child O' Mine","Guns N' Roses",1),("November Rain","Guns N' Roses",1),
 ("Wonderwall","Oasis",1),("Creep","Radiohead",1),
 ("Yellow","Coldplay",1),("Viva la Vida","Coldplay",1),
 ("Seven Nation Army","The White Stripes",1),("Get Lucky","Daft Punk",1),
 ("One More Time","Daft Punk",1),("Titanium","David Guetta",1),
 ("Wake Me Up","Avicii",1),("Levels","Avicii",1),
 ("Animals","Martin Garrix",1),("Faded","Alan Walker",1),
 ("Uptown Funk","Bruno Mars",1),("Happy","Pharrell Williams",1),
 ("Can't Stop the Feeling","Justin Timberlake",1),("Sorry","Justin Bieber",1),
 ("Anti-Hero","Taylor Swift",1),("Shake It Off","Taylor Swift",1),
 ("God's Plan","Drake",1),("Hotline Bling","Drake",1),
 ("Sicko Mode","Travis Scott",1),("In Da Club","50 Cent",1),
 ("Empire State of Mind","Jay-Z",1),
 # ---- palier 2 ----
 ("La Boheme","Charles Aznavour",2),("Ne me quitte pas","Jacques Brel",2),
 ("La Vie en rose","Edith Piaf",2),("Non, je ne regrette rien","Edith Piaf",2),
 ("Mistral gagnant","Renaud",2),("Foule sentimentale","Alain Souchon",2),
 ("Alors on danse","Stromae",2),("Papaoutai","Stromae",2),
 ("Formidable","Stromae",2),("Derniere danse","Indila",2),
 ("Djadja","Aya Nakamura",2),("Take On Me","a-ha",2),
 ("Africa","Toto",2),("Sweet Dreams","Eurythmics",2),
 ("Karma Police","Radiohead",2),("Paranoid","Black Sabbath",2),
 ("Smoke on the Water","Deep Purple",2),("Kashmir","Led Zeppelin",2),
 ("Comfortably Numb","Pink Floyd",2),("Wish You Were Here","Pink Floyd",2),
 ("Hallelujah","Leonard Cohen",2),("Ring of Fire","Johnny Cash",2),
 ("Respect","Aretha Franklin",2),("What a Wonderful World","Louis Armstrong",2),
 ("Feeling Good","Nina Simone",2),("Superstition","Stevie Wonder",2),
 ("Englishman in New York","Sting",2),("Beat It","Michael Jackson",2),
]

TPL = {"FR": "Qui interprete '%s' ?", "EN": "Who performs '%s'?",
       "ES": "Quien interpreta '%s'?", "DE": "Wer singt '%s'?",
       "IT": "Chi canta '%s'?"}

items = [{"id": s, "tier": t, "names": {lang: a for lang in LANGS}} for (s, a, t) in M]
draws = make_draws(items, "musique")
rows = {lang: [] for lang in LANGS}
for i, (s, a, t) in enumerate(M):
    answers, correct = draws[i]
    for lang in LANGS:
        rows[lang].append((TPL[lang] % s, [items[x]["names"][lang] for x in answers], correct))
diffs = [t for _, _, t in M]
emit_custom(f"{ROOT}/verse/musique_bank.verse",
            "musique_bank.verse — Quizz MUSIQUE (qui interprete...)",
            "MusiqueDiff", "Musique", rows, diffs)
print("Paliers : %d/%d/%d" % (diffs.count(0), diffs.count(1), diffs.count(2)))
