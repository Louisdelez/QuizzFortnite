#!/usr/bin/env python3
# ============================================================
#  build_icons.py
#  - Telecharge des icones Lucide (SVG) et les rasterise en PNG
#    BLANC sur fond transparent (teintees ensuite en Verse).
#  - Genere aussi les drapeaux FR / UK et un fond gradient plein ecran.
#  Sortie : D:/QuizzFortnite/assets/icons/
#  Deps : Pillow + numpy (dispo). Reseau requis (unpkg) pour les SVG.
# ============================================================
import os, re, math, io, urllib.request
from PIL import Image, ImageDraw
import numpy as np

OUT = "D:/QuizzFortnite/assets/icons"
CACHE = "D:/QuizzFortnite/tools/lucide_svgs"
os.makedirs(OUT, exist_ok=True)
os.makedirs(CACHE, exist_ok=True)

# (nom de fichier de sortie, nom Lucide)
ICONS = [
    ("ic_geo",      "globe"),
    ("ic_history",  "scroll-text"),
    ("ic_gaming",   "gamepad-2"),
    ("ic_cinema",   "film"),
    ("ic_music",    "music"),
    ("ic_sport",    "trophy"),
    ("ic_science",  "atom"),
    ("ic_culture",  "graduation-cap"),
    ("ic_nature",   "leaf"),
    ("ic_logos",    "tag"),
    ("ic_grid",     "layout-grid"),
    ("ic_rocket",   "rocket"),
    ("ic_plus",     "plus"),
    ("ic_check",    "check"),
    ("ic_chevron",  "chevron-right"),
    ("ic_x",        "x"),
    ("ic_back",     "arrow-left"),
    ("ic_trash",    "trash-2"),
    ("ic_up",       "chevron-up"),
    ("ic_down",     "chevron-down"),
    ("ic_trophy",   "trophy"),
    ("ic_smile",    "smile"),
    ("ic_target",   "target"),      # ecran resultats : precision
    ("ic_flame",    "flame"),       # ecran resultats : meilleure serie
    ("ic_bolt",     "zap"),         # ecran resultats : bonus rapidite
    ("ic_replay",   "rotate-ccw"),  # ecran resultats : bouton Rejouer
    ("ic_gear",     "settings"),    # lobby : bouton Parametres
    ("ic_speaker",  "volume-2"),    # parametres audio : haut-parleur
    ("ic_mute",     "volume-x"),    # parametres audio : coupe
    ("ic_wave",     "activity"),    # parametres audio : effets sonores
    ("ic_pointer",  "mouse-pointer-click"),  # parametres audio : interface
    ("ic_left",     "chevron-left"),          # parametres audio : baisser le volume
    ("ic_timer",    "timer"),                 # parametres audio : canal Chrono
    ("ic_anime",    "sparkles"),              # categorie Animes
]

SIZE = 128          # taille finale du PNG
SS = 4              # supersampling
C = SIZE * SS
SCALE = C / 24.0    # viewbox Lucide = 24
STROKE = 2.0 * SCALE  # stroke-width=2 dans le viewbox 24

# ---------------- Telechargement ----------------
def fetch_svg(name):
    p = os.path.join(CACHE, name + ".svg")
    if os.path.exists(p):
        return open(p, "r", encoding="utf-8").read()
    url = f"https://unpkg.com/lucide-static/icons/{name}.svg"
    data = urllib.request.urlopen(url, timeout=20).read().decode("utf-8")
    open(p, "w", encoding="utf-8").write(data)
    return data

# ---------------- Parsing SVG -> subpaths ----------------
NUM = re.compile(r"[-+]?(?:\d*\.\d+|\d+\.?)(?:[eE][-+]?\d+)?")

def nums(s):
    return [float(x) for x in NUM.findall(s)]

def sample_cubic(p0, p1, p2, p3, n=18):
    pts = []
    for i in range(1, n + 1):
        t = i / n
        u = 1 - t
        x = u*u*u*p0[0] + 3*u*u*t*p1[0] + 3*u*t*t*p2[0] + t*t*t*p3[0]
        y = u*u*u*p0[1] + 3*u*u*t*p1[1] + 3*u*t*t*p2[1] + t*t*t*p3[1]
        pts.append((x, y))
    return pts

def sample_quad(p0, p1, p2, n=14):
    pts = []
    for i in range(1, n + 1):
        t = i / n
        u = 1 - t
        x = u*u*p0[0] + 2*u*t*p1[0] + t*t*p2[0]
        y = u*u*p0[1] + 2*u*t*p1[1] + t*t*p2[1]
        pts.append((x, y))
    return pts

