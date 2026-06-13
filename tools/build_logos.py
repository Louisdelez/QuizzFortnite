#!/usr/bin/env python3
# ============================================================
#  build_logos.py — Quizz "Logos & marques" (logo -> nom de la marque)
#  Vignettes des pages Wikipedia EN (l'image de page = le logo).
#  Noms de marques identiques x5 langues -> banque FR + wrappers.
#  ⚠ marques deposees : OK serveur prive (decision utilisateur).
#  Sortie : logos/logo_0001.png... + verse/logos_bank.verse
# ============================================================
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

L = [
 ("Nike, Inc.","Nike",0),("Adidas","Adidas",0),("Apple Inc.","Apple",0),
 ("McDonald's","McDonald's",0),("Coca-Cola","Coca-Cola",0),("Pepsi","Pepsi",0),
 ("Google","Google",0),("Microsoft","Microsoft",0),("Amazon (company)","Amazon",0),
 ("Instagram","Instagram",0),("YouTube","YouTube",0),("Netflix","Netflix",0),
 ("Xbox","Xbox",0),("Nintendo","Nintendo",0),("Lego","Lego",0),
 ("Ferrari","Ferrari",0),("Lamborghini","Lamborghini",0),("Porsche","Porsche",0),
 ("BMW","BMW",0),("Mercedes-Benz","Mercedes-Benz",0),("Audi","Audi",0),
 ("Volkswagen","Volkswagen",0),("Toyota","Toyota",0),("Tesla, Inc.","Tesla",0),
 ("Red Bull","Red Bull",0),("Starbucks","Starbucks",0),("KFC","KFC",0),
 ("Burger King","Burger King",0),("Domino's Pizza","Domino's Pizza",0),
 ("IKEA","Ikea",0),("Louis Vuitton","Louis Vuitton",0),("Chanel","Chanel",0),
 ("Rolex","Rolex",0),("WhatsApp","WhatsApp",0),("TikTok","TikTok",0),
 # ---- palier 1 ----
 ("Under Armour","Under Armour",1),("Lacoste","Lacoste",1),("Levi's","Levi's",1),
 ("Gucci","Gucci",1),("Prada","Prada",1),("Versace","Versace",1),
 ("Ray-Ban","Ray-Ban",1),("Nestle","Nestle",1),("Danone","Danone",1),
 ("Nutella","Nutella",1),("Oreo","Oreo",1),("Pringles","Pringles",1),
 ("Intel","Intel",1),("Nvidia","Nvidia",1),("Sony","Sony",1),
 ("Huawei","Huawei",1),("Xiaomi","Xiaomi",1),("Dell","Dell",1),
 ("Lenovo","Lenovo",1),("Asus","Asus",1),("Logitech","Logitech",1),
 ("Visa Inc.","Visa",1),("Mastercard","Mastercard",1),("PayPal","PayPal",1),
 ("FedEx","FedEx",1),("DHL","DHL",1),("Michelin","Michelin",1),
 ("Renault","Renault",1),("Peugeot","Peugeot",1),("Fiat","Fiat",1),
 ("Honda","Honda",1),("Suzuki","Suzuki",1),("Ford Motor Company","Ford",1),
 ("Air France","Air France",1),("Lufthansa","Lufthansa",1),("Ryanair","Ryanair",1),
 ("Airbnb","Airbnb",1),("Uber","Uber",1),("Twitch (service)","Twitch",1),
 ("Telegram (software)","Telegram",1),("Discord","Discord",1),
 ("Steam (service)","Steam",1),("Epic Games","Epic Games",1),("Ubisoft","Ubisoft",1),
 ("Electronic Arts","Electronic Arts",1),("Rockstar Games","Rockstar Games",1),
 # ---- palier 2 ----
 ("Carrefour","Carrefour",2),("Lidl","Lidl",2),("Aldi","Aldi",2),
 ("Decathlon","Decathlon",2),("Orange S.A.","Orange",2),("Vodafone","Vodafone",2),
 ("Boeing","Boeing",2),("Airbus","Airbus",2),("SpaceX","SpaceX",2),
 ("Omega SA","Omega",2),("TAG Heuer","TAG Heuer",2),("Swatch","Swatch",2),
 ("Casio","Casio",2),("Philips","Philips",2),("Siemens","Siemens",2),
 ("Robert Bosch GmbH","Bosch",2),("Dyson (company)","Dyson",2),
 ("Societe Bic","Bic",2),("3M","3M",2),("General Electric","General Electric",2),
 ("GitHub","GitHub",2),("Citroen","Citroen",2),("Skoda Auto","Skoda",2),
 ("Subaru","Subaru",2),("Mazda","Mazda",2),("Hyundai Motor Company","Hyundai",2),
 ("Evian","Evian",2),("Perrier","Perrier",2),("Milka","Milka",2),
]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": n, "EN": n, "ES": n, "DE": n, "IT": n}}
         for (w, n, t) in L]
print("Logos :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/logos", "logo")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images logos/")

ENONCE = {"FR": "Quelle est cette marque ?", "EN": "What brand is this?",
          "ES": "Que marca es esta?", "DE": "Welche Marke ist das?",
          "IT": "Quale marca e questa?"}
emit_bank(f"{ROOT}/verse/logos_bank.verse",
          "logos_bank.verse — Quizz LOGOS & MARQUES (vignettes Wikipedia)",
          "LogosDiff", "Logos", ENONCE, items, shared=True, seed_prefix="logos",
          img_ref_of=lambda i: "logos.logo_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
