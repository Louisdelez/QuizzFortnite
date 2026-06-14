#!/usr/bin/env python3
# ============================================================
#  build_map_gltf.py — Genere le COULOIR 3D du quiz (quiz_map.glb)
#  Couloir ferme (sol + 2 murs + plafond) et, a chaque question, un
#  MUR plein perce de 4 VRAIES PORTES colorees A/B/C/D que le joueur
#  TRAVERSE pour repondre.
#
#  COULEURS : via TEXTURES PNG EMBARQUEES (+ baseColorFactor en secours).
#  C'est la SEULE methode qu'UEFN lit de facon fiable : il ignore souvent
#  le baseColorFactor seul, mais applique bien une baseColorTexture.
#  -> couleurs garanties. Les portes ont aussi une emissiveTexture pour
#  briller de leur couleur dans le couloir sombre.
#
#  Couleurs A/B/C/D calees EXACTEMENT sur le HUD (quiz_hud.verse) :
#    A = FF3D57 (rouge)  B = 2E9BFF (bleu)  C = 23D26A (vert)  D = FFC21F (jaune)
#
#  Coords IDENTIQUES a map_builder.verse (detection cote quiz_manager).
# ============================================================
import struct, json, zlib
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

# --- Constantes (cm) : DOIVENT matcher map_builder.verse ---
SEG = 1024.0; LANE = 300.0; NLANE = 4; GR = 0.85; SP = 768.0; EP = 768.0
N = 25
M = 0.01  # cm -> m (glTF en metres ; UEFN reimporte en cm a l'echelle 1)

# --- Dimensions couloir / portes (cm) ---
HALFW = 700.0      # demi-largeur interieure du couloir (axe Y)
WALL_H = 470.0     # hauteur des murs / du mur de portes
WALL_T = 40.0      # epaisseur des murs lateraux
GATE_T = 90.0      # profondeur (axe X) du mur de portes = profondeur du "tunnel" colore
DOOR_H = 340.0     # hauteur de l'ouverture d'une porte
DOOR_HALF = 90.0   # demi-largeur de l'OUVERTURE d'une porte (axe Y)
FRAME_W = 55.0     # largeur des montants/linteau colores (axe Y)

def laneY(i): return (i - (NLANE - 1) / 2.0) * LANE
def gateX(q): return q * SEG + SEG * GR
Xstart = -SP; Xend = N * SEG + EP; midX = (Xstart + Xend) / 2.0; lenX = Xend - Xstart

# ------------------------------------------------------------
#  Materiaux : (r, g, b, emissive)  -- emissive = intensite du glow (0..N)
# ------------------------------------------------------------
def hexrgb(h):
    return (int(h[0:2], 16) / 255.0, int(h[2:4], 16) / 255.0, int(h[4:6], 16) / 255.0)

A = hexrgb("FF3D57"); B = hexrgb("2E9BFF"); C = hexrgb("23D26A"); D = hexrgb("FFC21F")

# IMPORTANT : aucune valeur d'emissif > 1.0 -> on n'active JAMAIS l'extension
# KHR_materials_emissive_strength, qu'UEFN importe mal (cassait la couleur des portes).
# La couleur vient du baseColorTexture (lu de facon fiable) ; l'emissif (<1) ajoute
# un petit glow et reste le MEME type de materiau que les murs (qui se colorent bien).
colors = [
    (0.58, 0.62, 0.70, 0.25),   # 0 Sol (clair)
    (0.34, 0.40, 0.54, 0.20),   # 1 Mur lateral (bleu nuit)
    (0.50, 0.54, 0.66, 0.40),   # 2 Plafond (glow -> un peu de lumiere)
    (0.26, 0.30, 0.42, 0.15),   # 3 Cloison (mur de portes)
    (0.12, 0.90, 0.32, 0.70),   # 4 Depart (vert)
    (1.00, 0.80, 0.10, 0.70),   # 5 Arrivee (or)
    (A[0], A[1], A[2], 0.90),   # 6 Porte A (rouge)
    (B[0], B[1], B[2], 0.90),   # 7 Porte B (bleu)
    (C[0], C[1], C[2], 0.90),   # 8 Porte C (vert)
    (D[0], D[1], D[2], 0.90),   # 9 Porte D (jaune)
]
# Noms calees sur les materiaux colores DEJA crees dans UEFN (quiz_map/Materials)
# pour qu'UEFN relie automatiquement chaque slot a son materiau au reimport.
MATNAMES = ['Sol', 'Mur', 'Plafond', 'Cloison', 'Depart', 'Arrivee',
            'Rep_A', 'Rep_B', 'Rep_C', 'Rep_D']

prims = [{'v': [], 'n': [], 'uv': [], 'i': []} for _ in colors]