def arc_points(x0, y0, rx, ry, phi, large, sweep, x, y):
    # Endpoint -> center parameterization (SVG spec)
    if rx == 0 or ry == 0:
        return [(x, y)]
    phi = math.radians(phi)
    cosp, sinp = math.cos(phi), math.sin(phi)
    dx, dy = (x0 - x) / 2.0, (y0 - y) / 2.0
    x1p = cosp*dx + sinp*dy
    y1p = -sinp*dx + cosp*dy
    rx, ry = abs(rx), abs(ry)
    lam = (x1p**2)/(rx**2) + (y1p**2)/(ry**2)
    if lam > 1:
        s = math.sqrt(lam); rx *= s; ry *= s
    denom = (rx**2*y1p**2 + ry**2*x1p**2)
    num = max(0.0, rx**2*ry**2 - denom)
    co = math.sqrt(num/denom) if denom != 0 else 0.0
    if large == sweep:
        co = -co
    cxp = co * rx * y1p / ry
    cyp = -co * ry * x1p / rx
    cx = cosp*cxp - sinp*cyp + (x0 + x)/2.0
    cy = sinp*cxp + cosp*cyp + (y0 + y)/2.0
    def ang(ux, uy, vx, vy):
        d = math.hypot(ux, uy)*math.hypot(vx, vy)
        c = max(-1.0, min(1.0, (ux*vx+uy*vy)/d)) if d else 1.0
        a = math.acos(c)
        if ux*vy - uy*vx < 0:
            a = -a
        return a
    th1 = ang(1, 0, (x1p-cxp)/rx, (y1p-cyp)/ry)
    dth = ang((x1p-cxp)/rx, (y1p-cyp)/ry, (-x1p-cxp)/rx, (-y1p-cyp)/ry)
    if not sweep and dth > 0:
        dth -= 2*math.pi
    if sweep and dth < 0:
        dth += 2*math.pi
    n = max(2, int(abs(dth)/(math.pi/16)) + 1)
    pts = []
    for i in range(1, n + 1):
        t = th1 + dth*i/n
        ex = cosp*rx*math.cos(t) - sinp*ry*math.sin(t) + cx
        ey = sinp*rx*math.cos(t) + cosp*ry*math.sin(t) + cy
        pts.append((ex, ey))
    return pts

def parse_path(d):
    # -> list of (points, closed)
    toks = re.findall(r"[MmLlHhVvCcSsQqTtAaZz]|[-+]?(?:\d*\.\d+|\d+\.?)(?:[eE][-+]?\d+)?", d)
    i = 0
    subs = []
    cur = []
    cx = cy = sx = sy = 0.0
    prev_c2 = None
    prev_q1 = None
    cmd = None
    def rd():
        nonlocal i
        v = float(toks[i]); i += 1; return v
    while i < len(toks):
        t = toks[i]
        if re.match(r"[A-Za-z]", t):
            cmd = t; i += 1
        # implicit repeat keeps cmd
        rel = cmd.islower()
        C_ = cmd.upper()
        if C_ == "M":
            x = rd(); y = rd()
            if rel: x += cx; y += cy
            if cur: subs.append((cur, False))
            cur = [(x, y)]; cx, cy = x, y; sx, sy = x, y
            cmd = "l" if rel else "L"
        elif C_ == "L":
            x = rd(); y = rd()
            if rel: x += cx; y += cy
            cur.append((x, y)); cx, cy = x, y
        elif C_ == "H":
            x = rd()
            if rel: x += cx
            cur.append((x, cy)); cx = x
        elif C_ == "V":
            y = rd()
            if rel: y += cy
            cur.append((cx, y)); cy = y
        elif C_ == "C":
            x1 = rd(); y1 = rd(); x2 = rd(); y2 = rd(); x = rd(); y = rd()
            if rel: x1+=cx;y1+=cy;x2+=cx;y2+=cy;x+=cx;y+=cy
            cur += sample_cubic((cx,cy),(x1,y1),(x2,y2),(x,y))
            prev_c2 = (x2, y2); cx, cy = x, y
        elif C_ == "S":
            x2 = rd(); y2 = rd(); x = rd(); y = rd()
            if rel: x2+=cx;y2+=cy;x+=cx;y+=cy
            x1, y1 = (2*cx-prev_c2[0], 2*cy-prev_c2[1]) if prev_c2 else (cx, cy)
            cur += sample_cubic((cx,cy),(x1,y1),(x2,y2),(x,y))
            prev_c2 = (x2, y2); cx, cy = x, y
        elif C_ == "Q":
            x1 = rd(); y1 = rd(); x = rd(); y = rd()
            if rel: x1+=cx;y1+=cy;x+=cx;y+=cy
            cur += sample_quad((cx,cy),(x1,y1),(x,y))
            prev_q1 = (x1, y1); cx, cy = x, y
        elif C_ == "T":
            x = rd(); y = rd()
            if rel: x+=cx;y+=cy
            x1, y1 = (2*cx-prev_q1[0], 2*cy-prev_q1[1]) if prev_q1 else (cx, cy)
            cur += sample_quad((cx,cy),(x1,y1),(x,y))
            prev_q1 = (x1, y1); cx, cy = x, y
        elif C_ == "A":
            rx = rd(); ry = rd(); rot = rd(); laf = rd(); sf = rd(); x = rd(); y = rd()
            if rel: x+=cx;y+=cy
            cur += arc_points(cx, cy, rx, ry, rot, int(laf), int(sf), x, y)
            cx, cy = x, y
        elif C_ == "Z":
            if cur:
                subs.append((cur, True))
            cur = [(sx, sy)]; cx, cy = sx, sy
        else:
            i += 1
        if C_ not in ("C", "S"): prev_c2 = None
        if C_ not in ("Q", "T"): prev_q1 = None
    if cur and len(cur) > 1:
        subs.append((cur, False))
    return subs

