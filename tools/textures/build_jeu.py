#!/usr/bin/env python3
# Genere les textures arrondies du HUD (1 par taille de panneau, a la resolution native
# -> ratio 1:1 dans texture_block => coins NETS, identiques au design, sans deformation).
# Image blanche (teintee ensuite en Verse via DefaultTint), coins arrondis anti-alises,
# alpha interieur configurable (panneaux translucides vs cles opaques).
import struct, zlib, os
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

OUT = f"{_ROOT}/assets/jeu"
os.makedirs(OUT, exist_ok=True)

# (nom, largeur, hauteur, rayon, alpha_interieur 0-255)  -- doit matcher quiz_hud.verse
PANELS = [
    ("hud_banner", 1040, 168, 22, 235),   # bandeau question
    ("hud_board",   360, 320, 22, 235),   # leaderboard
    ("hud_card",    300,  74, 16, 235),   # carte reponse A/B/C/D
    ("hud_key",      54,  54, 13, 255),   # carre lettre (opaque)
    ("hud_timer",   150, 104, 16, 235),   # chrono
    ("hud_chip",    300,  46, 23, 255),   # pastille QUESTION (pill, opaque)
]

SS = 4  # supersampling pour l'anti-aliasing

def covered(px, py, w, h, r):
    # couverture 0..1 du pixel (px,py) par le rectangle arrondi, via supersampling SSxSS
    hits = 0
    for sy in range(SS):
        for sx in range(SS):
            x = px + (sx + 0.5) / SS
            y = py + (sy + 0.5) / SS
            # centre du coin le plus proche
            cx = min(max(x, r), w - r)
            cy = min(max(y, r), h - r)
            dx = x - cx
            dy = y - cy
            if dx * dx + dy * dy <= r * r:
                hits += 1
    return hits / (SS * SS)

def write_png(path, w, h, r, a_in):
    raw = bytearray()
    for y in range(h):
        raw.append(0)  # filtre None
        for x in range(w):
            c = covered(x, y, w, h, r)
            a = int(round(a_in * c))
            raw += bytes((255, 255, 255, a))  # blanc, alpha = couverture
    def chunk(tag, data):
        out = struct.pack(">I", len(data)) + tag + data
        crc = zlib.crc32(tag + data) & 0xFFFFFFFF
        return out + struct.pack(">I", crc)
    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", w, h, 8, 6, 0, 0, 0)  # 8 bits, RGBA
    idat = zlib.compress(bytes(raw), 9)
    with open(path, "wb") as f:
        f.write(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) + chunk(b"IEND", b""))

for name, w, h, r, a in PANELS:
    write_png(f"{OUT}/{name}.png", w, h, r, a)
    print(f"OK {name}.png  {w}x{h}  r={r}  alpha={a}")
print(f"\n{len(PANELS)} textures generees dans {OUT}")
