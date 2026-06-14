#!/usr/bin/env python3
# Quizz "Mythologie" (image -> nom). Statues/peintures via Wikipedia (domaine public).
# Lignes : (wiki_EN, nom_partage, palier) ou (wiki_EN, FR,EN,ES,DE,IT, palier)
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank
import os as _ospath  # racine projet portable (ne depend plus d'un chemin absolu)
_ROOT = _ospath.path.dirname(_ospath.path.abspath(__file__))
while _ROOT != _ospath.path.dirname(_ROOT) and not _ospath.path.isdir(_ospath.path.join(_ROOT, "verse")):
    _ROOT = _ospath.path.dirname(_ROOT)

BANK_ONLY = "--bank-only" in sys.argv
ROOT = _ROOT

M = [
 ("Zeus","Zeus",0),
 ("Poseidon","Poseidon","Poseidon","Poseidon","Poseidon","Poseidone",0),
 ("Hades","Hades","Hades","Hades","Hades","Ade",0),
 ("Hera","Hera","Hera","Hera","Hera","Era",0),
 ("Athena","Athena","Athena","Atenea","Athene","Atena",0),
 ("Apollo","Apollon","Apollo","Apolo","Apollon","Apollo",0),
 ("Artemis","Artemis","Artemis","Artemisa","Artemis","Artemide",0),
 ("Ares","Ares",0),
 ("Aphrodite","Aphrodite","Aphrodite","Afrodita","Aphrodite","Afrodite",0),
 ("Hermes","Hermes",0),
 ("Hephaestus","Hephaistos","Hephaestus","Hefesto","Hephaistos","Efesto",0),
 ("Demeter","Demeter","Demeter","Demeter","Demeter","Demetra",0),
 ("Dionysus","Dionysos","Dionysus","Dioniso","Dionysos","Dioniso",0),
 ("Heracles","Heracles","Heracles","Heracles","Herakles","Eracle",0),
 ("Achilles","Achille","Achilles","Aquiles","Achilles","Achille",0),
 ("Odysseus","Ulysse","Odysseus","Ulises","Odysseus","Ulisse",0),
 ("Medusa","Meduse","Medusa","Medusa","Medusa","Medusa",0),
 ("Minotaur","Minotaure","Minotaur","Minotauro","Minotaurus","Minotauro",0),
 ("Pegasus","Pegase","Pegasus","Pegaso","Pegasus","Pegaso",0),
 ("Thor","Thor",0),("Odin","Odin",0),("Loki","Loki",0),
 ("Ra","Ra",0),("Anubis","Anubis",0),("Osiris","Osiris",0),
 ("Cronus","Cronos","Cronus","Cronos","Kronos","Crono",0),
 # ---- palier 1 ----
 ("Persephone","Persephone","Persephone","Persefone","Persephone","Persefone",1),
 ("Hestia","Hestia",1),
 ("Perseus","Persee","Perseus","Perseo","Perseus","Perseo",1),
 ("Theseus","Thesee","Theseus","Teseo","Theseus","Teseo",1),
 ("Jason","Jason","Jason","Jason","Jason","Giasone",1),
 ("Icarus","Icare","Icarus","Icaro","Ikarus","Icaro",1),
 ("Daedalus","Dedale","Daedalus","Dedalo","Daedalus","Dedalo",1),
 ("Orpheus","Orphee","Orpheus","Orfeo","Orpheus","Orfeo",1),
 ("Prometheus","Promethee","Prometheus","Prometeo","Prometheus","Prometeo",1),
 ("Atlas (mythology)","Atlas","Atlas","Atlas","Atlas","Atlante",1),
 ("Pandora","Pandore","Pandora","Pandora","Pandora","Pandora",1),
 ("Narcissus (mythology)","Narcisse","Narcissus","Narciso","Narziss","Narciso",1),
 ("Eros","Eros",1),
 ("Nike (mythology)","Nike","Nike","Nike","Nike","Nike",1),
 ("Cerberus","Cerbere","Cerberus","Cerbero","Zerberus","Cerbero",1),
 ("Cyclops","Cyclope","Cyclops","Ciclope","Zyklop","Ciclope",1),
 ("Centaur","Centaure","Centaur","Centauro","Zentaur","Centauro",1),
 ("Siren (mythology)","Sirene","Siren","Sirena","Sirene","Sirena",1),
 ("Freyja","Freyja",1),("Baldr","Baldr",1),("Fenrir","Fenrir",1),
 ("Valkyrie","Valkyrie","Valkyrie","Valquiria","Walkuere","Valchiria",1),
 ("Horus","Horus",1),("Isis","Isis",1),
 ("Set (deity)","Seth","Set","Set","Seth","Seth",1),
 ("Bastet","Bastet",1),
 # ---- palier 2 ----
 ("Hel (being)","Hel",2),("Heimdall","Heimdall",2),
 ("Tyr","Tyr",2),("Mjolnir","Mjolnir",2),("Jormungandr","Jormungandr",2),
 ("Kraken","Kraken",2),("Sphinx","Sphinx","Sphinx","Esfinge","Sphinx","Sfinge",2),
 ("Chimera (mythology)","Chimere","Chimera","Quimera","Chimaera","Chimera",2),
 ("Lernaean Hydra","Hydre de Lerne","Hydra","Hidra","Hydra","Idra",2),
 ("Charon","Charon","Charon","Caronte","Charon","Caronte",2),
 ("Styx","Styx","Styx","Estigia","Styx","Stige",2),
 ("Tartarus","Tartare","Tartarus","Tartaro","Tartaros","Tartaro",2),
 ("Gaia","Gaia",2),
 ("Uranus (mythology)","Ouranos","Uranus","Urano","Uranos","Urano",2),
 ("Helios","Helios","Helios","Helios","Helios","Elio",2),
 ("Selene","Selene",2),("Eos","Eos",2),
 ("Nemesis (mythology)","Nemesis","Nemesis","Nemesis","Nemesis","Nemesi",2),
 ("Hypnos","Hypnos",2),
 ("Morpheus","Morphee","Morpheus","Morfeo","Morpheus","Morfeo",2),
 ("Thanatos","Thanatos",2),("Quetzalcoatl","Quetzalcoatl",2),
 ("Amaterasu","Amaterasu",2),("Raijin","Raijin",2),
 ("Izanagi","Izanagi",2),("Sobek","Sobek",2),
 ("Thoth","Thot","Thoth","Tot","Thot","Thot",2),
 ("Anput","Anput",2),("Bes","Bes",2),("Maat","Maat",2),
 ("Vishnu","Vishnou","Vishnu","Visnu","Vishnu","Visnu",2),
 ("Shiva","Shiva","Shiva","Shiva","Shiva","Shiva",2),
 ("Ganesha","Ganesh","Ganesha","Ganesha","Ganesha","Ganesha",2),
 ("Kali","Kali","Kali","Kali","Kali","Kali",2),
 ("Brahma","Brahma","Brahma","Brahma","Brahma","Brahma",2),
 ("Tiamat","Tiamat",2),("Marduk","Marduk",2),("Inanna","Inanna",2),
]

items = []
for row in M:
    if len(row) == 3:
        w, nm, t = row
        names = {"FR": nm, "EN": nm, "ES": nm, "DE": nm, "IT": nm}
    else:
        w, fr, en, es, de, it, t = row
        names = {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}
    items.append({"id": w, "wiki": w, "tier": t, "names": names})
print("Mythologie :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/mytho", "myt")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images mytho/")

ENONCE = {"FR": "Qui est cette figure mythologique ?", "EN": "Who is this mythological figure?",
          "ES": "Quien es esta figura mitologica?", "DE": "Wer ist diese mythologische Figur?",
          "IT": "Chi e questa figura mitologica?"}
emit_bank(f"{ROOT}/verse/mytho_bank.verse",
          "mytho_bank.verse — Quizz MYTHOLOGIE (images Wikipedia, domaine public)",
          "MythoDiff", "Mytho", ENONCE, items, shared=False, seed_prefix="mytho",
          img_ref_of=lambda i: "mytho.myt_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