FACES = [
    ((0, 0, 1),  [(-1, -1, 1), (1, -1, 1), (1, 1, 1), (-1, 1, 1)]),
    ((0, 0, -1), [(-1, 1, -1), (1, 1, -1), (1, -1, -1), (-1, -1, -1)]),
    ((1, 0, 0),  [(1, -1, -1), (1, 1, -1), (1, 1, 1), (1, -1, 1)]),
    ((-1, 0, 0), [(-1, 1, -1), (-1, -1, -1), (-1, -1, 1), (-1, 1, 1)]),
    ((0, 1, 0),  [(1, 1, -1), (-1, 1, -1), (-1, 1, 1), (1, 1, 1)]),
    ((0, -1, 0), [(-1, -1, -1), (1, -1, -1), (1, -1, 1), (-1, -1, 1)]),
]

def add_box(m, cx, cy, cz, sx, sy, sz):
    P = prims[m]
    hx, hy, hz = sx / 2.0, sy / 2.0, sz / 2.0
    for (nrm, corners) in FACES:
        base = len(P['v'])
        ng = (nrm[0], nrm[2], nrm[1])   # swap Y/Z (glTF Y-up)
        for c in corners:
            ux = cx + c[0] * hx; uy = cy + c[1] * hy; uz = cz + c[2] * hz
            P['v'].append((ux * M, uz * M, uy * M))
            P['n'].append(ng)
            P['uv'].append((0.5, 0.5))   # texture unie -> UV au centre
        # Le swap Y/Z (reflexion) inverse le sens des triangles : on emet donc le
        # winding INVERSE pour que les faces exterieures soient vues correctement
        # par le rendu une-face d'UEFN. UN SEUL triangle par face (pas de doublon
        # superpose) -> pas de z-fighting / scintillement.
        P['i'] += [base, base + 2, base + 1, base, base + 3, base + 2]

# --- Couloir OUVERT EN HAUT : sol + 2 murs lateraux (PAS de plafond) ---
#  Sans plafond, le ciel/soleil de la map eclaire l'interieur => lumiere du jour
#  comme a l'exterieur. Les murs empechent de sortir sur les cotes.
add_box(0, midX, 0.0, -10.0, lenX, 2 * HALFW, 20.0)               # sol
add_box(1, midX, -HALFW, WALL_H / 2.0, lenX, WALL_T, WALL_H)      # mur gauche
add_box(1, midX,  HALFW, WALL_H / 2.0, lenX, WALL_T, WALL_H)      # mur droit
# Murs de bout (ferment le couloir derriere le depart et au fond). Largeur = entre les
# faces internes des murs lateraux -> tuile sans chevauchement (pas de z-fighting).
EndW = 2.0 * (HALFW - WALL_T / 2.0)
add_box(1, Xstart + WALL_T / 2.0, 0.0, WALL_H / 2.0, WALL_T, EndW, WALL_H)  # mur du fond (depart)
add_box(1, Xend - WALL_T / 2.0, 0.0, WALL_H / 2.0, WALL_T, EndW, WALL_H)    # mur du fond (arrivee)
add_box(4, -SP / 2.0, 0.0, 12.0, 320.0, 700.0, 16.0)             # dalle depart
add_box(5, Xend - 300.0, 0.0, 12.0, 400.0, 1100.0, 16.0)        # dalle arrivee

# --- Salle de SPAWN (lobby) derriere le depart, ouverte en haut ---
#  Les joueurs spawnent ici, interagissent (E) avec le socle central, puis sont
#  teleportes dans le couloir. Coords exposees pour le Verse (LobbyCenter/LobbySpawn).
ROOM_LEN = 1200.0          # profondeur (X)
ROOM_W = 1200.0            # largeur (Y)
ROOM_H = 470.0
ROOM_GAP = 200.0           # espace entre la salle et le mur de fond du couloir
RX1 = Xstart - ROOM_GAP                 # face cote couloir
RX0 = RX1 - ROOM_LEN                    # mur du fond de la salle
RHW = ROOM_W / 2.0
Rcx = (RX0 + RX1) / 2.0                 # centre X de la salle
add_box(0, Rcx, 0.0, -10.0, ROOM_LEN, ROOM_W, 20.0)                          # sol
add_box(1, Rcx, -RHW, ROOM_H / 2.0, ROOM_LEN, WALL_T, ROOM_H)                # mur Y-
add_box(1, Rcx,  RHW, ROOM_H / 2.0, ROOM_LEN, WALL_T, ROOM_H)                # mur Y+
add_box(1, RX0, 0.0, ROOM_H / 2.0, WALL_T, ROOM_W - 2 * WALL_T, ROOM_H)      # mur du fond
add_box(1, RX1, 0.0, ROOM_H / 2.0, WALL_T, ROOM_W - 2 * WALL_T, ROOM_H)      # mur cote couloir
# Socle central colore (pose le device Button dessus) : base + dessus qui brille.
add_box(3, Rcx, 0.0, 60.0, 200.0, 200.0, 120.0)                              # base (cloison sombre)
add_box(4, Rcx, 0.0, 124.0, 210.0, 210.0, 12.0)                             # dessus vert brillant

