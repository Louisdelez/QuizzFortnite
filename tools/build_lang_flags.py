#!/usr/bin/env python3
# ============================================================
#  build_lang_flags.py — Drapeaux du SELECTEUR DE LANGUE
#  Telecharge les vrais drapeaux (flagcdn.com, domaine public)
#  des 5 langues du jeu et les normalise en 192x128 (ratio 3:2,
#  meme format que les anciens flag_fr/flag_uk dessines en dur).
#  Sortie : icons/flag_fr.png, flag_uk.png, flag_es.png,
#           flag_de.png, flag_it.png  (a importer dans HUD/icons)
# ============================================================
import os, urllib.request
from PIL import Image

OUT = "D:/QuizzFortnite/icons"
os.makedirs(OUT, exist_ok=True)
W, H = 192, 128

# (iso flagcdn, nom de fichier de sortie)
LANGS = [("fr", "flag_fr"), ("gb", "flag_uk"), ("es", "flag_es"),
         ("de", "flag_de"), ("it", "flag_it")]

for iso, name in LANGS:
    raw = f"{OUT}/_raw_{iso}.png"
    urllib.request.urlretrieve(f"https://flagcdn.com/w320/{iso}.png", raw)
    img = Image.open(raw).convert("RGB")
    # etire au format 3:2 (les chips de langue sont affichees en 62x42 / 26x18)
    img = img.resize((W, H), Image.LANCZOS)
    img.save(f"{OUT}/{name}.png", optimize=True)
    os.remove(raw)
    print(f"OK {name}.png ({iso}, {W}x{H})")

print("5 drapeaux de langue generes dans", OUT)
