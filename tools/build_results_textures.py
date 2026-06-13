#!/usr/bin/env python3
# ============================================================
#  build_results_textures.py — Ecran "Fin de Quizz - Resultats"
#  Reproduction EXACTE du design (docs/design/end-quiz.css).
#  Textures cuites (degrades/verres/anneaux) -> results_textures/
#  a importer dans Content/HUD (namespace Verse `HUD.`).
# ============================================================
import os, math
from PIL import Image, ImageDraw

OUT = "D:/QuizzFortnite/results_textures"
os.makedirs(OUT, exist_ok=True)
SS = 4

BRAND = (124, 92, 255); BRAND_D = (91, 60, 224); CYAN = (54, 224, 255)
GOLD = (255, 210, 74); GOLD_D = (201, 154, 20)
SILVER = (215, 226, 242); SILVER_D = (147, 166, 190)
BRONZE = (232, 150, 90); BRONZE_D = (185, 106, 51)
PANEL_T = (35, 46, 80); PANEL_B = (20, 28, 54)   # --panel-top/bot

def lerp(a, b, t): return a + (b - a) * t

def save(img, name):
    img.save(f"{OUT}/{name}.png", optimize=True)
    print(f"OK {name + '.png':24s} {img.width}x{img.height}")

def rr(d, box, r, **kw):
    d.rounded_rectangle(box, radius=r, **kw)

