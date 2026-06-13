#!/usr/bin/env python3
# ============================================================
#  build_lobby_textures.py — Textures du LOBBY "Selection du Quizz"
#  Reproduction EXACTE du design (docs/design/lobby-design.css) :
#  degrades, verres translucides (blanc a faible alpha + bordure),
#  anneaux de selection (blancs => teintes en Verse), pointilles.
#  Reference 1920x1080 ; tailles calculees depuis le CSS (border-box).
#  Rendu SDF anti-aliase (pas de supersampling => rapide et lisse).
# ============================================================
import struct, zlib, os, math

OUT = "D:/QuizzFortnite/assets/lobby_textures"
os.makedirs(OUT, exist_ok=True)

# ---- Tokens du design (styles.css / lobby.css) ----
BRAND   = (124, 92, 255)   # --brand   #7C5CFF
BRAND_D = (91, 60, 224)    # #5B3CE0
CYAN    = (54, 224, 255)   # --brand-2 #36E0FF
CYAN_D  = (28, 143, 203)   # #1C8FCB
GREEN1  = (43, 224, 122)   # #2BE07A (haut du bouton Valider)
GREEN_D = (14, 155, 69)    # --c-deep #0E9B45
RED     = (255, 61, 87)    # --a / --bad #FF3D57
MODAL_T = (36, 48, 86)     # #243056
MODAL_B = (22, 30, 58)     # #161E3A
WHITE   = (255, 255, 255)
BLACK   = (0, 0, 0)

# Couleurs categorie (lobby-data.jsx, ordre = CatColHex du Verse)
CATS = ["2E9BFF", "FFC21F", "7C5CFF", "FF3D57", "E84DCB",
        "23D26A", "36E0FF", "FF8A3D", "5BD6C0", "9CA6FF"]

def hx(s): return tuple(int(s[i:i+2], 16) for i in (0, 2, 4))

# ---- SDF rectangle arrondi : couverture anti-aliasee en 1 echantillon ----
def cov_rrect(x, y, w, h, r):
    cx, cy = w / 2.0, h / 2.0
    qx = abs(x - cx) - (w / 2.0 - r)
    qy = abs(y - cy) - (h / 2.0 - r)
    d = math.hypot(max(qx, 0.0), max(qy, 0.0)) + min(max(qx, qy), 0.0) - r
    return min(1.0, max(0.0, 0.5 - d))

def cov_circle(x, y, w, h, r):
    d = math.hypot(x - w / 2.0, y - h / 2.0) - r
    return min(1.0, max(0.0, 0.5 - d))

def dash_on(x, y, w, h, on=8.0, off=6.0):
    # pointilles : parametre le long du bord le plus proche
    ex = min(x, w - x); ey = min(y, h - y)
    t = x if ey < ex else y
    return (t % (on + off)) < on

def lerp(a, b, t): return a + (b - a) * t

def write_png(path, w, h, pixel_fn):
    raw = bytearray()
    for y in range(h):
        raw.append(0)
        for x in range(w):
            r, g, b, a = pixel_fn(x + 0.5, y + 0.5)
            raw += bytes((int(r), int(g), int(b), int(max(0, min(255, a)))))
    def chunk(tag, data):
        out = struct.pack(">I", len(data)) + tag + data
        return out + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", w, h, 8, 6, 0, 0, 0)
    with open(path, "wb") as f:
        f.write(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(bytes(raw), 9)) + chunk(b"IEND", b""))
    print(f"OK {os.path.basename(path):28s} {w}x{h}")

# ---- Panneau "verre" : fill blanc alpha fa + bordure blanche alpha ba ----
def glass(name, w, h, r, fa, ba, bw=2.0, dashed=False, fill_col=WHITE, border_col=WHITE, shape="rrect"):
    cov = cov_circle if shape == "circle" else cov_rrect
    def px(x, y):
        co = cov(x, y, w, h, r)
        ci = cov(x - bw, y - bw, w - 2 * bw, h - 2 * bw, max(0.5, r - bw)) if bw > 0 else co
        ring = max(0.0, co - ci)
        if dashed and ring > 0 and not dash_on(x, y, w, h):
            ring = 0.0
        a = fa * 255 * ci + ba * 255 * ring
        if ring > ci:
            return (*border_col, a)
        return (*fill_col, a)
    write_png(f"{OUT}/{name}.png", w, h, px)

# ---- Bouton degrade vertical opaque + bordure blanche translucide composite ----
def grad_btn(name, w, h, r, top, bot, ba=0.45, bw=2.0, top_a=1.0, bot_a=1.0, shape="rrect"):
    cov = cov_circle if shape == "circle" else cov_rrect
    def px(x, y):
        co = cov(x, y, w, h, r)
        if co <= 0:
            return (0, 0, 0, 0)
        ci = cov(x - bw, y - bw, w - 2 * bw, h - 2 * bw, max(0.5, r - bw))
        t = y / h
        cr, cg, cb = (lerp(top[i], bot[i], t) for i in range(3))
        ca = lerp(top_a, bot_a, t)
        ring = max(0.0, co - ci)
        if ring > ci:  # zone bordure : blanc .ba PAR-DESSUS le degrade
            cr, cg, cb = (lerp(c, 255, ba) for c in (cr, cg, cb))
            ca = max(ca, ba)
        return (cr, cg, cb, 255 * ca * co)
    write_png(f"{OUT}/{name}.png", w, h, px)