# --- Murs de portes : mur PAVE sans chevauchement, perce de 4 portes colorees ---
#  Tout (remplissage sombre + cadres colores) est a la MEME profondeur (GATE_T) et
#  se touche BORD A BORD (jamais superpose) -> aucun z-fighting / scintillement.
for q in range(N):
    gx = gateX(q)
    op = [(laneY(i) - DOOR_HALF, laneY(i) + DOOR_HALF) for i in range(NLANE)]            # ouvertures
    fr = [(laneY(i) - DOOR_HALF - FRAME_W, laneY(i) + DOOR_HALF + FRAME_W) for i in range(NLANE)]  # cadres

    # 1) Remplissage SOMBRE (Cloison) : bords + entre les cadres, pleine hauteur. Tuile avec les cadres.
    fillers = [(-HALFW, fr[0][0])]
    for i in range(NLANE - 1):
        fillers.append((fr[i][1], fr[i + 1][0]))
    fillers.append((fr[-1][1], HALFW))
    for (y0, y1) in fillers:
        if y1 - y0 > 1.0:
            add_box(3, gx, (y0 + y1) / 2.0, WALL_H / 2.0, GATE_T, y1 - y0, WALL_H)

    # 2) Cadre COLORE par porte : 2 montants pleine hauteur + linteau au-dessus de l'ouverture.
    #    Memes profondeur/plan que le remplissage -> pavage parfait, ouverture libre pour passer.
    for i in range(NLANE):
        m = 6 + i
        (oy0, oy1) = op[i]
        (fy0, fy1) = fr[i]
        # montant gauche : de fy0 a oy0, pleine hauteur
        add_box(m, gx, (fy0 + oy0) / 2.0, WALL_H / 2.0, GATE_T, oy0 - fy0, WALL_H)
        # montant droit : de oy1 a fy1, pleine hauteur
        add_box(m, gx, (oy1 + fy1) / 2.0, WALL_H / 2.0, GATE_T, fy1 - oy1, WALL_H)
        # linteau : au-dessus de l'ouverture (DOOR_H -> sommet), largeur de l'ouverture
        add_box(m, gx, (oy0 + oy1) / 2.0, (DOOR_H + WALL_H) / 2.0, GATE_T, oy1 - oy0, WALL_H - DOOR_H)

# ------------------------------------------------------------
#  Texture PNG unie (8x8) par couleur -> methode lue de facon fiable par UEFN.
# ------------------------------------------------------------
def solid_png(r, g, b):
    w = h = 8
    row = bytes((int(round(r * 255)), int(round(g * 255)), int(round(b * 255)))) * w
    raw = bytearray()
    for _ in range(h):
        raw.append(0); raw += row
    def chunk(tag, data):
        return struct.pack(">I", len(data)) + tag + data + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)
    ihdr = struct.pack(">IIBBBBB", w, h, 8, 2, 0, 0, 0)  # 8 bits, RGB
    return b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(bytes(raw), 9)) + chunk(b"IEND", b"")

# ============================================================
#  Ecriture du .glb (binaire glTF 2.0)
# ============================================================
bin_data = bytearray()
bufferViews, accessors, meshprims, materials, images, textures = [], [], [], [], [], []

def align4():
    while len(bin_data) % 4 != 0:
        bin_data.append(0)

