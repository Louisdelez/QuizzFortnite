#!/usr/bin/env python3
# Quizz "Espace" (image -> nom) : planetes, lunes, objets, sondes (photos NASA
# via Wikipedia, domaine public). (wiki, nom, t) ou (wiki, FR,EN,ES,DE,IT, t).
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

S = [
 ("Sun","Soleil","Sun","Sol","Sonne","Sole",0),
 ("Mercury (planet)","Mercure","Mercury","Mercurio","Merkur","Mercurio",0),
 ("Venus","Venus",0),
 ("Earth","Terre","Earth","Tierra","Erde","Terra",0),
 ("Moon","Lune","Moon","Luna","Mond","Luna",0),
 ("Mars","Mars","Mars","Marte","Mars","Marte",0),
 ("Jupiter","Jupiter","Jupiter","Jupiter","Jupiter","Giove",0),
 ("Saturn","Saturne","Saturn","Saturno","Saturn","Saturno",0),
 ("Uranus","Uranus","Uranus","Urano","Uranus","Urano",0),
 ("Neptune","Neptune","Neptune","Neptuno","Neptun","Nettuno",0),
 ("Pluto","Pluton","Pluto","Pluton","Pluto","Plutone",0),
 ("Milky Way","Voie lactee","Milky Way","Via Lactea","Milchstrasse","Via Lattea",0),
 ("Black hole","Trou noir","Black hole","Agujero negro","Schwarzes Loch","Buco nero",0),
 ("Comet","Comete","Comet","Cometa","Komet","Cometa",0),
 ("Asteroid","Asteroide","Asteroid","Asteroide","Asteroid","Asteroide",0),
 ("International Space Station","ISS",0),
 ("Hubble Space Telescope","Hubble",0),
 ("Apollo 11","Apollo 11",0),
 ("Saturn V","Saturn V",0),
 ("Space Shuttle","Navette spatiale","Space Shuttle","Transbordador espacial","Space Shuttle","Space Shuttle",0),
 ("Falcon 9","Falcon 9",0),
 ("Curiosity (rover)","Curiosity",0),
 ("Solar eclipse","Eclipse solaire","Solar eclipse","Eclipse solar","Sonnenfinsternis","Eclissi solare",0),
 ("Aurora","Aurore boreale","Aurora","Aurora boreal","Polarlicht","Aurora boreale",0),
 ("Big Bang","Big Bang",0),
 ("SpaceX Starship","Starship",0),
 # ---- palier 1 ----
 ("Io (moon)","Io",1),
 ("Europa (moon)","Europe","Europa","Europa","Europa","Europa",1),
 ("Ganymede (moon)","Ganymede","Ganymede","Ganimedes","Ganymed","Ganimede",1),
 ("Callisto (moon)","Callisto",1),
 ("Titan (moon)","Titan","Titan","Titan","Titan","Titano",1),
 ("Enceladus","Encelade","Enceladus","Encelado","Enceladus","Encelado",1),
 ("Triton (moon)","Triton","Triton","Triton","Triton","Tritone",1),
 ("Phobos (moon)","Phobos",1),
 ("Deimos (moon)","Deimos",1),
 ("Ceres (dwarf planet)","Ceres","Ceres","Ceres","Ceres","Cerere",1),
 ("Halley's Comet","Comete de Halley","Halley's Comet","Cometa Halley","Halleyscher Komet","Cometa di Halley",1),
 ("Andromeda Galaxy","Galaxie d'Andromede","Andromeda Galaxy","Galaxia de Andromeda","Andromedagalaxie","Galassia di Andromeda",1),
 ("Orion Nebula","Nebuleuse d'Orion","Orion Nebula","Nebulosa de Orion","Orionnebel","Nebulosa di Orione",1),
 ("Supernova","Supernova",1),
 ("White dwarf","Naine blanche","White dwarf","Enana blanca","Weisser Zwerg","Nana bianca",1),
 ("Neutron star","Etoile a neutrons","Neutron star","Estrella de neutrones","Neutronenstern","Stella di neutroni",1),
 ("James Webb Space Telescope","James Webb",1),
 ("Voyager 1","Voyager 1",1),
 ("Sputnik 1","Sputnik 1",1),
 ("Mir","Mir",1),
 ("Soyuz (spacecraft)","Soyouz","Soyuz","Soyuz","Sojus","Soyuz",1),
 ("Ariane 5","Ariane 5",1),
 ("Perseverance (rover)","Perseverance",1),
 ("Orion (constellation)","Orion","Orion","Orion","Orion","Orione",1),
 ("Big Dipper","Grande Ourse","Big Dipper","Osa Mayor","Grosser Wagen","Grande Carro",1),
 ("Rings of Saturn","Anneaux de Saturne","Rings of Saturn","Anillos de Saturno","Saturnringe","Anelli di Saturno",1),
 # ---- palier 2 ----
 ("Olympus Mons","Olympus Mons",2),
 ("Valles Marineris","Valles Marineris",2),
 ("Great Red Spot","Grande tache rouge","Great Red Spot","Gran Mancha Roja","Grosser Roter Fleck","Grande Macchia Rossa",2),
 ("Charon (moon)","Charon","Charon","Caronte","Charon","Caronte",2),
 ("Eris (dwarf planet)","Eris",2),
 ("Makemake","Makemake",2),
 ("Haumea","Haumea",2),
 ("90377 Sedna","Sedna",2),
 ("Proxima Centauri","Proxima du Centaure","Proxima Centauri","Proxima Centauri","Proxima Centauri","Proxima Centauri",2),
 ("Betelgeuse","Betelgeuse",2),
 ("Sirius","Sirius","Sirius","Sirio","Sirius","Sirio",2),
 ("Polaris","Etoile polaire","Polaris","Estrella Polar","Polarstern","Stella Polare",2),
 ("Pulsar","Pulsar",2),
 ("Quasar","Quasar",2),
 ("Wormhole","Trou de ver","Wormhole","Agujero de gusano","Wurmloch","Wormhole",2),
 ("Asteroid belt","Ceinture d'asteroides","Asteroid belt","Cinturon de asteroides","Asteroidenguertel","Fascia degli asteroidi",2),
 ("Kuiper belt","Ceinture de Kuiper","Kuiper belt","Cinturon de Kuiper","Kuiperguertel","Fascia di Kuiper",2),
 ("Oort cloud","Nuage d'Oort","Oort cloud","Nube de Oort","Oortsche Wolke","Nube di Oort",2),
 ("Crab Nebula","Nebuleuse du Crabe","Crab Nebula","Nebulosa del Cangrejo","Krebsnebel","Nebulosa del Granchio",2),
 ("Pillars of Creation","Piliers de la creation","Pillars of Creation","Pilares de la Creacion","Saeulen der Schoepfung","Pilastri della Creazione",2),
 ("Sagittarius A*","Sagittarius A*",2),
 ("Rosetta (spacecraft)","Rosetta",2),
 ("Cassini–Huygens","Cassini",2),
 ("New Horizons","New Horizons",2),
 ("Voyager Golden Record","Disque d'or de Voyager","Voyager Golden Record","Disco de oro de las Voyager","Voyager Golden Record","Voyager Golden Record",2),
 ("Hoag's Object","Objet de Hoag","Hoag's Object","Objeto de Hoag","Hoags Objekt","Oggetto di Hoag",2),
 ("Tycho (crater)","Cratere Tycho","Tycho crater","Crater Tycho","Tycho-Krater","Cratere Tycho",2),
 ("4 Vesta","Vesta","Vesta","Vesta","Vesta","Vesta",2),
 ("Bennu","Bennu","Bennu","Bennu","Bennu","Bennu",2),
 ("Ryugu","Ryugu","Ryugu","Ryugu","Ryugu","Ryugu",2),
 ("Comet Hale-Bopp","Comete Hale-Bopp","Hale-Bopp","Hale-Bopp","Hale-Bopp","Hale-Bopp",2),
 ("Comet NEOWISE","Comete NEOWISE","NEOWISE","NEOWISE","NEOWISE","NEOWISE",2),
 ("Whirlpool Galaxy","Galaxie du Tourbillon","Whirlpool Galaxy","Galaxia del Remolino","Strudelgalaxie","Galassia Vortice",2),
 ("Sombrero Galaxy","Galaxie du Sombrero","Sombrero Galaxy","Galaxia del Sombrero","Sombrerogalaxie","Galassia Sombrero",2),
 ("Eagle Nebula","Nebuleuse de l'Aigle","Eagle Nebula","Nebulosa del Aguila","Adlernebel","Nebulosa Aquila",2),
 ("Horsehead Nebula","Nebuleuse de la Tete de cheval","Horsehead Nebula","Nebulosa Cabeza de Caballo","Pferdekopfnebel","Nebulosa Testa di Cavallo",2),
]

items = []
for row in S:
    if len(row) == 3:
        w, nm, t = row
        names = {"FR": nm, "EN": nm, "ES": nm, "DE": nm, "IT": nm}
    else:
        w, fr, en, es, de, it, t = row
        names = {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}
    items.append({"id": w, "wiki": w, "tier": t, "names": names})
print("Espace :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/espace", "spc")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images espace/")

ENONCE = {"FR": "Qu'est-ce que c'est ?", "EN": "What is this?",
          "ES": "Que es esto?", "DE": "Was ist das?", "IT": "Che cos'e questo?"}
emit_bank(f"{ROOT}/verse/espace_bank.verse",
          "espace_bank.verse — Quizz ESPACE (photos NASA/Wikipedia)",
          "EspaceDiff", "Espace", ENONCE, items, shared=False, seed_prefix="espace",
          img_ref_of=lambda i: "espace.spc_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