# ---- Etat selectionne : anneau blanc 4px (bordure+box-shadow) + voile degrade ----
#      Tout BLANC => teinte en Verse par la couleur voulue (or/cyan/vert/...).
def sel_ring(name, w, h, r, fill_top_a=0.0, bw=4.0):
    def px(x, y):
        co = cov_rrect(x, y, w, h, r)
        ci = cov_rrect(x - bw, y - bw, w - 2 * bw, h - 2 * bw, max(0.5, r - bw))
        ring = max(0.0, co - ci)
        a = 255 * ring
        if fill_top_a > 0 and ci > 0:
            t = y / h
            a = max(a, 255 * fill_top_a * (1.0 - t) * ci)
        return (255, 255, 255, a)
    write_png(f"{OUT}/{name}.png", w, h, px)

# ---- Variante grisee (filter: grayscale(g) brightness(b) du design) ----
def grayscale_of(name, src_name, g=0.6, b=0.6):
    src = f"{OUT}/{src_name}.png"
    d = open(src, "rb").read()
    w, h = struct.unpack(">II", d[16:24])
    # decode IDAT
    idat = b""; off = 8
    while off < len(d):
        ln, tag = struct.unpack(">I4s", d[off:off + 8])
        if tag == b"IDAT": idat += d[off + 8:off + 8 + ln]
        off += 12 + ln
    raw = bytearray(zlib.decompress(idat))
    stride = w * 4 + 1
    for y in range(h):
        for x in range(w):
            i = y * stride + 1 + x * 4
            r, gg, bb = raw[i], raw[i + 1], raw[i + 2]
            lum = 0.299 * r + 0.587 * gg + 0.114 * bb
            raw[i]     = int(min(255, lerp(r, lum, g) * b))
            raw[i + 1] = int(min(255, lerp(gg, lum, g) * b))
            raw[i + 2] = int(min(255, lerp(bb, lum, g) * b))
    def chunk(tag, data):
        out = struct.pack(">I", len(data)) + tag + data
        return out + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)
    ihdr = struct.pack(">IIBBBBB", w, h, 8, 6, 0, 0, 0)
    with open(f"{OUT}/{name}.png", "wb") as f:
        f.write(b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(bytes(raw), 9)) + chunk(b"IEND", b""))
    print(f"OK {name + '.png':28s} {w}x{h} (grisee)")

# ============================================================
#  FENETRE 1180x760 r26 : degrade #243056->#161E3A, bordure 2px
#  blanc .30, liseré haut (transparent->cyan->violet->transparent).
# ============================================================
def modal():
    w, h, r, bw = 1180, 760, 26, 2.0
    beam_x0, beam_x1, beam_h = 26.0, 1154.0, 5.0
    def px(x, y):
        co = cov_rrect(x, y, w, h, r)
        if co <= 0:
            return (0, 0, 0, 0)
        ci = cov_rrect(x - bw, y - bw, w - 2 * bw, h - 2 * bw, r - bw)
        t = y / h
        cr, cg, cb = (lerp(MODAL_T[i], MODAL_B[i], t) for i in range(3))
        if (co - ci) > ci:  # bordure blanche .30 composite
            cr, cg, cb = (lerp(c, 255, 0.30) for c in (cr, cg, cb))
        # liseré lumineux haut (opacity .9, h=5, de x=26 a x=1154)
        if y <= beam_h and beam_x0 <= x <= beam_x1:
            u = (x - beam_x0) / (beam_x1 - beam_x0)
            if u < 1.0 / 3.0:
                k = u * 3.0; bc = tuple(lerp(0, CYAN[i], k) for i in range(3)); ba2 = k
            elif u < 2.0 / 3.0:
                k = (u - 1.0 / 3.0) * 3.0; bc = tuple(lerp(CYAN[i], BRAND[i], k) for i in range(3)); ba2 = 1.0
            else:
                k = (u - 2.0 / 3.0) * 3.0; bc = tuple(lerp(BRAND[i], 0, k) for i in range(3)); ba2 = 1.0 - k
            fade = ba2 * 0.9 * (1.0 - y / beam_h * 0.35)
            cr, cg, cb = (lerp(c, bc[i], fade) for i, c in enumerate((cr, cg, cb)))
        return (cr, cg, cb, 255 * co)
    write_png(f"{OUT}/lobby_modal.png", w, h, px)

# ============================================================
modal()

