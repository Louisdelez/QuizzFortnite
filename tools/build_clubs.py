#!/usr/bin/env python3
# Quizz "Clubs de foot" (blason -> nom du club). Noms identiques x5 -> FR + wrappers.
# ⚠ blasons = marques deposees : OK serveur prive (decision utilisateur).
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

CL = [
 ("Real Madrid CF","Real Madrid",0),("FC Barcelona","FC Barcelone",0),
 ("Manchester United F.C.","Manchester United",0),("Liverpool F.C.","Liverpool",0),
 ("Chelsea F.C.","Chelsea",0),("Arsenal F.C.","Arsenal",0),
 ("Manchester City F.C.","Manchester City",0),("Paris Saint-Germain F.C.","Paris Saint-Germain",0),
 ("FC Bayern Munich","Bayern Munich",0),("Borussia Dortmund","Borussia Dortmund",0),
 ("Juventus FC","Juventus",0),("AC Milan","AC Milan",0),("Inter Milan","Inter Milan",0),
 ("Atletico Madrid","Atletico Madrid",0),("Tottenham Hotspur F.C.","Tottenham",0),
 ("Olympique de Marseille","Olympique de Marseille",0),("Olympique Lyonnais","Olympique Lyonnais",0),
 ("AS Monaco FC","AS Monaco",0),("AFC Ajax","Ajax Amsterdam",0),("FC Porto","FC Porto",0),
 ("S.L. Benfica","Benfica",0),("Celtic F.C.","Celtic",0),("Rangers F.C.","Rangers",0),
 ("SSC Napoli","Napoli",0),("AS Roma","AS Roma",0),("Al Nassr FC","Al Nassr",0),
 ("Inter Miami CF","Inter Miami",0),
 # ---- palier 1 ----
 ("Sevilla FC","FC Seville",1),("Valencia CF","Valence CF",1),
 ("Villarreal CF","Villarreal",1),("Real Sociedad","Real Sociedad",1),
 ("Athletic Bilbao","Athletic Bilbao",1),("Real Betis","Real Betis",1),
 ("Bayer 04 Leverkusen","Bayer Leverkusen",1),("RB Leipzig","RB Leipzig",1),
 ("FC Schalke 04","Schalke 04",1),("VfB Stuttgart","VfB Stuttgart",1),
 ("Eintracht Frankfurt","Eintracht Francfort",1),("Newcastle United F.C.","Newcastle United",1),
 ("West Ham United F.C.","West Ham United",1),("Everton F.C.","Everton",1),
 ("Aston Villa F.C.","Aston Villa",1),("Leicester City F.C.","Leicester City",1),
 ("Leeds United F.C.","Leeds United",1),("LOSC Lille","LOSC Lille",1),
 ("FC Nantes","FC Nantes",1),("OGC Nice","OGC Nice",1),
 ("Stade Rennais F.C.","Stade Rennais",1),("RC Lens","RC Lens",1),
 ("AS Saint-Etienne","AS Saint-Etienne",1),("SS Lazio","Lazio Rome",1),
 ("ACF Fiorentina","Fiorentina",1),("Atalanta BC","Atalanta",1),
 ("PSV Eindhoven","PSV Eindhoven",1),("Feyenoord","Feyenoord",1),
 ("Sporting CP","Sporting Portugal",1),("Boca Juniors","Boca Juniors",1),
 ("Club Atletico River Plate","River Plate",1),("CR Flamengo","Flamengo",1),
 ("Santos FC","Santos FC",1),("SE Palmeiras","Palmeiras",1),
 ("LA Galaxy","LA Galaxy",1),("Galatasaray S.K. (football)","Galatasaray",1),
 ("Fenerbahce S.K. (football)","Fenerbahce",1),("Besiktas J.K.","Besiktas",1),
 # ---- palier 2 ----
 ("RCD Espanyol","Espanyol Barcelone",2),("Getafe CF","Getafe",2),
 ("RC Celta de Vigo","Celta Vigo",2),("CA Osasuna","Osasuna",2),
 ("1. FC Koln","FC Cologne",2),("Borussia Monchengladbach","Borussia Monchengladbach",2),
 ("SV Werder Bremen","Werder Breme",2),("Hamburger SV","Hambourg SV",2),
 ("1. FC Union Berlin","Union Berlin",2),("Crystal Palace F.C.","Crystal Palace",2),
 ("Brighton & Hove Albion F.C.","Brighton",2),("Wolverhampton Wanderers F.C.","Wolverhampton",2),
 ("Fulham F.C.","Fulham",2),("Brentford F.C.","Brentford",2),
 ("Southampton F.C.","Southampton",2),("Nottingham Forest F.C.","Nottingham Forest",2),
 ("RC Strasbourg Alsace","RC Strasbourg",2),("Montpellier HSC","Montpellier HSC",2),
 ("FC Metz","FC Metz",2),("Stade Brestois 29","Stade Brestois",2),
 ("Toulouse FC","Toulouse FC",2),("AJ Auxerre","AJ Auxerre",2),
 ("Angers SCO","Angers SCO",2),("Le Havre AC","Le Havre AC",2),
 ("Udinese Calcio","Udinese",2),("Bologna FC 1909","Bologne FC",2),
 ("Genoa CFC","Genoa",2),("UC Sampdoria","Sampdoria",2),
 ("Cagliari Calcio","Cagliari",2),("Parma Calcio 1913","Parme",2),
 ("FC Red Bull Salzburg","Red Bull Salzbourg",2),("Club Brugge KV","Club Bruges",2),
 ("RSC Anderlecht","Anderlecht",2),("Olympiacos F.C.","Olympiakos",2),
 ("Panathinaikos F.C.","Panathinaikos",2),("FC Shakhtar Donetsk","Shakhtar Donetsk",2),
 ("FC Dynamo Kyiv","Dynamo Kiev",2),("Sao Paulo FC","Sao Paulo FC",2),
 ("Cruz Azul","Cruz Azul",2),("Club America","Club America",2),
 ("Seattle Sounders FC","Seattle Sounders",2),
]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in CL]
print("Clubs :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/clubs", "club")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images clubs/")

ENONCE = {"FR": "Quel est ce club de foot ?", "EN": "Which football club is this?",
          "ES": "Que club de futbol es este?", "DE": "Welcher Fussballverein ist das?",
          "IT": "Quale squadra di calcio e questa?"}
emit_bank(f"{ROOT}/verse/clubs_bank.verse",
          "clubs_bank.verse — Quizz CLUBS DE FOOT (blasons via Wikipedia)",
          "ClubsDiff", "Clubs", ENONCE, items, shared=True, seed_prefix="clubs",
          img_ref_of=lambda i: "clubs.club_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
