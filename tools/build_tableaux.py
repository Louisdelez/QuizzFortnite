#!/usr/bin/env python3
# ============================================================
#  build_tableaux.py â€” Quizz "Tableaux celebres" : on montre l'oeuvre
#  (image Wikipedia, peintures du domaine public), il faut trouver LE PEINTRE.
#  PAINTERS : nom du peintre (str = identique x5, tuple = (FR,EN,ES,DE,IT)).
#  T : (titre_wiki_EN_du_tableau, cle_peintre, palier)
#  Sortie : tableaux/art_0001.png... + verse/tableaux_bank.verse
# ============================================================
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

PAINTERS = {
 "vinci": ("Leonard de Vinci","Leonardo da Vinci","Leonardo da Vinci","Leonardo da Vinci","Leonardo da Vinci"),
 "michelangelo": ("Michel-Ange","Michelangelo","Miguel Angel","Michelangelo","Michelangelo"),
 "raphael": ("Raphael","Raphael","Rafael","Raffael","Raffaello"),
 "titian": ("Titien","Titian","Tiziano","Tizian","Tiziano"),
 "bosch": ("Jerome Bosch","Hieronymus Bosch","El Bosco","Hieronymus Bosch","Hieronymus Bosch"),
 "caravaggio": ("Le Caravage","Caravaggio","Caravaggio","Caravaggio","Caravaggio"),
 "vangogh": "Vincent van Gogh", "munch": "Edvard Munch", "vermeer": "Johannes Vermeer",
 "dali": "Salvador Dali", "picasso": "Pablo Picasso", "monet": "Claude Monet",
 "manet": "Edouard Manet", "renoir": "Auguste Renoir", "degas": "Edgar Degas",
 "seurat": "Georges Seurat", "cezanne": "Paul Cezanne", "klimt": "Gustav Klimt",
 "magritte": "Rene Magritte", "matisse": "Henri Matisse", "gauguin": "Paul Gauguin",
 "lautrec": "Toulouse-Lautrec", "friedrich": "Caspar David Friedrich",
 "turner": "William Turner", "constable": "John Constable", "millais": "John Everett Millais",
 "millet": "Jean-Francois Millet", "caillebotte": "Gustave Caillebotte",
 "warhol": "Andy Warhol", "hopper": "Edward Hopper", "pollock": "Jackson Pollock",
 "wyeth": "Andrew Wyeth", "mondrian": "Piet Mondrian", "malevich": "Kazimir Malevich",
 "chagall": "Marc Chagall", "duchamp": "Marcel Duchamp", "kahlo": "Frida Kahlo",
 "botticelli": "Sandro Botticelli", "rembrandt": "Rembrandt", "velazquez": "Diego Velazquez",
 "goya": "Francisco de Goya", "delacroix": "Eugene Delacroix", "hokusai": "Hokusai",
 "wood": "Grant Wood", "gericault": "Theodore Gericault", "vaneyck": "Jan van Eyck",
 "bruegel": "Pieter Bruegel", "david": "Jacques-Louis David", "fragonard": "Jean-Honore Fragonard",
 "rubens": "Pierre Paul Rubens", "hals": "Frans Hals", "fabritius": "Carel Fabritius",
 "leutze": "Emanuel Leutze", "coolidge": "Cassius Coolidge", "fuseli": "Johann Heinrich Fussli",
 "waterhouse": "John William Waterhouse", "leighton": "Frederic Leighton",
 "whistler": "James Whistler", "uccello": "Paolo Uccello", "holbein": "Hans Holbein",
}

