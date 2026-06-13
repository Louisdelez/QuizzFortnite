using { /Verse.org/Assets }

# monuments_bank.verse — Quizz MONUMENTS (photos Wikipedia)
# GENERE — NE PAS EDITER A LA MAIN.

MonumentsDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeMonumentsQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0001 }
            Reponses := array{"Tower Bridge", "Mont-Saint-Michel", "Tour Eiffel", "Christ Redempteur"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0002 }
            Reponses := array{"Christ Redempteur", "Parthenon", "Statue de la Liberte", "Le Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0003 }
            Reponses := array{"Notre-Dame de Paris", "Grande Muraille de Chine", "Pyramide de Gizeh", "Statue de la Liberte"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0004 }
            Reponses := array{"Statue de la Liberte", "Pyramide de Gizeh", "Colisee", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0005 }
            Reponses := array{"Machu Picchu", "Le Louvre", "Taj Mahal", "Chateau de Neuschwanstein"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0006 }
            Reponses := array{"Maison-Blanche", "Pyramide de Gizeh", "Mont Rushmore", "Petra"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0007 }
            Reponses := array{"Big Ben", "Tour de Pise", "Sagrada Familia", "Mont-Saint-Michel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0008 }
            Reponses := array{"Statue de la Liberte", "Chateau de Neuschwanstein", "Machu Picchu", "Notre-Dame de Paris"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0009 }
            Reponses := array{"Petra", "Machu Picchu", "Arc de Triomphe", "Le Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0010 }
            Reponses := array{"Mont Rushmore", "Opera de Sydney", "Mont-Saint-Michel", "Arc de Triomphe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0011 }
            Reponses := array{"Machu Picchu", "Sagrada Familia", "Porte de Brandebourg", "Christ Redempteur"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0012 }
            Reponses := array{"Burj Khalifa", "Grande Muraille de Chine", "Taj Mahal", "Tour de Pise"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0013 }
            Reponses := array{"Tour Eiffel", "Petra", "Porte de Brandebourg", "Sagrada Familia"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0014 }
            Reponses := array{"Stonehenge", "Big Ben", "Colisee", "Parthenon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0015 }
            Reponses := array{"Maison-Blanche", "Machu Picchu", "Mont Rushmore", "Opera de Sydney"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0016 }
            Reponses := array{"Empire State Building", "Machu Picchu", "Cathedrale Saint-Basile", "Golden Gate Bridge"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0017 }
            Reponses := array{"Golden Gate Bridge", "Tour Eiffel", "Statue de la Liberte", "Empire State Building"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0018 }
            Reponses := array{"Big Ben", "Tour de Pise", "Burj Khalifa", "Maison-Blanche"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0019 }
            Reponses := array{"Grande Muraille de Chine", "Golden Gate Bridge", "Machu Picchu", "Colisee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0020 }
            Reponses := array{"Empire State Building", "Mont Rushmore", "Moai de l'ile de Paques", "Arc de Triomphe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0021 }
            Reponses := array{"Le Louvre", "Big Ben", "Sagrada Familia", "Statue de la Liberte"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0022 }
            Reponses := array{"Tower Bridge", "Big Ben", "Christ Redempteur", "Chateau de Neuschwanstein"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0023 }
            Reponses := array{"Colisee", "Christ Redempteur", "Cathedrale Saint-Basile", "Mont Rushmore"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0024 }
            Reponses := array{"Mont-Saint-Michel", "Tour de Pise", "Grande Muraille de Chine", "Parthenon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0025 }
            Reponses := array{"Statue de la Liberte", "Arc de Triomphe", "Petra", "Le Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0026 }
            Reponses := array{"Taj Mahal", "Chateau de Versailles", "Mont-Saint-Michel", "Stonehenge"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0027 }
            Reponses := array{"Statue de la Liberte", "Notre-Dame de Paris", "Mont-Saint-Michel", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0028 }
            Reponses := array{"Arc de Triomphe", "Le Louvre", "Burj Khalifa", "Maison-Blanche"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0029 }
            Reponses := array{"Le Louvre", "Mont Rushmore", "Tour de Pise", "Porte de Brandebourg"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0030 }
            Reponses := array{"Chateau de Neuschwanstein", "Opera de Sydney", "Stonehenge", "Mont Rushmore"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0031 }
            Reponses := array{"Abbaye de Westminster", "Buckingham Palace", "Pantheon de Rome", "Basilique Saint-Pierre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0032 }
            Reponses := array{"Armee de terre cuite", "Angkor Vat", "Abbaye de Westminster", "Chichen Itza"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0033 }
            Reponses := array{"Alhambra", "Chateau d'Edimbourg", "Acropole d'Athenes", "Borobudur"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0034 }
            Reponses := array{"Sainte-Sophie", "Panneau Hollywood", "Chichen Itza", "Pantheon de Rome"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0035 }
            Reponses := array{"Pont Charles", "Abbaye de Westminster", "Abou Simbel", "Chichen Itza"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0036 }
            Reponses := array{"Chichen Itza", "Space Needle", "Sacre-Coeur", "Alhambra"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0037 }
            Reponses := array{"Cite interdite", "Fontaine de Trevi", "Buckingham Palace", "Pont du Rialto"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0038 }
            Reponses := array{"Fontaine de Trevi", "Pont de Brooklyn", "Marina Bay Sands", "Kremlin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0039 }
            Reponses := array{"Buckingham Palace", "Petite Sirene de Copenhague", "Abbaye de Westminster", "Kremlin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0040 }
            Reponses := array{"Pantheon de Rome", "Panneau Hollywood", "Pont du Rialto", "Times Square"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0041 }
            Reponses := array{"Fontaine de Trevi", "Burj Al Arab", "Times Square", "Pont du Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0042 }
            Reponses := array{"Chateau d'Edimbourg", "Statue de Zeus", "Sacre-Coeur", "Gateway Arch"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0043 }
            Reponses := array{"Basilique Saint-Pierre", "Tour de Londres", "Gateway Arch", "Fontaine de Trevi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0044 }
            Reponses := array{"Atomium", "Petite Sirene de Copenhague", "Sacre-Coeur", "Chateau de Himeji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0045 }
            Reponses := array{"Atomium", "Pont de Brooklyn", "Manneken-Pis", "Cathedrale de Cologne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0046 }
            Reponses := array{"Kremlin", "Burj Al Arab", "Alhambra", "Times Square"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0047 }
            Reponses := array{"Sacre-Coeur", "Pont du Rialto", "Vallee des Rois", "Burj Al Arab"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0048 }
            Reponses := array{"Marina Bay Sands", "Chichen Itza", "Tours Petronas", "Pont du Gard"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0049 }
            Reponses := array{"Chutes du Niagara", "Armee de terre cuite", "Gateway Arch", "Temple de Karnak"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0050 }
            Reponses := array{"Pont de Brooklyn", "Space Needle", "Burj Al Arab", "Panneau Hollywood"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0051 }
            Reponses := array{"Chutes du Niagara", "Panneau Hollywood", "Abbaye de Westminster", "Chateau de Windsor"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0052 }
            Reponses := array{"Armee de terre cuite", "Chateau de Chambord", "Space Needle", "Barrage Hoover"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0053 }
            Reponses := array{"Canal de Panama", "Times Square", "Manneken-Pis", "Chutes du Niagara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0054 }
            Reponses := array{"Acropole d'Athenes", "Petite Sirene de Copenhague", "Canal de Suez", "Pantheon de Rome"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0055 }
            Reponses := array{"Burj Al Arab", "Buckingham Palace", "Acropole d'Athenes", "Abou Simbel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0056 }
            Reponses := array{"Times Square", "Temple de Karnak", "Mosquee bleue", "Alhambra"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0057 }
            Reponses := array{"Vallee des Rois", "Acropole d'Athenes", "Armee de terre cuite", "Cite interdite"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0058 }
            Reponses := array{"Armee de terre cuite", "Pont Charles", "Temple de Karnak", "Manneken-Pis"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0059 }
            Reponses := array{"Pantheon de Rome", "Chateau de Himeji", "Times Square", "Pont de Brooklyn"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0060 }
            Reponses := array{"Marina Bay Sands", "Gateway Arch", "Sanctuaire Fushimi Inari", "Statue de Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0061 }
            Reponses := array{"Barrage Hoover", "Borobudur", "Tours Petronas", "Chutes du Niagara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0062 }
            Reponses := array{"Palais du Potala", "Abbaye de Westminster", "Pont de Brooklyn", "Chateau de Windsor"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0063 }
            Reponses := array{"Sainte-Sophie", "Mosquee bleue", "Pompei", "Sanctuaire Fushimi Inari"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0064 }
            Reponses := array{"Basilique Saint-Pierre", "Mosquee bleue", "Pont du Gard", "Pont Charles"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0065 }
            Reponses := array{"Armee de terre cuite", "Space Needle", "Abbaye de Westminster", "Atomium"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0066 }
            Reponses := array{"Chutes du Niagara", "Pont du Rialto", "Statue de Zeus", "Petite Sirene de Copenhague"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0067 }
            Reponses := array{"Pompei", "Manneken-Pis", "Basilique Saint-Marc", "Pont Charles"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0068 }
            Reponses := array{"Pantheon de Rome", "Pont du Rialto", "Kremlin", "Basilique Saint-Marc"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0069 }
            Reponses := array{"Armee de terre cuite", "Cite interdite", "Pont du Rialto", "Space Needle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0070 }
            Reponses := array{"Petite Sirene de Copenhague", "Pont du Gard", "Alhambra", "Cathedrale de Milan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0071 }
            Reponses := array{"Statue de Zeus", "Pont Charles", "Pont du Rialto", "Cathedrale de Florence"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0072 }
            Reponses := array{"Pont Charles", "Times Square", "Angkor Vat", "Pompei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0073 }
            Reponses := array{"Pantheon de Rome", "Barrage Hoover", "Chateau d'Edimbourg", "Manneken-Pis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0074 }
            Reponses := array{"Buckingham Palace", "Chateau de Windsor", "Canal de Panama", "Burj Al Arab"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0075 }
            Reponses := array{"Acropole d'Athenes", "Cathedrale de Cologne", "Sanctuaire Fushimi Inari", "Space Needle"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0076 }
            Reponses := array{"Petite Sirene de Copenhague", "Abbaye de Westminster", "Alhambra", "Sacre-Coeur"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0077 }
            Reponses := array{"Chateau de Chambord", "Pont de Brooklyn", "Angkor Vat", "Cathedrale de Milan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0078 }
            Reponses := array{"Armee de terre cuite", "Burj Al Arab", "Temple de Karnak", "Pont du Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0079 }
            Reponses := array{"Petite Sirene de Copenhague", "Cathedrale de Cologne", "Sanctuaire Fushimi Inari", "Marina Bay Sands"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0080 }
            Reponses := array{"Petite Sirene de Copenhague", "Gateway Arch", "Burj Al Arab", "Times Square"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0081 }
            Reponses := array{"Krak des Chevaliers", "Montagne de la Table", "Transsiberien", "Hallgrimskirkja"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0082 }
            Reponses := array{"Mosquee Cheikh Zayed", "Registan", "Temple de Minakshi", "Chateau de Bran"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0083 }
            Reponses := array{"Wat Arun", "Transsiberien", "Hallgrimskirkja", "Chateau de Bran"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0084 }
            Reponses := array{"Fort Rouge", "Pagode Shwedagon", "Krak des Chevaliers", "Hallgrimskirkja"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0085 }
            Reponses := array{"Parc Guell", "Prambanan", "Place Naghch-e Djahan", "Kiji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0086 }
            Reponses := array{"Grande mosquee de Djenne", "Place Naghch-e Djahan", "Bagan", "Salar d'Uyuni"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0087 }
            Reponses := array{"Lalibela", "Teotihuacan", "Tikal", "Sigiriya"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0088 }
            Reponses := array{"Kiji", "Rocamadour", "Temple de Minakshi", "Sigiriya"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0089 }
            Reponses := array{"Todai-ji", "Baalbek", "Temple d'Or", "Grande mosquee de Djenne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0090 }
            Reponses := array{"Chateau de Bran", "Registan", "Fort Rouge", "Montagne de la Table"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0091 }
            Reponses := array{"Wat Arun", "Baalbek", "Hawa Mahal", "Sacsayhuaman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0092 }
            Reponses := array{"Mosquee-cathedrale de Cordoue", "Kiji", "Salar d'Uyuni", "Registan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0093 }
            Reponses := array{"Todai-ji", "Rocamadour", "Place Naghch-e Djahan", "Parc Guell"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0094 }
            Reponses := array{"Todai-ji", "Casa Mila", "Meteores", "Citadelle d'Alep"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0095 }
            Reponses := array{"Krak des Chevaliers", "Citadelle d'Alep", "Temple de Minakshi", "Registan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0096 }
            Reponses := array{"Sigiriya", "Alcazar de Segovie", "Todai-ji", "Baalbek"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0097 }
            Reponses := array{"Place Naghch-e Djahan", "Tikal", "Transsiberien", "Leptis Magna"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0098 }
            Reponses := array{"Grande mosquee de Djenne", "Teotihuacan", "Grand Zimbabwe", "Hallgrimskirkja"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0099 }
            Reponses := array{"Transsiberien", "Lalibela", "Tikal", "Grand Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0100 }
            Reponses := array{"Montagne de la Table", "Mosquee Cheikh Zayed", "Grand Zimbabwe", "Wat Arun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0101 }
            Reponses := array{"Baalbek", "Teotihuacan", "Mosquee Cheikh Zayed", "Temple d'Or"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0102 }
            Reponses := array{"Parc Guell", "Place Naghch-e Djahan", "Tikal", "Lignes de Nazca"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0103 }
            Reponses := array{"Lignes de Nazca", "Citadelle d'Alep", "Hawa Mahal", "Transsiberien"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0104 }
            Reponses := array{"Chateau de Bran", "Sacsayhuaman", "Hallgrimskirkja", "Grand Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0105 }
            Reponses := array{"Grande mosquee de Djenne", "Fort Rouge", "Salar d'Uyuni", "Citadelle d'Alep"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0106 }
            Reponses := array{"Teotihuacan", "Citadelle d'Alep", "Bagan", "Casa Mila"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0107 }
            Reponses := array{"Salar d'Uyuni", "Transsiberien", "Alcazar de Segovie", "Parc Guell"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0108 }
            Reponses := array{"Transsiberien", "Alcazar de Segovie", "Parc Guell", "Casa Mila"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0109 }
            Reponses := array{"Cite de Carcassonne", "Chateau de Bran", "Rocamadour", "Mosquee-cathedrale de Cordoue"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0110 }
            Reponses := array{"Fort Rouge", "Hallgrimskirkja", "Registan", "Cite de Carcassonne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0111 }
            Reponses := array{"Montagne de la Table", "Rocamadour", "Parc Guell", "Grande mosquee de Djenne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0112 }
            Reponses := array{"Lalibela", "Grande mosquee de Djenne", "Mosquee Cheikh Zayed", "Lacs de Plitvice"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0113 }
            Reponses := array{"Meteores", "Wat Arun", "Bagan", "Mosquee-cathedrale de Cordoue"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0114 }
            Reponses := array{"Hawa Mahal", "Lacs de Plitvice", "Salar d'Uyuni", "Chateau de Bran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0115 }
            Reponses := array{"Baalbek", "Meteores", "Kiji", "Fort Rouge"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0116 }
            Reponses := array{"Cite de Carcassonne", "Transsiberien", "Fort Rouge", "Krak des Chevaliers"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0117 }
            Reponses := array{"Sanctuaire d'Itsukushima", "Bagan", "Kiji", "Fort Rouge"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0118 }
            Reponses := array{"Lacs de Plitvice", "Todai-ji", "Sigiriya", "Citadelle d'Alep"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0119 }
            Reponses := array{"Sigiriya", "Uluru", "Cite de Carcassonne", "Mosquee Cheikh Zayed"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce monument ?"
            Image := option{ monuments.mon_0120 }
            Reponses := array{"Tikal", "Sanctuaire d'Itsukushima", "Transsiberien", "Montagne de la Table"}
            BonneReponse := 3

MakeMonumentsQuestionsEN() : []question =
    array:
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0001 }
            Reponses := array{"Tower Bridge", "Mont-Saint-Michel", "Eiffel Tower", "Christ the Redeemer"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0002 }
            Reponses := array{"Christ the Redeemer", "Parthenon", "Statue of Liberty", "The Louvre"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0003 }
            Reponses := array{"Notre-Dame de Paris", "Great Wall of China", "Pyramid of Giza", "Statue of Liberty"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0004 }
            Reponses := array{"Statue of Liberty", "Pyramid of Giza", "Colosseum", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0005 }
            Reponses := array{"Machu Picchu", "The Louvre", "Taj Mahal", "Neuschwanstein Castle"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0006 }
            Reponses := array{"White House", "Pyramid of Giza", "Mount Rushmore", "Petra"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0007 }
            Reponses := array{"Big Ben", "Leaning Tower of Pisa", "Sagrada Familia", "Mont-Saint-Michel"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0008 }
            Reponses := array{"Statue of Liberty", "Neuschwanstein Castle", "Machu Picchu", "Notre-Dame de Paris"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0009 }
            Reponses := array{"Petra", "Machu Picchu", "Arc de Triomphe", "The Louvre"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0010 }
            Reponses := array{"Mount Rushmore", "Sydney Opera House", "Mont-Saint-Michel", "Arc de Triomphe"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0011 }
            Reponses := array{"Machu Picchu", "Sagrada Familia", "Brandenburg Gate", "Christ the Redeemer"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0012 }
            Reponses := array{"Burj Khalifa", "Great Wall of China", "Taj Mahal", "Leaning Tower of Pisa"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0013 }
            Reponses := array{"Eiffel Tower", "Petra", "Brandenburg Gate", "Sagrada Familia"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0014 }
            Reponses := array{"Stonehenge", "Big Ben", "Colosseum", "Parthenon"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0015 }
            Reponses := array{"White House", "Machu Picchu", "Mount Rushmore", "Sydney Opera House"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0016 }
            Reponses := array{"Empire State Building", "Machu Picchu", "Saint Basil's Cathedral", "Golden Gate Bridge"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0017 }
            Reponses := array{"Golden Gate Bridge", "Eiffel Tower", "Statue of Liberty", "Empire State Building"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0018 }
            Reponses := array{"Big Ben", "Leaning Tower of Pisa", "Burj Khalifa", "White House"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0019 }
            Reponses := array{"Great Wall of China", "Golden Gate Bridge", "Machu Picchu", "Colosseum"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0020 }
            Reponses := array{"Empire State Building", "Mount Rushmore", "Moai", "Arc de Triomphe"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0021 }
            Reponses := array{"The Louvre", "Big Ben", "Sagrada Familia", "Statue of Liberty"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0022 }
            Reponses := array{"Tower Bridge", "Big Ben", "Christ the Redeemer", "Neuschwanstein Castle"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0023 }
            Reponses := array{"Colosseum", "Christ the Redeemer", "Saint Basil's Cathedral", "Mount Rushmore"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0024 }
            Reponses := array{"Mont-Saint-Michel", "Leaning Tower of Pisa", "Great Wall of China", "Parthenon"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0025 }
            Reponses := array{"Statue of Liberty", "Arc de Triomphe", "Petra", "The Louvre"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0026 }
            Reponses := array{"Taj Mahal", "Palace of Versailles", "Mont-Saint-Michel", "Stonehenge"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0027 }
            Reponses := array{"Statue of Liberty", "Notre-Dame de Paris", "Mont-Saint-Michel", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0028 }
            Reponses := array{"Arc de Triomphe", "The Louvre", "Burj Khalifa", "White House"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0029 }
            Reponses := array{"The Louvre", "Mount Rushmore", "Leaning Tower of Pisa", "Brandenburg Gate"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0030 }
            Reponses := array{"Neuschwanstein Castle", "Sydney Opera House", "Stonehenge", "Mount Rushmore"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0031 }
            Reponses := array{"Westminster Abbey", "Buckingham Palace", "Pantheon", "St. Peter's Basilica"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0032 }
            Reponses := array{"Terracotta Army", "Angkor Wat", "Westminster Abbey", "Chichen Itza"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0033 }
            Reponses := array{"Alhambra", "Edinburgh Castle", "Acropolis", "Borobudur"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0034 }
            Reponses := array{"Hagia Sophia", "Hollywood Sign", "Chichen Itza", "Pantheon"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0035 }
            Reponses := array{"Charles Bridge", "Westminster Abbey", "Abu Simbel", "Chichen Itza"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0036 }
            Reponses := array{"Chichen Itza", "Space Needle", "Sacre-Coeur", "Alhambra"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0037 }
            Reponses := array{"Forbidden City", "Trevi Fountain", "Buckingham Palace", "Rialto Bridge"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0038 }
            Reponses := array{"Trevi Fountain", "Brooklyn Bridge", "Marina Bay Sands", "Kremlin"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0039 }
            Reponses := array{"Buckingham Palace", "Little Mermaid statue", "Westminster Abbey", "Kremlin"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0040 }
            Reponses := array{"Pantheon", "Hollywood Sign", "Rialto Bridge", "Times Square"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0041 }
            Reponses := array{"Trevi Fountain", "Burj Al Arab", "Times Square", "Pont du Gard"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0042 }
            Reponses := array{"Edinburgh Castle", "Statue of Zeus", "Sacre-Coeur", "Gateway Arch"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0043 }
            Reponses := array{"St. Peter's Basilica", "Tower of London", "Gateway Arch", "Trevi Fountain"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0044 }
            Reponses := array{"Atomium", "Little Mermaid statue", "Sacre-Coeur", "Himeji Castle"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0045 }
            Reponses := array{"Atomium", "Brooklyn Bridge", "Manneken Pis", "Cologne Cathedral"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0046 }
            Reponses := array{"Kremlin", "Burj Al Arab", "Alhambra", "Times Square"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0047 }
            Reponses := array{"Sacre-Coeur", "Rialto Bridge", "Valley of the Kings", "Burj Al Arab"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0048 }
            Reponses := array{"Marina Bay Sands", "Chichen Itza", "Petronas Towers", "Pont du Gard"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0049 }
            Reponses := array{"Niagara Falls", "Terracotta Army", "Gateway Arch", "Karnak Temple"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0050 }
            Reponses := array{"Brooklyn Bridge", "Space Needle", "Burj Al Arab", "Hollywood Sign"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0051 }
            Reponses := array{"Niagara Falls", "Hollywood Sign", "Westminster Abbey", "Windsor Castle"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0052 }
            Reponses := array{"Terracotta Army", "Chateau de Chambord", "Space Needle", "Hoover Dam"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0053 }
            Reponses := array{"Panama Canal", "Times Square", "Manneken Pis", "Niagara Falls"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0054 }
            Reponses := array{"Acropolis", "Little Mermaid statue", "Suez Canal", "Pantheon"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0055 }
            Reponses := array{"Burj Al Arab", "Buckingham Palace", "Acropolis", "Abu Simbel"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0056 }
            Reponses := array{"Times Square", "Karnak Temple", "Blue Mosque", "Alhambra"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0057 }
            Reponses := array{"Valley of the Kings", "Acropolis", "Terracotta Army", "Forbidden City"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0058 }
            Reponses := array{"Terracotta Army", "Charles Bridge", "Karnak Temple", "Manneken Pis"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0059 }
            Reponses := array{"Pantheon", "Himeji Castle", "Times Square", "Brooklyn Bridge"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0060 }
            Reponses := array{"Marina Bay Sands", "Gateway Arch", "Fushimi Inari Shrine", "Statue of Zeus"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0061 }
            Reponses := array{"Hoover Dam", "Borobudur", "Petronas Towers", "Niagara Falls"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0062 }
            Reponses := array{"Potala Palace", "Westminster Abbey", "Brooklyn Bridge", "Windsor Castle"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0063 }
            Reponses := array{"Hagia Sophia", "Blue Mosque", "Pompeii", "Fushimi Inari Shrine"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0064 }
            Reponses := array{"St. Peter's Basilica", "Blue Mosque", "Pont du Gard", "Charles Bridge"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0065 }
            Reponses := array{"Terracotta Army", "Space Needle", "Westminster Abbey", "Atomium"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0066 }
            Reponses := array{"Niagara Falls", "Rialto Bridge", "Statue of Zeus", "Little Mermaid statue"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0067 }
            Reponses := array{"Pompeii", "Manneken Pis", "Saint Mark's Basilica", "Charles Bridge"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0068 }
            Reponses := array{"Pantheon", "Rialto Bridge", "Kremlin", "Saint Mark's Basilica"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0069 }
            Reponses := array{"Terracotta Army", "Forbidden City", "Rialto Bridge", "Space Needle"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0070 }
            Reponses := array{"Little Mermaid statue", "Pont du Gard", "Alhambra", "Milan Cathedral"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0071 }
            Reponses := array{"Statue of Zeus", "Charles Bridge", "Rialto Bridge", "Florence Cathedral"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0072 }
            Reponses := array{"Charles Bridge", "Times Square", "Angkor Wat", "Pompeii"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0073 }
            Reponses := array{"Pantheon", "Hoover Dam", "Edinburgh Castle", "Manneken Pis"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0074 }
            Reponses := array{"Buckingham Palace", "Windsor Castle", "Panama Canal", "Burj Al Arab"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0075 }
            Reponses := array{"Acropolis", "Cologne Cathedral", "Fushimi Inari Shrine", "Space Needle"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0076 }
            Reponses := array{"Little Mermaid statue", "Westminster Abbey", "Alhambra", "Sacre-Coeur"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0077 }
            Reponses := array{"Chateau de Chambord", "Brooklyn Bridge", "Angkor Wat", "Milan Cathedral"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0078 }
            Reponses := array{"Terracotta Army", "Burj Al Arab", "Karnak Temple", "Pont du Gard"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0079 }
            Reponses := array{"Little Mermaid statue", "Cologne Cathedral", "Fushimi Inari Shrine", "Marina Bay Sands"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0080 }
            Reponses := array{"Little Mermaid statue", "Gateway Arch", "Burj Al Arab", "Times Square"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0081 }
            Reponses := array{"Krak des Chevaliers", "Table Mountain", "Trans-Siberian Railway", "Hallgrimskirkja"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0082 }
            Reponses := array{"Sheikh Zayed Mosque", "Registan", "Meenakshi Temple", "Bran Castle"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0083 }
            Reponses := array{"Wat Arun", "Trans-Siberian Railway", "Hallgrimskirkja", "Bran Castle"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0084 }
            Reponses := array{"Red Fort", "Shwedagon Pagoda", "Krak des Chevaliers", "Hallgrimskirkja"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0085 }
            Reponses := array{"Park Guell", "Prambanan", "Naqsh-e Jahan Square", "Kizhi Pogost"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0086 }
            Reponses := array{"Great Mosque of Djenne", "Naqsh-e Jahan Square", "Bagan", "Salar de Uyuni"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0087 }
            Reponses := array{"Lalibela", "Teotihuacan", "Tikal", "Sigiriya"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0088 }
            Reponses := array{"Kizhi Pogost", "Rocamadour", "Meenakshi Temple", "Sigiriya"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0089 }
            Reponses := array{"Todai-ji", "Baalbek", "Golden Temple", "Great Mosque of Djenne"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0090 }
            Reponses := array{"Bran Castle", "Registan", "Red Fort", "Table Mountain"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0091 }
            Reponses := array{"Wat Arun", "Baalbek", "Hawa Mahal", "Sacsayhuaman"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0092 }
            Reponses := array{"Mosque-Cathedral of Cordoba", "Kizhi Pogost", "Salar de Uyuni", "Registan"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0093 }
            Reponses := array{"Todai-ji", "Rocamadour", "Naqsh-e Jahan Square", "Park Guell"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0094 }
            Reponses := array{"Todai-ji", "Casa Mila", "Meteora", "Citadel of Aleppo"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0095 }
            Reponses := array{"Krak des Chevaliers", "Citadel of Aleppo", "Meenakshi Temple", "Registan"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0096 }
            Reponses := array{"Sigiriya", "Alcazar of Segovia", "Todai-ji", "Baalbek"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0097 }
            Reponses := array{"Naqsh-e Jahan Square", "Tikal", "Trans-Siberian Railway", "Leptis Magna"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0098 }
            Reponses := array{"Great Mosque of Djenne", "Teotihuacan", "Great Zimbabwe", "Hallgrimskirkja"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0099 }
            Reponses := array{"Trans-Siberian Railway", "Lalibela", "Tikal", "Great Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0100 }
            Reponses := array{"Table Mountain", "Sheikh Zayed Mosque", "Great Zimbabwe", "Wat Arun"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0101 }
            Reponses := array{"Baalbek", "Teotihuacan", "Sheikh Zayed Mosque", "Golden Temple"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0102 }
            Reponses := array{"Park Guell", "Naqsh-e Jahan Square", "Tikal", "Nazca Lines"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0103 }
            Reponses := array{"Nazca Lines", "Citadel of Aleppo", "Hawa Mahal", "Trans-Siberian Railway"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0104 }
            Reponses := array{"Bran Castle", "Sacsayhuaman", "Hallgrimskirkja", "Great Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0105 }
            Reponses := array{"Great Mosque of Djenne", "Red Fort", "Salar de Uyuni", "Citadel of Aleppo"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0106 }
            Reponses := array{"Teotihuacan", "Citadel of Aleppo", "Bagan", "Casa Mila"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0107 }
            Reponses := array{"Salar de Uyuni", "Trans-Siberian Railway", "Alcazar of Segovia", "Park Guell"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0108 }
            Reponses := array{"Trans-Siberian Railway", "Alcazar of Segovia", "Park Guell", "Casa Mila"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0109 }
            Reponses := array{"Carcassonne", "Bran Castle", "Rocamadour", "Mosque-Cathedral of Cordoba"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0110 }
            Reponses := array{"Red Fort", "Hallgrimskirkja", "Registan", "Carcassonne"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0111 }
            Reponses := array{"Table Mountain", "Rocamadour", "Park Guell", "Great Mosque of Djenne"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0112 }
            Reponses := array{"Lalibela", "Great Mosque of Djenne", "Sheikh Zayed Mosque", "Plitvice Lakes"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0113 }
            Reponses := array{"Meteora", "Wat Arun", "Bagan", "Mosque-Cathedral of Cordoba"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0114 }
            Reponses := array{"Hawa Mahal", "Plitvice Lakes", "Salar de Uyuni", "Bran Castle"}
            BonneReponse := 3
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0115 }
            Reponses := array{"Baalbek", "Meteora", "Kizhi Pogost", "Red Fort"}
            BonneReponse := 2
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0116 }
            Reponses := array{"Carcassonne", "Trans-Siberian Railway", "Red Fort", "Krak des Chevaliers"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0117 }
            Reponses := array{"Itsukushima Shrine", "Bagan", "Kizhi Pogost", "Red Fort"}
            BonneReponse := 0
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0118 }
            Reponses := array{"Plitvice Lakes", "Todai-ji", "Sigiriya", "Citadel of Aleppo"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0119 }
            Reponses := array{"Sigiriya", "Uluru", "Carcassonne", "Sheikh Zayed Mosque"}
            BonneReponse := 1
        question:
            Enonce := "What monument is this?"
            Image := option{ monuments.mon_0120 }
            Reponses := array{"Tikal", "Itsukushima Shrine", "Trans-Siberian Railway", "Table Mountain"}
            BonneReponse := 3

MakeMonumentsQuestionsES() : []question =
    array:
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0001 }
            Reponses := array{"Tower Bridge", "Monte Saint-Michel", "Torre Eiffel", "Cristo Redentor"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0002 }
            Reponses := array{"Cristo Redentor", "Partenon", "Estatua de la Libertad", "Museo del Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0003 }
            Reponses := array{"Notre Dame de Paris", "Gran Muralla China", "Piramide de Guiza", "Estatua de la Libertad"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0004 }
            Reponses := array{"Estatua de la Libertad", "Piramide de Guiza", "Coliseo", "Puente Golden Gate"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0005 }
            Reponses := array{"Machu Picchu", "Museo del Louvre", "Taj Mahal", "Castillo de Neuschwanstein"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0006 }
            Reponses := array{"Casa Blanca", "Piramide de Guiza", "Monte Rushmore", "Petra"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0007 }
            Reponses := array{"Big Ben", "Torre de Pisa", "Sagrada Familia", "Monte Saint-Michel"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0008 }
            Reponses := array{"Estatua de la Libertad", "Castillo de Neuschwanstein", "Machu Picchu", "Notre Dame de Paris"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0009 }
            Reponses := array{"Petra", "Machu Picchu", "Arco del Triunfo", "Museo del Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0010 }
            Reponses := array{"Monte Rushmore", "Opera de Sidney", "Monte Saint-Michel", "Arco del Triunfo"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0011 }
            Reponses := array{"Machu Picchu", "Sagrada Familia", "Puerta de Brandeburgo", "Cristo Redentor"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0012 }
            Reponses := array{"Burj Khalifa", "Gran Muralla China", "Taj Mahal", "Torre de Pisa"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0013 }
            Reponses := array{"Torre Eiffel", "Petra", "Puerta de Brandeburgo", "Sagrada Familia"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0014 }
            Reponses := array{"Stonehenge", "Big Ben", "Coliseo", "Partenon"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0015 }
            Reponses := array{"Casa Blanca", "Machu Picchu", "Monte Rushmore", "Opera de Sidney"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0016 }
            Reponses := array{"Empire State Building", "Machu Picchu", "Catedral de San Basilio", "Puente Golden Gate"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0017 }
            Reponses := array{"Puente Golden Gate", "Torre Eiffel", "Estatua de la Libertad", "Empire State Building"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0018 }
            Reponses := array{"Big Ben", "Torre de Pisa", "Burj Khalifa", "Casa Blanca"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0019 }
            Reponses := array{"Gran Muralla China", "Puente Golden Gate", "Machu Picchu", "Coliseo"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0020 }
            Reponses := array{"Empire State Building", "Monte Rushmore", "Moais de Pascua", "Arco del Triunfo"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0021 }
            Reponses := array{"Museo del Louvre", "Big Ben", "Sagrada Familia", "Estatua de la Libertad"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0022 }
            Reponses := array{"Tower Bridge", "Big Ben", "Cristo Redentor", "Castillo de Neuschwanstein"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0023 }
            Reponses := array{"Coliseo", "Cristo Redentor", "Catedral de San Basilio", "Monte Rushmore"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0024 }
            Reponses := array{"Monte Saint-Michel", "Torre de Pisa", "Gran Muralla China", "Partenon"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0025 }
            Reponses := array{"Estatua de la Libertad", "Arco del Triunfo", "Petra", "Museo del Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0026 }
            Reponses := array{"Taj Mahal", "Palacio de Versalles", "Monte Saint-Michel", "Stonehenge"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0027 }
            Reponses := array{"Estatua de la Libertad", "Notre Dame de Paris", "Monte Saint-Michel", "Puente Golden Gate"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0028 }
            Reponses := array{"Arco del Triunfo", "Museo del Louvre", "Burj Khalifa", "Casa Blanca"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0029 }
            Reponses := array{"Museo del Louvre", "Monte Rushmore", "Torre de Pisa", "Puerta de Brandeburgo"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0030 }
            Reponses := array{"Castillo de Neuschwanstein", "Opera de Sidney", "Stonehenge", "Monte Rushmore"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0031 }
            Reponses := array{"Abadia de Westminster", "Palacio de Buckingham", "Panteon de Roma", "Basilica de San Pedro"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0032 }
            Reponses := array{"Guerreros de terracota", "Angkor Wat", "Abadia de Westminster", "Chichen Itza"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0033 }
            Reponses := array{"Alhambra", "Castillo de Edimburgo", "Acropolis de Atenas", "Borobudur"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0034 }
            Reponses := array{"Santa Sofia", "Letrero de Hollywood", "Chichen Itza", "Panteon de Roma"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0035 }
            Reponses := array{"Puente de Carlos", "Abadia de Westminster", "Abu Simbel", "Chichen Itza"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0036 }
            Reponses := array{"Chichen Itza", "Space Needle", "Sagrado Corazon", "Alhambra"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0037 }
            Reponses := array{"Ciudad Prohibida", "Fontana de Trevi", "Palacio de Buckingham", "Puente de Rialto"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0038 }
            Reponses := array{"Fontana de Trevi", "Puente de Brooklyn", "Marina Bay Sands", "Kremlin"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0039 }
            Reponses := array{"Palacio de Buckingham", "Sirenita de Copenhague", "Abadia de Westminster", "Kremlin"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0040 }
            Reponses := array{"Panteon de Roma", "Letrero de Hollywood", "Puente de Rialto", "Times Square"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0041 }
            Reponses := array{"Fontana de Trevi", "Burj Al Arab", "Times Square", "Puente del Gard"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0042 }
            Reponses := array{"Castillo de Edimburgo", "Estatua de Zeus", "Sagrado Corazon", "Gateway Arch"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0043 }
            Reponses := array{"Basilica de San Pedro", "Torre de Londres", "Gateway Arch", "Fontana de Trevi"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0044 }
            Reponses := array{"Atomium", "Sirenita de Copenhague", "Sagrado Corazon", "Castillo de Himeji"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0045 }
            Reponses := array{"Atomium", "Puente de Brooklyn", "Manneken Pis", "Catedral de Colonia"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0046 }
            Reponses := array{"Kremlin", "Burj Al Arab", "Alhambra", "Times Square"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0047 }
            Reponses := array{"Sagrado Corazon", "Puente de Rialto", "Valle de los Reyes", "Burj Al Arab"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0048 }
            Reponses := array{"Marina Bay Sands", "Chichen Itza", "Torres Petronas", "Puente del Gard"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0049 }
            Reponses := array{"Cataratas del Niagara", "Guerreros de terracota", "Gateway Arch", "Templo de Karnak"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0050 }
            Reponses := array{"Puente de Brooklyn", "Space Needle", "Burj Al Arab", "Letrero de Hollywood"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0051 }
            Reponses := array{"Cataratas del Niagara", "Letrero de Hollywood", "Abadia de Westminster", "Castillo de Windsor"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0052 }
            Reponses := array{"Guerreros de terracota", "Castillo de Chambord", "Space Needle", "Presa Hoover"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0053 }
            Reponses := array{"Canal de Panama", "Times Square", "Manneken Pis", "Cataratas del Niagara"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0054 }
            Reponses := array{"Acropolis de Atenas", "Sirenita de Copenhague", "Canal de Suez", "Panteon de Roma"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0055 }
            Reponses := array{"Burj Al Arab", "Palacio de Buckingham", "Acropolis de Atenas", "Abu Simbel"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0056 }
            Reponses := array{"Times Square", "Templo de Karnak", "Mezquita Azul", "Alhambra"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0057 }
            Reponses := array{"Valle de los Reyes", "Acropolis de Atenas", "Guerreros de terracota", "Ciudad Prohibida"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0058 }
            Reponses := array{"Guerreros de terracota", "Puente de Carlos", "Templo de Karnak", "Manneken Pis"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0059 }
            Reponses := array{"Panteon de Roma", "Castillo de Himeji", "Times Square", "Puente de Brooklyn"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0060 }
            Reponses := array{"Marina Bay Sands", "Gateway Arch", "Santuario Fushimi Inari", "Estatua de Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0061 }
            Reponses := array{"Presa Hoover", "Borobudur", "Torres Petronas", "Cataratas del Niagara"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0062 }
            Reponses := array{"Palacio de Potala", "Abadia de Westminster", "Puente de Brooklyn", "Castillo de Windsor"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0063 }
            Reponses := array{"Santa Sofia", "Mezquita Azul", "Pompeya", "Santuario Fushimi Inari"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0064 }
            Reponses := array{"Basilica de San Pedro", "Mezquita Azul", "Puente del Gard", "Puente de Carlos"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0065 }
            Reponses := array{"Guerreros de terracota", "Space Needle", "Abadia de Westminster", "Atomium"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0066 }
            Reponses := array{"Cataratas del Niagara", "Puente de Rialto", "Estatua de Zeus", "Sirenita de Copenhague"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0067 }
            Reponses := array{"Pompeya", "Manneken Pis", "Basilica de San Marcos", "Puente de Carlos"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0068 }
            Reponses := array{"Panteon de Roma", "Puente de Rialto", "Kremlin", "Basilica de San Marcos"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0069 }
            Reponses := array{"Guerreros de terracota", "Ciudad Prohibida", "Puente de Rialto", "Space Needle"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0070 }
            Reponses := array{"Sirenita de Copenhague", "Puente del Gard", "Alhambra", "Catedral de Milan"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0071 }
            Reponses := array{"Estatua de Zeus", "Puente de Carlos", "Puente de Rialto", "Catedral de Florencia"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0072 }
            Reponses := array{"Puente de Carlos", "Times Square", "Angkor Wat", "Pompeya"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0073 }
            Reponses := array{"Panteon de Roma", "Presa Hoover", "Castillo de Edimburgo", "Manneken Pis"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0074 }
            Reponses := array{"Palacio de Buckingham", "Castillo de Windsor", "Canal de Panama", "Burj Al Arab"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0075 }
            Reponses := array{"Acropolis de Atenas", "Catedral de Colonia", "Santuario Fushimi Inari", "Space Needle"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0076 }
            Reponses := array{"Sirenita de Copenhague", "Abadia de Westminster", "Alhambra", "Sagrado Corazon"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0077 }
            Reponses := array{"Castillo de Chambord", "Puente de Brooklyn", "Angkor Wat", "Catedral de Milan"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0078 }
            Reponses := array{"Guerreros de terracota", "Burj Al Arab", "Templo de Karnak", "Puente del Gard"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0079 }
            Reponses := array{"Sirenita de Copenhague", "Catedral de Colonia", "Santuario Fushimi Inari", "Marina Bay Sands"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0080 }
            Reponses := array{"Sirenita de Copenhague", "Gateway Arch", "Burj Al Arab", "Times Square"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0081 }
            Reponses := array{"Crac de los Caballeros", "Montana de la Mesa", "Transiberiano", "Hallgrimskirkja"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0082 }
            Reponses := array{"Mezquita Sheikh Zayed", "Registan", "Templo de Meenakshi", "Castillo de Bran"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0083 }
            Reponses := array{"Wat Arun", "Transiberiano", "Hallgrimskirkja", "Castillo de Bran"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0084 }
            Reponses := array{"Fuerte Rojo", "Pagoda Shwedagon", "Crac de los Caballeros", "Hallgrimskirkja"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0085 }
            Reponses := array{"Parque Guell", "Prambanan", "Plaza Naqsh-e Yahan", "Kizhi"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0086 }
            Reponses := array{"Gran Mezquita de Djenne", "Plaza Naqsh-e Yahan", "Bagan", "Salar de Uyuni"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0087 }
            Reponses := array{"Lalibela", "Teotihuacan", "Tikal", "Sigiriya"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0088 }
            Reponses := array{"Kizhi", "Rocamadour", "Templo de Meenakshi", "Sigiriya"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0089 }
            Reponses := array{"Todai-ji", "Baalbek", "Templo Dorado", "Gran Mezquita de Djenne"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0090 }
            Reponses := array{"Castillo de Bran", "Registan", "Fuerte Rojo", "Montana de la Mesa"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0091 }
            Reponses := array{"Wat Arun", "Baalbek", "Hawa Mahal", "Sacsayhuaman"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0092 }
            Reponses := array{"Mezquita de Cordoba", "Kizhi", "Salar de Uyuni", "Registan"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0093 }
            Reponses := array{"Todai-ji", "Rocamadour", "Plaza Naqsh-e Yahan", "Parque Guell"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0094 }
            Reponses := array{"Todai-ji", "Casa Mila", "Meteora", "Ciudadela de Alepo"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0095 }
            Reponses := array{"Crac de los Caballeros", "Ciudadela de Alepo", "Templo de Meenakshi", "Registan"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0096 }
            Reponses := array{"Sigiriya", "Alcazar de Segovia", "Todai-ji", "Baalbek"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0097 }
            Reponses := array{"Plaza Naqsh-e Yahan", "Tikal", "Transiberiano", "Leptis Magna"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0098 }
            Reponses := array{"Gran Mezquita de Djenne", "Teotihuacan", "Gran Zimbabue", "Hallgrimskirkja"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0099 }
            Reponses := array{"Transiberiano", "Lalibela", "Tikal", "Gran Zimbabue"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0100 }
            Reponses := array{"Montana de la Mesa", "Mezquita Sheikh Zayed", "Gran Zimbabue", "Wat Arun"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0101 }
            Reponses := array{"Baalbek", "Teotihuacan", "Mezquita Sheikh Zayed", "Templo Dorado"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0102 }
            Reponses := array{"Parque Guell", "Plaza Naqsh-e Yahan", "Tikal", "Lineas de Nazca"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0103 }
            Reponses := array{"Lineas de Nazca", "Ciudadela de Alepo", "Hawa Mahal", "Transiberiano"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0104 }
            Reponses := array{"Castillo de Bran", "Sacsayhuaman", "Hallgrimskirkja", "Gran Zimbabue"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0105 }
            Reponses := array{"Gran Mezquita de Djenne", "Fuerte Rojo", "Salar de Uyuni", "Ciudadela de Alepo"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0106 }
            Reponses := array{"Teotihuacan", "Ciudadela de Alepo", "Bagan", "Casa Mila"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0107 }
            Reponses := array{"Salar de Uyuni", "Transiberiano", "Alcazar de Segovia", "Parque Guell"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0108 }
            Reponses := array{"Transiberiano", "Alcazar de Segovia", "Parque Guell", "Casa Mila"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0109 }
            Reponses := array{"Carcasona", "Castillo de Bran", "Rocamadour", "Mezquita de Cordoba"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0110 }
            Reponses := array{"Fuerte Rojo", "Hallgrimskirkja", "Registan", "Carcasona"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0111 }
            Reponses := array{"Montana de la Mesa", "Rocamadour", "Parque Guell", "Gran Mezquita de Djenne"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0112 }
            Reponses := array{"Lalibela", "Gran Mezquita de Djenne", "Mezquita Sheikh Zayed", "Lagos de Plitvice"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0113 }
            Reponses := array{"Meteora", "Wat Arun", "Bagan", "Mezquita de Cordoba"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0114 }
            Reponses := array{"Hawa Mahal", "Lagos de Plitvice", "Salar de Uyuni", "Castillo de Bran"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0115 }
            Reponses := array{"Baalbek", "Meteora", "Kizhi", "Fuerte Rojo"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0116 }
            Reponses := array{"Carcasona", "Transiberiano", "Fuerte Rojo", "Crac de los Caballeros"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0117 }
            Reponses := array{"Santuario de Itsukushima", "Bagan", "Kizhi", "Fuerte Rojo"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0118 }
            Reponses := array{"Lagos de Plitvice", "Todai-ji", "Sigiriya", "Ciudadela de Alepo"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0119 }
            Reponses := array{"Sigiriya", "Uluru", "Carcasona", "Mezquita Sheikh Zayed"}
            BonneReponse := 1
        question:
            Enonce := "Que monumento es este?"
            Image := option{ monuments.mon_0120 }
            Reponses := array{"Tikal", "Santuario de Itsukushima", "Transiberiano", "Montana de la Mesa"}
            BonneReponse := 3

MakeMonumentsQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0001 }
            Reponses := array{"Tower Bridge", "Mont-Saint-Michel", "Eiffelturm", "Christusstatue von Rio"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0002 }
            Reponses := array{"Christusstatue von Rio", "Parthenon", "Freiheitsstatue", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0003 }
            Reponses := array{"Notre-Dame de Paris", "Chinesische Mauer", "Pyramide von Gizeh", "Freiheitsstatue"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0004 }
            Reponses := array{"Freiheitsstatue", "Pyramide von Gizeh", "Kolosseum", "Golden Gate Bruecke"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0005 }
            Reponses := array{"Machu Picchu", "Louvre", "Taj Mahal", "Schloss Neuschwanstein"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0006 }
            Reponses := array{"Weisses Haus", "Pyramide von Gizeh", "Mount Rushmore", "Petra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0007 }
            Reponses := array{"Big Ben", "Schiefer Turm von Pisa", "Sagrada Familia", "Mont-Saint-Michel"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0008 }
            Reponses := array{"Freiheitsstatue", "Schloss Neuschwanstein", "Machu Picchu", "Notre-Dame de Paris"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0009 }
            Reponses := array{"Petra", "Machu Picchu", "Triumphbogen", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0010 }
            Reponses := array{"Mount Rushmore", "Opernhaus Sydney", "Mont-Saint-Michel", "Triumphbogen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0011 }
            Reponses := array{"Machu Picchu", "Sagrada Familia", "Brandenburger Tor", "Christusstatue von Rio"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0012 }
            Reponses := array{"Burj Khalifa", "Chinesische Mauer", "Taj Mahal", "Schiefer Turm von Pisa"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0013 }
            Reponses := array{"Eiffelturm", "Petra", "Brandenburger Tor", "Sagrada Familia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0014 }
            Reponses := array{"Stonehenge", "Big Ben", "Kolosseum", "Parthenon"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0015 }
            Reponses := array{"Weisses Haus", "Machu Picchu", "Mount Rushmore", "Opernhaus Sydney"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0016 }
            Reponses := array{"Empire State Building", "Machu Picchu", "Basilius-Kathedrale", "Golden Gate Bruecke"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0017 }
            Reponses := array{"Golden Gate Bruecke", "Eiffelturm", "Freiheitsstatue", "Empire State Building"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0018 }
            Reponses := array{"Big Ben", "Schiefer Turm von Pisa", "Burj Khalifa", "Weisses Haus"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0019 }
            Reponses := array{"Chinesische Mauer", "Golden Gate Bruecke", "Machu Picchu", "Kolosseum"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0020 }
            Reponses := array{"Empire State Building", "Mount Rushmore", "Moai", "Triumphbogen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0021 }
            Reponses := array{"Louvre", "Big Ben", "Sagrada Familia", "Freiheitsstatue"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0022 }
            Reponses := array{"Tower Bridge", "Big Ben", "Christusstatue von Rio", "Schloss Neuschwanstein"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0023 }
            Reponses := array{"Kolosseum", "Christusstatue von Rio", "Basilius-Kathedrale", "Mount Rushmore"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0024 }
            Reponses := array{"Mont-Saint-Michel", "Schiefer Turm von Pisa", "Chinesische Mauer", "Parthenon"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0025 }
            Reponses := array{"Freiheitsstatue", "Triumphbogen", "Petra", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0026 }
            Reponses := array{"Taj Mahal", "Schloss Versailles", "Mont-Saint-Michel", "Stonehenge"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0027 }
            Reponses := array{"Freiheitsstatue", "Notre-Dame de Paris", "Mont-Saint-Michel", "Golden Gate Bruecke"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0028 }
            Reponses := array{"Triumphbogen", "Louvre", "Burj Khalifa", "Weisses Haus"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0029 }
            Reponses := array{"Louvre", "Mount Rushmore", "Schiefer Turm von Pisa", "Brandenburger Tor"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0030 }
            Reponses := array{"Schloss Neuschwanstein", "Opernhaus Sydney", "Stonehenge", "Mount Rushmore"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0031 }
            Reponses := array{"Westminster Abbey", "Buckingham Palace", "Pantheon", "Petersdom"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0032 }
            Reponses := array{"Terrakotta-Armee", "Angkor Wat", "Westminster Abbey", "Chichen Itza"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0033 }
            Reponses := array{"Alhambra", "Edinburgh Castle", "Akropolis", "Borobudur"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0034 }
            Reponses := array{"Hagia Sophia", "Hollywood Sign", "Chichen Itza", "Pantheon"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0035 }
            Reponses := array{"Karlsbruecke", "Westminster Abbey", "Abu Simbel", "Chichen Itza"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0036 }
            Reponses := array{"Chichen Itza", "Space Needle", "Sacre-Coeur", "Alhambra"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0037 }
            Reponses := array{"Verbotene Stadt", "Trevi-Brunnen", "Buckingham Palace", "Rialtobruecke"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0038 }
            Reponses := array{"Trevi-Brunnen", "Brooklyn Bridge", "Marina Bay Sands", "Kreml"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0039 }
            Reponses := array{"Buckingham Palace", "Kleine Meerjungfrau", "Westminster Abbey", "Kreml"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0040 }
            Reponses := array{"Pantheon", "Hollywood Sign", "Rialtobruecke", "Times Square"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0041 }
            Reponses := array{"Trevi-Brunnen", "Burj Al Arab", "Times Square", "Pont du Gard"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0042 }
            Reponses := array{"Edinburgh Castle", "Zeusstatue", "Sacre-Coeur", "Gateway Arch"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0043 }
            Reponses := array{"Petersdom", "Tower of London", "Gateway Arch", "Trevi-Brunnen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0044 }
            Reponses := array{"Atomium", "Kleine Meerjungfrau", "Sacre-Coeur", "Burg Himeji"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0045 }
            Reponses := array{"Atomium", "Brooklyn Bridge", "Manneken Pis", "Koelner Dom"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0046 }
            Reponses := array{"Kreml", "Burj Al Arab", "Alhambra", "Times Square"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0047 }
            Reponses := array{"Sacre-Coeur", "Rialtobruecke", "Tal der Koenige", "Burj Al Arab"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0048 }
            Reponses := array{"Marina Bay Sands", "Chichen Itza", "Petronas Towers", "Pont du Gard"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0049 }
            Reponses := array{"Niagarafaelle", "Terrakotta-Armee", "Gateway Arch", "Karnak-Tempel"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0050 }
            Reponses := array{"Brooklyn Bridge", "Space Needle", "Burj Al Arab", "Hollywood Sign"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0051 }
            Reponses := array{"Niagarafaelle", "Hollywood Sign", "Westminster Abbey", "Schloss Windsor"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0052 }
            Reponses := array{"Terrakotta-Armee", "Schloss Chambord", "Space Needle", "Hoover-Talsperre"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0053 }
            Reponses := array{"Panamakanal", "Times Square", "Manneken Pis", "Niagarafaelle"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0054 }
            Reponses := array{"Akropolis", "Kleine Meerjungfrau", "Sueskanal", "Pantheon"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0055 }
            Reponses := array{"Burj Al Arab", "Buckingham Palace", "Akropolis", "Abu Simbel"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0056 }
            Reponses := array{"Times Square", "Karnak-Tempel", "Blaue Moschee", "Alhambra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0057 }
            Reponses := array{"Tal der Koenige", "Akropolis", "Terrakotta-Armee", "Verbotene Stadt"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0058 }
            Reponses := array{"Terrakotta-Armee", "Karlsbruecke", "Karnak-Tempel", "Manneken Pis"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0059 }
            Reponses := array{"Pantheon", "Burg Himeji", "Times Square", "Brooklyn Bridge"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0060 }
            Reponses := array{"Marina Bay Sands", "Gateway Arch", "Fushimi Inari-Schrein", "Zeusstatue"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0061 }
            Reponses := array{"Hoover-Talsperre", "Borobudur", "Petronas Towers", "Niagarafaelle"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0062 }
            Reponses := array{"Potala-Palast", "Westminster Abbey", "Brooklyn Bridge", "Schloss Windsor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0063 }
            Reponses := array{"Hagia Sophia", "Blaue Moschee", "Pompeji", "Fushimi Inari-Schrein"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0064 }
            Reponses := array{"Petersdom", "Blaue Moschee", "Pont du Gard", "Karlsbruecke"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0065 }
            Reponses := array{"Terrakotta-Armee", "Space Needle", "Westminster Abbey", "Atomium"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0066 }
            Reponses := array{"Niagarafaelle", "Rialtobruecke", "Zeusstatue", "Kleine Meerjungfrau"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0067 }
            Reponses := array{"Pompeji", "Manneken Pis", "Markusdom", "Karlsbruecke"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0068 }
            Reponses := array{"Pantheon", "Rialtobruecke", "Kreml", "Markusdom"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0069 }
            Reponses := array{"Terrakotta-Armee", "Verbotene Stadt", "Rialtobruecke", "Space Needle"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0070 }
            Reponses := array{"Kleine Meerjungfrau", "Pont du Gard", "Alhambra", "Mailaender Dom"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0071 }
            Reponses := array{"Zeusstatue", "Karlsbruecke", "Rialtobruecke", "Dom von Florenz"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0072 }
            Reponses := array{"Karlsbruecke", "Times Square", "Angkor Wat", "Pompeji"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0073 }
            Reponses := array{"Pantheon", "Hoover-Talsperre", "Edinburgh Castle", "Manneken Pis"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0074 }
            Reponses := array{"Buckingham Palace", "Schloss Windsor", "Panamakanal", "Burj Al Arab"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0075 }
            Reponses := array{"Akropolis", "Koelner Dom", "Fushimi Inari-Schrein", "Space Needle"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0076 }
            Reponses := array{"Kleine Meerjungfrau", "Westminster Abbey", "Alhambra", "Sacre-Coeur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0077 }
            Reponses := array{"Schloss Chambord", "Brooklyn Bridge", "Angkor Wat", "Mailaender Dom"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0078 }
            Reponses := array{"Terrakotta-Armee", "Burj Al Arab", "Karnak-Tempel", "Pont du Gard"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0079 }
            Reponses := array{"Kleine Meerjungfrau", "Koelner Dom", "Fushimi Inari-Schrein", "Marina Bay Sands"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0080 }
            Reponses := array{"Kleine Meerjungfrau", "Gateway Arch", "Burj Al Arab", "Times Square"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0081 }
            Reponses := array{"Krak des Chevaliers", "Tafelberg", "Transsibirische Eisenbahn", "Hallgrimskirkja"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0082 }
            Reponses := array{"Scheich-Zayid-Moschee", "Registan", "Minakshi-Tempel", "Schloss Bran"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0083 }
            Reponses := array{"Wat Arun", "Transsibirische Eisenbahn", "Hallgrimskirkja", "Schloss Bran"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0084 }
            Reponses := array{"Rotes Fort", "Shwedagon-Pagode", "Krak des Chevaliers", "Hallgrimskirkja"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0085 }
            Reponses := array{"Park Guell", "Prambanan", "Meidan-e Emam", "Kischi Pogost"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0086 }
            Reponses := array{"Grosse Moschee von Djenne", "Meidan-e Emam", "Bagan", "Salar de Uyuni"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0087 }
            Reponses := array{"Lalibela", "Teotihuacan", "Tikal", "Sigiriya"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0088 }
            Reponses := array{"Kischi Pogost", "Rocamadour", "Minakshi-Tempel", "Sigiriya"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0089 }
            Reponses := array{"Todai-ji", "Baalbek", "Goldener Tempel", "Grosse Moschee von Djenne"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0090 }
            Reponses := array{"Schloss Bran", "Registan", "Rotes Fort", "Tafelberg"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0091 }
            Reponses := array{"Wat Arun", "Baalbek", "Hawa Mahal", "Sacsayhuaman"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0092 }
            Reponses := array{"Mezquita von Cordoba", "Kischi Pogost", "Salar de Uyuni", "Registan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0093 }
            Reponses := array{"Todai-ji", "Rocamadour", "Meidan-e Emam", "Park Guell"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0094 }
            Reponses := array{"Todai-ji", "Casa Mila", "Meteora", "Zitadelle von Aleppo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0095 }
            Reponses := array{"Krak des Chevaliers", "Zitadelle von Aleppo", "Minakshi-Tempel", "Registan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0096 }
            Reponses := array{"Sigiriya", "Alcazar von Segovia", "Todai-ji", "Baalbek"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0097 }
            Reponses := array{"Meidan-e Emam", "Tikal", "Transsibirische Eisenbahn", "Leptis Magna"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0098 }
            Reponses := array{"Grosse Moschee von Djenne", "Teotihuacan", "Gross-Simbabwe", "Hallgrimskirkja"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0099 }
            Reponses := array{"Transsibirische Eisenbahn", "Lalibela", "Tikal", "Gross-Simbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0100 }
            Reponses := array{"Tafelberg", "Scheich-Zayid-Moschee", "Gross-Simbabwe", "Wat Arun"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0101 }
            Reponses := array{"Baalbek", "Teotihuacan", "Scheich-Zayid-Moschee", "Goldener Tempel"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0102 }
            Reponses := array{"Park Guell", "Meidan-e Emam", "Tikal", "Nazca-Linien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0103 }
            Reponses := array{"Nazca-Linien", "Zitadelle von Aleppo", "Hawa Mahal", "Transsibirische Eisenbahn"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0104 }
            Reponses := array{"Schloss Bran", "Sacsayhuaman", "Hallgrimskirkja", "Gross-Simbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0105 }
            Reponses := array{"Grosse Moschee von Djenne", "Rotes Fort", "Salar de Uyuni", "Zitadelle von Aleppo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0106 }
            Reponses := array{"Teotihuacan", "Zitadelle von Aleppo", "Bagan", "Casa Mila"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0107 }
            Reponses := array{"Salar de Uyuni", "Transsibirische Eisenbahn", "Alcazar von Segovia", "Park Guell"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0108 }
            Reponses := array{"Transsibirische Eisenbahn", "Alcazar von Segovia", "Park Guell", "Casa Mila"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0109 }
            Reponses := array{"Carcassonne", "Schloss Bran", "Rocamadour", "Mezquita von Cordoba"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0110 }
            Reponses := array{"Rotes Fort", "Hallgrimskirkja", "Registan", "Carcassonne"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0111 }
            Reponses := array{"Tafelberg", "Rocamadour", "Park Guell", "Grosse Moschee von Djenne"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0112 }
            Reponses := array{"Lalibela", "Grosse Moschee von Djenne", "Scheich-Zayid-Moschee", "Plitvicer Seen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0113 }
            Reponses := array{"Meteora", "Wat Arun", "Bagan", "Mezquita von Cordoba"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0114 }
            Reponses := array{"Hawa Mahal", "Plitvicer Seen", "Salar de Uyuni", "Schloss Bran"}
            BonneReponse := 3
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0115 }
            Reponses := array{"Baalbek", "Meteora", "Kischi Pogost", "Rotes Fort"}
            BonneReponse := 2
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0116 }
            Reponses := array{"Carcassonne", "Transsibirische Eisenbahn", "Rotes Fort", "Krak des Chevaliers"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0117 }
            Reponses := array{"Itsukushima-Schrein", "Bagan", "Kischi Pogost", "Rotes Fort"}
            BonneReponse := 0
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0118 }
            Reponses := array{"Plitvicer Seen", "Todai-ji", "Sigiriya", "Zitadelle von Aleppo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0119 }
            Reponses := array{"Sigiriya", "Uluru", "Carcassonne", "Scheich-Zayid-Moschee"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bauwerk ist das?"
            Image := option{ monuments.mon_0120 }
            Reponses := array{"Tikal", "Itsukushima-Schrein", "Transsibirische Eisenbahn", "Tafelberg"}
            BonneReponse := 3

MakeMonumentsQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0001 }
            Reponses := array{"Tower Bridge", "Mont-Saint-Michel", "Torre Eiffel", "Cristo Redentore"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0002 }
            Reponses := array{"Cristo Redentore", "Partenone", "Statua della Liberta", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0003 }
            Reponses := array{"Notre-Dame di Parigi", "Grande Muraglia cinese", "Piramide di Giza", "Statua della Liberta"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0004 }
            Reponses := array{"Statua della Liberta", "Piramide di Giza", "Colosseo", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0005 }
            Reponses := array{"Machu Picchu", "Louvre", "Taj Mahal", "Castello di Neuschwanstein"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0006 }
            Reponses := array{"Casa Bianca", "Piramide di Giza", "Monte Rushmore", "Petra"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0007 }
            Reponses := array{"Big Ben", "Torre di Pisa", "Sagrada Familia", "Mont-Saint-Michel"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0008 }
            Reponses := array{"Statua della Liberta", "Castello di Neuschwanstein", "Machu Picchu", "Notre-Dame di Parigi"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0009 }
            Reponses := array{"Petra", "Machu Picchu", "Arco di Trionfo", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0010 }
            Reponses := array{"Monte Rushmore", "Opera di Sydney", "Mont-Saint-Michel", "Arco di Trionfo"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0011 }
            Reponses := array{"Machu Picchu", "Sagrada Familia", "Porta di Brandeburgo", "Cristo Redentore"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0012 }
            Reponses := array{"Burj Khalifa", "Grande Muraglia cinese", "Taj Mahal", "Torre di Pisa"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0013 }
            Reponses := array{"Torre Eiffel", "Petra", "Porta di Brandeburgo", "Sagrada Familia"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0014 }
            Reponses := array{"Stonehenge", "Big Ben", "Colosseo", "Partenone"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0015 }
            Reponses := array{"Casa Bianca", "Machu Picchu", "Monte Rushmore", "Opera di Sydney"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0016 }
            Reponses := array{"Empire State Building", "Machu Picchu", "Cattedrale di San Basilio", "Golden Gate Bridge"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0017 }
            Reponses := array{"Golden Gate Bridge", "Torre Eiffel", "Statua della Liberta", "Empire State Building"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0018 }
            Reponses := array{"Big Ben", "Torre di Pisa", "Burj Khalifa", "Casa Bianca"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0019 }
            Reponses := array{"Grande Muraglia cinese", "Golden Gate Bridge", "Machu Picchu", "Colosseo"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0020 }
            Reponses := array{"Empire State Building", "Monte Rushmore", "Moai", "Arco di Trionfo"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0021 }
            Reponses := array{"Louvre", "Big Ben", "Sagrada Familia", "Statua della Liberta"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0022 }
            Reponses := array{"Tower Bridge", "Big Ben", "Cristo Redentore", "Castello di Neuschwanstein"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0023 }
            Reponses := array{"Colosseo", "Cristo Redentore", "Cattedrale di San Basilio", "Monte Rushmore"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0024 }
            Reponses := array{"Mont-Saint-Michel", "Torre di Pisa", "Grande Muraglia cinese", "Partenone"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0025 }
            Reponses := array{"Statua della Liberta", "Arco di Trionfo", "Petra", "Louvre"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0026 }
            Reponses := array{"Taj Mahal", "Reggia di Versailles", "Mont-Saint-Michel", "Stonehenge"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0027 }
            Reponses := array{"Statua della Liberta", "Notre-Dame di Parigi", "Mont-Saint-Michel", "Golden Gate Bridge"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0028 }
            Reponses := array{"Arco di Trionfo", "Louvre", "Burj Khalifa", "Casa Bianca"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0029 }
            Reponses := array{"Louvre", "Monte Rushmore", "Torre di Pisa", "Porta di Brandeburgo"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0030 }
            Reponses := array{"Castello di Neuschwanstein", "Opera di Sydney", "Stonehenge", "Monte Rushmore"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0031 }
            Reponses := array{"Abbazia di Westminster", "Buckingham Palace", "Pantheon", "Basilica di San Pietro"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0032 }
            Reponses := array{"Esercito di terracotta", "Angkor Wat", "Abbazia di Westminster", "Chichen Itza"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0033 }
            Reponses := array{"Alhambra", "Castello di Edimburgo", "Acropoli di Atene", "Borobudur"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0034 }
            Reponses := array{"Santa Sofia", "Scritta Hollywood", "Chichen Itza", "Pantheon"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0035 }
            Reponses := array{"Ponte Carlo", "Abbazia di Westminster", "Abu Simbel", "Chichen Itza"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0036 }
            Reponses := array{"Chichen Itza", "Space Needle", "Sacro Cuore", "Alhambra"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0037 }
            Reponses := array{"Citta Proibita", "Fontana di Trevi", "Buckingham Palace", "Ponte di Rialto"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0038 }
            Reponses := array{"Fontana di Trevi", "Ponte di Brooklyn", "Marina Bay Sands", "Cremlino"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0039 }
            Reponses := array{"Buckingham Palace", "Sirenetta di Copenaghen", "Abbazia di Westminster", "Cremlino"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0040 }
            Reponses := array{"Pantheon", "Scritta Hollywood", "Ponte di Rialto", "Times Square"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0041 }
            Reponses := array{"Fontana di Trevi", "Burj Al Arab", "Times Square", "Pont du Gard"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0042 }
            Reponses := array{"Castello di Edimburgo", "Statua di Zeus", "Sacro Cuore", "Gateway Arch"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0043 }
            Reponses := array{"Basilica di San Pietro", "Torre di Londra", "Gateway Arch", "Fontana di Trevi"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0044 }
            Reponses := array{"Atomium", "Sirenetta di Copenaghen", "Sacro Cuore", "Castello di Himeji"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0045 }
            Reponses := array{"Atomium", "Ponte di Brooklyn", "Manneken Pis", "Duomo di Colonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0046 }
            Reponses := array{"Cremlino", "Burj Al Arab", "Alhambra", "Times Square"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0047 }
            Reponses := array{"Sacro Cuore", "Ponte di Rialto", "Valle dei Re", "Burj Al Arab"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0048 }
            Reponses := array{"Marina Bay Sands", "Chichen Itza", "Torri Petronas", "Pont du Gard"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0049 }
            Reponses := array{"Cascate del Niagara", "Esercito di terracotta", "Gateway Arch", "Tempio di Karnak"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0050 }
            Reponses := array{"Ponte di Brooklyn", "Space Needle", "Burj Al Arab", "Scritta Hollywood"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0051 }
            Reponses := array{"Cascate del Niagara", "Scritta Hollywood", "Abbazia di Westminster", "Castello di Windsor"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0052 }
            Reponses := array{"Esercito di terracotta", "Castello di Chambord", "Space Needle", "Diga di Hoover"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0053 }
            Reponses := array{"Canale di Panama", "Times Square", "Manneken Pis", "Cascate del Niagara"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0054 }
            Reponses := array{"Acropoli di Atene", "Sirenetta di Copenaghen", "Canale di Suez", "Pantheon"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0055 }
            Reponses := array{"Burj Al Arab", "Buckingham Palace", "Acropoli di Atene", "Abu Simbel"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0056 }
            Reponses := array{"Times Square", "Tempio di Karnak", "Moschea Blu", "Alhambra"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0057 }
            Reponses := array{"Valle dei Re", "Acropoli di Atene", "Esercito di terracotta", "Citta Proibita"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0058 }
            Reponses := array{"Esercito di terracotta", "Ponte Carlo", "Tempio di Karnak", "Manneken Pis"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0059 }
            Reponses := array{"Pantheon", "Castello di Himeji", "Times Square", "Ponte di Brooklyn"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0060 }
            Reponses := array{"Marina Bay Sands", "Gateway Arch", "Santuario Fushimi Inari", "Statua di Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0061 }
            Reponses := array{"Diga di Hoover", "Borobudur", "Torri Petronas", "Cascate del Niagara"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0062 }
            Reponses := array{"Palazzo del Potala", "Abbazia di Westminster", "Ponte di Brooklyn", "Castello di Windsor"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0063 }
            Reponses := array{"Santa Sofia", "Moschea Blu", "Pompei", "Santuario Fushimi Inari"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0064 }
            Reponses := array{"Basilica di San Pietro", "Moschea Blu", "Pont du Gard", "Ponte Carlo"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0065 }
            Reponses := array{"Esercito di terracotta", "Space Needle", "Abbazia di Westminster", "Atomium"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0066 }
            Reponses := array{"Cascate del Niagara", "Ponte di Rialto", "Statua di Zeus", "Sirenetta di Copenaghen"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0067 }
            Reponses := array{"Pompei", "Manneken Pis", "Basilica di San Marco", "Ponte Carlo"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0068 }
            Reponses := array{"Pantheon", "Ponte di Rialto", "Cremlino", "Basilica di San Marco"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0069 }
            Reponses := array{"Esercito di terracotta", "Citta Proibita", "Ponte di Rialto", "Space Needle"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0070 }
            Reponses := array{"Sirenetta di Copenaghen", "Pont du Gard", "Alhambra", "Duomo di Milano"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0071 }
            Reponses := array{"Statua di Zeus", "Ponte Carlo", "Ponte di Rialto", "Duomo di Firenze"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0072 }
            Reponses := array{"Ponte Carlo", "Times Square", "Angkor Wat", "Pompei"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0073 }
            Reponses := array{"Pantheon", "Diga di Hoover", "Castello di Edimburgo", "Manneken Pis"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0074 }
            Reponses := array{"Buckingham Palace", "Castello di Windsor", "Canale di Panama", "Burj Al Arab"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0075 }
            Reponses := array{"Acropoli di Atene", "Duomo di Colonia", "Santuario Fushimi Inari", "Space Needle"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0076 }
            Reponses := array{"Sirenetta di Copenaghen", "Abbazia di Westminster", "Alhambra", "Sacro Cuore"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0077 }
            Reponses := array{"Castello di Chambord", "Ponte di Brooklyn", "Angkor Wat", "Duomo di Milano"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0078 }
            Reponses := array{"Esercito di terracotta", "Burj Al Arab", "Tempio di Karnak", "Pont du Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0079 }
            Reponses := array{"Sirenetta di Copenaghen", "Duomo di Colonia", "Santuario Fushimi Inari", "Marina Bay Sands"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0080 }
            Reponses := array{"Sirenetta di Copenaghen", "Gateway Arch", "Burj Al Arab", "Times Square"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0081 }
            Reponses := array{"Krak dei Cavalieri", "Table Mountain", "Transiberiana", "Hallgrimskirkja"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0082 }
            Reponses := array{"Moschea Sheikh Zayed", "Registan", "Tempio di Meenakshi", "Castello di Bran"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0083 }
            Reponses := array{"Wat Arun", "Transiberiana", "Hallgrimskirkja", "Castello di Bran"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0084 }
            Reponses := array{"Forte Rosso", "Pagoda Shwedagon", "Krak dei Cavalieri", "Hallgrimskirkja"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0085 }
            Reponses := array{"Parco Guell", "Prambanan", "Piazza Naqsh-e Jahan", "Kizhi"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0086 }
            Reponses := array{"Grande Moschea di Djenne", "Piazza Naqsh-e Jahan", "Bagan", "Salar de Uyuni"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0087 }
            Reponses := array{"Lalibela", "Teotihuacan", "Tikal", "Sigiriya"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0088 }
            Reponses := array{"Kizhi", "Rocamadour", "Tempio di Meenakshi", "Sigiriya"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0089 }
            Reponses := array{"Todai-ji", "Baalbek", "Tempio d'Oro", "Grande Moschea di Djenne"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0090 }
            Reponses := array{"Castello di Bran", "Registan", "Forte Rosso", "Table Mountain"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0091 }
            Reponses := array{"Wat Arun", "Baalbek", "Hawa Mahal", "Sacsayhuaman"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0092 }
            Reponses := array{"Moschea di Cordova", "Kizhi", "Salar de Uyuni", "Registan"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0093 }
            Reponses := array{"Todai-ji", "Rocamadour", "Piazza Naqsh-e Jahan", "Parco Guell"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0094 }
            Reponses := array{"Todai-ji", "Casa Mila", "Meteora", "Cittadella di Aleppo"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0095 }
            Reponses := array{"Krak dei Cavalieri", "Cittadella di Aleppo", "Tempio di Meenakshi", "Registan"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0096 }
            Reponses := array{"Sigiriya", "Alcazar di Segovia", "Todai-ji", "Baalbek"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0097 }
            Reponses := array{"Piazza Naqsh-e Jahan", "Tikal", "Transiberiana", "Leptis Magna"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0098 }
            Reponses := array{"Grande Moschea di Djenne", "Teotihuacan", "Grande Zimbabwe", "Hallgrimskirkja"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0099 }
            Reponses := array{"Transiberiana", "Lalibela", "Tikal", "Grande Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0100 }
            Reponses := array{"Table Mountain", "Moschea Sheikh Zayed", "Grande Zimbabwe", "Wat Arun"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0101 }
            Reponses := array{"Baalbek", "Teotihuacan", "Moschea Sheikh Zayed", "Tempio d'Oro"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0102 }
            Reponses := array{"Parco Guell", "Piazza Naqsh-e Jahan", "Tikal", "Linee di Nazca"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0103 }
            Reponses := array{"Linee di Nazca", "Cittadella di Aleppo", "Hawa Mahal", "Transiberiana"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0104 }
            Reponses := array{"Castello di Bran", "Sacsayhuaman", "Hallgrimskirkja", "Grande Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0105 }
            Reponses := array{"Grande Moschea di Djenne", "Forte Rosso", "Salar de Uyuni", "Cittadella di Aleppo"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0106 }
            Reponses := array{"Teotihuacan", "Cittadella di Aleppo", "Bagan", "Casa Mila"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0107 }
            Reponses := array{"Salar de Uyuni", "Transiberiana", "Alcazar di Segovia", "Parco Guell"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0108 }
            Reponses := array{"Transiberiana", "Alcazar di Segovia", "Parco Guell", "Casa Mila"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0109 }
            Reponses := array{"Carcassonne", "Castello di Bran", "Rocamadour", "Moschea di Cordova"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0110 }
            Reponses := array{"Forte Rosso", "Hallgrimskirkja", "Registan", "Carcassonne"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0111 }
            Reponses := array{"Table Mountain", "Rocamadour", "Parco Guell", "Grande Moschea di Djenne"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0112 }
            Reponses := array{"Lalibela", "Grande Moschea di Djenne", "Moschea Sheikh Zayed", "Laghi di Plitvice"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0113 }
            Reponses := array{"Meteora", "Wat Arun", "Bagan", "Moschea di Cordova"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0114 }
            Reponses := array{"Hawa Mahal", "Laghi di Plitvice", "Salar de Uyuni", "Castello di Bran"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0115 }
            Reponses := array{"Baalbek", "Meteora", "Kizhi", "Forte Rosso"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0116 }
            Reponses := array{"Carcassonne", "Transiberiana", "Forte Rosso", "Krak dei Cavalieri"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0117 }
            Reponses := array{"Santuario di Itsukushima", "Bagan", "Kizhi", "Forte Rosso"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0118 }
            Reponses := array{"Laghi di Plitvice", "Todai-ji", "Sigiriya", "Cittadella di Aleppo"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0119 }
            Reponses := array{"Sigiriya", "Uluru", "Carcassonne", "Moschea Sheikh Zayed"}
            BonneReponse := 1
        question:
            Enonce := "Quale monumento e questo?"
            Image := option{ monuments.mon_0120 }
            Reponses := array{"Tikal", "Santuario di Itsukushima", "Transiberiana", "Table Mountain"}
            BonneReponse := 3

MakeMonumentsQuestions() : []question =
    MakeMonumentsQuestionsFR()