for mi, P in enumerate(prims):
    if not P['v']:
        meshprims.append(None); continue
    align4(); off = len(bin_data)
    mn = [1e30] * 3; mx = [-1e30] * 3
    for v in P['v']:
        for k in range(3): mn[k] = min(mn[k], v[k]); mx[k] = max(mx[k], v[k])
        bin_data += struct.pack('<3f', *v)
    pos_acc = len(accessors)
    bufferViews.append({'buffer': 0, 'byteOffset': off, 'byteLength': len(bin_data) - off, 'target': 34962})
    accessors.append({'bufferView': len(bufferViews) - 1, 'componentType': 5126, 'count': len(P['v']), 'type': 'VEC3', 'min': mn, 'max': mx})

    align4(); off = len(bin_data)
    for n in P['n']: bin_data += struct.pack('<3f', *n)
    nrm_acc = len(accessors)
    bufferViews.append({'buffer': 0, 'byteOffset': off, 'byteLength': len(bin_data) - off, 'target': 34962})
    accessors.append({'bufferView': len(bufferViews) - 1, 'componentType': 5126, 'count': len(P['n']), 'type': 'VEC3'})

    align4(); off = len(bin_data)
    for uv in P['uv']: bin_data += struct.pack('<2f', *uv)
    uv_acc = len(accessors)
    bufferViews.append({'buffer': 0, 'byteOffset': off, 'byteLength': len(bin_data) - off, 'target': 34962})
    accessors.append({'bufferView': len(bufferViews) - 1, 'componentType': 5126, 'count': len(P['uv']), 'type': 'VEC2'})

    align4(); off = len(bin_data)
    for ix in P['i']: bin_data += struct.pack('<I', ix)
    idx_acc = len(accessors)
    bufferViews.append({'buffer': 0, 'byteOffset': off, 'byteLength': len(bin_data) - off, 'target': 34963})
    accessors.append({'bufferView': len(bufferViews) - 1, 'componentType': 5125, 'count': len(P['i']), 'type': 'SCALAR'})

    meshprims.append({'attributes': {'POSITION': pos_acc, 'NORMAL': nrm_acc, 'TEXCOORD_0': uv_acc}, 'indices': idx_acc, 'material': mi})

# images (PNG) embarquees dans le buffer binaire
for mi in range(len(colors)):
    r, g, b, e = colors[mi]
    png = solid_png(r, g, b)
    align4(); off = len(bin_data); bin_data += png
    bufferViews.append({'buffer': 0, 'byteOffset': off, 'byteLength': len(png)})
    images.append({'bufferView': len(bufferViews) - 1, 'mimeType': 'image/png'})
    textures.append({'sampler': 0, 'source': mi})

# materiaux : baseColorTexture (lu par UEFN) + baseColorFactor (secours) + emissiveTexture si glow
use_emissive_strength = False
for mi in range(len(colors)):
    r, g, b, e = colors[mi]
    mat = {
        'name': MATNAMES[mi],
        'pbrMetallicRoughness': {
            'baseColorTexture': {'index': mi},
            'baseColorFactor': [r, g, b, 1.0],
            'metallicFactor': 0.0, 'roughnessFactor': 0.85,
        },
        'doubleSided': True,
    }
    if e > 0.0:
        mat['emissiveTexture'] = {'index': mi}
        # COULEUR dans emissiveFactor (et pas du blanc) : robuste meme si UEFN
        # ignore l'emissiveTexture. e<=1 -> glow tamise colore ; e>1 -> pleine
        # couleur + KHR_materials_emissive_strength pour la puissance.
        s = e if e <= 1.0 else 1.0
        mat['emissiveFactor'] = [r * s, g * s, b * s]
        if e > 1.0:
            use_emissive_strength = True
            mat['extensions'] = {'KHR_materials_emissive_strength': {'emissiveStrength': e}}
    materials.append(mat)

gltf = {
    'asset': {'version': '2.0', 'generator': 'QuizzFortnite couloir+portes (textures)'},
    'scene': 0, 'scenes': [{'nodes': [0]}],
    'nodes': [{'mesh': 0, 'name': 'QuizMap'}],
    'meshes': [{'primitives': [p for p in meshprims if p], 'name': 'QuizMap'}],
    'materials': materials,
    'images': images, 'textures': textures,
    'samplers': [{'magFilter': 9729, 'minFilter': 9729, 'wrapS': 33071, 'wrapT': 33071}],
    'accessors': accessors, 'bufferViews': bufferViews,
    'buffers': [{'byteLength': len(bin_data)}],
}
if use_emissive_strength:
    gltf['extensionsUsed'] = ['KHR_materials_emissive_strength']

json_bytes = json.dumps(gltf).encode('utf-8')
while len(json_bytes) % 4 != 0:
    json_bytes += b' '
align4()
total = 12 + 8 + len(json_bytes) + 8 + len(bin_data)
out = bytearray()
out += struct.pack('<III', 0x46546C67, 2, total)
out += struct.pack('<II', len(json_bytes), 0x4E4F534A) + json_bytes
out += struct.pack('<II', len(bin_data), 0x004E4942) + bytes(bin_data)

# On ecrit les DEUX noms (quiz_map.glb est celui importe dans UEFN).
for path in (f'{_ROOT}/quiz_map.glb', f'{_ROOT}/quiz_couloir.glb'):
    with open(path, 'wb') as f:
        f.write(out)

print('OK quiz_map.glb + quiz_couloir.glb (couloir + 4 portes, TEXTURES embarquees) :', total, 'octets')
print(len([p for p in meshprims if p]), 'primitives ;', len(images), 'textures couleur ;', N, 'murs de portes')