T = [
 ("Mona Lisa","vinci",0),
 ("The Starry Night","vangogh",0),
 ("The Scream","munch",0),
 ("Girl with a Pearl Earring","vermeer",0),
 ("The Creation of Adam","michelangelo",0),
 ("Guernica (Picasso)","picasso",0),
 ("The Persistence of Memory","dali",0),
 ("Sunflowers (Van Gogh series)","vangogh",0),
 ("Impression, Sunrise","monet",0),
 ("The Birth of Venus","botticelli",0),
 ("American Gothic","wood",0),
 ("The Kiss (Klimt)","klimt",0),
 ("Las Meninas","velazquez",0),
 ("The Night Watch","rembrandt",0),
 ("Liberty Leading the People","delacroix",0),
 ("The Great Wave off Kanagawa","hokusai",0),
 ("Whistler's Mother","whistler",0),
 ("The Last Supper (Leonardo)","vinci",0),
 ("Water Lilies (Monet series)","monet",0),
 ("Self-Portrait with Bandaged Ear","vangogh",0),
 # ---- palier 1 ----
 ("The Garden of Earthly Delights","bosch",1),
 ("The Raft of the Medusa","gericault",1),
 ("Olympia (Manet)","manet",1),
 ("Le Dejeuner sur l'herbe","manet",1),
 ("Bal du moulin de la Galette","renoir",1),
 ("A Sunday Afternoon on the Island of La Grande Jatte","seurat",1),
 ("The Card Players","cezanne",1),
 ("Self-Portrait with Thorn Necklace and Hummingbird","kahlo",1),
 ("Campbell's Soup Cans","warhol",0),
 ("Nighthawks (Hopper)","hopper",0),
 ("The Son of Man","magritte",0),
 ("Wanderer above the Sea of Fog","friedrich",0),
 ("The Fighting Temeraire","turner",1),
 ("Arnolfini Portrait","vaneyck",1),
 ("The Tower of Babel (Bruegel)","bruegel",1),
 ("Primavera (Botticelli)","botticelli",1),
 ("The School of Athens","raphael",0),
 ("The Anatomy Lesson of Dr. Nicolaes Tulp","rembrandt",1),
 ("Composition with Red Blue and Yellow","mondrian",1),
 ("No. 5, 1948","pollock",1),
 ("Christina's World","wyeth",1),
 ("The Swing (Fragonard)","fragonard",1),
 ("The Death of Marat","david",1),
 ("Napoleon Crossing the Alps","david",0),
 ("The Third of May 1808","goya",1),
 ("Saturn Devouring His Son","goya",1),
 ("The Hay Wain","constable",1),
 ("Ophelia (painting)","millais",1),
 ("The Gleaners","millet",1),
 ("Luncheon of the Boating Party","renoir",1),
 ("Paris Street; Rainy Day","caillebotte",1),
 ("At the Moulin Rouge","lautrec",1),
 ("Dance (Matisse)","matisse",1),
 ("Where Do We Come From? What Are We? Where Are We Going?","gauguin",1),
 ("Marilyn Diptych","warhol",1),
 ("Venus of Urbino","titian",1),
 # ---- palier 2 ----
 ("Lady with an Ermine","vinci",2),
 ("The Ambassadors (Holbein)","holbein",2),
 ("The Storm on the Sea of Galilee","rembrandt",2),
 ("View of Delft","vermeer",2),
 ("The Milkmaid (Vermeer)","vermeer",2),
 ("Hunters in the Snow","bruegel",2),
 ("Netherlandish Proverbs","bruegel",2),
 ("The Triumph of Death","bruegel",2),
 ("Flaming June","leighton",2),
 ("The Lady of Shalott (painting)","waterhouse",2),
 ("Saint George and the Dragon (Uccello)","uccello",2),
 ("The Battle of San Romano","uccello",2),
 ("The Calling of Saint Matthew","caravaggio",2),
 ("Bacchus (Caravaggio)","caravaggio",2),
 ("A Bar at the Folies-Bergere","manet",2),
 ("The Dance Class","degas",2),
 ("L'Absinthe","degas",2),
 ("Starry Night Over the Rhone","vangogh",2),
 ("Wheatfield with Crows","vangogh",2),
 ("The Potato Eaters","vangogh",2),
 ("Cafe Terrace at Night","vangogh",2),
 ("Bedroom in Arles","vangogh",2),
 ("Portrait of Adele Bloch-Bauer I","klimt",2),
 ("Black Square","malevich",2),
 ("The Treachery of Images","magritte",2),
 ("Salvator Mundi (Leonardo)","vinci",2),
 ("Massacre of the Innocents (Rubens)","rubens",2),
 ("The Surrender of Breda","velazquez",2),
 ("Rokeby Venus","velazquez",2),
 ("Portrait of Innocent X","velazquez",2),
 ("The Laughing Cavalier","hals",2),
 ("The Goldfinch (painting)","fabritius",2),
 ("The Basket of Apples","cezanne",2),
 ("I and the Village","chagall",2),
 ("The Old Guitarist","picasso",2),
 ("Les Demoiselles d'Avignon","picasso",2),
 ("Nude Descending a Staircase, No. 2","duchamp",2),
 ("Washington Crossing the Delaware (1851 painting)","leutze",2),
 ("Dogs Playing Poker","coolidge",2),
 ("The Nightmare","fuseli",2),
]

def names_of(key):
    v = PAINTERS[key]
    if isinstance(v, str):
        return {"FR": v, "EN": v, "ES": v, "DE": v, "IT": v}
    fr, en, es, de, it = v
    return {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}

items = [{"id": w, "wiki": w, "tier": t, "names": names_of(k)} for (w, k, t) in T]
print("Tableaux :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/tableaux", "art")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images tableaux/")

ENONCE = {"FR": "Qui a peint ce tableau ?", "EN": "Who painted this?",
          "ES": "Quien pinto este cuadro?", "DE": "Wer hat dieses Bild gemalt?",
          "IT": "Chi ha dipinto questo quadro?"}
emit_bank(f"{ROOT}/verse/tableaux_bank.verse",
          "tableaux_bank.verse â€” Quizz TABLEAUX (oeuvres domaine public, reponse = peintre)",
          "TableauxDiff", "Tableaux", ENONCE, items, shared=False, seed_prefix="tableaux",
          img_ref_of=lambda i: "tableaux.art_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
