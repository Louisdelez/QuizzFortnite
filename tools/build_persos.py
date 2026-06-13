#!/usr/bin/env python3
# ============================================================
#  build_persos.py — Quizz "Personnages historiques" (portraits Wikipedia,
#  majoritairement domaine public). Lignes :
#   (wiki_EN, nom_partage, palier)            -> meme nom dans les 5 langues
#   (wiki_EN, FR, EN, ES, DE, IT, palier)     -> noms differents
#  Sortie : persos/his_0001.png... + verse/persos_bank.verse
# ============================================================
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

P = [
 ("Napoleon","Napoleon Bonaparte","Napoleon Bonaparte","Napoleon Bonaparte","Napoleon Bonaparte","Napoleone Bonaparte",0),
 ("Albert Einstein","Albert Einstein",0),
 ("Julius Caesar","Jules Cesar","Julius Caesar","Julio Cesar","Julius Caesar","Giulio Cesare",0),
 ("Cleopatra","Cleopatre","Cleopatra","Cleopatra","Kleopatra","Cleopatra",0),
 ("Alexander the Great","Alexandre le Grand","Alexander the Great","Alejandro Magno","Alexander der Grosse","Alessandro Magno",0),
 ("Leonardo da Vinci","Leonard de Vinci","Leonardo da Vinci","Leonardo da Vinci","Leonardo da Vinci","Leonardo da Vinci",0),
 ("Christopher Columbus","Christophe Colomb","Christopher Columbus","Cristobal Colon","Christoph Kolumbus","Cristoforo Colombo",0),
 ("George Washington","George Washington",0),
 ("Abraham Lincoln","Abraham Lincoln",0),
 ("Adolf Hitler","Adolf Hitler",0),
 ("Winston Churchill","Winston Churchill",0),
 ("Charles de Gaulle","Charles de Gaulle",0),
 ("Mahatma Gandhi","Gandhi","Gandhi","Gandhi","Gandhi","Gandhi",0),
 ("Nelson Mandela","Nelson Mandela",0),
 ("Martin Luther King Jr.","Martin Luther King","Martin Luther King","Martin Luther King","Martin Luther King","Martin Luther King",0),
 ("Mother Teresa","Mere Teresa","Mother Teresa","Madre Teresa","Mutter Teresa","Madre Teresa",0),
 ("Joan of Arc","Jeanne d'Arc","Joan of Arc","Juana de Arco","Johanna von Orleans","Giovanna d'Arco",0),
 ("Louis XIV","Louis XIV","Louis XIV","Luis XIV","Ludwig XIV","Luigi XIV",0),
 ("Marie Antoinette","Marie-Antoinette","Marie Antoinette","Maria Antonieta","Marie Antoinette","Maria Antonietta",0),
 ("Elizabeth II","Elisabeth II","Elizabeth II","Isabel II","Elisabeth II","Elisabetta II",0),
 ("Queen Victoria","Reine Victoria","Queen Victoria","Reina Victoria","Koenigin Victoria","Regina Vittoria",0),
 ("William Shakespeare","William Shakespeare",0),
 ("Wolfgang Amadeus Mozart","Mozart","Mozart","Mozart","Mozart","Mozart",0),
 ("Ludwig van Beethoven","Beethoven","Beethoven","Beethoven","Beethoven","Beethoven",0),
 ("Pablo Picasso","Pablo Picasso",0),
 ("Vincent van Gogh","Vincent van Gogh",0),
 ("Isaac Newton","Isaac Newton",0),
 ("Galileo Galilei","Galilee","Galileo Galilei","Galileo Galilei","Galileo Galilei","Galileo Galilei",0),
 ("Charles Darwin","Charles Darwin",0),
 ("Marie Curie","Marie Curie",0),
 ("Thomas Edison","Thomas Edison",0),
 ("Nikola Tesla","Nikola Tesla",0),
 ("Socrates","Socrate","Socrates","Socrates","Sokrates","Socrate",0),
 ("Plato","Platon","Plato","Platon","Platon","Platone",0),
 ("Aristotle","Aristote","Aristotle","Aristoteles","Aristoteles","Aristotele",0),
 ("Genghis Khan","Gengis Khan","Genghis Khan","Gengis Kan","Dschingis Khan","Gengis Khan",0),
 ("John F. Kennedy","John F. Kennedy",0),
 ("Che Guevara","Che Guevara",0),
 ("Karl Marx","Karl Marx",0),
 ("Tutankhamun","Toutankhamon","Tutankhamun","Tutankamon","Tutanchamun","Tutankhamon",0),
 ("Ramesses II","Ramses II","Ramesses II","Ramses II","Ramses II","Ramses II",0),
 # ---- palier 1 ----
 ("Voltaire","Voltaire",1),
 ("Victor Hugo","Victor Hugo",1),
 ("Moliere","Moliere",1),
 ("Johannes Gutenberg","Gutenberg","Gutenberg","Gutenberg","Gutenberg","Gutenberg",1),
 ("Ferdinand Magellan","Magellan","Ferdinand Magellan","Fernando de Magallanes","Ferdinand Magellan","Ferdinando Magellano",1),
 ("Marco Polo","Marco Polo",1),
 ("Vasco da Gama","Vasco de Gama","Vasco da Gama","Vasco da Gama","Vasco da Gama","Vasco da Gama",1),
 ("James Cook","James Cook",1),
 ("Hannibal","Hannibal","Hannibal","Anibal","Hannibal","Annibale",1),
 ("Spartacus","Spartacus","Spartacus","Espartaco","Spartacus","Spartaco",1),
 ("Attila","Attila","Attila","Atila","Attila","Attila",1),
 ("Charlemagne","Charlemagne","Charlemagne","Carlomagno","Karl der Grosse","Carlo Magno",1),
 ("William the Conqueror","Guillaume le Conquerant","William the Conqueror","Guillermo el Conquistador","Wilhelm der Eroberer","Guglielmo il Conquistatore",1),
 ("Henry VIII","Henri VIII","Henry VIII","Enrique VIII","Heinrich VIII","Enrico VIII",1),
 ("Elizabeth I","Elisabeth Ire","Elizabeth I","Isabel I","Elisabeth I","Elisabetta I",1),
 ("Peter the Great","Pierre le Grand","Peter the Great","Pedro el Grande","Peter der Grosse","Pietro il Grande",1),
 ("Catherine the Great","Catherine II","Catherine the Great","Catalina la Grande","Katharina die Grosse","Caterina la Grande",1),
 ("Ivan the Terrible","Ivan le Terrible","Ivan the Terrible","Ivan el Terrible","Iwan der Schreckliche","Ivan il Terribile",1),
 ("Otto von Bismarck","Bismarck","Bismarck","Bismarck","Bismarck","Bismarck",1),
 ("Joseph Stalin","Staline","Joseph Stalin","Stalin","Stalin","Stalin",1),
 ("Vladimir Lenin","Lenine","Lenin","Lenin","Lenin","Lenin",1),
 ("Mao Zedong","Mao Zedong",1),
 ("Franklin D. Roosevelt","Franklin D. Roosevelt",1),
 ("Benjamin Franklin","Benjamin Franklin",1),
 ("Simon Bolivar","Simon Bolivar",1),
 ("Giuseppe Garibaldi","Garibaldi","Garibaldi","Garibaldi","Garibaldi","Garibaldi",1),
 ("Benito Mussolini","Mussolini","Mussolini","Mussolini","Mussolini","Mussolini",1),
 ("Frida Kahlo","Frida Kahlo",1),
 ("Salvador Dali","Salvador Dali",1),
 ("Claude Monet","Claude Monet",1),
 ("Rembrandt","Rembrandt",1),
 ("Michelangelo","Michel-Ange","Michelangelo","Miguel Angel","Michelangelo","Michelangelo",1),
 ("Nicolaus Copernicus","Copernic","Copernicus","Copernico","Kopernikus","Copernico",1),
 ("Louis Pasteur","Louis Pasteur",1),
 ("Alexander Fleming","Alexander Fleming",1),
 ("Sigmund Freud","Sigmund Freud",1),
 ("Charlie Chaplin","Charlie Chaplin",1),
 ("Amelia Earhart","Amelia Earhart",1),
 ("Neil Armstrong","Neil Armstrong",1),
 ("Yuri Gagarin","Youri Gagarine","Yuri Gagarin","Yuri Gagarin","Juri Gagarin","Jurij Gagarin",1),
 ("Confucius","Confucius","Confucius","Confucio","Konfuzius","Confucio",1),
 ("Saladin","Saladin","Saladin","Saladino","Saladin","Saladino",1),
 ("Suleiman the Magnificent","Soliman le Magnifique","Suleiman the Magnificent","Suleiman el Magnifico","Sueleyman der Praechtige","Solimano il Magnifico",1),
 ("Anne Frank","Anne Frank",1),
 ("Rosa Parks","Rosa Parks",1),
 ("Walt Disney","Walt Disney",1),
 ("Henry Ford","Henry Ford",1),
 # ---- palier 2 ----
 ("Vercingetorix","Vercingetorix","Vercingetorix","Vercingetorix","Vercingetorix","Vercingetorige",2),
 ("Clovis I","Clovis","Clovis","Clodoveo","Chlodwig","Clodoveo",2),
 ("Cardinal Richelieu","Richelieu","Richelieu","Richelieu","Richelieu","Richelieu",2),
 ("Maximilien Robespierre","Robespierre","Robespierre","Robespierre","Robespierre","Robespierre",2),
 ("Georges Danton","Danton","Danton","Danton","Danton","Danton",2),
 ("Gilbert du Motier, Marquis de Lafayette","La Fayette","Lafayette","Lafayette","Lafayette","La Fayette",2),
 ("Toussaint Louverture","Toussaint Louverture",2),
 ("Jose de San Martin","Jose de San Martin",2),
 ("Pancho Villa","Pancho Villa",2),
 ("Emiliano Zapata","Emiliano Zapata",2),
 ("Geronimo","Geronimo",2),
 ("Sitting Bull","Sitting Bull",2),
 ("Hernan Cortes","Hernan Cortes",2),
 ("Francisco Pizarro","Francisco Pizarro",2),
 ("Amerigo Vespucci","Amerigo Vespucci",2),
 ("Francis Drake","Francis Drake",2),
 ("Blackbeard","Barbe Noire","Blackbeard","Barbanegra","Blackbeard","Barbanera",2),
 ("Ferdinand de Lesseps","Ferdinand de Lesseps",2),
 ("Gustave Eiffel","Gustave Eiffel",2),
 ("Leon Trotsky","Trotski","Trotsky","Trotski","Trotzki","Trotsky",2),
 ("Grigori Rasputin","Raspoutine","Rasputin","Rasputin","Rasputin","Rasputin",2),
 ("Nicholas II of Russia","Nicolas II","Nicholas II","Nicolas II","Nikolaus II","Nicola II",2),
 ("Archduke Franz Ferdinand of Austria","Francois-Ferdinand","Franz Ferdinand","Francisco Fernando","Franz Ferdinand","Francesco Ferdinando",2),
 ("Mustafa Kemal Ataturk","Ataturk","Ataturk","Ataturk","Atatuerk","Ataturk",2),
 ("Haile Selassie","Haile Selassie",2),
 ("Patrice Lumumba","Patrice Lumumba",2),
 ("Ho Chi Minh","Ho Chi Minh",2),
 ("Sun Yat-sen","Sun Yat-sen",2),
 ("Tokugawa Ieyasu","Tokugawa Ieyasu",2),
 ("Oda Nobunaga","Oda Nobunaga",2),
 ("Miyamoto Musashi","Miyamoto Musashi",2),
 ("Akbar","Akbar","Akbar","Akbar","Akbar","Akbar",2),
 ("Ashoka","Ashoka","Ashoka","Asoka","Ashoka","Ashoka",2),
 ("Cyrus the Great","Cyrus le Grand","Cyrus the Great","Ciro el Grande","Kyros der Grosse","Ciro il Grande",2),
 ("Hammurabi","Hammurabi",2),
 ("Nefertiti","Nefertiti","Nefertiti","Nefertiti","Nofretete","Nefertiti",2),
 ("Hatshepsut","Hatchepsout","Hatshepsut","Hatshepsut","Hatschepsut","Hatshepsut",2),
 ("Nero","Neron","Nero","Neron","Nero","Nerone",2),
 ("Caligula","Caligula","Caligula","Caligula","Caligula","Caligola",2),
 ("Marcus Aurelius","Marc Aurele","Marcus Aurelius","Marco Aurelio","Mark Aurel","Marco Aurelio",2),
 ("Constantine the Great","Constantin","Constantine","Constantino","Konstantin","Costantino",2),
 ("Justinian I","Justinien","Justinian","Justiniano","Justinian","Giustiniano",2),
 ("Leif Erikson","Leif Erikson",2),
 ("Erik the Red","Erik le Rouge","Erik the Red","Erik el Rojo","Erik der Rote","Erik il Rosso",2),
]

items = []
for row in P:
    if len(row) == 3:
        w, nm, t = row
        names = {"FR": nm, "EN": nm, "ES": nm, "DE": nm, "IT": nm}
    else:
        w, fr, en, es, de, it, t = row
        names = {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}
    items.append({"id": w, "wiki": w, "tier": t, "names": names})
print("Personnages :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/persos", "his")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images persos/")

ENONCE = {"FR": "Qui est ce personnage historique ?", "EN": "Who is this historical figure?",
          "ES": "Quien es este personaje historico?", "DE": "Wer ist diese historische Person?",
          "IT": "Chi e questo personaggio storico?"}
emit_bank(f"{ROOT}/verse/persos_bank.verse",
          "persos_bank.verse — Quizz PERSONNAGES HISTORIQUES (portraits Wikipedia)",
          "PersosDiff", "Persos", ENONCE, items, shared=False, seed_prefix="persos",
          img_ref_of=lambda i: "persos.his_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
