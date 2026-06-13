#!/usr/bin/env python3
# Quizz "Athletes" (photo -> nom). Noms identiques x5 -> FR + wrappers.
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

A = [
 ("Lionel Messi","Lionel Messi",0),("Cristiano Ronaldo","Cristiano Ronaldo",0),
 ("Kylian Mbappé","Kylian Mbappe",0),("Neymar","Neymar",0),
 ("Zlatan Ibrahimović","Zlatan Ibrahimovic",0),("Karim Benzema","Karim Benzema",0),
 ("Erling Haaland","Erling Haaland",0),("Mohamed Salah","Mohamed Salah",0),
 ("Usain Bolt","Usain Bolt",0),("Michael Jordan","Michael Jordan",0),
 ("LeBron James","LeBron James",0),("Kobe Bryant","Kobe Bryant",0),
 ("Stephen Curry","Stephen Curry",0),("Shaquille O'Neal","Shaquille O'Neal",0),
 ("Muhammad Ali","Muhammad Ali",0),("Mike Tyson","Mike Tyson",0),
 ("Roger Federer","Roger Federer",0),("Rafael Nadal","Rafael Nadal",0),
 ("Novak Djokovic","Novak Djokovic",0),("Serena Williams","Serena Williams",0),
 ("Tiger Woods","Tiger Woods",0),("Michael Phelps","Michael Phelps",0),
 ("Lewis Hamilton","Lewis Hamilton",0),("Michael Schumacher","Michael Schumacher",0),
 ("Max Verstappen","Max Verstappen",0),("Tom Brady","Tom Brady",0),
 ("Pelé","Pele",0),("Diego Maradona","Diego Maradona",0),
 ("Ronaldinho","Ronaldinho",0),("Teddy Riner","Teddy Riner",0),
 # ---- palier 1 ----
 ("Antoine Griezmann","Antoine Griezmann",1),("Paul Pogba","Paul Pogba",1),
 ("N'Golo Kanté","N'Golo Kante",1),("Olivier Giroud","Olivier Giroud",1),
 ("Hugo Lloris","Hugo Lloris",1),("Didier Drogba","Didier Drogba",1),
 ("Samuel Eto'o","Samuel Eto'o",1),("Sadio Mané","Sadio Mane",1),
 ("Luka Modrić","Luka Modric",1),("Toni Kroos","Toni Kroos",1),
 ("Robert Lewandowski","Robert Lewandowski",1),("Harry Kane","Harry Kane",1),
 ("Kevin De Bruyne","Kevin De Bruyne",1),("Vinícius Júnior","Vinicius Junior",1),
 ("Jude Bellingham","Jude Bellingham",1),("Lamine Yamal","Lamine Yamal",1),
 ("Sergio Ramos","Sergio Ramos",1),("Andrés Iniesta","Andres Iniesta",1),
 ("Andrea Pirlo","Andrea Pirlo",1),("David Beckham","David Beckham",1),
 ("Wayne Rooney","Wayne Rooney",1),("Thierry Henry","Thierry Henry",1),
 ("Eden Hazard","Eden Hazard",1),("Gareth Bale","Gareth Bale",1),
 ("Luis Suárez","Luis Suarez",1),("Fernando Alonso","Fernando Alonso",1),
 ("Sebastian Vettel","Sebastian Vettel",1),("Ayrton Senna","Ayrton Senna",1),
 ("Alain Prost","Alain Prost",1),("Valentino Rossi","Valentino Rossi",1),
 ("Marc Márquez","Marc Marquez",1),("Andy Murray","Andy Murray",1),
 ("Carlos Alcaraz","Carlos Alcaraz",1),("Naomi Osaka","Naomi Osaka",1),
 ("Kevin Durant","Kevin Durant",1),("Giannis Antetokounmpo","Giannis Antetokounmpo",1),
 ("Victor Wembanyama","Victor Wembanyama",1),("Tony Parker","Tony Parker",1),
 ("Dirk Nowitzki","Dirk Nowitzki",1),("Magic Johnson","Magic Johnson",1),
 # ---- palier 2 ----
 ("Carl Lewis","Carl Lewis",2),("Jesse Owens","Jesse Owens",2),
 ("Mo Farah","Mo Farah",2),("Eliud Kipchoge","Eliud Kipchoge",2),
 ("Armand Duplantis","Armand Duplantis",2),("Katie Ledecky","Katie Ledecky",2),
 ("Léon Marchand","Leon Marchand",2),("Simone Biles","Simone Biles",2),
 ("Nadia Comăneci","Nadia Comaneci",2),("Floyd Mayweather Jr.","Floyd Mayweather",2),
 ("Manny Pacquiao","Manny Pacquiao",2),("Canelo Álvarez","Canelo Alvarez",2),
 ("Tyson Fury","Tyson Fury",2),("Conor McGregor","Conor McGregor",2),
 ("Khabib Nurmagomedov","Khabib Nurmagomedov",2),("Georges St-Pierre","Georges St-Pierre",2),
 ("Eddy Merckx","Eddy Merckx",2),("Tadej Pogačar","Tadej Pogacar",2),
 ("Jonas Vingegaard","Jonas Vingegaard",2),("Bernard Hinault","Bernard Hinault",2),
 ("Antoine Dupont","Antoine Dupont",2),("Jonah Lomu","Jonah Lomu",2),
 ("Dan Carter","Dan Carter",2),("Rory McIlroy","Rory McIlroy",2),
 ("Patrick Mahomes","Patrick Mahomes",2),("Babe Ruth","Babe Ruth",2),
 ("Wayne Gretzky","Wayne Gretzky",2),("Björn Borg","Bjorn Borg",2),
 ("John McEnroe","John McEnroe",2),("Pete Sampras","Pete Sampras",2),
 ("Andre Agassi","Andre Agassi",2),("Steffi Graf","Steffi Graf",2),
 ("Martina Navratilova","Martina Navratilova",2),("Venus Williams","Venus Williams",2),
 ("Johan Cruyff","Johan Cruyff",2),("Franz Beckenbauer","Franz Beckenbauer",2),
 ("Paolo Maldini","Paolo Maldini",2),("Roberto Carlos","Roberto Carlos",2),
 ("Cafu","Cafu",2),("Fabio Cannavaro","Fabio Cannavaro",2),
 ("Gianluigi Buffon","Gianluigi Buffon",2),("Iker Casillas","Iker Casillas",2),
 ("Oliver Kahn","Oliver Kahn",2),("Eric Cantona","Eric Cantona",2),
]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in A]
print("Athletes :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/athletes", "ath")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images athletes/")

ENONCE = {"FR": "Qui est cet athlete ?", "EN": "Who is this athlete?",
          "ES": "Quien es este atleta?", "DE": "Wer ist dieser Sportler?",
          "IT": "Chi e questo atleta?"}
emit_bank(f"{ROOT}/verse/athletes_bank.verse",
          "athletes_bank.verse — Quizz ATHLETES (photos Wikipedia)",
          "AthletesDiff", "Athletes", ENONCE, items, shared=True, seed_prefix="athletes",
          img_ref_of=lambda i: "athletes.ath_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
