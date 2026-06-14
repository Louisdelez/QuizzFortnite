#!/usr/bin/env python3
# Quizz "Series TV" (image affiche/logo -> nom). Noms identiques x5 -> FR + wrappers.
# ⚠ visuels sous licence : OK serveur prive (decision utilisateur).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank, filter_with_images
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

S = [
 ("Game of Thrones","Game of Thrones",0),("Breaking Bad","Breaking Bad",0),
 ("Stranger Things","Stranger Things",0),("Friends","Friends",0),
 ("The Walking Dead (TV series)","The Walking Dead",0),("The Big Bang Theory","The Big Bang Theory",0),
 ("Money Heist","La Casa de Papel",0),("Squid Game","Squid Game",0),
 ("The Witcher (TV series)","The Witcher",0),("Wednesday (TV series)","Wednesday",0),
 ("The Crown (TV series)","The Crown",0),("Black Mirror","Black Mirror",0),
 ("The Mandalorian","The Mandalorian",0),("House of the Dragon","House of the Dragon",0),
 ("The Last of Us (TV series)","The Last of Us",0),("Peaky Blinders","Peaky Blinders",0),
 ("Lost (TV series)","Lost",0),("Prison Break","Prison Break",0),
 ("Dexter (TV series)","Dexter",0),("Sherlock (TV series)","Sherlock",0),
 ("The Simpsons","The Simpsons",0),("Rick and Morty","Rick and Morty",0),
 ("South Park","South Park",0),("Family Guy","Family Guy",0),
 ("SpongeBob SquarePants","SpongeBob SquarePants",0),("Pokemon (TV series)","Pokemon",0),
 ("Naruto","Naruto",0),("Dragon Ball Z","Dragon Ball Z",0),
 ("Attack on Titan","Attack on Titan",0),("One Piece (1999 TV series)","One Piece",0),
 # ---- palier 1 ----
 ("The Office (American TV series)","The Office",1),("How I Met Your Mother","How I Met Your Mother",1),
 ("Grey's Anatomy","Grey's Anatomy",1),("House (TV series)","Dr House",1),
 ("Better Call Saul","Better Call Saul",1),("Narcos","Narcos",1),
 ("The Boys (TV series)","The Boys",1),("Vikings (2013 TV series)","Vikings",1),
 ("Westworld (TV series)","Westworld",1),("The Umbrella Academy (TV series)","The Umbrella Academy",1),
 ("Ozark (TV series)","Ozark",1),("Mindhunter","Mindhunter",1),
 ("Fargo (TV series)","Fargo",1),("True Detective","True Detective",1),
 ("Mr. Robot","Mr. Robot",1),("Chernobyl (miniseries)","Chernobyl",1),
 ("The Handmaid's Tale (TV series)","The Handmaid's Tale",1),("Euphoria (American TV series)","Euphoria",1),
 ("Succession (TV series)","Succession",1),("Ted Lasso","Ted Lasso",1),
 ("Cobra Kai","Cobra Kai",1),("The Queen's Gambit (miniseries)","The Queen's Gambit",1),
 ("Lupin (TV series)","Lupin",1),("Dark (TV series)","Dark",1),
 ("Elite (TV series)","Elite",1),("Sex Education","Sex Education",1),
 ("Gomorrah (TV series)","Gomorra",1),
 ("Suits","Suits",1),("Gossip Girl","Gossip Girl",1),
 ("Riverdale (2017 TV series)","Riverdale",1),("13 Reasons Why","13 Reasons Why",1),
 ("My Hero Academia","My Hero Academia",1),("Demon Slayer: Kimetsu no Yaiba","Demon Slayer",1),
 ("Death Note","Death Note",1),("Fullmetal Alchemist","Fullmetal Alchemist",1),
 # ---- palier 2 ----
 ("The Sopranos","Les Soprano",2),("The Wire","The Wire",2),
 ("Mad Men","Mad Men",2),("Twin Peaks","Twin Peaks",2),
 ("Seinfeld","Seinfeld",2),("Frasier","Frasier",2),
 ("Cheers","Cheers",2),("The X-Files","X-Files",2),
 ("ER (TV series)","Urgences",2),("24 (TV series)","24 heures chrono",2),
 ("Heroes (American TV series)","Heroes",2),("Battlestar Galactica (2004 TV series)","Battlestar Galactica",2),
 ("Six Feet Under","Six Feet Under",2),("Deadwood (TV series)","Deadwood",2),
 ("Boardwalk Empire","Boardwalk Empire",2),("Band of Brothers","Band of Brothers",2),
 ("The Shield","The Shield",2),("Oz (TV series)","Oz",2),
 ("Curb Your Enthusiasm","Larry et son nombril",2),("It's Always Sunny in Philadelphia","Philadelphia",2),
 ("Scrubs (TV series)","Scrubs",2),("Malcolm in the Middle","Malcolm",2),
 ("Arrested Development (TV series)","Arrested Development",2),("Community (TV series)","Community",2),
 ("Brooklyn Nine-Nine","Brooklyn Nine-Nine",2),("Parks and Recreation","Parks and Recreation",2),
 ("Veep","Veep",2),("Homeland (TV series)","Homeland",2),
 ("The Americans (2013 TV series)","The Americans",2),("Hannibal (TV series)","Hannibal",2),
 ("Cowboy Bebop","Cowboy Bebop",2),("Neon Genesis Evangelion","Evangelion",2),
 ("Berserk (1997 anime)","Berserk",2),("Hunter x Hunter (2011 TV series)","Hunter x Hunter",2),
 ("Jujutsu Kaisen","Jujutsu Kaisen",2),
 # ---- marge (certaines seront retirees si sans image) ----
 ("Bluey","Bluey",0),("Avatar: The Last Airbender","Avatar le dernier maitre de l'air",0),
 ("Tom and Jerry","Tom et Jerry",0),("Scooby-Doo","Scooby-Doo",0),
 ("The Powerpuff Girls","Les Supers Nanas",1),("Dragon Ball","Dragon Ball",0),
 ("Bleach (TV series)","Bleach",1),("Fairy Tail","Fairy Tail",1),
 ("Sailor Moon","Sailor Moon",1),("Doraemon","Doraemon",1),
 ("Mobile Suit Gundam","Gundam",2),("Inuyasha","Inuyasha",2),
 ("Doctor Who","Doctor Who",1),("Star Trek: The Original Series","Star Trek",1),
 ("Knight Rider (1982 TV series)","K2000",2),("Baywatch","Alerte a Malibu",2),
 ("MacGyver (1985 TV series)","MacGyver",2),("Columbo","Columbo",2),
 ("Magnum, P.I.","Magnum",2),("The A-Team","Agence tous risques",2),
 ("Miami Vice","Deux flics a Miami",2),("Buffy the Vampire Slayer","Buffy",1),
 ("Charmed","Charmed",1),("Smallville","Smallville",1),
 ("Desperate Housewives","Desperate Housewives",1),("CSI: Crime Scene Investigation","Les Experts",1),
 ("The Mentalist","Mentalist",1),("Mr. Bean","Mr Bean",0),
 ("Modern Family","Modern Family",1),("Two and a Half Men","Mon oncle Charlie",1),
 ("The Fresh Prince of Bel-Air","Le Prince de Bel-Air",1),("Married... with Children","Mariés deux enfants",2),
 ("Knight Rider","KITT",2),("Teenage Mutant Ninja Turtles (1987 TV series)","Tortues Ninja",1),
 ("The Flintstones","Les Pierrafeu",1),("Looney Tunes","Looney Tunes",0),
]
items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in S]
# dedup par nom affiche (garde le 1er) puis filtre les sans-image
seen = set(); dd = []
for it in items:
    if it["names"]["FR"] in seen: continue
    seen.add(it["names"]["FR"]); dd.append(it)
items = dd
print("Series (avant filtre) :", len(items))
items = filter_with_images(items)
print("Series (avec image) :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/series", "ser")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images series/")

ENONCE = {"FR": "Quelle est cette serie ?", "EN": "What TV series is this?",
          "ES": "Que serie es esta?", "DE": "Welche Serie ist das?",
          "IT": "Quale serie e questa?"}
emit_bank(f"{ROOT}/verse/series_bank.verse",
          "series_bank.verse — Quizz SERIES TV (affiches Wikipedia)",
          "SeriesDiff", "Series", ENONCE, items, shared=True, seed_prefix="series",
          img_ref_of=lambda i: "series.ser_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
