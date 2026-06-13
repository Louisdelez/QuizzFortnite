#!/usr/bin/env python3
# ============================================================
#  build_monuments.py — Quizz "Monuments celebres" (photos Wikipedia)
#  (titre_wiki_EN, FR, EN, ES, DE, IT, palier 0/1/2)
#  Sortie : monuments/mon_0001.png... + verse/monuments_bank.verse
# ============================================================
import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lib"))
from quiz_common import build_images, emit_bank

BANK_ONLY = "--bank-only" in sys.argv
ROOT = "D:/QuizzFortnite"

M = [
 ("Eiffel Tower","Tour Eiffel","Eiffel Tower","Torre Eiffel","Eiffelturm","Torre Eiffel",0),
 ("Statue of Liberty","Statue de la Liberte","Statue of Liberty","Estatua de la Libertad","Freiheitsstatue","Statua della Liberta",0),
 ("Great Wall of China","Grande Muraille de Chine","Great Wall of China","Gran Muralla China","Chinesische Mauer","Grande Muraglia cinese",0),
 ("Colosseum","Colisee","Colosseum","Coliseo","Kolosseum","Colosseo",0),
 ("Taj Mahal","Taj Mahal","Taj Mahal","Taj Mahal","Taj Mahal","Taj Mahal",0),
 ("Great Pyramid of Giza","Pyramide de Gizeh","Pyramid of Giza","Piramide de Guiza","Pyramide von Gizeh","Piramide di Giza",0),
 ("Big Ben","Big Ben","Big Ben","Big Ben","Big Ben","Big Ben",0),
 ("Notre-Dame de Paris","Notre-Dame de Paris","Notre-Dame de Paris","Notre Dame de Paris","Notre-Dame de Paris","Notre-Dame di Parigi",0),
 ("Arc de Triomphe","Arc de Triomphe","Arc de Triomphe","Arco del Triunfo","Triumphbogen","Arco di Trionfo",0),
 ("Sydney Opera House","Opera de Sydney","Sydney Opera House","Opera de Sidney","Opernhaus Sydney","Opera di Sydney",0),
 ("Christ the Redeemer (statue)","Christ Redempteur","Christ the Redeemer","Cristo Redentor","Christusstatue von Rio","Cristo Redentore",0),
 ("Leaning Tower of Pisa","Tour de Pise","Leaning Tower of Pisa","Torre de Pisa","Schiefer Turm von Pisa","Torre di Pisa",0),
 ("Sagrada Familia","Sagrada Familia","Sagrada Familia","Sagrada Familia","Sagrada Familia","Sagrada Familia",0),
 ("Stonehenge","Stonehenge","Stonehenge","Stonehenge","Stonehenge","Stonehenge",0),
 ("Mount Rushmore","Mont Rushmore","Mount Rushmore","Monte Rushmore","Mount Rushmore","Monte Rushmore",0),
 ("Golden Gate Bridge","Golden Gate Bridge","Golden Gate Bridge","Puente Golden Gate","Golden Gate Bruecke","Golden Gate Bridge",0),
 ("Empire State Building","Empire State Building","Empire State Building","Empire State Building","Empire State Building","Empire State Building",0),
 ("Burj Khalifa","Burj Khalifa","Burj Khalifa","Burj Khalifa","Burj Khalifa","Burj Khalifa",0),
 ("Machu Picchu","Machu Picchu","Machu Picchu","Machu Picchu","Machu Picchu","Machu Picchu",0),
 ("Moai","Moai de l'ile de Paques","Moai","Moais de Pascua","Moai","Moai",0),
 ("Louvre","Le Louvre","The Louvre","Museo del Louvre","Louvre","Louvre",0),
 ("Tower Bridge","Tower Bridge","Tower Bridge","Tower Bridge","Tower Bridge","Tower Bridge",0),
 ("Saint Basil's Cathedral","Cathedrale Saint-Basile","Saint Basil's Cathedral","Catedral de San Basilio","Basilius-Kathedrale","Cattedrale di San Basilio",0),
 ("Parthenon","Parthenon","Parthenon","Partenon","Parthenon","Partenone",0),
 ("Petra","Petra","Petra","Petra","Petra","Petra",0),
 ("Versailles","Chateau de Versailles","Palace of Versailles","Palacio de Versalles","Schloss Versailles","Reggia di Versailles",0),
 ("Mont-Saint-Michel","Mont-Saint-Michel","Mont-Saint-Michel","Monte Saint-Michel","Mont-Saint-Michel","Mont-Saint-Michel",0),
 ("White House","Maison-Blanche","White House","Casa Blanca","Weisses Haus","Casa Bianca",0),
 ("Brandenburg Gate","Porte de Brandebourg","Brandenburg Gate","Puerta de Brandeburgo","Brandenburger Tor","Porta di Brandeburgo",0),
 ("Neuschwanstein Castle","Chateau de Neuschwanstein","Neuschwanstein Castle","Castillo de Neuschwanstein","Schloss Neuschwanstein","Castello di Neuschwanstein",0),
 # ---- palier 1 ----
 ("St. Peter's Basilica","Basilique Saint-Pierre","St. Peter's Basilica","Basilica de San Pedro","Petersdom","Basilica di San Pietro",1),
 ("Angkor Wat","Angkor Vat","Angkor Wat","Angkor Wat","Angkor Wat","Angkor Wat",1),
 ("Acropolis of Athens","Acropole d'Athenes","Acropolis","Acropolis de Atenas","Akropolis","Acropoli di Atene",1),
 ("Hagia Sophia","Sainte-Sophie","Hagia Sophia","Santa Sofia","Hagia Sophia","Santa Sofia",1),
 ("Chichen Itza","Chichen Itza","Chichen Itza","Chichen Itza","Chichen Itza","Chichen Itza",1),
 ("Alhambra","Alhambra","Alhambra","Alhambra","Alhambra","Alhambra",1),
 ("Forbidden City","Cite interdite","Forbidden City","Ciudad Prohibida","Verbotene Stadt","Citta Proibita",1),
 ("Kremlin","Kremlin","Kremlin","Kremlin","Kreml","Cremlino",1),
 ("Buckingham Palace","Buckingham Palace","Buckingham Palace","Palacio de Buckingham","Buckingham Palace","Buckingham Palace",1),
 ("Pantheon, Rome","Pantheon de Rome","Pantheon","Panteon de Roma","Pantheon","Pantheon",1),
 ("Trevi Fountain","Fontaine de Trevi","Trevi Fountain","Fontana de Trevi","Trevi-Brunnen","Fontana di Trevi",1),
 ("Statue of Zeus at Olympia","Statue de Zeus","Statue of Zeus","Estatua de Zeus","Zeusstatue","Statua di Zeus",1),
 ("Tower of London","Tour de Londres","Tower of London","Torre de Londres","Tower of London","Torre di Londra",1),
 ("Sacre-Coeur, Paris","Sacre-Coeur","Sacre-Coeur","Sagrado Corazon","Sacre-Coeur","Sacro Cuore",1),
 ("Brooklyn Bridge","Pont de Brooklyn","Brooklyn Bridge","Puente de Brooklyn","Brooklyn Bridge","Ponte di Brooklyn",1),
 ("Times Square","Times Square","Times Square","Times Square","Times Square","Times Square",1),
 ("Burj Al Arab","Burj Al Arab","Burj Al Arab","Burj Al Arab","Burj Al Arab","Burj Al Arab",1),
 ("Petronas Towers","Tours Petronas","Petronas Towers","Torres Petronas","Petronas Towers","Torri Petronas",1),
 ("Niagara Falls","Chutes du Niagara","Niagara Falls","Cataratas del Niagara","Niagarafaelle","Cascate del Niagara",1),
 ("Space Needle","Space Needle","Space Needle","Space Needle","Space Needle","Space Needle",1),
 ("Hollywood Sign","Panneau Hollywood","Hollywood Sign","Letrero de Hollywood","Hollywood Sign","Scritta Hollywood",1),
 ("Hoover Dam","Barrage Hoover","Hoover Dam","Presa Hoover","Hoover-Talsperre","Diga di Hoover",1),
 ("Panama Canal","Canal de Panama","Panama Canal","Canal de Panama","Panamakanal","Canale di Panama",1),
 ("Suez Canal","Canal de Suez","Suez Canal","Canal de Suez","Sueskanal","Canale di Suez",1),
 ("Abu Simbel","Abou Simbel","Abu Simbel","Abu Simbel","Abu Simbel","Abu Simbel",1),
 ("Karnak","Temple de Karnak","Karnak Temple","Templo de Karnak","Karnak-Tempel","Tempio di Karnak",1),
 ("Valley of the Kings","Vallee des Rois","Valley of the Kings","Valle de los Reyes","Tal der Koenige","Valle dei Re",1),
 ("Terracotta Army","Armee de terre cuite","Terracotta Army","Guerreros de terracota","Terrakotta-Armee","Esercito di terracotta",1),
 ("Himeji Castle","Chateau de Himeji","Himeji Castle","Castillo de Himeji","Burg Himeji","Castello di Himeji",1),
 ("Fushimi Inari-taisha","Sanctuaire Fushimi Inari","Fushimi Inari Shrine","Santuario Fushimi Inari","Fushimi Inari-Schrein","Santuario Fushimi Inari",1),
 ("Borobudur","Borobudur","Borobudur","Borobudur","Borobudur","Borobudur",1),
 ("Potala Palace","Palais du Potala","Potala Palace","Palacio de Potala","Potala-Palast","Palazzo del Potala",1),
 ("Blue Mosque, Istanbul","Mosquee bleue","Blue Mosque","Mezquita Azul","Blaue Moschee","Moschea Blu",1),
 ("Charles Bridge","Pont Charles","Charles Bridge","Puente de Carlos","Karlsbruecke","Ponte Carlo",1),
 ("Atomium","Atomium","Atomium","Atomium","Atomium","Atomium",1),
 ("Little Mermaid (statue)","Petite Sirene de Copenhague","Little Mermaid statue","Sirenita de Copenhague","Kleine Meerjungfrau","Sirenetta di Copenaghen",1),
 ("Manneken Pis","Manneken-Pis","Manneken Pis","Manneken Pis","Manneken Pis","Manneken Pis",1),
 ("Saint Mark's Basilica","Basilique Saint-Marc","Saint Mark's Basilica","Basilica de San Marcos","Markusdom","Basilica di San Marco",1),
 ("Rialto Bridge","Pont du Rialto","Rialto Bridge","Puente de Rialto","Rialtobruecke","Ponte di Rialto",1),
 ("Milan Cathedral","Cathedrale de Milan","Milan Cathedral","Catedral de Milan","Mailaender Dom","Duomo di Milano",1),
 ("Florence Cathedral","Cathedrale de Florence","Florence Cathedral","Catedral de Florencia","Dom von Florenz","Duomo di Firenze",1),
 ("Pompeii","Pompei","Pompeii","Pompeya","Pompeji","Pompei",1),
 ("Edinburgh Castle","Chateau d'Edimbourg","Edinburgh Castle","Castillo de Edimburgo","Edinburgh Castle","Castello di Edimburgo",1),
 ("Windsor Castle","Chateau de Windsor","Windsor Castle","Castillo de Windsor","Schloss Windsor","Castello di Windsor",1),
 ("Cologne Cathedral","Cathedrale de Cologne","Cologne Cathedral","Catedral de Colonia","Koelner Dom","Duomo di Colonia",1),
 ("Westminster Abbey","Abbaye de Westminster","Westminster Abbey","Abadia de Westminster","Westminster Abbey","Abbazia di Westminster",1),
 ("Chateau de Chambord","Chateau de Chambord","Chateau de Chambord","Castillo de Chambord","Schloss Chambord","Castello di Chambord",1),
 ("Pont du Gard","Pont du Gard","Pont du Gard","Puente del Gard","Pont du Gard","Pont du Gard",1),
 ("Marina Bay Sands","Marina Bay Sands","Marina Bay Sands","Marina Bay Sands","Marina Bay Sands","Marina Bay Sands",1),
 ("Gateway Arch","Gateway Arch","Gateway Arch","Gateway Arch","Gateway Arch","Gateway Arch",1),
 # ---- palier 2 ----
 ("Hallgrimskirkja","Hallgrimskirkja","Hallgrimskirkja","Hallgrimskirkja","Hallgrimskirkja","Hallgrimskirkja",2),
 ("Sheikh Zayed Mosque","Mosquee Cheikh Zayed","Sheikh Zayed Mosque","Mezquita Sheikh Zayed","Scheich-Zayid-Moschee","Moschea Sheikh Zayed",2),
 ("Wat Arun","Wat Arun","Wat Arun","Wat Arun","Wat Arun","Wat Arun",2),
 ("Shwedagon Pagoda","Pagode Shwedagon","Shwedagon Pagoda","Pagoda Shwedagon","Shwedagon-Pagode","Pagoda Shwedagon",2),
 ("Prambanan","Prambanan","Prambanan","Prambanan","Prambanan","Prambanan",2),
 ("Bagan","Bagan","Bagan","Bagan","Bagan","Bagan",2),
 ("Sigiriya","Sigiriya","Sigiriya","Sigiriya","Sigiriya","Sigiriya",2),
 ("Meenakshi Temple","Temple de Minakshi","Meenakshi Temple","Templo de Meenakshi","Minakshi-Tempel","Tempio di Meenakshi",2),
 ("Golden Temple","Temple d'Or","Golden Temple","Templo Dorado","Goldener Tempel","Tempio d'Oro",2),
 ("Red Fort","Fort Rouge","Red Fort","Fuerte Rojo","Rotes Fort","Forte Rosso",2),
 ("Hawa Mahal","Hawa Mahal","Hawa Mahal","Hawa Mahal","Hawa Mahal","Hawa Mahal",2),
 ("Registan","Registan","Registan","Registan","Registan","Registan",2),
 ("Naqsh-e Jahan Square","Place Naghch-e Djahan","Naqsh-e Jahan Square","Plaza Naqsh-e Yahan","Meidan-e Emam","Piazza Naqsh-e Jahan",2),
 ("Citadel of Aleppo","Citadelle d'Alep","Citadel of Aleppo","Ciudadela de Alepo","Zitadelle von Aleppo","Cittadella di Aleppo",2),
 ("Krak des Chevaliers","Krak des Chevaliers","Krak des Chevaliers","Crac de los Caballeros","Krak des Chevaliers","Krak dei Cavalieri",2),
 ("Baalbek","Baalbek","Baalbek","Baalbek","Baalbek","Baalbek",2),
 ("Leptis Magna","Leptis Magna","Leptis Magna","Leptis Magna","Leptis Magna","Leptis Magna",2),
 ("Great Mosque of Djenne","Grande mosquee de Djenne","Great Mosque of Djenne","Gran Mezquita de Djenne","Grosse Moschee von Djenne","Grande Moschea di Djenne",2),
 ("Lalibela","Lalibela","Lalibela","Lalibela","Lalibela","Lalibela",2),
 ("Great Zimbabwe","Grand Zimbabwe","Great Zimbabwe","Gran Zimbabue","Gross-Simbabwe","Grande Zimbabwe",2),
 ("Teotihuacan","Teotihuacan","Teotihuacan","Teotihuacan","Teotihuacan","Teotihuacan",2),
 ("Tikal","Tikal","Tikal","Tikal","Tikal","Tikal",2),
 ("Nazca lines","Lignes de Nazca","Nazca Lines","Lineas de Nazca","Nazca-Linien","Linee di Nazca",2),
 ("Sacsayhuaman","Sacsayhuaman","Sacsayhuaman","Sacsayhuaman","Sacsayhuaman","Sacsayhuaman",2),
 ("Salar de Uyuni","Salar d'Uyuni","Salar de Uyuni","Salar de Uyuni","Salar de Uyuni","Salar de Uyuni",2),
 ("Casa Mila","Casa Mila","Casa Mila","Casa Mila","Casa Mila","Casa Mila",2),
 ("Park Guell","Parc Guell","Park Guell","Parque Guell","Park Guell","Parco Guell",2),
 ("Alcazar of Segovia","Alcazar de Segovie","Alcazar of Segovia","Alcazar de Segovia","Alcazar von Segovia","Alcazar di Segovia",2),
 ("Mosque–Cathedral of Córdoba","Mosquee-cathedrale de Cordoue","Mosque-Cathedral of Cordoba","Mezquita de Cordoba","Mezquita von Cordoba","Moschea di Cordova",2),
 ("Carcassonne","Cite de Carcassonne","Carcassonne","Carcasona","Carcassonne","Carcassonne",2),
 ("Rocamadour","Rocamadour","Rocamadour","Rocamadour","Rocamadour","Rocamadour",2),
 ("Plitvice Lakes National Park","Lacs de Plitvice","Plitvice Lakes","Lagos de Plitvice","Plitvicer Seen","Laghi di Plitvice",2),
 ("Meteora","Meteores","Meteora","Meteora","Meteora","Meteora",2),
 ("Bran Castle","Chateau de Bran","Bran Castle","Castillo de Bran","Schloss Bran","Castello di Bran",2),
 ("Kizhi Pogost","Kiji","Kizhi Pogost","Kizhi","Kischi Pogost","Kizhi",2),
 ("Trans-Siberian Railway","Transsiberien","Trans-Siberian Railway","Transiberiano","Transsibirische Eisenbahn","Transiberiana",2),
 ("Itsukushima Shrine","Sanctuaire d'Itsukushima","Itsukushima Shrine","Santuario de Itsukushima","Itsukushima-Schrein","Santuario di Itsukushima",2),
 ("Todai-ji","Todai-ji","Todai-ji","Todai-ji","Todai-ji","Todai-ji",2),
 ("Uluru","Uluru","Uluru","Uluru","Uluru","Uluru",2),
 ("Table Mountain","Montagne de la Table","Table Mountain","Montana de la Mesa","Tafelberg","Table Mountain",2),
]

items = [{"id": w, "wiki": w, "tier": t,
          "names": {"FR": fr, "EN": en, "ES": es, "DE": de, "IT": it}}
         for (w, fr, en, es, de, it, t) in M]
print("Monuments :", len(items))

if not BANK_ONLY:
    errs = build_images(items, f"{ROOT}/assets/monuments", "mon")
    if errs:
        print("ERREURS:"); [print("  " + e) for e in errs]; sys.exit(1)
    print("OK : images monuments/")

ENONCE = {"FR": "Quel est ce monument ?", "EN": "What monument is this?",
          "ES": "Que monumento es este?", "DE": "Welches Bauwerk ist das?",
          "IT": "Quale monumento e questo?"}
emit_bank(f"{ROOT}/verse/monuments_bank.verse",
          "monuments_bank.verse — Quizz MONUMENTS (photos Wikipedia)",
          "MonumentsDiff", "Monuments", ENONCE, items, shared=False, seed_prefix="monuments",
          img_ref_of=lambda i: "monuments.mon_%04d" % (i + 1))
t = [it["tier"] for it in items]
print("Paliers : %d/%d/%d" % (t.count(0), t.count(1), t.count(2)))