def circle_pts(cx, cy, rx, ry, n=64):
    return [(cx + rx*math.cos(2*math.pi*k/n), cy + ry*math.sin(2*math.pi*k/n)) for k in range(n)]

def rounded_rect_pts(x, y, w, h, rx, ry):
    if rx <= 0: rx = 0.0001
    if ry <= 0: ry = rx
    pts = []
    def arc(cx, cy, a0, a1, n=10):
        for k in range(n+1):
            a = a0 + (a1-a0)*k/n
            pts.append((cx+rx*math.cos(a), cy+ry*math.sin(a)))
    arc(x+w-rx, y+ry, -math.pi/2, 0)
    arc(x+w-rx, y+h-ry, 0, math.pi/2)
    arc(x+rx, y+h-ry, math.pi/2, math.pi)
    arc(x+rx, y+ry, math.pi, 3*math.pi/2)
    return pts

def strip(tag):
    return tag.split("}")[-1]

def elem_subpaths(el):
    import xml.etree.ElementTree as ET
    t = strip(el.tag); a = el.attrib
    g = lambda k, d=0.0: float(a.get(k, d))
    if t == "path":
        return parse_path(a.get("d", ""))
    if t == "line":
        return [([(g("x1"), g("y1")), (g("x2"), g("y2"))], False)]
    if t == "polyline":
        v = nums(a.get("points", "")); pts = list(zip(v[0::2], v[1::2]))
        return [(pts, False)] if pts else []
    if t == "polygon":
        v = nums(a.get("points", "")); pts = list(zip(v[0::2], v[1::2]))
        return [(pts, True)] if pts else []
    if t == "circle":
        return [(circle_pts(g("cx"), g("cy"), g("r"), g("r")), True)]
    if t == "ellipse":
        return [(circle_pts(g("cx"), g("cy"), g("rx"), g("ry")), True)]
    if t == "rect":
        rx = g("rx", 0); ry = g("ry", rx)
        return [(rounded_rect_pts(g("x"), g("y"), g("width"), g("height"), rx, ry), True)]
    return []

def rasterize(svg, path):
    import xml.etree.ElementTree as ET
    root = ET.fromstring(svg)
    subs = []
    for el in root.iter():
        subs += elem_subpaths(el)
    img = Image.new("RGBA", (C, C), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)
    w = max(1, int(round(STROKE)))
    r = STROKE / 2.0
    WHITE = (255, 255, 255, 255)
    for pts, closed in subs:
        P = [(x*SCALE, y*SCALE) for x, y in pts]
        if closed and len(P) >= 1:
            P = P + [P[0]]
        if len(P) >= 2:
            d.line(P, fill=WHITE, width=w, joint="curve")
        for (x, y) in P:           # discs = round caps/joins => trait rond fidele
            d.ellipse([x-r, y-r, x+r, y+r], fill=WHITE)
    img.resize((SIZE, SIZE), Image.LANCZOS).save(path)

# ---------------- Icones ----------------
print("== ICONES LUCIDE ==")
for fname, lucide in ICONS:
    try:
        svg = fetch_svg(lucide)
        rasterize(svg, f"{OUT}/{fname}.png")
        print(f"OK  {fname:12s} <- {lucide}")
    except Exception as e:
        print(f"ERR {fname:12s} <- {lucide} : {type(e).__name__} {e}")

# ---------------- Icone GitHub (logo de marque, silhouette PLEINE) ----------------
# Lucide n'a plus l'icone "github" -> on embarque le "mark" officiel (viewBox 24)
# et on le rasterise en REMPLISSAGE (les icones Lucide sont en trait).
GITHUB_D = ("M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577"
            " 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7"
            "c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998"
            ".108-.776.417-1.305.76-1.605-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221"
            "-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23A11.509 11.509 0 0 1 12 5.803"
            "c1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176"
            ".77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222"
            " 0 1.606-.014 2.898-.014 3.293 0 .322.216.694.825.576C20.565 22.092 24 17.592 24 12.297"
            "c0-6.627-5.373-12-12-12")