# ---- panneau arrondi generique (degrade vertical + bordure), rendu SS ----
def panel(name, w, h, r, top, bot, fill_a=(255, 255), border=None, bw=2.0,
          top_only=False, beam=False, horiz=False):
    W, H = w * SS, h * SS
    img = Image.new("RGBA", (W, H), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    box_h = H + (2 * r * SS if top_only else 0)
    mask = Image.new("L", (W, box_h), 0)
    rr(ImageDraw.Draw(mask), (0, 0, W - 1, box_h - 1), r * SS, fill=255)
    mask = mask.crop((0, 0, W, H))
    grad = Image.new("RGBA", (W, H))
    gp = grad.load()
    for y in range(H):
        t = y / H
        c = tuple(int(lerp(top[i], bot[i], t)) for i in range(3))
        a = int(lerp(fill_a[0], fill_a[1], t))
        for x in range(W):
            gp[x, y] = (*c, a)
    if horiz:  # degrade horizontal (ligne "VOUS")
        for y in range(H):
            for x in range(W):
                t = x / W
                c = tuple(int(lerp(top[i], bot[i], t)) for i in range(3))
                a = int(lerp(fill_a[0], fill_a[1], t))
                gp[x, y] = (*c, a)
    img.paste(grad, (0, 0), mask)
    if border:
        bc = border
        for i in range(int(bw * SS)):
            box = (i, i, W - 1 - i, (H - 1 - i) + (2 * r * SS if top_only else 0))
            rr(d, box, max(1, r * SS - i), outline=bc)
    if beam:  # lisere haut (transparent -> cyan -> violet -> transparent), x 18..w-18, h 4
        x0, x1, bh = 18 * SS, W - 18 * SS, 4 * SS
        for x in range(x0, x1):
            u = (x - x0) / (x1 - x0)
            if u < 1 / 3: k = u * 3; c = tuple(int(lerp(0, CYAN[i], k)) for i in range(3)); a = k
            elif u < 2 / 3: k = (u - 1 / 3) * 3; c = tuple(int(lerp(CYAN[i], BRAND[i], k)) for i in range(3)); a = 1.0
            else: k = (u - 2 / 3) * 3; c = tuple(int(lerp(BRAND[i], 0, k)) for i in range(3)); a = 1.0 - k
            for y in range(bh):
                img.putpixel((x, y), (*c, int(229 * a)))
    save(img.resize((w, h), Image.LANCZOS), name)

# ============================================================
# 1) FOND celebration 960x540 (affiche 1920x1080)
# ============================================================
def background():
    w, h = 960, 540
    img = Image.new("RGB", (w, h))
    px = img.load()
    cx, cy = w * 0.5, h * -0.08
    maxd = math.hypot(w * 0.62, h * 1.05)
    for y in range(h):
        for x in range(w):
            t = min(1.0, math.hypot(x - cx, y - cy) / maxd)
            if t < 0.46: c = tuple(int(lerp((42, 35, 96), (20, 18, 51), t / 0.46)) for _ in [0])[0] if False else tuple(int(lerp((42, 35, 96)[i], (20, 18, 51)[i], t / 0.46)) for i in range(3))
            else: c = tuple(int(lerp((20, 18, 51)[i], (10, 10, 30)[i], (t - 0.46) / 0.54)) for i in range(3))
            # rays coniques (depuis 50%/30%, violet .16 attenue, bords lisses)
            ang = math.degrees(math.atan2(y - h * 0.30, x - w * 0.5)) % 14.0
            if ang < 6.0:
                k = min(1.0, min(ang, 6.0 - ang) / 0.9)   # anti-aliasing angulaire
                dist = math.hypot(x - w * 0.5, y - h * 0.30) / (w * 0.55)
                c = tuple(int(lerp(c[i], BRAND[i], 0.10 * k * min(1.0, 0.35 + dist))) for i in range(3))
            # glow cyan (centre 50%/18%, rayon ~190)
            g = max(0.0, 1.0 - math.hypot(x - w * 0.5, y - h * 0.18) / 200.0)
            if g > 0:
                c = tuple(int(lerp(c[i], CYAN[i], 0.22 * g)) for i in range(3))
            px[x, y] = c
    # confettis statiques du design (positions %, 6 couleurs, rotations)
    cols = [(255, 61, 87), (46, 155, 255), (35, 210, 106), (255, 194, 31), (124, 92, 255), (54, 224, 255)]
    seed = [(6, 12), (14, 30), (22, 8), (30, 22), (40, 6), (58, 10), (68, 26), (76, 9),
            (84, 20), (92, 12), (10, 50), (88, 54), (4, 70), (95, 74), (18, 64), (80, 68)]
    d = ImageDraw.Draw(img, "RGBA")
    for i, (lx, ty) in enumerate(seed):
        ccx, ccy = w * lx / 100, h * ty / 100
        a = math.radians((i * 37) % 360)
        ww, hh = 5.5, 7.0
        pts = []
        for sx, sy in [(-ww/2, -hh/2), (ww/2, -hh/2), (ww/2, hh/2), (-ww/2, hh/2)]:
            pts.append((ccx + sx * math.cos(a) - sy * math.sin(a), ccy + sx * math.sin(a) + sy * math.cos(a)))
        d.polygon(pts, fill=(*cols[i % 6], 217))
    save(img.convert("RGBA"), "res_bg")

background()

# ============================================================
# 2) Podium / avatars / couronne
# ============================================================
panel("res_pod1", 178, 150, 15, GOLD, GOLD_D, border=(255, 255, 255, 64), top_only=True)
panel("res_pod2", 158, 120, 15, SILVER, SILVER_D, border=(255, 255, 255, 64), top_only=True)
panel("res_pod3", 158, 98, 15, BRONZE, BRONZE_D, border=(255, 255, 255, 64), top_only=True)

def avatar():
    S = 104 * SS
    img = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    mask = Image.new("L", (S, S), 0)
    ImageDraw.Draw(mask).ellipse((0, 0, S - 1, S - 1), fill=255)
    grad = Image.new("RGBA", (S, S))
    gp = grad.load()
    for y in range(S):
        a = int(lerp(255, 153, y / S))   # c -> c@60% (suffixe 99 du design)
        for x in range(S):
            gp[x, y] = (255, 255, 255, a)
    img.paste(grad, (0, 0), mask)
    save(img.resize((104, 104), Image.LANCZOS), "res_av")
    ring = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    rd = ImageDraw.Draw(ring)
    for i in range(3 * SS):
        rd.ellipse((i, i, S - 1 - i, S - 1 - i), outline=(255, 255, 255, 128))
    save(ring.resize((104, 104), Image.LANCZOS), "res_avring")

avatar()

def crown():
    S = 80 * SS
    img = Image.new("RGBA", (S, S), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    k = S / 24.0
    pts = [(3, 7), (7, 11), (12, 4), (17, 11), (21, 7), (19, 19), (5, 19)]
    poly = [(x * k, y * k) for x, y in pts]
    d.polygon(poly, fill=GOLD, outline=(0, 0, 0, 64), width=int(1 * k))
    save(img.resize((80, 80), Image.LANCZOS), "res_crown")

crown()

# ============================================================
# 3) Classement / colonne perso / chips / boutons
# ============================================================
panel("res_row", 630, 57, 12, (255, 255, 255), (255, 255, 255), fill_a=(11, 11))
panel("res_row_me", 630, 57, 12, BRAND, BRAND, fill_a=(77, 20), border=(*BRAND, 255), bw=1.5, horiz=True)
panel("res_goodchip", 70, 24, 7, (255, 255, 255), (255, 255, 255), fill_a=(15, 15))
panel("res_youcard", 427, 192, 22, PANEL_T, PANEL_B, border=(255, 255, 255, 77), beam=True)
# encart RANG competitif (.eq-rank : padding 15/16, badge 84, barre 13)
panel("res_rankcard", 427, 118, 22, PANEL_T, PANEL_B, border=(255, 255, 255, 77), beam=True)
panel("res_rankplate", 84, 84, 12, (245, 247, 252), (214, 224, 244), fill_a=(245, 235), border=(255, 255, 255, 140))
panel("res_bar", 296, 13, 6.5, (0, 0, 0), (0, 0, 0), fill_a=(82, 82), border=(255, 255, 255, 20), bw=1)
panel("res_gainchip", 74, 24, 7, (35, 210, 106), (35, 210, 106), fill_a=(41, 41))
panel("res_barfill", 296, 13, 6.5, CYAN, BRAND, horiz=True)   # remplissage degrade cyan->violet
MIX = tuple(int(0.26 * BRAND[i] + 0.74 * PANEL_T[i]) for i in range(3))
panel("res_scorecard", 427, 84, 22, MIX, PANEL_B, border=(*BRAND, 255))
panel("res_stat", 209, 106, 13, (255, 255, 255), (255, 255, 255), fill_a=(13, 13), border=(255, 255, 255, 36), bw=1.5)
panel("res_statico", 30, 30, 9, (255, 255, 255), (184, 184, 184), border=(255, 255, 255, 64), bw=1.5)  # teinte couleur stat
panel("res_chip", 160, 34, 17, (255, 255, 255), (255, 255, 255), fill_a=(18, 18), border=(255, 255, 255, 77), bw=1.5)
panel("res_btn_ghost", 439, 65, 15, (255, 255, 255), (255, 255, 255), fill_a=(20, 20), border=(255, 255, 255, 102))
panel("res_btn_ghost_hi", 439, 65, 15, (255, 255, 255), (255, 255, 255), fill_a=(41, 41), border=(255, 255, 255, 102))
panel("res_btn_primary", 659, 65, 15, BRAND, BRAND_D, border=(255, 255, 255, 102))

# lignes du kicker (34x2, fondu vers le centre) — blanches, teintees cyan en Verse
for name, rev in [("res_kline_l", False), ("res_kline_r", True)]:
    img = Image.new("RGBA", (34, 2), (0, 0, 0, 0))
    for x in range(34):
        a = int(255 * (x / 33 if not rev else 1 - x / 33))
        for y in range(2):
            img.putpixel((x, y), (255, 255, 255, a))
    save(img, name)

print("\nTextures resultats generees dans", OUT)
