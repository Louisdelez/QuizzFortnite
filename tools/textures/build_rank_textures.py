#!/usr/bin/env python3
# ============================================================
#  build_rank_textures.py — 18 emblemes de rang (systeme Fortnite)
#  Bronze I-III, Argent I-III, Or I-III, Platine I-III,
#  Diamant I-III, Elite, Champion, Irreel.
#  Emblemes ORIGINAUX reprenant l'identite couleur des rangs
#  officiels (les vrais assets Epic ne sont pas importables).
#  Badge hexagonal metallique + pips de division. 128x128 RGBA.
#  Sortie : rank_textures/rank_00.png .. rank_17.png
# ============================================================
import os, math
from PIL import Image, ImageDraw

OUT = "D:/QuizzFortnite/assets/rank_textures"
os.makedirs(OUT, exist_ok=True)
SS = 4
S = 128 * SS

def lerp(a, b, t): return tuple(int(a[i] + (b[i] - a[i]) * t) for i in range(3))

# (nom, clair, fonce, liseré) — identite couleur des paliers Fortnite
GROUPS = [
    ("bronze",   (196, 124, 78),  (94, 52, 26),   (255, 196, 150)),
    ("argent",   (222, 230, 240), (122, 136, 156), (255, 255, 255)),
    ("or",       (255, 214, 84),  (170, 116, 16),  (255, 244, 180)),
    ("platine",  (196, 236, 228), (96, 156, 148),  (235, 255, 250)),
    ("diamant",  (140, 192, 255), (52, 100, 208),  (210, 235, 255)),
    ("elite",    (110, 126, 178), (30, 38, 70),    (54, 224, 255)),
    ("champion", (255, 92, 110),  (150, 16, 48),   (255, 200, 160)),
    ("irreel",   (124, 92, 255),  (24, 18, 60),    (54, 224, 255)),
]

def hexagon(cx, cy, r, rot=0.0):
    return [(cx + r * math.cos(math.radians(60 * i - 90 + rot)),
             cy + r * math.sin(math.radians(60 * i - 90 + rot))) for i in range(6)]

def diamond(cx, cy, r):
    return [(cx, cy - r), (cx + r * 0.72, cy), (cx, cy + r), (cx - r * 0.72, cy)]

def make_emblem(light, dark, rim_col, pips, special):
    img = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    cx, cy, R = S / 2, S / 2, S * 0.46
    # ombre / fond du badge
    d.polygon(hexagon(cx, cy + S * 0.012, R), fill=(10, 10, 24, 160))
    # corps : degrade vertical par tranches dans le masque hexagonal
    mask = Image.new("L", (S, S), 0)
    ImageDraw.Draw(mask).polygon(hexagon(cx, cy, R * 0.965), fill=255)
    grad = Image.new("RGBA", (S, S))
    gp = grad.load()
    y0, y1 = cy - R, cy + R
    for y in range(S):
        t = min(1.0, max(0.0, (y - y0) / (y1 - y0)))
        c = lerp(light, dark, t)
        for x in range(S):
            gp[x, y] = (*c, 255)
    img.paste(grad, (0, 0), mask)
    # liseré exterieur (2 epaisseurs)
    for w, col in [(int(S * 0.030), (*dark, 255)), (int(S * 0.014), (*rim_col, 255))]:
        d.polygon(hexagon(cx, cy, R * 0.965), outline=col, width=w)
    # facette interieure (hexagone clair en haut)
    inner = hexagon(cx, cy - R * 0.10, R * 0.62)
    d.polygon(inner, outline=(*lerp(light, (255, 255, 255), 0.45), 200), width=int(S * 0.012))
    # motif central
    if special == "champion":   # couronne stylisee
        k = S / 24.0
        pts = [(8, 13), (9.6, 10.6), (12, 13), (14.4, 10.6), (16, 13), (15.3, 16), (8.7, 16)]
        d.polygon([(x * k, y * k) for x, y in pts], fill=(*rim_col, 255))
    elif special == "irreel":   # etoile a 4 branches
        r1, r2 = R * 0.34, R * 0.10
        pts = []
        for i in range(8):
            r = r1 if i % 2 == 0 else r2
            a = math.radians(45 * i - 90)
            pts.append((cx + r * math.cos(a), cy - R * 0.06 + r * math.sin(a)))
        d.polygon(pts, fill=(*rim_col, 255))
    elif special == "elite":    # chevron double
        k = R * 0.30
        for off in (0.0, k * 0.55):
            d.polygon([(cx - k, cy + k * 0.30 + off), (cx, cy - k * 0.45 + off), (cx + k, cy + k * 0.30 + off),
                       (cx + k, cy + k * 0.62 + off), (cx, cy - k * 0.13 + off), (cx - k, cy + k * 0.62 + off)],
                      fill=(*rim_col, 230))
    else:                       # losange central (Bronze -> Diamant)
        d.polygon(diamond(cx, cy - R * 0.06, R * 0.30), fill=(*lerp(light, (255, 255, 255), 0.30), 235))
        d.polygon(diamond(cx, cy - R * 0.06, R * 0.30), outline=(*dark, 255), width=int(S * 0.012))
    # pips de division (I / II / III)
    if pips > 0:
        pr = R * 0.085
        gap = pr * 2.6
        x0 = cx - gap * (pips - 1) / 2
        for i in range(pips):
            d.polygon(diamond(x0 + i * gap, cy + R * 0.52, pr), fill=(255, 255, 255, 235))
    return img.resize((128, 128), Image.LANCZOS)

idx = 0
for gi, (name, light, dark, rim) in enumerate(GROUPS):
    divisions = 3 if gi < 5 else 1
    for div in range(1, divisions + 1):
        pips = div if gi < 5 else 0
        img = make_emblem(light, dark, rim, pips, name if gi >= 5 else "")
        fn = "rank_%02d" % idx
        img.save(f"{OUT}/{fn}.png", optimize=True)
        print(f"OK {fn}.png  ({name} {'I' * div if gi < 5 else ''})".strip())
        idx += 1
print(f"\n{idx} emblemes generes dans {OUT}")