def render_filled(d, path):
    subs = parse_path(d)
    img = Image.new("RGBA", (C, C), (0, 0, 0, 0))
    dr = ImageDraw.Draw(img)
    for pts, _closed in subs:
        P = [(x * SCALE, y * SCALE) for x, y in pts]
        if len(P) >= 3:
            dr.polygon(P, fill=(255, 255, 255, 255))
    img.resize((SIZE, SIZE), Image.LANCZOS).save(path)

render_filled(GITHUB_D, f"{OUT}/ic_github.png"); print("OK  ic_github (rempli)")

# ---------------- Drapeaux ----------------
def save_rgba(arr, path):
    Image.fromarray(arr, "RGBA").save(path)

def flag_fr(w=192, h=128):
    a = np.zeros((h, w, 4), np.uint8); a[..., 3] = 255
    a[:, :w//3] = (0, 35, 149, 255)       # bleu
    a[:, w//3:2*w//3] = (255, 255, 255, 255)
    a[:, 2*w//3:] = (237, 41, 57, 255)    # rouge
    return a

def flag_uk(w=192, h=128):
    a = np.zeros((h, w, 4), np.uint8); a[..., 3] = 255
    a[:] = (1, 33, 105, 255)              # bleu fond
    cx, cy = w/2, h/2
    Y, X = np.mgrid[0:h, 0:w]
    # diagonales blanches (St Andrew) + rouge (St Patrick)
    d1 = np.abs((X - 0) * h - (Y - 0) * w)
    d2 = np.abs((X - 0) * h - ( (h-1) - Y) * w * (-1))  # placeholder
    # plus simple : tracer via distances aux deux diagonales
    diagA = np.abs(Y/h - X/w)           # \ diagonale
    diagB = np.abs(Y/h - (1 - X/w))     # / diagonale
    white_d = (np.minimum(diagA, diagB) < 0.12)
    red_d = (np.minimum(diagA, diagB) < 0.05)
    a[white_d] = (255, 255, 255, 255)
    a[red_d] = (200, 16, 46, 255)
    # croix blanche centrale (St George fond blanc)
    bw = int(h*0.30)
    a[int(cy-bw/2):int(cy+bw/2), :] = (255, 255, 255, 255)
    a[:, int(cx-bw/2*h/w*1.0):int(cx+bw/2*h/w*1.0)] = (255, 255, 255, 255)
    # croix rouge centrale (St George)
    rw = int(h*0.16)
    a[int(cy-rw/2):int(cy+rw/2), :] = (200, 16, 46, 255)
    a[:, int(cx-rw/2):int(cx+rw/2)] = (200, 16, 46, 255)
    return a

# flag_fr / flag_uk : desormais generes par build_lang_flags.py (vrais drapeaux
# flagcdn, comme flag_es/flag_de/flag_it) — on ne les ecrase plus ici.

# ---------------- Fond gradient plein ecran ----------------
def bg_gradient(w=640, h=360):
    top = np.array([36, 52, 92]);    # #24345C sombre haut
    mid = np.array([26, 36, 66])     # #1A2442
    bot = np.array([14, 20, 40])     # #0E1428 tres sombre bas
    a = np.zeros((h, w, 4), np.uint8); a[..., 3] = 255
    for y in range(h):
        t = y/(h-1)
        if t < 0.5:
            c = top*(1-t*2) + mid*(t*2)
        else:
            c = mid*(1-(t-0.5)*2) + bot*((t-0.5)*2)
        a[y, :, :3] = c.astype(np.uint8)
    # leger halo radial central
    Y, X = np.mgrid[0:h, 0:w]
    r = np.sqrt(((X-w*0.5)/(w*0.6))**2 + ((Y-h*0.42)/(h*0.6))**2)
    glow = np.clip(1-r, 0, 1)[..., None]*np.array([30, 26, 70])
    a[..., :3] = np.clip(a[..., :3].astype(int) + glow.astype(int), 0, 255).astype(np.uint8)
    return a

save_rgba(bg_gradient(), f"{OUT}/bg_lobby.png"); print("OK  bg_lobby")

# ---------------- Point (dot) blanc plein, anti-aliase ----------------
def dot(d=64, ss=4):
    big = Image.new("RGBA", (d*ss, d*ss), (0, 0, 0, 0))
    dr = ImageDraw.Draw(big)
    dr.ellipse([0, 0, d*ss-1, d*ss-1], fill=(255, 255, 255, 255))
    return big.resize((d, d), Image.LANCZOS)

dot().save(f"{OUT}/dot.png"); print("OK  dot")
print(f"\nTermine -> {OUT}")
