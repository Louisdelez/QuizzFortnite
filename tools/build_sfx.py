#!/usr/bin/env python3
# ============================================================
#  build_sfx.py — Pack d'effets sonores ORIGINAUX du quizz
#  Synthese pure (sinusoides/arpeges/bruit filtre) -> WAV 16-bit
#  44.1 kHz mono, prets pour UEFN. Aucune dependance externe.
#  Sortie : sfx/sfx_*.wav
# ============================================================
import math, os, random, struct, wave

OUT = "D:/QuizzFortnite/sfx"
os.makedirs(OUT, exist_ok=True)
SR = 44100

def env(t, dur, a=0.005, r=0.10):
    # enveloppe attaque/relachement simple
    if t < a: return t / a
    if t > dur - r: return max(0.0, (dur - t) / r)
    return 1.0

def render(name, dur, fn, gain=0.8):
    n = int(SR * dur)
    frames = bytearray()
    for i in range(n):
        t = i / SR
        v = max(-1.0, min(1.0, fn(t) * gain))
        frames += struct.pack("<h", int(v * 32767))
    with wave.open(f"{OUT}/{name}.wav", "wb") as w:
        w.setnchannels(1); w.setsampwidth(2); w.setframerate(SR)
        w.writeframes(bytes(frames))
    print(f"OK {name}.wav  ({dur:.2f}s)")

def sine(f, t): return math.sin(2 * math.pi * f * t)
def square(f, t): return 1.0 if math.sin(2 * math.pi * f * t) >= 0 else -1.0

rng = random.Random(42)
NOISE = [rng.uniform(-1, 1) for _ in range(SR * 2)]
def noise(t): return NOISE[int(t * SR) % len(NOISE)]

# ---- clic UI : tic bref et net ----
render("sfx_click", 0.06, lambda t: sine(1300, t) * env(t, 0.06, 0.002, 0.04), 0.5)

# ---- bonne reponse : arpege majeur montant (C5 E5 G5 C6) ----
def correct(t):
    notes = [523.25, 659.25, 783.99, 1046.5]
    seg = 0.11
    i = min(int(t / seg), 3)
    lt = t - i * seg
    return (sine(notes[i], t) + 0.35 * sine(notes[i] * 2, t)) * env(lt, seg + 0.10, 0.004, 0.09)
render("sfx_correct", 0.55, correct, 0.7)

# ---- mauvaise reponse : buzz grave descendant ----
def wrong(t):
    f = 150 - 60 * t
    return (square(f, t) * 0.6 + square(f * 1.01, t) * 0.4) * env(t, 0.5, 0.005, 0.20)
render("sfx_wrong", 0.5, wrong, 0.55)

# ---- tic du chrono (5 dernieres secondes) ----
render("sfx_tick", 0.05, lambda t: sine(1000, t) * env(t, 0.05, 0.002, 0.03), 0.55)

# ---- gain de bouclier : shimmer montant ----
def shield(t):
    f = 600 + 1400 * (t / 0.4)
    spark = 0.25 * sine(2400 + 800 * math.sin(40 * t), t)
    return (sine(f, t) + spark) * env(t, 0.4, 0.01, 0.18)
render("sfx_shield", 0.4, shield, 0.55)

# ---- temps ecoule : deux tons descendants ----
def timeout(t):
    f = 660 if t < 0.28 else 440
    lt = t if t < 0.28 else t - 0.28
    return sine(f, t) * env(lt, 0.30, 0.005, 0.12)
render("sfx_timeout", 0.6, timeout, 0.6)

# ---- fanfare de fin de round : arpege + accord tenu ----
def fanfare(t):
    notes = [523.25, 659.25, 783.99]
    seg = 0.14
    if t < 3 * seg:
        i = int(t / seg)
        lt = t - i * seg
        return (sine(notes[i], t) + 0.3 * sine(notes[i] * 2, t)) * env(lt, seg + 0.05, 0.005, 0.05)
    lt = t - 3 * seg
    chord = sine(523.25, t) + sine(659.25, t) + sine(783.99, t) + 0.5 * sine(1046.5, t)
    vib = 1.0 + 0.01 * math.sin(2 * math.pi * 5.5 * lt)
    return chord * 0.32 * vib * env(lt, 1.1, 0.01, 0.45)
render("sfx_fanfare", 1.5, fanfare, 0.7)

# ---- montee de RANG : fanfare ascendante eclatante ----
def rankup(t):
    notes = [392.0, 523.25, 659.25, 783.99, 1046.5]
    seg = 0.12
    if t < 5 * seg:
        i = int(t / seg)
        lt = t - i * seg
        return (sine(notes[i], t) + 0.4 * sine(notes[i] * 1.5, t)) * env(lt, seg + 0.06, 0.004, 0.06)
    lt = t - 5 * seg
    chord = sine(783.99, t) + sine(1046.5, t) + 0.6 * sine(1318.5, t)
    return chord * 0.35 * env(lt, 0.7, 0.01, 0.35)
render("sfx_rankup", 1.3, rankup, 0.7)

# ---- degats (perte de vie) : impact sourd ----
def hit(t):
    f = 110 * math.exp(-6 * t)
    return (sine(f + 60, t) * 0.7 + noise(t) * 0.3 * math.exp(-18 * t)) * env(t, 0.3, 0.002, 0.15)
render("sfx_hit", 0.3, hit, 0.7)

# ---- whoosh de porte franchie ----
def door(t):
    cutoff = math.exp(-7 * abs(t - 0.12))
    return noise(t) * cutoff * env(t, 0.3, 0.02, 0.15)
render("sfx_door", 0.3, door, 0.45)

print(f"\n10 sons generes dans {OUT}")