# --- Liste gauche ---
glass("lobby_card",        591, 76, 14, 0.045, 0.14)            # .lb-quiz (630 - rail 26 - gap 7 - padding 4/2)
glass("lobby_card_hi",     591, 76, 14, 0.10,  0.30)            # .lb-quiz:hover
glass("lobby_quizadd",      34, 34, 10, 0.10,  0.30)            # .lb-quiz__add
grad_btn("lobby_quizadd_on", 34, 34, 10, GREEN1, GREEN_D, ba=0.50)  # ajoute (vert)
glass("lobby_subbtn",      630, 68, 14, 0.07,  0.30)            # .lb-subbtn (Categorie)
glass("lobby_subbtn_hi",   630, 68, 14, 0.14,  0.30)
grad_btn("lobby_more",     630, 48, 14, BRAND, BRAND_D, ba=0.45)    # .lb-scrolldown (LIRE PLUS)
grayscale_of("lobby_more_off", "lobby_more", 0.6, 0.6)
# scrollbar custom (.lb-scroll, colonne 26px) : embouts fleches + piste + curseur
grad_btn("lobby_scrollcap", 26, 26,  8, BRAND, BRAND_D, ba=0.42)    # .lb-scrollcap
grayscale_of("lobby_scrollcap_off", "lobby_scrollcap", 0.6, 0.5)    # .is-disabled
glass("lobby_track",        12, 379,  6, 0.30, 0.07, bw=1, fill_col=BLACK)  # piste noir .30 + ring blanc .07
grad_btn("lobby_thumb",     10, 146,  5, BRAND, BRAND_D, ba=0.35, bw=1)     # curseur (border 1 blanc .35)

# --- File de droite ---
glass("lobby_slot",        478, 66, 14, 0.045, 0.14)            # .lb-slot.filled
glass("lobby_slot_empty",  478, 54, 14, 0.02,  0.16, dashed=True)  # .lb-slot.empty (pointilles)
glass("lobby_num",          30, 30,  9, 0.08,  0.0, bw=0)       # .lb-slot__n
grad_btn("lobby_num_on",    30, 30,  9, BRAND, BRAND_D, ba=0.40, bw=1.5)
glass("lobby_rm",           30, 30,  9, 0.16,  0.40, bw=1.5, fill_col=RED, border_col=RED)  # .lb-slot__rm
glass("lobby_rank",        234, 46, 13, 0.05,  0.14)            # .lb-ranked__b
glass("lobby_rank_hi",     234, 46, 13, 0.10,  0.14)
sel_ring("lobby_rank_on",  238, 50, 15, fill_top_a=0.26)        # is-on (teinte or/cyan)
glass("lobby_diff",        153, 58, 13, 0.05,  0.14)            # .lb-diff__b
glass("lobby_diff_hi",     153, 58, 13, 0.10,  0.14)
sel_ring("lobby_diff_on",  157, 62, 15, fill_top_a=0.30)        # is-on (teinte vert/jaune/rouge)
grad_btn("lobby_valid",    478, 65, 15, GREEN1, GREEN_D, ba=0.45)   # .lb-validate
grayscale_of("lobby_valid_off", "lobby_valid", 0.7, 0.7)

# --- En-tete ---
grad_btn("lobby_badge",     50, 50, 14, BRAND, BRAND_D, ba=0.30)    # .lb-head__ic
glass("lobby_btn",         170, 53, 13, 0.08,  0.30)            # .lb-lang-btn
glass("lobby_btn_hi",      170, 53, 13, 0.15,  0.30)

# --- Pastilles / icones ---
for i, c in enumerate(CATS):                                     # .lb-quiz__ic (degrade c -> c@69%)
    grad_btn(f"lobby_cat_{i}", 50, 50, 12, hx(c), hx(c), ba=0.35, top_a=1.0, bot_a=0.69)
grad_btn("lobby_cat_all",   50, 50, 12, BRAND, BRAND_D, ba=0.35)    # carte "Toutes"
grad_btn("lobby_sub_ic",    38, 38, 10, CYAN, CYAN_D, ba=0.30)      # .lb-subbtn__ic
glass("lobby_tag",         100, 18,  6, 1.0,   0.0, bw=0)        # .lb-tag (teinte categorie)
glass("lobby_pill",         78, 22, 11, 0.08,  0.0, bw=0)        # pastille "N dispo"
glass("lobby_pill_sm",      54, 22, 11, 0.08,  0.0, bw=0)        # pastille "0/4"

# --- Sous-pages ---
glass("lobby_back",         46, 46, 13, 0.08,  0.30)            # .lb-back
glass("lobby_back_hi",      46, 46, 13, 0.16,  0.30)
glass("lobby_langcard",    372, 86, 18, 0.05,  0.14)            # .lb-langcard
glass("lobby_langcard_hi", 372, 86, 18, 0.10,  0.14)
sel_ring("lobby_langcard_on", 376, 90, 20, fill_top_a=0.20)     # is-on (teinte violet)
glass("lobby_chk",          30, 30, 14, 0.0,   0.30, shape="circle")        # .lb-langcard__chk
grad_btn("lobby_chk_on",    30, 30, 14, BRAND, BRAND_D, ba=0.50, shape="circle")
glass("lobby_catcard",     367, 78, 15, 0.05,  0.14)            # .lb-catcard
glass("lobby_catcard_hi",  367, 78, 15, 0.10,  0.14)
sel_ring("lobby_catring",  371, 82, 17, fill_top_a=0.0)         # is-on (teinte couleur categorie)

print("\nTextures generees dans", OUT)
