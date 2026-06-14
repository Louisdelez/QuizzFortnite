# ============================================================
# culture_bank.verse - Banque CULTURE GENERALE (900, texte seul, 5 langues).
# GENERE par tools/banks/build_culture.py - NE PAS EDITER A LA MAIN.
# 3 paliers (Facile/Moyen/Difficile = 300). Ordre des reponses melange par question.
# ============================================================

CultureDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}


MakeCultureQuestionsFR() : []question =
    array:
        question:
            Enonce := "En quelle annee debute la Premiere Guerre mondiale ?"
            Reponses := array{"1914", "1939", "1905", "1918"}
            BonneReponse := 0
        question:
            Enonce := "Quel evenement marque le 14 juillet 1789 ?"
            Reponses := array{"Le sacre de Napoleon", "La prise de la Bastille", "La bataille de Waterloo", "La fete nationale americaine"}
            BonneReponse := 1
        question:
            Enonce := "Qui fut le premier empereur des Francais ?"
            Reponses := array{"Charlemagne", "Jules Cesar", "Louis XIV", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee est tombe le mur de Berlin ?"
            Reponses := array{"1989", "1975", "1961", "1991"}
            BonneReponse := 0
        question:
            Enonce := "Qui a atteint l'Amerique en 1492 ?"
            Reponses := array{"Magellan", "Vasco de Gama", "Christophe Colomb", "Marco Polo"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee se termine la Seconde Guerre mondiale en Europe ?"
            Reponses := array{"1950", "1939", "1918", "1945"}
            BonneReponse := 3
        question:
            Enonce := "Quel peuple a bati les pyramides de Gizeh ?"
            Reponses := array{"Les Romains", "Les Egyptiens", "Les Azteques", "Les Grecs"}
            BonneReponse := 1
        question:
            Enonce := "Qui dirigeait l'Allemagne nazie ?"
            Reponses := array{"Adolf Hitler", "Winston Churchill", "Benito Mussolini", "Joseph Staline"}
            BonneReponse := 0
        question:
            Enonce := "Quelle reine a regne sur le Royaume-Uni de 1952 a 2022 ?"
            Reponses := array{"Victoria", "Elisabeth II", "Elisabeth Ire", "Marie Stuart"}
            BonneReponse := 1
        question:
            Enonce := "La guerre de Cent Ans a oppose la France a quel pays ?"
            Reponses := array{"L'Allemagne", "L'Espagne", "L'Angleterre", "L'Italie"}
            BonneReponse := 2
        question:
            Enonce := "Quel general romain a conquis la Gaule ?"
            Reponses := array{"Auguste", "Jules Cesar", "Neron", "Hannibal"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee ont eu lieu les attentats du 11-Septembre ?"
            Reponses := array{"2005", "1999", "2001", "1998"}
            BonneReponse := 2
        question:
            Enonce := "Quel president americain a aboli l'esclavage pendant la guerre de Secession ?"
            Reponses := array{"Abraham Lincoln", "Franklin Roosevelt", "George Washington", "John Kennedy"}
            BonneReponse := 0
        question:
            Enonce := "Quelle ville romaine fut ensevelie par le Vesuve en l'an 79 ?"
            Reponses := array{"Carthage", "Rome", "Pompei", "Athenes"}
            BonneReponse := 2
        question:
            Enonce := "Quel roi de France est surnomme le Roi-Soleil ?"
            Reponses := array{"Francois Ier", "Henri IV", "Louis XIV", "Louis XVI"}
            BonneReponse := 2
        question:
            Enonce := "Qui a mene la lutte non violente pour l'independance de l'Inde ?"
            Reponses := array{"Mao Zedong", "Churchill", "Nelson Mandela", "Gandhi"}
            BonneReponse := 3
        question:
            Enonce := "Quel ouvrage defensif gigantesque protege le nord de la Chine ?"
            Reponses := array{"La muraille de Babylone", "La Grande Muraille", "La ligne Maginot", "Le mur d'Hadrien"}
            BonneReponse := 1
        question:
            Enonce := "Qui fut le premier president des Etats-Unis ?"
            Reponses := array{"Benjamin Franklin", "George Washington", "Thomas Jefferson", "Abraham Lincoln"}
            BonneReponse := 1
        question:
            Enonce := "Quelle ville japonaise a subi la premiere bombe atomique en 1945 ?"
            Reponses := array{"Kyoto", "Tokyo", "Hiroshima", "Nagasaki"}
            BonneReponse := 2
        question:
            Enonce := "Quelle bataille de 1815 marque la defaite finale de Napoleon ?"
            Reponses := array{"Verdun", "Austerlitz", "Waterloo", "Marignan"}
            BonneReponse := 2
        question:
            Enonce := "Quel president americain a ete assassine a Dallas en 1963 ?"
            Reponses := array{"Ronald Reagan", "Abraham Lincoln", "John F. Kennedy", "Richard Nixon"}
            BonneReponse := 2
        question:
            Enonce := "Quel navigateur a dirige la premiere expedition a faire le tour du monde ?"
            Reponses := array{"Magellan", "Christophe Colomb", "James Cook", "Vasco de Gama"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee la France a-t-elle aboli la peine de mort ?"
            Reponses := array{"1945", "1981", "1968", "1995"}
            BonneReponse := 1
        question:
            Enonce := "Quel empereur francais a vendu la Louisiane aux Etats-Unis ?"
            Reponses := array{"Napoleon III", "Louis XVI", "Charles X", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "Quelle dirigeante a ete surnommee la Dame de fer au Royaume-Uni ?"
            Reponses := array{"Angela Merkel", "Theresa May", "Elisabeth II", "Margaret Thatcher"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la capitale de l'Italie ?"
            Reponses := array{"Milan", "Rome", "Naples", "Venise"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve traverse Paris ?"
            Reponses := array{"La Loire", "Le Rhone", "La Garonne", "La Seine"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la plus haute montagne du monde ?"
            Reponses := array{"Le Kilimandjaro", "Le K2", "Le mont Blanc", "L'Everest"}
            BonneReponse := 3
        question:
            Enonce := "Quel ocean borde la cote ouest de la France ?"
            Reponses := array{"L'Arctique", "L'ocean Indien", "Le Pacifique", "L'Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand desert chaud du monde ?"
            Reponses := array{"Le Sahara", "Le Gobi", "Le desert d'Atacama", "Le Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la capitale du Japon ?"
            Reponses := array{"Pekin", "Seoul", "Tokyo", "Osaka"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la forme d'une botte ?"
            Reponses := array{"L'Espagne", "La Grece", "L'Italie", "Le Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus grand pays du monde par sa superficie ?"
            Reponses := array{"Les Etats-Unis", "Le Canada", "La Chine", "La Russie"}
            BonneReponse := 3
        question:
            Enonce := "Sur quel continent se trouve l'Egypte ?"
            Reponses := array{"L'Europe", "L'Asie", "L'Afrique", "L'Oceanie"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale de l'Espagne ?"
            Reponses := array{"Valence", "Madrid", "Barcelone", "Seville"}
            BonneReponse := 1
        question:
            Enonce := "Quelle mer borde la Cote d'Azur ?"
            Reponses := array{"La Mediterranee", "La mer du Nord", "La mer Baltique", "La Manche"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus grand ocean du monde ?"
            Reponses := array{"L'ocean Indien", "L'Atlantique", "Le Pacifique", "L'ocean Arctique"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale des Etats-Unis ?"
            Reponses := array{"Los Angeles", "Chicago", "Washington", "New York"}
            BonneReponse := 2
        question:
            Enonce := "Quelle chaine de montagnes separe la France de l'Espagne ?"
            Reponses := array{"Les Vosges", "Les Pyrenees", "Les Alpes", "Le Jura"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale de l'Allemagne ?"
            Reponses := array{"Munich", "Berlin", "Francfort", "Hambourg"}
            BonneReponse := 1
        question:
            Enonce := "Quel bras de mer separe la France du Royaume-Uni ?"
            Reponses := array{"La mer Egee", "La Manche", "La mer Noire", "Le golfe de Gascogne"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale du Royaume-Uni ?"
            Reponses := array{"Londres", "Manchester", "Liverpool", "Edimbourg"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve traverse l'Egypte ?"
            Reponses := array{"Le Nil", "Le Congo", "Le Tigre", "L'Amazone"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la capitale de la Belgique ?"
            Reponses := array{"Liege", "Bruxelles", "Bruges", "Anvers"}
            BonneReponse := 1
        question:
            Enonce := "Sur quel continent vivent les kangourous sauvages ?"
            Reponses := array{"L'Afrique", "L'Asie", "L'Australie", "L'Amerique du Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale du Portugal ?"
            Reponses := array{"Madrid", "Porto", "Lisbonne", "Seville"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la plus haute montagne de France et des Alpes ?"
            Reponses := array{"Le mont Blanc", "Le pic du Midi", "Le mont Ventoux", "Le Puy de Dome"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est surnomme le pays du Soleil-Levant ?"
            Reponses := array{"La Thailande", "La Chine", "Le Japon", "La Coree du Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale de la Russie ?"
            Reponses := array{"Varsovie", "Moscou", "Kiev", "Saint-Petersbourg"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays compte le plus d'habitants au monde (depuis 2023) ?"
            Reponses := array{"La Chine", "L'Indonesie", "L'Inde", "Les Etats-Unis"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la formule chimique de l'eau ?"
            Reponses := array{"O2", "H2O", "CO2", "H2O2"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le symbole chimique de l'or ?"
            Reponses := array{"Or", "Go", "Ag", "Au"}
            BonneReponse := 3
        question:
            Enonce := "Quel gaz est indispensable a la respiration humaine ?"
            Reponses := array{"Le dioxyde de carbone", "L'helium", "L'oxygene", "L'azote"}
            BonneReponse := 2
        question:
            Enonce := "A quelle temperature l'eau bout-elle au niveau de la mer ?"
            Reponses := array{"90 C", "100 C", "50 C", "0 C"}
            BonneReponse := 1
        question:
            Enonce := "A quelle temperature l'eau gele-t-elle ?"
            Reponses := array{"-10 C", "4 C", "0 C", "32 C"}
            BonneReponse := 2
        question:
            Enonce := "Quel metal est liquide a temperature ambiante ?"
            Reponses := array{"Le mercure", "Le cuivre", "Le fer", "Le plomb"}
            BonneReponse := 0
        question:
            Enonce := "Quelle force nous attire vers le sol ?"
            Reponses := array{"La gravite", "L'electricite", "Le magnetisme", "La friction"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le symbole chimique du fer ?"
            Reponses := array{"F", "Fr", "Ir", "Fe"}
            BonneReponse := 3
        question:
            Enonce := "Quel gaz les plantes absorbent-elles pour la photosynthese ?"
            Reponses := array{"L'hydrogene", "L'oxygene", "L'azote", "Le dioxyde de carbone"}
            BonneReponse := 3
        question:
            Enonce := "Quel scientifique a formule la celebre equation E = mc^2 ?"
            Reponses := array{"Nikola Tesla", "Isaac Newton", "Albert Einstein", "Galilee"}
            BonneReponse := 2
        question:
            Enonce := "Quel instrument mesure la temperature ?"
            Reponses := array{"La boussole", "Le barometre", "Le chronometre", "Le thermometre"}
            BonneReponse := 3
        question:
            Enonce := "Quel gaz, plus leger que l'air, fait flotter les ballons ?"
            Reponses := array{"Le dioxyde de carbone", "L'oxygene", "L'helium", "Le methane"}
            BonneReponse := 2
        question:
            Enonce := "Quel savant a enonce la loi de la gravitation universelle ?"
            Reponses := array{"Isaac Newton", "Einstein", "Pasteur", "Copernic"}
            BonneReponse := 0
        question:
            Enonce := "Quel gaz est le plus abondant dans l'atmosphere terrestre ?"
            Reponses := array{"L'argon", "L'azote", "L'oxygene", "Le dioxyde de carbone"}
            BonneReponse := 1
        question:
            Enonce := "Quel est l'etat de l'eau lorsqu'elle est gelee ?"
            Reponses := array{"Solide", "Plasma", "Liquide", "Gazeux"}
            BonneReponse := 0
        question:
            Enonce := "Quelle particule de l'atome porte une charge negative ?"
            Reponses := array{"L'electron", "Le proton", "Le neutron", "Le photon"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument permet d'observer les objets tres petits ?"
            Reponses := array{"Le microscope", "Le telescope", "Les jumelles", "La loupe geante"}
            BonneReponse := 0
        question:
            Enonce := "Quel metal leger est utilise pour les canettes et les avions ?"
            Reponses := array{"L'aluminium", "Le mercure", "L'or", "Le plomb"}
            BonneReponse := 0
        question:
            Enonce := "Combien de couleurs distingue-t-on classiquement dans un arc-en-ciel ?"
            Reponses := array{"5", "10", "3", "7"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le symbole chimique du sodium ?"
            Reponses := array{"So", "Sd", "S", "Na"}
            BonneReponse := 3
        question:
            Enonce := "Quel astre est responsable des marees sur Terre ?"
            Reponses := array{"Venus", "La Lune", "Mars", "Le vent"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est l'unite de mesure de l'intensite du courant electrique ?"
            Reponses := array{"Le joule", "Le watt", "L'ampere", "Le metre"}
            BonneReponse := 2
        question:
            Enonce := "Que mesure-t-on en degres Celsius ?"
            Reponses := array{"Le temps", "La distance", "La temperature", "Le poids"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est l'unite de base de la matiere ?"
            Reponses := array{"Le grain", "La molecule", "La cellule", "L'atome"}
            BonneReponse := 3
        question:
            Enonce := "Quel gaz produit-on en faisant bruler du carbone ?"
            Reponses := array{"L'oxygene", "L'helium", "L'hydrogene", "Le dioxyde de carbone"}
            BonneReponse := 3
        question:
            Enonce := "Combien de poumons possede l'etre humain ?"
            Reponses := array{"3", "1", "4", "2"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe pompe le sang dans le corps ?"
            Reponses := array{"Les poumons", "L'estomac", "Le coeur", "Le foie"}
            BonneReponse := 2
        question:
            Enonce := "Combien de dents possede un adulte (dents de sagesse comprises) ?"
            Reponses := array{"20", "28", "36", "32"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe digere principalement les aliments ?"
            Reponses := array{"Le poumon", "L'estomac", "Le cerveau", "Le coeur"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe est le centre du systeme nerveux ?"
            Reponses := array{"Le rein", "Le foie", "Le coeur", "Le cerveau"}
            BonneReponse := 3
        question:
            Enonce := "Comment appelle-t-on l'os de la cuisse ?"
            Reponses := array{"L'humerus", "Le femur", "Le tibia", "La clavicule"}
            BonneReponse := 1
        question:
            Enonce := "Quel groupe d'animaux allaite ses petits ?"
            Reponses := array{"Les oiseaux", "Les poissons", "Les mammiferes", "Les reptiles"}
            BonneReponse := 2
        question:
            Enonce := "Combien de pattes possede une araignee ?"
            Reponses := array{"4", "8", "10", "6"}
            BonneReponse := 1
        question:
            Enonce := "Combien de pattes possede un insecte ?"
            Reponses := array{"6", "2", "4", "8"}
            BonneReponse := 0
        question:
            Enonce := "Que produisent les abeilles ?"
            Reponses := array{"Le lait", "La soie", "Le miel", "La cire d'oreille"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus grand animal du monde ?"
            Reponses := array{"L'elephant", "Le requin blanc", "La baleine bleue", "Le diplodocus"}
            BonneReponse := 2
        question:
            Enonce := "Combien de chambres compte le coeur humain ?"
            Reponses := array{"2", "4", "3", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quelle vitamine est produite grace au soleil ?"
            Reponses := array{"La vitamine A", "La vitamine B12", "La vitamine C", "La vitamine D"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe filtre le sang et produit l'urine ?"
            Reponses := array{"Le foie", "Les reins", "Le coeur", "Les poumons"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand organe du corps humain ?"
            Reponses := array{"Les poumons", "Les intestins", "Le foie", "La peau"}
            BonneReponse := 3
        question:
            Enonce := "Quelle cellule sanguine transporte l'oxygene ?"
            Reponses := array{"Le globule rouge", "Le globule blanc", "Le neurone", "La plaquette"}
            BonneReponse := 0
        question:
            Enonce := "Quel reptile peut changer de couleur ?"
            Reponses := array{"Le cameleon", "La tortue", "Le crocodile", "Le cobra"}
            BonneReponse := 0
        question:
            Enonce := "Combien de sens possede classiquement l'etre humain ?"
            Reponses := array{"6", "7", "5", "3"}
            BonneReponse := 2
        question:
            Enonce := "Quel gaz expirons-nous principalement ?"
            Reponses := array{"L'hydrogene", "L'oxygene", "L'helium", "Le dioxyde de carbone"}
            BonneReponse := 3
        question:
            Enonce := "Quel organe permet de respirer ?"
            Reponses := array{"Les poumons", "Les reins", "Le foie", "Le coeur"}
            BonneReponse := 0
        question:
            Enonce := "Combien de doigts compte une main humaine ?"
            Reponses := array{"10", "6", "5", "4"}
            BonneReponse := 2
        question:
            Enonce := "Quel liquide rouge circule dans nos vaisseaux ?"
            Reponses := array{"La bile", "Le sang", "La lymphe", "La salive"}
            BonneReponse := 1
        question:
            Enonce := "Quel sens est associe aux yeux ?"
            Reponses := array{"Le gout", "L'ouie", "La vue", "L'odorat"}
            BonneReponse := 2
        question:
            Enonce := "De quoi se nourrit un animal herbivore ?"
            Reponses := array{"D'insectes uniquement", "De poissons", "De plantes", "De viande"}
            BonneReponse := 2
        question:
            Enonce := "Quel organe humain peut se regenerer en grande partie ?"
            Reponses := array{"Le coeur", "Le cerveau", "Le foie", "L'oeil"}
            BonneReponse := 2
        question:
            Enonce := "Quel est l'animal terrestre le plus rapide ?"
            Reponses := array{"Le guepard", "Le cheval", "Le levrier", "Le lion"}
            BonneReponse := 0
        question:
            Enonce := "Quel animal est surnomme le roi des animaux ?"
            Reponses := array{"L'elephant", "L'aigle", "Le lion", "Le tigre"}
            BonneReponse := 2
        question:
            Enonce := "Quel grand oiseau africain ne vole pas mais court tres vite ?"
            Reponses := array{"L'autruche", "Le flamant rose", "Le toucan", "L'aigle"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus grand animal terrestre ?"
            Reponses := array{"L'elephant", "La girafe", "L'hippopotame", "Le rhinoceros"}
            BonneReponse := 0
        question:
            Enonce := "Quel arbre produit les glands ?"
            Reponses := array{"Le pin", "L'erable", "Le chene", "Le bouleau"}
            BonneReponse := 2
        question:
            Enonce := "Quel animal possede une trompe ?"
            Reponses := array{"Le rhinoceros", "Le tapir", "L'elephant", "Le buffle"}
            BonneReponse := 2
        question:
            Enonce := "Quel oiseau symbolise la paix ?"
            Reponses := array{"Le corbeau", "Le moineau", "La colombe", "Le faucon"}
            BonneReponse := 2
        question:
            Enonce := "Combien de bosses possede un dromadaire ?"
            Reponses := array{"0", "2", "3", "1"}
            BonneReponse := 3
        question:
            Enonce := "Quel animal hiberne durant l'hiver et est connu pour cela ?"
            Reponses := array{"Le loup", "Le cerf", "L'ours", "Le renard"}
            BonneReponse := 2
        question:
            Enonce := "Quelle fleur tourne sa tete vers le soleil ?"
            Reponses := array{"Le tournesol", "La rose", "Le coquelicot", "La tulipe"}
            BonneReponse := 0
        question:
            Enonce := "Quel oiseau noir et blanc vit en Antarctique et ne vole pas ?"
            Reponses := array{"Le manchot", "Le toucan", "Le hibou", "La mouette"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande foret tropicale du monde ?"
            Reponses := array{"La foret-noire", "Le bassin du Congo", "La foret de Siberie", "L'Amazonie"}
            BonneReponse := 3
        question:
            Enonce := "Quel reptile possede une carapace ?"
            Reponses := array{"Le crocodile", "Le serpent", "La tortue", "Le lezard"}
            BonneReponse := 2
        question:
            Enonce := "Quel mammifere est capable de voler ?"
            Reponses := array{"Le hibou", "L'ecureuil", "La chauve-souris", "Le colibri"}
            BonneReponse := 2
        question:
            Enonce := "Quel animal tisse une toile pour capturer ses proies ?"
            Reponses := array{"L'araignee", "L'abeille", "La fourmi", "La guepe"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand singe partage le plus de genes avec l'etre humain ?"
            Reponses := array{"L'orang-outan", "Le chimpanze", "Le babouin", "Le gorille"}
            BonneReponse := 1
        question:
            Enonce := "Quel oiseau nocturne hulule ?"
            Reponses := array{"Le rouge-gorge", "Le canard", "Le pigeon", "La chouette"}
            BonneReponse := 3
        question:
            Enonce := "La girafe est un animal..."
            Reponses := array{"insectivore", "herbivore", "carnivore", "omnivore"}
            BonneReponse := 1
        question:
            Enonce := "Quel insecte produit la soie ?"
            Reponses := array{"Le ver a soie", "La fourmi", "Le papillon", "L'abeille"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus grand felin du monde ?"
            Reponses := array{"Le lion", "Le jaguar", "Le tigre", "Le leopard"}
            BonneReponse := 2
        question:
            Enonce := "Quel mammifere marin tres intelligent saute hors de l'eau ?"
            Reponses := array{"Le dauphin", "Le requin", "Le phoque", "La meduse"}
            BonneReponse := 0
        question:
            Enonce := "Quel arbre garde ses aiguilles vertes toute l'annee ?"
            Reponses := array{"Le sapin", "Le chene", "Le platane", "Le saule"}
            BonneReponse := 0
        question:
            Enonce := "Quel animal est considere comme le meilleur ami de l'homme ?"
            Reponses := array{"Le chat", "Le cheval", "Le chien", "Le perroquet"}
            BonneReponse := 2
        question:
            Enonce := "Quel amphibien vit pres des mares et coasse ?"
            Reponses := array{"L'escargot", "La libellule", "La grenouille", "Le lezard"}
            BonneReponse := 2
        question:
            Enonce := "De quelle couleur devient une feuille morte en automne (souvent) ?"
            Reponses := array{"Marron/rousse", "Violette", "Bleue", "Noire"}
            BonneReponse := 0
        question:
            Enonce := "Quel astre se trouve au centre de notre systeme solaire ?"
            Reponses := array{"Jupiter", "La Terre", "Le Soleil", "La Lune"}
            BonneReponse := 2
        question:
            Enonce := "Quelle planete est surnommee la planete rouge ?"
            Reponses := array{"Saturne", "Mercure", "Mars", "Venus"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le satellite naturel de la Terre ?"
            Reponses := array{"Le Soleil", "Venus", "La Lune", "Mars"}
            BonneReponse := 2
        question:
            Enonce := "Qui fut le premier homme a marcher sur la Lune ?"
            Reponses := array{"Buzz Aldrin", "Neil Armstrong", "Youri Gagarine", "Thomas Pesquet"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus grande planete du systeme solaire ?"
            Reponses := array{"Jupiter", "Neptune", "La Terre", "Saturne"}
            BonneReponse := 0
        question:
            Enonce := "Combien de planetes compte le systeme solaire ?"
            Reponses := array{"8", "7", "10", "9"}
            BonneReponse := 0
        question:
            Enonce := "Quelle planete est celebre pour ses anneaux ?"
            Reponses := array{"Mars", "Saturne", "Mercure", "Venus"}
            BonneReponse := 1
        question:
            Enonce := "Comment s'appelle la galaxie qui contient notre systeme solaire ?"
            Reponses := array{"La galaxie du Tourbillon", "Andromede", "La Grande Ourse", "La Voie lactee"}
            BonneReponse := 3
        question:
            Enonce := "Quelle planete est la plus proche du Soleil ?"
            Reponses := array{"Venus", "Mars", "La Terre", "Mercure"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee l'homme a-t-il marche sur la Lune pour la premiere fois ?"
            Reponses := array{"1969", "1961", "1975", "1958"}
            BonneReponse := 0
        question:
            Enonce := "Quelle agence spatiale est americaine ?"
            Reponses := array{"La NASA", "Le CNES", "Roscosmos", "L'ESA"}
            BonneReponse := 0
        question:
            Enonce := "Quelle planete habitons-nous ?"
            Reponses := array{"La Terre", "Venus", "Mars", "La Lune"}
            BonneReponse := 0
        question:
            Enonce := "Comment appelle-t-on le phenomene ou la Lune cache le Soleil ?"
            Reponses := array{"Une aurore boreale", "Une eclipse solaire", "Une supernova", "Une comete"}
            BonneReponse := 1
        question:
            Enonce := "Quelle planete est surnommee l'etoile du Berger ?"
            Reponses := array{"Venus", "Saturne", "Mars", "Jupiter"}
            BonneReponse := 0
        question:
            Enonce := "Quel engin propulse les astronautes dans l'espace ?"
            Reponses := array{"Un avion", "Une fusee", "Un sous-marin", "Une montgolfiere"}
            BonneReponse := 1
        question:
            Enonce := "Quel telescope spatial celebre a ete lance en 1990 ?"
            Reponses := array{"Kepler", "Voyager", "Galileo", "Hubble"}
            BonneReponse := 3
        question:
            Enonce := "Combien de temps met la Terre pour faire le tour du Soleil ?"
            Reponses := array{"Un mois", "Dix ans", "Environ un an", "Une journee"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la forme de la Terre ?"
            Reponses := array{"Un cube", "Une sphere", "Un cone", "Un disque plat"}
            BonneReponse := 1
        question:
            Enonce := "Qu'est-ce qui provoque l'alternance du jour et de la nuit ?"
            Reponses := array{"Les marees", "La rotation de la Terre", "La Lune", "Les nuages"}
            BonneReponse := 1
        question:
            Enonce := "Comment appelle-t-on l'etude des astres et de l'univers ?"
            Reponses := array{"La meteorologie", "L'astronomie", "La biologie", "La geologie"}
            BonneReponse := 1
        question:
            Enonce := "Quel astronaute francais celebre a sejourne dans la Station spatiale internationale ?"
            Reponses := array{"Thomas Pesquet", "Neil Armstrong", "Buzz Aldrin", "Youri Gagarine"}
            BonneReponse := 0
        question:
            Enonce := "Quel premier humain est alle dans l'espace en 1961 ?"
            Reponses := array{"Alan Shepard", "John Glenn", "Neil Armstrong", "Youri Gagarine"}
            BonneReponse := 3
        question:
            Enonce := "Quel objet celeste a une longue trainee lumineuse et revient periodiquement ?"
            Reponses := array{"La nebuleuse", "La comete", "La planete", "Le trou noir"}
            BonneReponse := 1
        question:
            Enonce := "Quelle force maintient les planetes en orbite autour du Soleil ?"
            Reponses := array{"La gravite", "Le vent solaire", "Le magnetisme terrestre", "La lumiere"}
            BonneReponse := 0
        question:
            Enonce := "Quel vetement protege l'astronaute dans l'espace ?"
            Reponses := array{"Le gilet de sauvetage", "L'impermeable", "La combinaison spatiale", "La cotte de mailles"}
            BonneReponse := 2
        question:
            Enonce := "Qui a peint la Joconde ?"
            Reponses := array{"Monet", "Leonard de Vinci", "Van Gogh", "Picasso"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel musee est exposee la Joconde ?"
            Reponses := array{"Le British Museum", "Le Louvre", "Le Prado", "Le musee d'Orsay"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre s'est coupe l'oreille et a peint La Nuit etoilee ?"
            Reponses := array{"Claude Monet", "Salvador Dali", "Vincent van Gogh", "Rembrandt"}
            BonneReponse := 2
        question:
            Enonce := "Quel artiste espagnol est un cofondateur du cubisme ?"
            Reponses := array{"Miro", "Pablo Picasso", "Goya", "Velasquez"}
            BonneReponse := 1
        question:
            Enonce := "Quelle statue, cadeau de la France, se dresse a New York ?"
            Reponses := array{"Le David", "La statue de la Liberte", "Le Penseur", "La Venus de Milo"}
            BonneReponse := 1
        question:
            Enonce := "Qui a sculpte Le Penseur ?"
            Reponses := array{"Michel-Ange", "Camille Claudel", "Donatello", "Auguste Rodin"}
            BonneReponse := 3
        question:
            Enonce := "Quel plafond celebre Michel-Ange a-t-il peint au Vatican ?"
            Reponses := array{"La chapelle Sixtine", "Le Pantheon", "Saint-Marc", "Notre-Dame"}
            BonneReponse := 0
        question:
            Enonce := "Quel monument antique romain est un grand amphitheatre ?"
            Reponses := array{"L'Acropole", "La tour de Pise", "Le Colisee", "Le Parthenon"}
            BonneReponse := 2
        question:
            Enonce := "A quel mouvement appartient Claude Monet ?"
            Reponses := array{"Le cubisme", "Le surrealisme", "Le baroque", "L'impressionnisme"}
            BonneReponse := 3
        question:
            Enonce := "Quel monument funeraire de marbre blanc se trouve en Inde ?"
            Reponses := array{"Le Machu Picchu", "Le Taj Mahal", "Angkor Vat", "La Grande Muraille"}
            BonneReponse := 1
        question:
            Enonce := "Quelle oeuvre d'Edvard Munch represente un personnage hurlant ?"
            Reponses := array{"Les Tournesols", "Le Cri", "La Joconde", "La Liberte guidant le peuple"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre de la Renaissance a realise La Creation d'Adam ?"
            Reponses := array{"Raphael", "Michel-Ange", "Titien", "Botticelli"}
            BonneReponse := 1
        question:
            Enonce := "Quelle cathedrale gothique de Paris a ete incendiee en 2019 ?"
            Reponses := array{"La Sainte-Chapelle", "Le Sacre-Coeur", "Notre-Dame de Paris", "La cathedrale de Reims"}
            BonneReponse := 2
        question:
            Enonce := "Quel artiste a peint Guernica ?"
            Reponses := array{"Matisse", "Dali", "Van Gogh", "Pablo Picasso"}
            BonneReponse := 3
        question:
            Enonce := "Quelles sont les trois couleurs primaires ?"
            Reponses := array{"Vert, orange, violet", "Rose, brun, beige", "Noir, blanc, gris", "Rouge, bleu, jaune"}
            BonneReponse := 3
        question:
            Enonce := "Quelle pyramide de verre se dresse devant le Louvre ?"
            Reponses := array{"La pyramide de Kheops", "La pyramide du soleil", "La pyramide du Louvre", "La pyramide de Pei a Pekin"}
            BonneReponse := 2
        question:
            Enonce := "Quel monument prehistorique fait de grandes pierres dressees se trouve en Angleterre ?"
            Reponses := array{"Le Colisee", "Le Parthenon", "Carnac", "Stonehenge"}
            BonneReponse := 3
        question:
            Enonce := "Quel art du spectacle utilise la danse classique sur pointes ?"
            Reponses := array{"Le theatre", "L'opera", "Le ballet", "Le cirque"}
            BonneReponse := 2
        question:
            Enonce := "Quel outil principal utilise un peintre ?"
            Reponses := array{"Le pinceau", "Le marteau", "Le ciseau", "La truelle"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a invente l'origami, l'art du pliage de papier ?"
            Reponses := array{"La France", "L'Inde", "Le Japon", "La Chine"}
            BonneReponse := 2
        question:
            Enonce := "Quel musee parisien, ancienne gare, abrite l'art impressionniste ?"
            Reponses := array{"Le Louvre", "Le Grand Palais", "Le Centre Pompidou", "Le musee d'Orsay"}
            BonneReponse := 3
        question:
            Enonce := "Quelle celebre tour de fer a ete construite a Paris en 1889 ?"
            Reponses := array{"La tour de Londres", "Big Ben", "La tour Eiffel", "La tour de Pise"}
            BonneReponse := 2
        question:
            Enonce := "Quel materiau blanc, extrait a Carrare, sert souvent a sculpter ?"
            Reponses := array{"Le bois", "Le verre", "Le bronze", "Le marbre"}
            BonneReponse := 3
        question:
            Enonce := "Quelle celebre sculpture grecque de femme n'a pas de bras ?"
            Reponses := array{"Le David", "Le Penseur", "La Joconde", "La Venus de Milo"}
            BonneReponse := 3
        question:
            Enonce := "De quelle couleur sont les celebres Tournesols de Van Gogh ?"
            Reponses := array{"Vert", "Rouge", "Bleu", "Jaune"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Les Miserables ?"
            Reponses := array{"Victor Hugo", "Emile Zola", "Balzac", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Romeo et Juliette ?"
            Reponses := array{"Dante", "Cervantes", "Moliere", "William Shakespeare"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Petit Prince ?"
            Reponses := array{"Camus", "Antoine de Saint-Exupery", "La Fontaine", "Jules Verne"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit la saga Harry Potter ?"
            Reponses := array{"Tolkien", "J.K. Rowling", "Stephen King", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Quel detective celebre a ete cree par Arthur Conan Doyle ?"
            Reponses := array{"Maigret", "Hercule Poirot", "Arsene Lupin", "Sherlock Holmes"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit les fables comme Le Corbeau et le Renard ?"
            Reponses := array{"Andersen", "Jean de La Fontaine", "Charles Perrault", "Victor Hugo"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Les Trois Mousquetaires ?"
            Reponses := array{"Alexandre Dumas", "Jules Verne", "Stendhal", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Quel chevalier reveur est le heros du roman de Cervantes ?"
            Reponses := array{"Robin des Bois", "Ivanhoe", "Don Quichotte", "Lancelot"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Vingt mille lieues sous les mers ?"
            Reponses := array{"Hemingway", "H.G. Wells", "Jules Verne", "Daniel Defoe"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Seigneur des anneaux ?"
            Reponses := array{"J.R.R. Tolkien", "George R.R. Martin", "C.S. Lewis", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Quel poete francais a ecrit Les Fleurs du mal ?"
            Reponses := array{"Charles Baudelaire", "Verlaine", "Rimbaud", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Quelle replique celebre vient de la piece Hamlet ?"
            Reponses := array{"Etre ou ne pas etre", "Aux armes, citoyens", "Veni, vidi, vici", "Je pense donc je suis"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit les contes comme Cendrillon et Le Petit Chaperon rouge ?"
            Reponses := array{"Victor Hugo", "Moliere", "Charles Perrault", "La Fontaine"}
            BonneReponse := 2
        question:
            Enonce := "Quel auteur danois a ecrit La Petite Sirene ?"
            Reponses := array{"Hans Christian Andersen", "Lewis Carroll", "Charles Perrault", "Collodi"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit le roman 1984 ?"
            Reponses := array{"Jules Verne", "Ray Bradbury", "George Orwell", "Aldous Huxley"}
            BonneReponse := 2
        question:
            Enonce := "Quel roman de Daniel Defoe raconte un naufrage sur une ile deserte ?"
            Reponses := array{"Moby Dick", "L'Ile au tresor", "Vendredi", "Robinson Crusoe"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Notre-Dame de Paris ?"
            Reponses := array{"Flaubert", "Victor Hugo", "Zola", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand cachalot blanc est traque dans le roman de Melville ?"
            Reponses := array{"Nemo", "Moby Dick", "Leviathan", "Willy"}
            BonneReponse := 1
        question:
            Enonce := "Dans quelle langue Shakespeare a-t-il ecrit ses pieces ?"
            Reponses := array{"Le latin", "Le francais", "L'italien", "L'anglais"}
            BonneReponse := 3
        question:
            Enonce := "Combien de mousquetaires figurent dans le titre du roman de Dumas ?"
            Reponses := array{"Trois", "Quatre", "Cinq", "Deux"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur a ecrit Germinal ?"
            Reponses := array{"Maupassant", "Proust", "Emile Zola", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Quel gentleman cambrioleur a ete cree par Maurice Leblanc ?"
            Reponses := array{"Robin des Bois", "Fantomas", "Sherlock Holmes", "Arsene Lupin"}
            BonneReponse := 3
        question:
            Enonce := "Quelle jeune fille suit un lapin blanc dans un terrier (Lewis Carroll) ?"
            Reponses := array{"Wendy", "Alice", "Dorothee", "Heidi"}
            BonneReponse := 1
        question:
            Enonce := "Quel auteur a ecrit Le Comte de Monte-Cristo ?"
            Reponses := array{"Jules Verne", "Balzac", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Quel philosophe francais a ecrit Candide ?"
            Reponses := array{"Voltaire", "Montesquieu", "Diderot", "Rousseau"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument possede des touches noires et blanches ?"
            Reponses := array{"Le piano", "Le violon", "La guitare", "La trompette"}
            BonneReponse := 0
        question:
            Enonce := "Combien de cordes possede une guitare classique ?"
            Reponses := array{"12", "6", "8", "4"}
            BonneReponse := 1
        question:
            Enonce := "Qui a compose la 9e symphonie et son Hymne a la joie ?"
            Reponses := array{"Beethoven", "Bach", "Chopin", "Mozart"}
            BonneReponse := 0
        question:
            Enonce := "Quel groupe britannique reunissait John, Paul, George et Ringo ?"
            Reponses := array{"Les Beatles", "Queen", "Les Rolling Stones", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Quel chanteur est surnomme le roi de la pop ?"
            Reponses := array{"Elvis Presley", "Freddie Mercury", "Prince", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Quel chanteur americain est surnomme le roi du rock ?"
            Reponses := array{"Johnny Hallyday", "Elvis Presley", "Chuck Berry", "Bob Dylan"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur autrichien etait un enfant prodige et a ecrit un Requiem ?"
            Reponses := array{"Mozart", "Beethoven", "Vivaldi", "Haydn"}
            BonneReponse := 0
        question:
            Enonce := "Avec quel objet joue-t-on du violon ?"
            Reponses := array{"Un archet", "Un marteau", "Une baguette", "Un mediator"}
            BonneReponse := 0
        question:
            Enonce := "Combien de notes compte la gamme (do, re, mi...) ?"
            Reponses := array{"7", "8", "5", "12"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument a vent en cuivre possede une coulisse ?"
            Reponses := array{"La clarinette", "Le saxophone", "Le trombone", "La flute"}
            BonneReponse := 2
        question:
            Enonce := "Quel grand instrument a tuyaux trouve-t-on dans les eglises ?"
            Reponses := array{"Le clavecin", "L'orgue", "Le piano", "La harpe"}
            BonneReponse := 1
        question:
            Enonce := "Quelle danse viennoise se joue a trois temps ?"
            Reponses := array{"La valse", "La salsa", "Le tango", "Le rock"}
            BonneReponse := 0
        question:
            Enonce := "Qui dirige un orchestre avec une baguette ?"
            Reponses := array{"Le compositeur", "Le soliste", "Le chef d'orchestre", "Le regisseur"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays est originaire le reggae (Bob Marley) ?"
            Reponses := array{"Le Bresil", "Le Senegal", "La Jamaique", "Cuba"}
            BonneReponse := 2
        question:
            Enonce := "Combien de cordes possede un violon ?"
            Reponses := array{"6", "3", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville americaine est consideree comme le berceau du jazz ?"
            Reponses := array{"New York", "Detroit", "La Nouvelle-Orleans", "Chicago"}
            BonneReponse := 2
        question:
            Enonce := "Combien de musiciens jouent dans un quatuor ?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Quel compositeur baroque allemand a ecrit la Toccata et fugue en re mineur ?"
            Reponses := array{"Mozart", "Wagner", "Jean-Sebastien Bach", "Beethoven"}
            BonneReponse := 2
        question:
            Enonce := "Quel instrument a cordes est le plus grave de l'orchestre ?"
            Reponses := array{"La contrebasse", "Le violon", "La harpe", "Le violoncelle"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument possede 88 touches ?"
            Reponses := array{"L'accordeon", "Le piano", "Le xylophone", "L'orgue"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays vient le flamenco ?"
            Reponses := array{"Le Portugal", "L'Espagne", "L'Italie", "Le Mexique"}
            BonneReponse := 1
        question:
            Enonce := "Quelle voix de femme est la plus aigue ?"
            Reponses := array{"Soprano", "Tenor", "Basse", "Alto"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument a vent et anche est emblematique du jazz ?"
            Reponses := array{"Le saxophone", "Le violon", "La harpe", "La batterie"}
            BonneReponse := 0
        question:
            Enonce := "Sur quel support analogique ecoutait-on la musique avant le CD ?"
            Reponses := array{"Le disque vinyle", "La carte memoire", "La cle USB", "Le DVD"}
            BonneReponse := 0
        question:
            Enonce := "Quelle famille d'instruments comprend la batterie et le tambour ?"
            Reponses := array{"Les bois", "Les percussions", "Les cuivres", "Les cordes"}
            BonneReponse := 1
        question:
            Enonce := "Quelle souris est la mascotte des studios Disney ?"
            Reponses := array{"Stuart", "Mickey", "Jerry", "Speedy"}
            BonneReponse := 1
        question:
            Enonce := "Quel personnage de Star Wars dit Je suis ton pere ?"
            Reponses := array{"Han Solo", "Luke", "Dark Vador", "Yoda"}
            BonneReponse := 2
        question:
            Enonce := "Quel studio a realise Toy Story ?"
            Reponses := array{"Warner", "Universal", "Pixar", "DreamWorks"}
            BonneReponse := 2
        question:
            Enonce := "Quel ogre vert est le heros d'un film DreamWorks ?"
            Reponses := array{"Gollum", "Yoda", "Shrek", "Hulk"}
            BonneReponse := 2
        question:
            Enonce := "Quel archeologue porte un fouet et un chapeau au cinema ?"
            Reponses := array{"Indiana Jones", "Tintin", "James Bond", "Lara Croft"}
            BonneReponse := 0
        question:
            Enonce := "Quel film de Steven Spielberg met en scene un requin geant ?"
            Reponses := array{"Titanic", "Les Dents de la mer", "Le Monde de Nemo", "Jurassic Park"}
            BonneReponse := 1
        question:
            Enonce := "Quelle recompense doree est remise au cinema americain ?"
            Reponses := array{"La Palme d'or", "Le Cesar", "Le Golden Buzzer", "L'Oscar"}
            BonneReponse := 3
        question:
            Enonce := "Quel grand festival de cinema se tient en France et remet la Palme d'or ?"
            Reponses := array{"Cannes", "Berlin", "Venise", "Sundance"}
            BonneReponse := 0
        question:
            Enonce := "Quel super-heros protege la ville de Gotham ?"
            Reponses := array{"Superman", "Batman", "Iron Man", "Spider-Man"}
            BonneReponse := 1
        question:
            Enonce := "Dans le film Titanic , comment s'appellent les deux heros ?"
            Reponses := array{"Romeo et Juliette", "Leo et Kate", "Tom et Jerry", "Jack et Rose"}
            BonneReponse := 3
        question:
            Enonce := "Quel petit extraterrestre veut telephoner maison ?"
            Reponses := array{"Alf", "Yoda", "E.T.", "Stitch"}
            BonneReponse := 2
        question:
            Enonce := "Quelle famille jaune est au coeur d'un celebre dessin anime ?"
            Reponses := array{"Les Pierrafeu", "South Park", "Les Griffin", "Les Simpson"}
            BonneReponse := 3
        question:
            Enonce := "Quel agent secret britannique porte le matricule 007 ?"
            Reponses := array{"Ethan Hunt", "Jason Bourne", "Austin Powers", "James Bond"}
            BonneReponse := 3
        question:
            Enonce := "Quelle princesse Disney perd une pantoufle de verre ?"
            Reponses := array{"Cendrillon", "Blanche-Neige", "Raiponce", "Belle"}
            BonneReponse := 0
        question:
            Enonce := "Quel super-heros Marvel lance des toiles d'araignee ?"
            Reponses := array{"Spider-Man", "Thor", "Captain America", "Hulk"}
            BonneReponse := 0
        question:
            Enonce := "Quel film d'animation Disney suit un jeune lion nomme Simba ?"
            Reponses := array{"Madagascar", "Le Roi lion", "Bambi", "Tarzan"}
            BonneReponse := 1
        question:
            Enonce := "Quel petit maitre Jedi vert et sage apparait dans Star Wars ?"
            Reponses := array{"Yoda", "Chewbacca", "R2-D2", "Jabba"}
            BonneReponse := 0
        question:
            Enonce := "Quel poisson-clown est recherche par son pere dans un film Pixar ?"
            Reponses := array{"Willy", "Nemo", "Dory", "Flipper"}
            BonneReponse := 1
        question:
            Enonce := "Quel cow-boy est un jouet heros de Toy Story ?"
            Reponses := array{"Jessie", "Woody", "Buzz", "Lucky Luke"}
            BonneReponse := 1
        question:
            Enonce := "Quel acteur muet portait un chapeau melon, une canne et de petites moustaches ?"
            Reponses := array{"Mr. Bean", "Louis de Funes", "Buster Keaton", "Charlie Chaplin"}
            BonneReponse := 3
        question:
            Enonce := "Quel cyborg dit I'll be back dans un film de science-fiction ?"
            Reponses := array{"Iron Man", "RoboCop", "Le Terminator", "Wall-E"}
            BonneReponse := 2
        question:
            Enonce := "Quel boxeur de Philadelphie est incarne par Sylvester Stallone ?"
            Reponses := array{"Rambo", "Rocky", "Creed", "Tyson"}
            BonneReponse := 1
        question:
            Enonce := "Quelle saga met en scene Frodon et un anneau a detruire ?"
            Reponses := array{"Le Seigneur des anneaux", "Narnia", "Le Hobbit seul", "Harry Potter"}
            BonneReponse := 0
        question:
            Enonce := "Quelle petite sirene rousse est une heroine Disney ?"
            Reponses := array{"Elsa", "Moana", "Ariel", "Jasmine"}
            BonneReponse := 2
        question:
            Enonce := "Quel personnage Disney est un pantin de bois dont le nez s'allonge quand il ment ?"
            Reponses := array{"Pinpin", "Pinocchio", "Peter Pan", "Aladdin"}
            BonneReponse := 1
        question:
            Enonce := "Combien de joueurs compose une equipe de football sur le terrain ?"
            Reponses := array{"11", "7", "15", "9"}
            BonneReponse := 0
        question:
            Enonce := "Tous les combien d'annees ont lieu les Jeux olympiques d'ete ?"
            Reponses := array{"4 ans", "5 ans", "3 ans", "2 ans"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport se joue a Roland-Garros ?"
            Reponses := array{"Le hand-ball", "Le golf", "Le rugby", "Le tennis"}
            BonneReponse := 3
        question:
            Enonce := "Combien d'anneaux figurent sur le drapeau olympique ?"
            Reponses := array{"3", "4", "6", "5"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se joue avec un ballon orange et des paniers ?"
            Reponses := array{"Le football", "Le hand-ball", "Le basket-ball", "Le volley-ball"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport pratique le sprinteur Usain Bolt ?"
            Reponses := array{"Le cyclisme", "L'athletisme", "La natation", "Le tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quel trophee mondial de football a lieu tous les quatre ans ?"
            Reponses := array{"L'Euro", "La Ligue des champions", "La Coupe du monde", "La Coupe de France"}
            BonneReponse := 2
        question:
            Enonce := "Combien de joueurs d'une equipe de basket sont sur le terrain ?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport est surnomme la petite reine ?"
            Reponses := array{"L'equitation", "L'aviron", "Le cyclisme", "La boxe"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel sport marque-t-on un essai ?"
            Reponses := array{"Le rugby", "Le tennis", "Le basket", "Le football"}
            BonneReponse := 0
        question:
            Enonce := "Combien de trous compte un parcours de golf classique ?"
            Reponses := array{"24", "9", "18", "12"}
            BonneReponse := 2
        question:
            Enonce := "Le Tour de France est une course de quel sport ?"
            Reponses := array{"L'automobile", "La moto", "Le cyclisme", "La course a pied"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport de combat japonais se pratique en kimono avec des prises et des ceintures ?"
            Reponses := array{"La lutte greco-romaine", "L'escrime", "Le judo", "La boxe"}
            BonneReponse := 2
        question:
            Enonce := "Combien de joueurs compose une equipe de volley-ball sur le terrain ?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport se joue avec une raquette et un volant ?"
            Reponses := array{"Le ping-pong", "Le squash", "Le tennis", "Le badminton"}
            BonneReponse := 3
        question:
            Enonce := "Quel boxeur est surnomme The Greatest ?"
            Reponses := array{"Floyd Mayweather", "Mike Tyson", "Mohamed Ali", "Rocky Marciano"}
            BonneReponse := 2
        question:
            Enonce := "Quel joueur garde les buts au football ?"
            Reponses := array{"Le gardien", "L'arbitre", "L'attaquant", "Le defenseur"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport mythique se joue sur le gazon de Wimbledon ?"
            Reponses := array{"Le cricket", "Le golf", "Le tennis", "Le polo"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la distance approximative d'un marathon ?"
            Reponses := array{"21 km", "10 km", "100 km", "42 km"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se pratique dans l'eau avec la brasse et le crawl ?"
            Reponses := array{"La natation", "La voile", "Le plongeon", "L'aviron"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport d'hiver consiste a descendre une piste enneigee ?"
            Reponses := array{"Le ski", "Le curling", "Le surf", "Le patinage artistique"}
            BonneReponse := 0
        question:
            Enonce := "Combien de points vaut un panier ordinaire au basket (hors zone a 3 points) ?"
            Reponses := array{"1", "2", "5", "3"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport pratique la star americaine Michael Jordan ?"
            Reponses := array{"Le basket-ball", "Le golf", "Le football americain", "Le baseball"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport se joue avec une crosse et un palet sur la glace ?"
            Reponses := array{"Le curling", "Le hockey sur glace", "Le bobsleigh", "Le patinage"}
            BonneReponse := 1
        question:
            Enonce := "Dans quelle ville se trouve le siege du Comite international olympique ?"
            Reponses := array{"Athenes", "Geneve", "Lausanne", "Paris"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le roi des dieux grecs, maitre de la foudre ?"
            Reponses := array{"Poseidon", "Zeus", "Hades", "Apollon"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu grec regne sur les mers ?"
            Reponses := array{"Hermes", "Ares", "Poseidon", "Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Quel heros grec a un talon comme unique point faible ?"
            Reponses := array{"Ulysse", "Thesee", "Persee", "Achille"}
            BonneReponse := 3
        question:
            Enonce := "Quel heros grec a accompli les douze travaux ?"
            Reponses := array{"Ulysse", "Hercule", "Achille", "Jason"}
            BonneReponse := 1
        question:
            Enonce := "Quelle creature au corps de cheval et au buste d'homme existe dans la mythologie grecque ?"
            Reponses := array{"La sirene", "Le cyclope", "Le minotaure", "Le centaure"}
            BonneReponse := 3
        question:
            Enonce := "Quelle creature a tete de taureau vit dans le labyrinthe ?"
            Reponses := array{"Le centaure", "Le sphinx", "La Meduse", "Le Minotaure"}
            BonneReponse := 3
        question:
            Enonce := "Quel dieu nordique du tonnerre manie un marteau ?"
            Reponses := array{"Zeus", "Odin", "Thor", "Loki"}
            BonneReponse := 2
        question:
            Enonce := "Quel oiseau legendaire renait de ses cendres ?"
            Reponses := array{"Le dragon", "L'aigle", "Le phenix", "Le griffon"}
            BonneReponse := 2
        question:
            Enonce := "Quel dieu egyptien a une tete de chacal et preside aux morts ?"
            Reponses := array{"Osiris", "Horus", "Ra", "Anubis"}
            BonneReponse := 3
        question:
            Enonce := "Quelle creature feminine a des serpents a la place des cheveux ?"
            Reponses := array{"Pandore", "Aphrodite", "Athena", "Meduse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le livre sacre de l'islam ?"
            Reponses := array{"Les Vedas", "La Bible", "La Torah", "Le Coran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le livre sacre des chretiens ?"
            Reponses := array{"Le Talmud", "La Bible", "Le Coran", "La Torah"}
            BonneReponse := 1
        question:
            Enonce := "Quelle deesse grecque de la sagesse a donne son nom a Athenes ?"
            Reponses := array{"Artemis", "Athena", "Hera", "Aphrodite"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu romain de la guerre a donne son nom a une planete ?"
            Reponses := array{"Mars", "Mercure", "Jupiter", "Neptune"}
            BonneReponse := 0
        question:
            Enonce := "Combien de tetes possede Cerbere, le chien des Enfers ?"
            Reponses := array{"1", "3", "2", "7"}
            BonneReponse := 1
        question:
            Enonce := "Quel roi mythique transformait en or tout ce qu'il touchait ?"
            Reponses := array{"Midas", "Minos", "Cresus", "Tantale"}
            BonneReponse := 0
        question:
            Enonce := "Quel dieu grec messager porte des sandales ailees ?"
            Reponses := array{"Hermes", "Ares", "Dionysos", "Apollon"}
            BonneReponse := 0
        question:
            Enonce := "Quelle deesse grecque represente l'amour et la beaute ?"
            Reponses := array{"Demeter", "Athena", "Hera", "Aphrodite"}
            BonneReponse := 3
        question:
            Enonce := "Quel dieu romain est l'equivalent de Zeus ?"
            Reponses := array{"Mars", "Jupiter", "Neptune", "Pluton"}
            BonneReponse := 1
        question:
            Enonce := "Quelle creature mi-femme mi-poisson attire les marins par son chant ?"
            Reponses := array{"La gorgone", "La nymphe", "La harpie", "La sirene"}
            BonneReponse := 3
        question:
            Enonce := "Quelle religion est associee a la Torah et au peuple juif ?"
            Reponses := array{"Le bouddhisme", "L'hindouisme", "L'islam", "Le judaisme"}
            BonneReponse := 3
        question:
            Enonce := "Quel monstre a plusieurs tetes qui repoussent affronte Hercule ?"
            Reponses := array{"Le kraken", "La chimere", "Le sphinx", "L'hydre de Lerne"}
            BonneReponse := 3
        question:
            Enonce := "Quel dieu grec du soleil et des arts conduit un char ?"
            Reponses := array{"Cronos", "Hades", "Hephaistos", "Apollon"}
            BonneReponse := 3
        question:
            Enonce := "Dans la mythologie nordique, comment s'appelle le royaume des dieux ?"
            Reponses := array{"Midgard", "Asgard", "Valhalla", "Olympe"}
            BonneReponse := 1
        question:
            Enonce := "Quel geant n'a qu'un seul oeil au milieu du front dans l' Odyssee ?"
            Reponses := array{"Le troll", "Le cyclope", "Le golem", "Le titan"}
            BonneReponse := 1
        question:
            Enonce := "Quel traite de 1919 met officiellement fin a la Premiere Guerre mondiale ?"
            Reponses := array{"Le traite de Rome", "Le traite de Tordesillas", "Le traite de Versailles", "Le traite de Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quelle dynastie chinoise a edifie l'essentiel de la Grande Muraille actuelle ?"
            Reponses := array{"Les Tang", "Les Ming", "Les Qing", "Les Han"}
            BonneReponse := 1
        question:
            Enonce := "Qui fut le premier president de la Ve Republique francaise ?"
            Reponses := array{"Georges Pompidou", "Vincent Auriol", "Francois Mitterrand", "Charles de Gaulle"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee a eu lieu la bataille de Hastings ?"
            Reponses := array{"1066", "1215", "987", "1453"}
            BonneReponse := 0
        question:
            Enonce := "Quel empereur romain a legalise le christianisme par l'edit de Milan (313) ?"
            Reponses := array{"Trajan", "Constantin", "Auguste", "Neron"}
            BonneReponse := 1
        question:
            Enonce := "Quelle reine d'Egypte s'allia a Jules Cesar puis a Marc Antoine ?"
            Reponses := array{"Nefertiti", "Cleopatre", "Hatchepsout", "Theodora"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee eut lieu la revolution d'Octobre en Russie ?"
            Reponses := array{"1905", "1917", "1789", "1922"}
            BonneReponse := 1
        question:
            Enonce := "Quel roi de France fut guillotine en 1793 ?"
            Reponses := array{"Louis XV", "Louis XIV", "Louis XVI", "Charles X"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville etait la capitale de l'Empire byzantin ?"
            Reponses := array{"Rome", "Alexandrie", "Athenes", "Constantinople"}
            BonneReponse := 3
        question:
            Enonce := "Quel dirigeant etait a la tete de l'URSS pendant la Seconde Guerre mondiale ?"
            Reponses := array{"Khrouchtchev", "Lenine", "Gorbatchev", "Joseph Staline"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee les femmes ont-elles obtenu le droit de vote en France ?"
            Reponses := array{"1968", "1944", "1900", "1918"}
            BonneReponse := 1
        question:
            Enonce := "Quel explorateur portugais a atteint l'Inde par la mer en 1498 ?"
            Reponses := array{"Christophe Colomb", "Vasco de Gama", "Magellan", "Bartolomeu Dias"}
            BonneReponse := 1
        question:
            Enonce := "Quel empereur francais fut vaincu et capture a Sedan en 1870 ?"
            Reponses := array{"Louis-Philippe", "Napoleon Ier", "Charles X", "Napoleon III"}
            BonneReponse := 3
        question:
            Enonce := "Quelle civilisation precolombienne dominait le Perou avant les Espagnols ?"
            Reponses := array{"Les Mayas", "Les Incas", "Les Olmeques", "Les Azteques"}
            BonneReponse := 1
        question:
            Enonce := "Quel jeune pharaon possede un celebre masque funeraire en or ?"
            Reponses := array{"Akhenaton", "Ramses II", "Kheops", "Toutankhamon"}
            BonneReponse := 3
        question:
            Enonce := "Quelle bataille navale de 1805 vit la victoire de l'amiral Nelson ?"
            Reponses := array{"Salamine", "Actium", "Trafalgar", "Lepante"}
            BonneReponse := 2
        question:
            Enonce := "Quel heros mena l'expedition des Mille pour l'unite italienne ?"
            Reponses := array{"Mussolini", "Mazzini", "Cavour", "Garibaldi"}
            BonneReponse := 3
        question:
            Enonce := "Quel sultan a fait rayonner l'Empire ottoman au XVIe siecle ?"
            Reponses := array{"Saladin", "Ataturk", "Mehmed II", "Soliman le Magnifique"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee les Etats-Unis ont-ils declare leur independance ?"
            Reponses := array{"1776", "1789", "1620", "1812"}
            BonneReponse := 0
        question:
            Enonce := "Quel roi anglais a fonde l'Eglise anglicane pour pouvoir divorcer ?"
            Reponses := array{"Jean sans Terre", "Henri VIII", "Guillaume le Conquerant", "Richard Coeur de Lion"}
            BonneReponse := 1
        question:
            Enonce := "Quelle epidemie a decime l'Europe au milieu du XIVe siecle ?"
            Reponses := array{"La variole", "Le cholera", "La peste noire", "La grippe espagnole"}
            BonneReponse := 2
        question:
            Enonce := "Quel chef gaulois a resiste a Cesar avant de capituler a Alesia ?"
            Reponses := array{"Brennos", "Asterix", "Ambiorix", "Vercingetorix"}
            BonneReponse := 3
        question:
            Enonce := "Quelle conference de 1945 reunit Churchill, Roosevelt et Staline ?"
            Reponses := array{"Teheran", "Yalta", "Munich", "Postdam"}
            BonneReponse := 1
        question:
            Enonce := "Quelle expedition militaire chretienne visait a reprendre Jerusalem au Moyen Age ?"
            Reponses := array{"La Reconquista", "La guerre de Trente Ans", "Les croisades", "La Hanse"}
            BonneReponse := 2
        question:
            Enonce := "Quel mur a ete erige en 1961 pour separer une ville allemande ?"
            Reponses := array{"La ligne Maginot", "Le mur de l'Atlantique", "Le mur de Berlin", "Le mur d'Hadrien"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus long fleuve d'Europe ?"
            Reponses := array{"Le Danube", "Le Rhin", "Le Rhone", "La Volga"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la capitale de l'Australie ?"
            Reponses := array{"Melbourne", "Sydney", "Perth", "Canberra"}
            BonneReponse := 3
        question:
            Enonce := "Quel detroit separe l'Europe de l'Afrique ?"
            Reponses := array{"Le Bosphore", "Le pas de Calais", "Le detroit de Gibraltar", "Le detroit de Bering"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale du Canada ?"
            Reponses := array{"Vancouver", "Montreal", "Ottawa", "Toronto"}
            BonneReponse := 2
        question:
            Enonce := "Quel petit royaume est entierement enclave dans l'Afrique du Sud ?"
            Reponses := array{"Le Botswana", "Le Swaziland", "La Namibie", "Le Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Quel canal relie la Mediterranee a la mer Rouge ?"
            Reponses := array{"Le canal de Corinthe", "Le canal de Suez", "Le canal de Panama", "Le canal de Kiel"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus grande ile du monde ?"
            Reponses := array{"Madagascar", "Borneo", "La Nouvelle-Guinee", "Le Groenland"}
            BonneReponse := 3
        question:
            Enonce := "Quel canal relie l'ocean Atlantique a l'ocean Pacifique en Amerique centrale ?"
            Reponses := array{"Le canal du Midi", "Le canal de Panama", "Le canal de Suez", "Le detroit de Magellan"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale de la Turquie ?"
            Reponses := array{"Antalya", "Izmir", "Ankara", "Istanbul"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville est a cheval sur l'Europe et l'Asie ?"
            Reponses := array{"Istanbul", "Athenes", "Le Caire", "Moscou"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a pour capitale Brasilia ?"
            Reponses := array{"le Perou", "Le Bresil", "l'Argentine", "la Colombie"}
            BonneReponse := 1
        question:
            Enonce := "Quelle chaine de montagnes abrite l'Everest ?"
            Reponses := array{"L'Himalaya", "Les Rocheuses", "Le Caucase", "Les Andes"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus petit Etat du monde ?"
            Reponses := array{"Le Vatican", "Nauru", "Monaco", "Saint-Marin"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus longue chaine de montagnes continentale du monde ?"
            Reponses := array{"Les Rocheuses", "L'Himalaya", "La cordillere des Andes", "Les Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Quel grand desert froid s'etend sur la Mongolie et la Chine ?"
            Reponses := array{"Le Sahara", "L'Atacama", "Le Gobi", "Le Kalahari"}
            BonneReponse := 2
        question:
            Enonce := "Quel fleuve traverse Londres ?"
            Reponses := array{"La Severn", "La Tamise", "La Mersey", "La Clyde"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale de la Nouvelle-Zelande ?"
            Reponses := array{"Wellington", "Auckland", "Christchurch", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays sud-americain porte le nom de la ligne imaginaire qui le traverse ?"
            Reponses := array{"La Bolivie", "Le Chili", "Le Perou", "L'Equateur"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la capitale de l'Argentine ?"
            Reponses := array{"Lima", "Buenos Aires", "Santiago", "Montevideo"}
            BonneReponse := 1
        question:
            Enonce := "Quel plus haut sommet d'Afrique se trouve en Tanzanie ?"
            Reponses := array{"Le mont Kenya", "l'Atlas", "Le Kilimandjaro", "le mont Cameroun"}
            BonneReponse := 2
        question:
            Enonce := "Quelle mer interieure d'Asie centrale s'est fortement assechee ?"
            Reponses := array{"Le lac Baikal", "La mer d'Aral", "La mer Caspienne", "La mer Morte"}
            BonneReponse := 1
        question:
            Enonce := "Combien l'Afrique du Sud a-t-elle de capitales (administrative, legislative, judiciaire) ?"
            Reponses := array{"4", "2", "3", "1"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale de la Norvege ?"
            Reponses := array{"Copenhague", "Stockholm", "Helsinki", "Oslo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand lac d'eau douce du monde par sa superficie ?"
            Reponses := array{"Le lac Superieur", "Le lac Leman", "Le lac Baikal", "Le lac Victoria"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays possede le plus de pyramides au monde ?"
            Reponses := array{"Le Soudan", "l'Egypte", "le Mexique", "le Perou"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la vitesse approximative de la lumiere dans le vide ?"
            Reponses := array{"30 000 km/s", "1 000 km/s", "3 000 000 km/s", "300 000 km/s"}
            BonneReponse := 3
        question:
            Enonce := "Quel scientifique a decouvert la penicilline ?"
            Reponses := array{"Alexander Fleming", "Robert Koch", "Louis Pasteur", "Jonas Salk"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le metal le plus abondant dans la croute terrestre ?"
            Reponses := array{"Le cuivre", "L'or", "L'aluminium", "Le fer"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le symbole chimique du potassium ?"
            Reponses := array{"Pt", "K", "Po", "P"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est l'unite de mesure de la puissance electrique ?"
            Reponses := array{"Le volt", "L'ampere", "Le joule", "Le watt"}
            BonneReponse := 3
        question:
            Enonce := "Quel gaz noble fait briller en rouge les enseignes lumineuses ?"
            Reponses := array{"Le neon", "L'argon", "Le krypton", "L'helium"}
            BonneReponse := 0
        question:
            Enonce := "Quel principe physique explique la flottaison des corps ?"
            Reponses := array{"L'effet Doppler", "La loi de Newton", "Le principe d'Archimede", "La loi d'Ohm"}
            BonneReponse := 2
        question:
            Enonce := "Quel est l'element chimique le plus leger ?"
            Reponses := array{"L'hydrogene", "Le carbone", "L'helium", "L'oxygene"}
            BonneReponse := 0
        question:
            Enonce := "Quel acide est present dans l'estomac humain ?"
            Reponses := array{"L'acide acetique", "L'acide chlorhydrique", "L'acide citrique", "L'acide sulfurique"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est l'unite de mesure de la frequence ?"
            Reponses := array{"Le watt", "Le newton", "Le decibel", "Le hertz"}
            BonneReponse := 3
        question:
            Enonce := "Quelle scientifique a recu deux prix Nobel pour ses travaux sur la radioactivite ?"
            Reponses := array{"Rosalind Franklin", "Ada Lovelace", "Marie Curie", "Lise Meitner"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on le passage direct de l'etat solide a l'etat gazeux ?"
            Reponses := array{"La sublimation", "La fusion", "La condensation", "L'evaporation"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la formule chimique du sel de table ?"
            Reponses := array{"H2SO4", "KCl", "NaCl", "CaCO3"}
            BonneReponse := 2
        question:
            Enonce := "Quel rayonnement solaire provoque les coups de soleil ?"
            Reponses := array{"Les micro-ondes", "Les ultraviolets", "Les infrarouges", "Les rayons X"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est l'unite de mesure de la resistance electrique ?"
            Reponses := array{"Le tesla", "L'ohm", "L'ampere", "Le farad"}
            BonneReponse := 1
        question:
            Enonce := "Combien d'elements compte environ le tableau periodique ?"
            Reponses := array{"Environ 118", "Environ 80", "Environ 200", "Environ 50"}
            BonneReponse := 0
        question:
            Enonce := "Quel composant principal entre dans la fabrication du verre ?"
            Reponses := array{"L'argile", "Le plomb", "La silice (sable)", "Le calcaire pur"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le symbole chimique de l'argent ?"
            Reponses := array{"Au", "Ag", "Ar", "Si"}
            BonneReponse := 1
        question:
            Enonce := "Quelle particule du noyau atomique a une charge positive ?"
            Reponses := array{"Le proton", "L'electron", "Le neutron", "Le photon"}
            BonneReponse := 0
        question:
            Enonce := "Quel savant a enonce les trois lois fondamentales du mouvement ?"
            Reponses := array{"Isaac Newton", "Einstein", "Kepler", "Galilee"}
            BonneReponse := 0
        question:
            Enonce := "Quel objet en verre decompose la lumiere blanche en couleurs ?"
            Reponses := array{"Le miroir", "La lentille", "Le prisme", "Le filtre"}
            BonneReponse := 2
        question:
            Enonce := "Quelle reaction libere l'energie d'une centrale nucleaire ?"
            Reponses := array{"L'electrolyse", "La fermentation", "La fission de l'uranium", "La combustion du charbon"}
            BonneReponse := 2
        question:
            Enonce := "Quel gaz a effet de serre est massivement emis par les moteurs a essence ?"
            Reponses := array{"L'oxygene", "L'azote", "Le dioxyde de carbone", "L'ozone"}
            BonneReponse := 2
        question:
            Enonce := "Quelle grandeur mesure-t-on en pascals ?"
            Reponses := array{"La temperature", "La pression", "La vitesse", "La masse"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le symbole chimique du carbone ?"
            Reponses := array{"C", "Ca", "Cr", "Co"}
            BonneReponse := 0
        question:
            Enonce := "Combien d'os compte le squelette d'un etre humain adulte ?"
            Reponses := array{"206", "150", "250", "300"}
            BonneReponse := 0
        question:
            Enonce := "Quel scientifique a formule la theorie de l'evolution par selection naturelle ?"
            Reponses := array{"Gregor Mendel", "Louis Pasteur", "Charles Darwin", "Carl von Linne"}
            BonneReponse := 2
        question:
            Enonce := "Quelle molecule porte l'information genetique ?"
            Reponses := array{"L'ADN", "Le glucose", "L'hemoglobine", "Le collagene"}
            BonneReponse := 0
        question:
            Enonce := "Combien de chromosomes possede une cellule humaine ?"
            Reponses := array{"46", "23", "64", "48"}
            BonneReponse := 0
        question:
            Enonce := "Quel groupe sanguin est dit donneur universel ?"
            Reponses := array{"AB positif", "A positif", "O negatif", "B negatif"}
            BonneReponse := 2
        question:
            Enonce := "Quel groupe sanguin est dit receveur universel ?"
            Reponses := array{"O negatif", "A negatif", "B positif", "AB positif"}
            BonneReponse := 3
        question:
            Enonce := "Quelle partie de l'oeil contient les cellules sensibles a la lumiere ?"
            Reponses := array{"La cornee", "La retine", "Le cristallin", "L'iris"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe produit la bile ?"
            Reponses := array{"L'estomac", "Le pancreas", "Le foie", "La rate"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus petit os du corps humain ?"
            Reponses := array{"Le coccyx", "L'etrier (oreille)", "La rotule", "La phalange"}
            BonneReponse := 1
        question:
            Enonce := "Quelle glande situee dans le cou regule le metabolisme ?"
            Reponses := array{"L'hypophyse", "La thyroide", "Le pancreas", "La rate"}
            BonneReponse := 1
        question:
            Enonce := "Combien de paires de cotes possede l'etre humain ?"
            Reponses := array{"10", "12", "14", "8"}
            BonneReponse := 1
        question:
            Enonce := "Quel scientifique a decouvert les groupes sanguins ?"
            Reponses := array{"Edward Jenner", "Karl Landsteiner", "Alexander Fleming", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quel mammifere pond des oeufs et vit en Australie ?"
            Reponses := array{"Le koala", "Le wombat", "Le kangourou", "L'ornithorynque"}
            BonneReponse := 3
        question:
            Enonce := "Quelle partie du cerveau gere l'equilibre et la coordination ?"
            Reponses := array{"L'hypothalamus", "Le cortex", "Le cervelet", "Le bulbe"}
            BonneReponse := 2
        question:
            Enonce := "Quel processus permet aux plantes vertes de produire leur energie ?"
            Reponses := array{"La respiration", "La photosynthese", "La fermentation", "La digestion"}
            BonneReponse := 1
        question:
            Enonce := "Les reptiles sont des animaux a sang..."
            Reponses := array{"tiede", "chaud", "froid", "inexistant"}
            BonneReponse := 2
        question:
            Enonce := "Quel est l'os de la cuisse, aussi le plus long du corps ?"
            Reponses := array{"Le tibia", "Le femur", "Le radius", "L'humerus"}
            BonneReponse := 1
        question:
            Enonce := "Quelle cellule transmet l'influx nerveux ?"
            Reponses := array{"Le globule blanc", "L'osteocyte", "Le neurone", "La plaquette"}
            BonneReponse := 2
        question:
            Enonce := "Quel organe stocke l'urine avant son evacuation ?"
            Reponses := array{"Le foie", "La vessie", "L'uretere", "Le rein"}
            BonneReponse := 1
        question:
            Enonce := "Quel volume de sang circule environ chez un adulte ?"
            Reponses := array{"Environ 1 litre", "Environ 10 litres", "Environ 5 litres", "Environ 20 litres"}
            BonneReponse := 2
        question:
            Enonce := "Quelle vitamine previent le scorbut ?"
            Reponses := array{"La vitamine A", "La vitamine C", "La vitamine D", "La vitamine K"}
            BonneReponse := 1
        question:
            Enonce := "Quel muscle est le plus volumineux du corps humain ?"
            Reponses := array{"Le mollet", "Le biceps", "Le coeur", "Le grand fessier"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est l'unite de base de tout etre vivant ?"
            Reponses := array{"L'atome", "L'organe", "La molecule", "La cellule"}
            BonneReponse := 3
        question:
            Enonce := "Quel savant moine a decouvert les lois de l'heredite avec des petits pois ?"
            Reponses := array{"Darwin", "Gregor Mendel", "Lamarck", "Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quel organe humain peut largement se regenerer apres une ablation partielle ?"
            Reponses := array{"Le coeur", "Le foie", "Le cerveau", "Le rein"}
            BonneReponse := 1
        question:
            Enonce := "Quel oiseau atteint la plus grande vitesse en pique ?"
            Reponses := array{"L'autruche", "L'aigle royal", "Le martinet", "Le faucon pelerin"}
            BonneReponse := 3
        question:
            Enonce := "Combien de temps dure environ la gestation d'une elephante ?"
            Reponses := array{"9 mois", "22 mois", "6 mois", "12 mois"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand reptile vivant actuel ?"
            Reponses := array{"La tortue luth", "Le crocodile marin", "L'anaconda", "Le varan de Komodo"}
            BonneReponse := 1
        question:
            Enonce := "Combien de coeurs possede une pieuvre ?"
            Reponses := array{"2", "3", "5", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand oiseau australien, incapable de voler, ressemble a l'autruche ?"
            Reponses := array{"Le kiwi", "Le manchot", "Le casoar", "L'emeu"}
            BonneReponse := 3
        question:
            Enonce := "Quel arbre est le plus grand du monde ?"
            Reponses := array{"Le chene", "Le baobab", "Le sequoia", "L'eucalyptus"}
            BonneReponse := 2
        question:
            Enonce := "Quel serpent d'Amazonie est le plus massif du monde ?"
            Reponses := array{"Le python", "L'anaconda", "Le mamba noir", "Le cobra royal"}
            BonneReponse := 1
        question:
            Enonce := "Quel insecte construit une termitiere ?"
            Reponses := array{"La guepe", "La fourmi", "L'abeille", "Le termite"}
            BonneReponse := 3
        question:
            Enonce := "Quel mammifere marin male chante de longs chants ?"
            Reponses := array{"Le morse", "La baleine a bosse", "Le requin", "La loutre"}
            BonneReponse := 1
        question:
            Enonce := "Quelle plante carnivore referme ses pieges sur les insectes ?"
            Reponses := array{"La dionee (attrape-mouche)", "Le cactus", "Le lierre", "Le nenuphar"}
            BonneReponse := 0
        question:
            Enonce := "Quel oiseau marin possede la plus grande envergure ?"
            Reponses := array{"L'albatros", "Le pelican", "Le cormoran", "L'aigle"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand singe roux vit dans les forets d'Asie ?"
            Reponses := array{"L'orang-outan", "Le chimpanze", "Le gorille", "Le gibbon"}
            BonneReponse := 0
        question:
            Enonce := "Quel champignon souterrain tres prise est cherche par des chiens ?"
            Reponses := array{"La truffe", "La girolle", "Le champignon de Paris", "Le cepe"}
            BonneReponse := 0
        question:
            Enonce := "Quel oiseau pond le plus gros oeuf du monde ?"
            Reponses := array{"Le condor", "L'aigle", "L'autruche", "Le manchot empereur"}
            BonneReponse := 2
        question:
            Enonce := "Quelle meduse australienne est l'un des animaux les plus venimeux ?"
            Reponses := array{"La galere portugaise", "La meduse lune", "La pelagia", "La meduse-boite"}
            BonneReponse := 3
        question:
            Enonce := "Quel animal sait se reperer la nuit grace a l'echolocation ?"
            Reponses := array{"Le renard", "Le hibou", "La chauve-souris", "Le chat"}
            BonneReponse := 2
        question:
            Enonce := "Quel ours vit dans les regions arctiques ?"
            Reponses := array{"L'ours brun", "L'ours noir", "L'ours polaire", "Le panda"}
            BonneReponse := 2
        question:
            Enonce := "Quel poisson change de sexe au cours de sa vie ?"
            Reponses := array{"La sardine", "Le thon", "Le requin", "Le poisson-clown"}
            BonneReponse := 3
        question:
            Enonce := "Quel arbre figure sur le drapeau du Canada ?"
            Reponses := array{"Le chene", "L'erable", "Le bouleau", "Le pin"}
            BonneReponse := 1
        question:
            Enonce := "Quelle abeille pond les oeufs dans une ruche ?"
            Reponses := array{"La butineuse", "La reine", "Le faux bourdon", "L'ouvriere"}
            BonneReponse := 1
        question:
            Enonce := "Quel reptile sent les odeurs grace a sa langue fourchue ?"
            Reponses := array{"Le serpent", "La tortue", "Le gecko", "Le crocodile"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est l'esperance de vie d'une tortue geante ?"
            Reponses := array{"Environ 20 ans", "Environ 50 ans", "Plus de 100 ans", "Environ 10 ans"}
            BonneReponse := 2
        question:
            Enonce := "Quel animal possede le cou le plus long ?"
            Reponses := array{"Le lama", "Le cygne", "La girafe", "L'autruche"}
            BonneReponse := 2
        question:
            Enonce := "Quel oiseau est repute pour imiter la parole humaine ?"
            Reponses := array{"Le rossignol", "Le pigeon", "Le perroquet", "Le moineau"}
            BonneReponse := 2
        question:
            Enonce := "De quoi l'ivoire, matiere des defenses, provient-il principalement ?"
            Reponses := array{"Du sanglier", "Du rhinoceros", "De la baleine", "De l'elephant"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la planete la plus chaude du systeme solaire ?"
            Reponses := array{"Venus", "Jupiter", "Mercure", "Mars"}
            BonneReponse := 0
        question:
            Enonce := "Combien de lunes possede la planete Mars ?"
            Reponses := array{"0", "2", "4", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est l'etoile la plus proche de notre Soleil ?"
            Reponses := array{"Proxima du Centaure", "l'etoile Polaire", "Sirius", "Betelgeuse"}
            BonneReponse := 0
        question:
            Enonce := "Quelle mission a depose les premiers hommes sur la Lune ?"
            Reponses := array{"Gemini 4", "Apollo 11", "Apollo 13", "Soyouz 1"}
            BonneReponse := 1
        question:
            Enonce := "Quelle planete tourne pratiquement couchee sur le cote ?"
            Reponses := array{"Uranus", "Saturne", "Venus", "Neptune"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande lune du systeme solaire ?"
            Reponses := array{"Europe", "Ganymede", "Titan", "La Lune"}
            BonneReponse := 1
        question:
            Enonce := "Comment appelle-t-on l'explosion d'une etoile massive en fin de vie ?"
            Reponses := array{"Une comete", "Une supernova", "Une eclipse", "Une nebuleuse"}
            BonneReponse := 1
        question:
            Enonce := "Quel objet a une gravite telle que meme la lumiere ne s'en echappe pas ?"
            Reponses := array{"Un quasar froid", "Une planete naine", "Un trou noir", "Une etoile filante"}
            BonneReponse := 2
        question:
            Enonce := "Quelle planete abrite la Grande Tache rouge , une tempete geante ?"
            Reponses := array{"Neptune", "Mars", "Jupiter", "Saturne"}
            BonneReponse := 2
        question:
            Enonce := "Quelle sonde lancee en 1977 a quitte le systeme solaire ?"
            Reponses := array{"Apollo 17", "Spoutnik", "Voyager 1", "Cassini"}
            BonneReponse := 2
        question:
            Enonce := "Quel astronome a defendu que la Terre tourne autour du Soleil ?"
            Reponses := array{"Aristote", "Newton", "Ptolemee", "Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la planete la plus eloignee du Soleil ?"
            Reponses := array{"Uranus", "Pluton", "Saturne", "Neptune"}
            BonneReponse := 3
        question:
            Enonce := "Combien de temps met la lumiere du Soleil pour atteindre la Terre ?"
            Reponses := array{"Environ 1 heure", "Environ 8 minutes", "Environ 1 seconde", "Environ 1 jour"}
            BonneReponse := 1
        question:
            Enonce := "Quel telescope spatial a pris la suite de Hubble en 2021 ?"
            Reponses := array{"James Webb", "Galileo", "Spitzer", "Kepler"}
            BonneReponse := 0
        question:
            Enonce := "Quel corps celeste a ete reclasse en planete naine en 2006 ?"
            Reponses := array{"Pluton", "Charon", "Titan", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Quelle chienne sovietique fut le premier animal a orbiter autour de la Terre ?"
            Reponses := array{"Rex", "Belka", "Laika", "Strelka"}
            BonneReponse := 2
        question:
            Enonce := "Quelle couche de l'atmosphere nous protege des rayons ultraviolets ?"
            Reponses := array{"La couche d'ozone", "La mesosphere", "La troposphere", "La ionosphere"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la deuxieme planete a partir du Soleil ?"
            Reponses := array{"Mercure", "Mars", "la Terre", "Venus"}
            BonneReponse := 3
        question:
            Enonce := "De quoi sont principalement composees les cometes ?"
            Reponses := array{"De fer pur", "De gaz brulants", "De roche volcanique", "De glace et de poussiere"}
            BonneReponse := 3
        question:
            Enonce := "Quelle ceinture rocheuse se situe entre Mars et Jupiter ?"
            Reponses := array{"Les anneaux de Saturne", "Le nuage d'Oort", "La ceinture de Kuiper", "La ceinture d'asteroides"}
            BonneReponse := 3
        question:
            Enonce := "Quel phenomene lumineux color le ciel pres des poles ?"
            Reponses := array{"Les eclairs", "Les aurores polaires", "Les mirages", "Les arcs-en-ciel"}
            BonneReponse := 1
        question:
            Enonce := "Quelle planete possede la journee (rotation) la plus longue ?"
            Reponses := array{"Mercure", "Jupiter", "Venus", "la Terre"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on une roche venue de l'espace tombee sur Terre ?"
            Reponses := array{"Une comete", "Une meteorite", "Un asteroide", "Une nebuleuse"}
            BonneReponse := 1
        question:
            Enonce := "Quel premier satellite artificiel a ete lance par l'URSS en 1957 ?"
            Reponses := array{"Explorer 1", "Spoutnik", "Vostok", "Telstar"}
            BonneReponse := 1
        question:
            Enonce := "Quelle galaxie voisine est visible a l'oeil nu depuis la Terre ?"
            Reponses := array{"le Sombrero", "le Triangle", "Andromede", "le Tourbillon"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre a cofonde le cubisme aux cotes de Picasso ?"
            Reponses := array{"Henri Matisse", "Marc Chagall", "Paul Cezanne", "Georges Braque"}
            BonneReponse := 3
        question:
            Enonce := "Quel architecte a concu la basilique de la Sagrada Familia a Barcelone ?"
            Reponses := array{"Renzo Piano", "Antoni Gaudi", "Le Corbusier", "Gustave Eiffel"}
            BonneReponse := 1
        question:
            Enonce := "Quel mouvement artistique, illustre par Dali, explore le reve et l'inconscient ?"
            Reponses := array{"Le surrealisme", "Le realisme", "L'impressionnisme", "Le cubisme"}
            BonneReponse := 0
        question:
            Enonce := "Qui a peint La Jeune Fille a la perle ?"
            Reponses := array{"Johannes Vermeer", "Rubens", "Rembrandt", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Quel artiste pop a peint les boites de soupe Campbell ?"
            Reponses := array{"Jackson Pollock", "Andy Warhol", "Keith Haring", "Roy Lichtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre neerlandais a realise La Ronde de nuit ?"
            Reponses := array{"Mondrian", "Vermeer", "Van Gogh", "Rembrandt"}
            BonneReponse := 3
        question:
            Enonce := "Quelle fresque de Leonard de Vinci represente le dernier repas du Christ ?"
            Reponses := array{"La Creation d'Adam", "L'Ecole d'Athenes", "La Cene", "Le Jugement dernier"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre espagnol a realise Les Menines ?"
            Reponses := array{"Murillo", "Diego Velasquez", "El Greco", "Goya"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand musee de Madrid abrite Goya et Velasquez ?"
            Reponses := array{"Les Offices", "Le Guggenheim", "Le Prado", "Le Reina Sofia"}
            BonneReponse := 2
        question:
            Enonce := "Qui a peint La Liberte guidant le peuple ?"
            Reponses := array{"Eugene Delacroix", "Courbet", "Jacques-Louis David", "Gericault"}
            BonneReponse := 0
        question:
            Enonce := "Quel style architectural medieval se reconnait a ses arcs-boutants et vitraux ?"
            Reponses := array{"Le roman", "Le baroque", "L'art deco", "Le gothique"}
            BonneReponse := 3
        question:
            Enonce := "Quel peintre a realise de nombreuses toiles de nenuphars dans son jardin de Giverny ?"
            Reponses := array{"Sisley", "Pissarro", "Renoir", "Claude Monet"}
            BonneReponse := 3
        question:
            Enonce := "Quelle artiste mexicaine est celebre pour ses autoportraits intenses ?"
            Reponses := array{"Georgia O'Keeffe", "Niki de Saint Phalle", "Frida Kahlo", "Tamara de Lempicka"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre impressionniste a souvent represente des danseuses de ballet ?"
            Reponses := array{"Edgar Degas", "Caillebotte", "Monet", "Manet"}
            BonneReponse := 0
        question:
            Enonce := "Quelle statue grecque ailee, sans tete ni bras, trone au Louvre ?"
            Reponses := array{"Le Discobole", "La Venus de Milo", "La Victoire de Samothrace", "La Pieta"}
            BonneReponse := 2
        question:
            Enonce := "Quel courant artistique du debut du XXe siecle, mene par Matisse, use de couleurs vives ?"
            Reponses := array{"Le dadaisme", "Le cubisme", "Le fauvisme", "Le pointillisme"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville italienne est consideree comme le berceau de la Renaissance ?"
            Reponses := array{"Florence", "Rome", "Milan", "Venise"}
            BonneReponse := 0
        question:
            Enonce := "Quel alliage de cuivre et d'etain sert a couler des statues ?"
            Reponses := array{"L'acier", "Le laiton", "Le bronze", "L'etain pur"}
            BonneReponse := 2
        question:
            Enonce := "Quel style tres orne et theatral domine l'art du XVIIe siecle ?"
            Reponses := array{"Le baroque", "Le minimalisme", "Le gothique", "Le cubisme"}
            BonneReponse := 0
        question:
            Enonce := "Quelle celebre tour-horloge se dresse a Londres ?"
            Reponses := array{"Big Ben", "Le Kremlin", "La tour de Pise", "La Giralda"}
            BonneReponse := 0
        question:
            Enonce := "Qui a peint le plafond de la chapelle Sixtine ?"
            Reponses := array{"Raphael", "Le Caravage", "Michel-Ange", "Leonard de Vinci"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre neerlandais post-impressionniste a peint Les Mangeurs de pommes de terre ?"
            Reponses := array{"Vermeer", "Mondrian", "Rembrandt", "Vincent van Gogh"}
            BonneReponse := 3
        question:
            Enonce := "Quel mouvement geometrique aux lignes noires et couleurs primaires est lie a Mondrian ?"
            Reponses := array{"Le baroque", "Le realisme", "Le rococo", "De Stijl"}
            BonneReponse := 3
        question:
            Enonce := "Quel sculpteur italien de la Renaissance a realise un David de bronze ?"
            Reponses := array{"Cellini", "Donatello", "Canova", "Bernin"}
            BonneReponse := 1
        question:
            Enonce := "Quel architecte franco-suisse moderne a theorise la Cite radieuse ?"
            Reponses := array{"Gaudi", "Gustave Eiffel", "Frank Lloyd Wright", "Le Corbusier"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Crime et Chatiment ?"
            Reponses := array{"Fiodor Dostoievski", "Tolstoi", "Tchekhov", "Gogol"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit A la recherche du temps perdu ?"
            Reponses := array{"Marcel Proust", "Flaubert", "Gide", "Camus"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur a cree le detective Hercule Poirot ?"
            Reponses := array{"Georges Simenon", "Agatha Christie", "Conan Doyle", "Patricia Highsmith"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit L'Etranger ?"
            Reponses := array{"Albert Camus", "Andre Malraux", "Jean-Paul Sartre", "Boris Vian"}
            BonneReponse := 0
        question:
            Enonce := "Quel poete a ecrit Le Bateau ivre ?"
            Reponses := array{"Arthur Rimbaud", "Paul Verlaine", "Baudelaire", "Mallarme"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Guerre et Paix ?"
            Reponses := array{"Soljenitsyne", "Leon Tolstoi", "Pouchkine", "Dostoievski"}
            BonneReponse := 1
        question:
            Enonce := "Quel dramaturge francais a ecrit Le Misanthrope ?"
            Reponses := array{"Racine", "Moliere", "Corneille", "Beaumarchais"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Orgueil et Prejuges ?"
            Reponses := array{"Jane Austen", "Virginia Woolf", "Mary Shelley", "Charlotte Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur a ecrit Cent ans de solitude ?"
            Reponses := array{"Mario Vargas Llosa", "Jorge Luis Borges", "Gabriel Garcia Marquez", "Pablo Neruda"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Vieil Homme et la Mer ?"
            Reponses := array{"Fitzgerald", "Steinbeck", "Faulkner", "Ernest Hemingway"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit la piece En attendant Godot ?"
            Reponses := array{"Sartre", "Samuel Beckett", "Brecht", "Ionesco"}
            BonneReponse := 1
        question:
            Enonce := "Quel philosophe a ecrit Du contrat social ?"
            Reponses := array{"Diderot", "Voltaire", "Montesquieu", "Jean-Jacques Rousseau"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Rouge et le Noir ?"
            Reponses := array{"Zola", "Stendhal", "Flaubert", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Quel ecrivain praguois a ecrit La Metamorphose et Le Proces ?"
            Reponses := array{"Thomas Mann", "Franz Kafka", "Hermann Hesse", "Robert Musil"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Dracula ?"
            Reponses := array{"H.P. Lovecraft", "Mary Shelley", "Edgar Allan Poe", "Bram Stoker"}
            BonneReponse := 3
        question:
            Enonce := "Quel auteur a ecrit Voyage au bout de la nuit ?"
            Reponses := array{"Marcel Ayme", "Georges Bernanos", "Romain Gary", "Louis-Ferdinand Celine"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit la saga Le Trone de fer (Game of Thrones) ?"
            Reponses := array{"Robert Jordan", "George R.R. Martin", "Patrick Rothfuss", "J.R.R. Tolkien"}
            BonneReponse := 1
        question:
            Enonce := "Quel ecrivain italien a ecrit Le Nom de la rose ?"
            Reponses := array{"Umberto Eco", "Alberto Moravia", "Primo Levi", "Italo Calvino"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Madame Bovary ?"
            Reponses := array{"Maupassant", "Balzac", "Gustave Flaubert", "Zola"}
            BonneReponse := 2
        question:
            Enonce := "Quel poete a ecrit Demain, des l'aube ?"
            Reponses := array{"Victor Hugo", "Vigny", "Lamartine", "Musset"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur britannique a ecrit les romans originaux de James Bond ?"
            Reponses := array{"Ian Fleming", "Graham Greene", "John le Carre", "Frederick Forsyth"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Anna Karenine ?"
            Reponses := array{"Leon Tolstoi", "Tchekhov", "Dostoievski", "Tourgueniev"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur a ecrit Les Fourmis et Les Thanatonautes ?"
            Reponses := array{"Guillaume Musso", "Michel Houellebecq", "Bernard Werber", "Marc Levy"}
            BonneReponse := 2
        question:
            Enonce := "Quel philosophe des Lumieres a ecrit le conte Candide ?"
            Reponses := array{"Kant", "Voltaire", "Rousseau", "Spinoza"}
            BonneReponse := 1
        question:
            Enonce := "Quelle tragedie de Shakespeare met en scene un roi ecossais et trois sorcieres ?"
            Reponses := array{"Othello", "Le Roi Lear", "Macbeth", "Hamlet"}
            BonneReponse := 2
        question:
            Enonce := "Quel compositeur italien a ecrit Les Quatre Saisons ?"
            Reponses := array{"Puccini", "Verdi", "Rossini", "Antonio Vivaldi"}
            BonneReponse := 3
        question:
            Enonce := "Quel groupe a interprete Bohemian Rhapsody ?"
            Reponses := array{"Led Zeppelin", "Deep Purple", "Queen", "The Who"}
            BonneReponse := 2
        question:
            Enonce := "Quel grand compositeur allemand est devenu sourd a la fin de sa vie ?"
            Reponses := array{"Haendel", "Ludwig van Beethoven", "Schubert", "Brahms"}
            BonneReponse := 1
        question:
            Enonce := "De quel instrument joue le celebre Yo-Yo Ma ?"
            Reponses := array{"Le violon", "Le piano", "La flute", "Le violoncelle"}
            BonneReponse := 3
        question:
            Enonce := "Quel compositeur francais a ecrit l'opera Carmen ?"
            Reponses := array{"Georges Bizet", "Gounod", "Saint-Saens", "Berlioz"}
            BonneReponse := 0
        question:
            Enonce := "Combien de symphonies Beethoven a-t-il composees ?"
            Reponses := array{"7", "9", "12", "5"}
            BonneReponse := 1
        question:
            Enonce := "Quel groupe suedois a chante Dancing Queen ?"
            Reponses := array{"ABBA", "Roxette", "Europe", "Ace of Base"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur russe a ecrit le ballet Le Lac des cygnes ?"
            Reponses := array{"Tchaikovski", "Rachmaninov", "Prokofiev", "Stravinsky"}
            BonneReponse := 0
        question:
            Enonce := "Quel instrument a clavier est l'ancetre du piano ?"
            Reponses := array{"L'orgue", "L'accordeon", "Le clavecin", "Le synthetiseur"}
            BonneReponse := 2
        question:
            Enonce := "Quelle chanteuse americaine est surnommee Queen B ?"
            Reponses := array{"Rihanna", "Lady Gaga", "Beyonce", "Madonna"}
            BonneReponse := 2
        question:
            Enonce := "Quel opera de Mozart a pour titre La Flute... ?"
            Reponses := array{"Les Noces de Figaro", "Cosi fan tutte", "Don Giovanni", "La Flute enchantee"}
            BonneReponse := 3
        question:
            Enonce := "Quel compositeur polonais est celebre pour ses nocturnes au piano ?"
            Reponses := array{"Schumann", "Frederic Chopin", "Debussy", "Liszt"}
            BonneReponse := 1
        question:
            Enonce := "Quel terme italien indique un tempo rapide et enjoue ?"
            Reponses := array{"Lento", "Allegro", "Largo", "Adagio"}
            BonneReponse := 1
        question:
            Enonce := "Quel instrument ecossais comporte un sac et des tuyaux ?"
            Reponses := array{"La cornemuse", "L'accordeon", "Le hautbois", "La flute de pan"}
            BonneReponse := 0
        question:
            Enonce := "Quelle famille d'instruments comprend la flute, le hautbois et la clarinette ?"
            Reponses := array{"Les percussions", "Les cuivres", "Les cordes", "Les bois"}
            BonneReponse := 3
        question:
            Enonce := "Quel groupe britannique a sorti l'album The Dark Side of the Moon ?"
            Reponses := array{"Pink Floyd", "The Beatles", "Genesis", "The Rolling Stones"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur francais a ecrit le Bolero ?"
            Reponses := array{"Erik Satie", "Claude Debussy", "Maurice Ravel", "Camille Saint-Saens"}
            BonneReponse := 2
        question:
            Enonce := "Quelle voix d'homme est la plus grave ?"
            Reponses := array{"Le contre-tenor", "La basse", "Le baryton", "Le tenor"}
            BonneReponse := 1
        question:
            Enonce := "Quel chanteur jamaicain a popularise le reggae dans le monde ?"
            Reponses := array{"Shaggy", "Jimmy Cliff", "Peter Tosh", "Bob Marley"}
            BonneReponse := 3
        question:
            Enonce := "Quel courant musical melant blues et country a ete popularise par Elvis Presley ?"
            Reponses := array{"Le jazz", "Le rock'n'roll", "Le funk", "La soul"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur a ecrit la piece La Marche turque ?"
            Reponses := array{"Mozart", "Liszt", "Beethoven", "Schubert"}
            BonneReponse := 0
        question:
            Enonce := "A quelle frequence est generalement accorde le la de reference ?"
            Reponses := array{"440 Hz", "100 Hz", "880 Hz", "220 Hz"}
            BonneReponse := 0
        question:
            Enonce := "Quel style musical est ne dans le Bronx new-yorkais avec le rap et le DJing ?"
            Reponses := array{"Le hip-hop", "Le disco", "La pop", "La techno"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur baroque allemand est l'auteur du Messie et de La Musique pour les feux d'artifice ?"
            Reponses := array{"Vivaldi", "Haendel", "Telemann", "Bach"}
            BonneReponse := 1
        question:
            Enonce := "Quel instrument electrique est emblematique du jeu de Jimi Hendrix ?"
            Reponses := array{"La guitare electrique", "La batterie", "La basse", "Le synthetiseur"}
            BonneReponse := 0
        question:
            Enonce := "Quel realisateur a tourne Pulp Fiction ?"
            Reponses := array{"Coen", "Martin Scorsese", "David Lynch", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Quel film sud-coreen a remporte l'Oscar du meilleur film en 2020 ?"
            Reponses := array{"Old Boy", "Burning", "Train pour Busan", "Parasite"}
            BonneReponse := 3
        question:
            Enonce := "Quel realisateur est surnomme le maitre du suspense ( Psychose ) ?"
            Reponses := array{"Stanley Kubrick", "Brian De Palma", "Alfred Hitchcock", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Quelle trilogie de Peter Jackson adapte l'oeuvre de Tolkien ?"
            Reponses := array{"Harry Potter", "Le Seigneur des anneaux", "Le Trone de fer", "Star Wars"}
            BonneReponse := 1
        question:
            Enonce := "Quel acteur incarne le pirate Jack Sparrow ?"
            Reponses := array{"Brad Pitt", "Orlando Bloom", "Johnny Depp", "Russell Crowe"}
            BonneReponse := 2
        question:
            Enonce := "Quel film de science-fiction de 1999 propose une pilule rouge ?"
            Reponses := array{"Matrix", "Terminator", "Blade Runner", "Tron"}
            BonneReponse := 0
        question:
            Enonce := "Quel studio japonais a realise Le Voyage de Chihiro ?"
            Reponses := array{"Toei", "Pixar", "Le studio Ghibli", "Madhouse"}
            BonneReponse := 2
        question:
            Enonce := "Quel film de Francis Ford Coppola raconte une famille mafieuse italo-americaine ?"
            Reponses := array{"Casino", "Scarface", "Le Parrain", "Les Affranchis"}
            BonneReponse := 2
        question:
            Enonce := "Quel film d'animation Pixar met en scene les emotions dans la tete d'une fille ?"
            Reponses := array{"La-haut", "Coco", "Vice-versa", "Ratatouille"}
            BonneReponse := 2
        question:
            Enonce := "Quel realisateur a tourne Inception et Interstellar ?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quel personnage de DC Comics est l'ennemi clown de Batman ?"
            Reponses := array{"Bane", "Lex Luthor", "Le Joker", "Le Pingouin"}
            BonneReponse := 2
        question:
            Enonce := "Quel film francais muet a remporte l'Oscar du meilleur film en 2012 ?"
            Reponses := array{"Intouchables", "La Vie d'Adele", "Amelie Poulain", "The Artist"}
            BonneReponse := 3
        question:
            Enonce := "Quelle actrice incarne Hermione dans la saga Harry Potter ?"
            Reponses := array{"Emma Watson", "Keira Knightley", "Emma Stone", "Anna Kendrick"}
            BonneReponse := 0
        question:
            Enonce := "Quel acteur autrichien, star de films d'action, devint gouverneur de Californie ?"
            Reponses := array{"Arnold Schwarzenegger", "Jean-Claude Van Damme", "Sylvester Stallone", "Dolph Lundgren"}
            BonneReponse := 0
        question:
            Enonce := "Quel film de 1994 suit un homme naif a travers l'histoire americaine ?"
            Reponses := array{"Le Cercle des poetes disparus", "Big", "Rain Man", "Forrest Gump"}
            BonneReponse := 3
        question:
            Enonce := "Quel film de Kubrick met en scene l'ordinateur HAL 9000 ?"
            Reponses := array{"Solaris", "Shining", "Orange mecanique", "2001 : l'Odyssee de l'espace"}
            BonneReponse := 3
        question:
            Enonce := "Quelle actrice francaise a obtenu un Oscar pour son role d'Edith Piaf ?"
            Reponses := array{"Juliette Binoche", "Marion Cotillard", "Isabelle Adjani", "Audrey Tautou"}
            BonneReponse := 1
        question:
            Enonce := "Quel acteur incarne Iron Man dans l'univers cinematographique Marvel ?"
            Reponses := array{"Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"}
            BonneReponse := 2
        question:
            Enonce := "Quel film de James Cameron de 2009 se deroule sur la planete Pandora ?"
            Reponses := array{"Dune", "Avatar", "Aliens", "Abyss"}
            BonneReponse := 1
        question:
            Enonce := "Quel acteur a longtemps incarne James Bond dans les annees 1970-1980 ?"
            Reponses := array{"Timothy Dalton", "Roger Moore", "Sean Connery", "Pierce Brosnan"}
            BonneReponse := 1
        question:
            Enonce := "Quelle franchise d'horreur met en scene le tueur Freddy Krueger ?"
            Reponses := array{"Scream", "Vendredi 13", "Les Griffes de la nuit", "Halloween"}
            BonneReponse := 2
        question:
            Enonce := "Quel acteur incarne souvent les heros de Martin Scorsese ( Taxi Driver ) ?"
            Reponses := array{"Dustin Hoffman", "Jack Nicholson", "Robert De Niro", "Al Pacino"}
            BonneReponse := 2
        question:
            Enonce := "Quel film catastrophe de 1997 a longtemps detenu le record du box-office ?"
            Reponses := array{"Avatar", "Jurassic Park", "Twister", "Titanic"}
            BonneReponse := 3
        question:
            Enonce := "Quelle saga oppose les Jedi a l'Empire et aux Sith ?"
            Reponses := array{"Dune", "Star Trek", "Star Wars", "Stargate"}
            BonneReponse := 2
        question:
            Enonce := "Quel jeune sorcier a lunettes est le heros d'une saga au cinema ?"
            Reponses := array{"Gandalf", "Harry Potter", "Merlin", "Dumbledore"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a remporte la Coupe du monde de football 2018 ?"
            Reponses := array{"La France", "L'Allemagne", "Le Bresil", "La Croatie"}
            BonneReponse := 0
        question:
            Enonce := "Combien de joueurs compose une equipe de rugby a XV sur le terrain ?"
            Reponses := array{"7", "13", "15", "11"}
            BonneReponse := 2
        question:
            Enonce := "Quel nageur americain detient le record de medailles olympiques ?"
            Reponses := array{"Ryan Lochte", "Ian Thorpe", "Michael Phelps", "Mark Spitz"}
            BonneReponse := 2
        question:
            Enonce := "Dans quelle ville se sont tenus les Jeux olympiques d'ete 2024 ?"
            Reponses := array{"Paris", "Tokyo", "Los Angeles", "Londres"}
            BonneReponse := 0
        question:
            Enonce := "Quel joueur de tennis detient le record de victoires a Roland-Garros ?"
            Reponses := array{"Novak Djokovic", "Roger Federer", "Rafael Nadal", "Bjorn Borg"}
            BonneReponse := 2
        question:
            Enonce := "Dans quelle discipline automobile court Lewis Hamilton ?"
            Reponses := array{"Le MotoGP", "Le rallye", "Les 24 Heures du Mans", "La Formule 1"}
            BonneReponse := 3
        question:
            Enonce := "Quel capitaine argentin a souleve la Coupe du monde 2022 ?"
            Reponses := array{"Sergio Aguero", "Angel Di Maria", "Diego Maradona", "Lionel Messi"}
            BonneReponse := 3
        question:
            Enonce := "Combien de bases compte un terrain de baseball ?"
            Reponses := array{"2", "4", "3", "5"}
            BonneReponse := 1
        question:
            Enonce := "Combien de fois Eddy Merckx a-t-il remporte le Tour de France ?"
            Reponses := array{"7", "3", "2", "5"}
            BonneReponse := 3
        question:
            Enonce := "Quelle discipline olympique combine ski de fond et tir a la carabine ?"
            Reponses := array{"Le biathlon", "Le skeleton", "Le combine nordique", "Le pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "Quel boxeur a mordu l'oreille d'Evander Holyfield lors d'un combat ?"
            Reponses := array{"Mohamed Ali", "George Foreman", "Lennox Lewis", "Mike Tyson"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se pratique a cheval avec un maillet et une balle ?"
            Reponses := array{"Le horse-ball", "Le polo", "Le croquet", "Le cricket"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a remporte le plus de Coupes du monde de football ?"
            Reponses := array{"L'Argentine", "L'Allemagne", "Le Bresil", "L'Italie"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on le coup de tennis frappe violemment au-dessus de la tete ?"
            Reponses := array{"Le smash", "Le lob", "L'amorti", "La volee"}
            BonneReponse := 0
        question:
            Enonce := "Quel basketteur americain est surnomme King James ?"
            Reponses := array{"Shaquille O'Neal", "Kobe Bryant", "LeBron James", "Stephen Curry"}
            BonneReponse := 2
        question:
            Enonce := "Quel club de football madrilene est surnomme les Merengues ?"
            Reponses := array{"L'Atletico Madrid", "Le FC Seville", "Le FC Barcelone", "Le Real Madrid"}
            BonneReponse := 3
        question:
            Enonce := "Combien de points vaut un panier marque au-dela de la ligne a trois points ?"
            Reponses := array{"4", "2", "1", "3"}
            BonneReponse := 3
        question:
            Enonce := "Quel art martial japonais se pratique pieds nus, avec des katas et des coups frappes ?"
            Reponses := array{"Le karate", "L'aikido", "Le sumo", "Le judo"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la duree reglementaire d'un match de football (hors prolongations) ?"
            Reponses := array{"80 minutes", "120 minutes", "90 minutes", "60 minutes"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport collectif americain se joue avec un ballon ovale et des touchdowns ?"
            Reponses := array{"Le football americain", "Le baseball", "Le hockey", "Le rugby"}
            BonneReponse := 0
        question:
            Enonce := "Quel tournoi de tennis se joue sur le gazon de Londres ?"
            Reponses := array{"l'Open d'Australie", "l'US Open", "Roland-Garros", "Wimbledon"}
            BonneReponse := 3
        question:
            Enonce := "Quelle equipe nationale de football est surnommee la Mannschaft ?"
            Reponses := array{"L'Allemagne", "La Belgique", "Les Pays-Bas", "L'Italie"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport de glisse se pratique debout sur une planche, sur la neige ?"
            Reponses := array{"La luge", "Le bobsleigh", "Le snowboard", "Le ski"}
            BonneReponse := 2
        question:
            Enonce := "Combien d'epreuves comporte le decathlon en athletisme ?"
            Reponses := array{"10", "5", "7", "12"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays sont nes les Jeux olympiques antiques ?"
            Reponses := array{"L'Egypte", "La Turquie", "La Grece", "L'Italie"}
            BonneReponse := 2
        question:
            Enonce := "Quel dieu grec regne sur le royaume des morts (les Enfers) ?"
            Reponses := array{"Hades", "Poseidon", "Zeus", "Ares"}
            BonneReponse := 0
        question:
            Enonce := "Quel heros grec a tranche la tete de la Meduse ?"
            Reponses := array{"Hercule", "Thesee", "Persee", "Jason"}
            BonneReponse := 2
        question:
            Enonce := "Quel titan a derobe le feu aux dieux pour le donner aux hommes ?"
            Reponses := array{"Promethee", "Atlas", "Epimethee", "Cronos"}
            BonneReponse := 0
        question:
            Enonce := "Quel dieu nordique borgne est le souverain des dieux ?"
            Reponses := array{"Loki", "Thor", "Odin", "Baldur"}
            BonneReponse := 2
        question:
            Enonce := "Quel heros grec partit a la conquete de la Toison d'or ?"
            Reponses := array{"Ulysse", "Achille", "Jason", "Hector"}
            BonneReponse := 2
        question:
            Enonce := "Quel fleuve les ames traversent-elles pour gagner les Enfers grecs ?"
            Reponses := array{"Le Styx", "l'Acheron", "le Nil", "Le Lethe"}
            BonneReponse := 0
        question:
            Enonce := "Quel dieu egyptien a tete de faucon est associe au pharaon ?"
            Reponses := array{"Seth", "Thot", "Anubis", "Horus"}
            BonneReponse := 3
        question:
            Enonce := "Quel monstre, mi-lion mi-femme, pose des enigmes mortelles ?"
            Reponses := array{"La harpie", "Le sphinx", "La chimere", "La gorgone"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu grec de la forge travaille le metal pour les dieux ?"
            Reponses := array{"Hephaistos", "Apollon", "Hermes", "Dionysos"}
            BonneReponse := 0
        question:
            Enonce := "Quelle religion suit l'enseignement de Siddhartha Gautama ?"
            Reponses := array{"Le bouddhisme", "le shintoisme", "l'hindouisme", "le taoisme"}
            BonneReponse := 0
        question:
            Enonce := "Quel heros grec a tue le Minotaure dans le labyrinthe ?"
            Reponses := array{"Thesee", "Hercule", "Persee", "Icare"}
            BonneReponse := 0
        question:
            Enonce := "Quel dieu farceur de la mythologie nordique provoque le chaos ?"
            Reponses := array{"Freyr", "Loki", "Tyr", "Heimdall"}
            BonneReponse := 1
        question:
            Enonce := "Quelle deesse grecque de la chasse est la soeur jumelle d'Apollon ?"
            Reponses := array{"Hera", "Hestia", "Artemis", "Demeter"}
            BonneReponse := 2
        question:
            Enonce := "Quelle epopee raconte le long retour d'Ulysse vers Ithaque ?"
            Reponses := array{"L'Eneide", "L'Odyssee", "L'Iliade", "La Theogonie"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu hindou a une tete d'elephant ?"
            Reponses := array{"Ganesh", "Brahma", "Shiva", "Vishnou"}
            BonneReponse := 0
        question:
            Enonce := "Comment se nomme l'epee legendaire du roi Arthur ?"
            Reponses := array{"Tizona", "Joyeuse", "Durandal", "Excalibur"}
            BonneReponse := 3
        question:
            Enonce := "Combien y a-t-il de Muses dans la mythologie grecque ?"
            Reponses := array{"9", "7", "12", "3"}
            BonneReponse := 0
        question:
            Enonce := "Quel personnage condamne a porter la voute celeste sur ses epaules ?"
            Reponses := array{"Sisyphe", "Tantale", "Promethee", "Atlas"}
            BonneReponse := 3
        question:
            Enonce := "Quelle deesse egyptienne est l'epouse d'Osiris ?"
            Reponses := array{"Nout", "Hathor", "Bastet", "Isis"}
            BonneReponse := 3
        question:
            Enonce := "Quelle religion compte le plus grand nombre de fideles dans le monde ?"
            Reponses := array{"Le christianisme", "le bouddhisme", "l'islam", "l'hindouisme"}
            BonneReponse := 0
        question:
            Enonce := "Quelle boite, dans le mythe grec, libera tous les maux de l'humanite ?"
            Reponses := array{"Le vase de Midas", "La boite de Pandore", "L'urne d'Achille", "Le coffre de Persee"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu romain du commerce et des voyageurs equivaut a Hermes ?"
            Reponses := array{"Vulcain", "Mars", "Janus", "Mercure"}
            BonneReponse := 3
        question:
            Enonce := "Quelle creature ailee au corps de lion et tete d'aigle garde les tresors ?"
            Reponses := array{"Le cyclope", "Le centaure", "Le griffon", "Le basilic"}
            BonneReponse := 2
        question:
            Enonce := "Quel demeure celeste accueille les guerriers morts au combat (mythologie nordique) ?"
            Reponses := array{"Le Valhalla", "Le Helheim", "Le Niflheim", "Le Midgard"}
            BonneReponse := 0
        question:
            Enonce := "Quel animal etait sacre pour la deesse egyptienne Bastet ?"
            Reponses := array{"Le chien", "Le chat", "Le crocodile", "Le faucon"}
            BonneReponse := 1
        question:
            Enonce := "En quelle annee Constantinople est-elle tombee aux mains des Ottomans ?"
            Reponses := array{"1071", "1453", "1204", "1492"}
            BonneReponse := 1
        question:
            Enonce := "Quels traites de 1648 mettent fin a la guerre de Trente Ans ?"
            Reponses := array{"Le traite de Versailles", "Le traite d'Utrecht", "Les traites de Westphalie", "La paix d'Augsbourg"}
            BonneReponse := 2
        question:
            Enonce := "Quel empereur byzantin a fait codifier le droit romain ?"
            Reponses := array{"Basile II", "Constantin", "Heraclius", "Justinien"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee la Magna Carta a-t-elle ete signee en Angleterre ?"
            Reponses := array{"1066", "1215", "1314", "1453"}
            BonneReponse := 1
        question:
            Enonce := "Quelle dynastie a regne en France a partir de 987 avec Hugues Capet ?"
            Reponses := array{"Les Carolingiens", "Les Capetiens", "Les Merovingiens", "Les Valois"}
            BonneReponse := 1
        question:
            Enonce := "Quel chancelier prussien a orchestre l'unite allemande en 1871 ?"
            Reponses := array{"Guillaume II", "Metternich", "Adenauer", "Otto von Bismarck"}
            BonneReponse := 3
        question:
            Enonce := "En quelle annee a eclate la guerre de Secession americaine ?"
            Reponses := array{"1898", "1861", "1776", "1812"}
            BonneReponse := 1
        question:
            Enonce := "Sous quel empereur de la dynastie flavienne le Colisee fut-il inaugure ?"
            Reponses := array{"Auguste", "Hadrien", "Neron", "Vespasien"}
            BonneReponse := 3
        question:
            Enonce := "Quel gladiateur a mene une grande revolte d'esclaves contre Rome ?"
            Reponses := array{"Vercingetorix", "Crassus", "Spartacus", "Hannibal"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee Jeanne d'Arc a-t-elle ete brulee a Rouen ?"
            Reponses := array{"1415", "1453", "1429", "1431"}
            BonneReponse := 3
        question:
            Enonce := "Quel traite de 1494 partagea le Nouveau Monde entre l'Espagne et le Portugal ?"
            Reponses := array{"Le traite de Tordesillas", "Le traite de Paris", "Le traite de Madrid", "Le traite de Saragosse"}
            BonneReponse := 0
        question:
            Enonce := "Quelle dynastie mongole a precede les Ming en Chine ?"
            Reponses := array{"Les Han", "Les Qing", "Les Yuan", "Les Song"}
            BonneReponse := 2
        question:
            Enonce := "Quel tsar a modernise la Russie et fonde Saint-Petersbourg ?"
            Reponses := array{"Pierre le Grand", "Nicolas II", "Alexandre Ier", "Ivan le Terrible"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee Hong Kong a-t-elle ete retrocedee a la Chine ?"
            Reponses := array{"1997", "1989", "1984", "2001"}
            BonneReponse := 0
        question:
            Enonce := "Quel pharaon a fait edifier les temples d'Abou Simbel ?"
            Reponses := array{"Akhenaton", "Ramses II", "Toutankhamon", "Kheops"}
            BonneReponse := 1
        question:
            Enonce := "Quelle civilisation avait Tenochtitlan pour capitale ?"
            Reponses := array{"Les Tolteques", "Les Mayas", "Les Azteques", "Les Incas"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert le tombeau de Toutankhamon en 1922 ?"
            Reponses := array{"Auguste Mariette", "Howard Carter", "Heinrich Schliemann", "Jean-Francois Champollion"}
            BonneReponse := 1
        question:
            Enonce := "Quel chancelier a dirige la reunification allemande en 1990 ?"
            Reponses := array{"Konrad Adenauer", "Helmut Kohl", "Willy Brandt", "Gerhard Schroder"}
            BonneReponse := 1
        question:
            Enonce := "A quelle annee correspondent les Trois Glorieuses de la revolution parisienne ?"
            Reponses := array{"1848", "1830", "1789", "1871"}
            BonneReponse := 1
        question:
            Enonce := "Quel conquerant macedonien a bati un immense empire au IVe siecle av. J.-C. ?"
            Reponses := array{"Alexandre le Grand", "Jules Cesar", "Pericles", "Darius"}
            BonneReponse := 0
        question:
            Enonce := "En quelle annee le servage a-t-il ete aboli dans l'Empire russe ?"
            Reponses := array{"1861", "1789", "1812", "1917"}
            BonneReponse := 0
        question:
            Enonce := "Quel accord secret de 1916 partagea le Proche-Orient entre la France et le Royaume-Uni ?"
            Reponses := array{"Les accords Sykes-Picot", "La declaration Balfour", "Les accords de Yalta", "Le traite de Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Quelle dynastie regnait sur la France a la veille de la Revolution de 1789 ?"
            Reponses := array{"Les Valois", "Les Bourbons", "Les Orleans", "Les Capetiens directs"}
            BonneReponse := 1
        question:
            Enonce := "Quel empereur a transfere la capitale romaine a Byzance en 330 ?"
            Reponses := array{"Theodose", "Auguste", "Diocletien", "Constantin"}
            BonneReponse := 3
        question:
            Enonce := "Quelle reine d'Angleterre est restee celebre pour son ere au XIXe siecle et un empire mondial ?"
            Reponses := array{"Marie Tudor", "Elisabeth Ire", "Anne", "Victoria"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la capitale du Kazakhstan ?"
            Reponses := array{"Astana", "Almaty", "Bichkek", "Tachkent"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le pays le plus peuple d'Afrique ?"
            Reponses := array{"Le Nigeria", "l'Afrique du Sud", "l'Ethiopie", "l'Egypte"}
            BonneReponse := 0
        question:
            Enonce := "Quel detroit separe la Russie de l'Alaska ?"
            Reponses := array{"Le detroit de Bering", "Le detroit de Magellan", "Le detroit du Danemark", "Le detroit d'Ormuz"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le point emerge le plus bas de la surface terrestre ?"
            Reponses := array{"La depression de l'Afar", "Le delta du Nil", "La vallee de la Mort", "Les rives de la mer Morte"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est la capitale de la Mongolie ?"
            Reponses := array{"Oulan-Bator", "Lhassa", "Astana", "Tachkent"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la capitale de la Finlande ?"
            Reponses := array{"Stockholm", "Tallinn", "Oslo", "Helsinki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand lac d'Afrique ?"
            Reponses := array{"Le lac Victoria", "Le lac Tchad", "Le lac Tanganyika", "Le lac Malawi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le desert le plus aride du monde ?"
            Reponses := array{"Le desert d'Atacama", "Le desert de Gobi", "Le Sahara", "Le desert de Mojave"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays possede le plus long littoral du monde ?"
            Reponses := array{"la Russie", "Le Canada", "l'Indonesie", "l'Australie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays africain n'a jamais ete colonise (hors breve occupation) ?"
            Reponses := array{"le Kenya", "L'Ethiopie", "le Senegal", "le Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale du Vietnam ?"
            Reponses := array{"Bangkok", "Phnom Penh", "Ho Chi Minh-Ville", "Hanoi"}
            BonneReponse := 3
        question:
            Enonce := "Quel fleuve traverse la ville de Bagdad ?"
            Reponses := array{"l'Euphrate", "le Jourdain", "le Nil", "Le Tigre"}
            BonneReponse := 3
        question:
            Enonce := "Quelle chaine de montagnes marque la frontiere Europe-Asie en Russie ?"
            Reponses := array{"L'Oural", "le Caucase", "les Carpates", "l'Altai"}
            BonneReponse := 0
        question:
            Enonce := "Quel archipel asiatique compte le plus de volcans actifs ?"
            Reponses := array{"la Nouvelle-Zelande", "L'Indonesie", "les Philippines", "le Japon"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capitale de la Bulgarie ?"
            Reponses := array{"Bucarest", "Zagreb", "Sofia", "Belgrade"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la capitale du Chili ?"
            Reponses := array{"Santiago", "Buenos Aires", "La Paz", "Lima"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand fleuve se jette dans la mer Caspienne ?"
            Reponses := array{"l'Oural", "La Volga", "le Danube", "le Dniepr"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus grande peninsule du monde ?"
            Reponses := array{"La peninsule Arabique", "la peninsule du Kamtchatka", "la peninsule Iberique", "la peninsule indienne"}
            BonneReponse := 0
        question:
            Enonce := "Quelle ville est le siege du gouvernement neerlandais, bien qu'Amsterdam soit la capitale ?"
            Reponses := array{"Eindhoven", "La Haye", "Utrecht", "Rotterdam"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le lac le plus profond du monde ?"
            Reponses := array{"Le lac Baikal", "le lac Superieur", "le lac Tanganyika", "la mer Caspienne"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la capitale de la Coree du Nord ?"
            Reponses := array{"Hanoi", "Pekin", "Seoul", "Pyongyang"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus haut sommet de la cordillere des Andes ?"
            Reponses := array{"L'Aconcagua", "l'Illimani", "le Cotopaxi", "le Chimborazo"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la capitale du Maroc ?"
            Reponses := array{"Marrakech", "Fes", "Rabat", "Casablanca"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est traverse par le plus grand nombre de pays frontaliers (14, avec la Russie) ?"
            Reponses := array{"le Bresil", "l'Inde", "La Chine", "l'Allemagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel detroit, point chaud du petrole, relie le golfe Persique a la mer d'Oman ?"
            Reponses := array{"Le detroit d'Ormuz", "le Bosphore", "le detroit de Malacca", "le canal de Suez"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le numero atomique de l'hydrogene ?"
            Reponses := array{"0", "1", "2", "8"}
            BonneReponse := 1
        question:
            Enonce := "Quelle particule est le mediateur de la force electromagnetique ?"
            Reponses := array{"le boson de Higgs", "le neutrino", "Le photon", "le gluon"}
            BonneReponse := 2
        question:
            Enonce := "Quel physicien a enonce le principe d'incertitude ?"
            Reponses := array{"Erwin Schrodinger", "Werner Heisenberg", "Niels Bohr", "Max Planck"}
            BonneReponse := 1
        question:
            Enonce := "Quel est l'element chimique le plus abondant de l'univers ?"
            Reponses := array{"l'oxygene", "l'helium", "L'hydrogene", "le carbone"}
            BonneReponse := 2
        question:
            Enonce := "Que vaut approximativement le nombre d'Avogadro ?"
            Reponses := array{"1,6 x 10^1^9", "3,14 x 10^8", "9,81", "6,022 x 10^2^3"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est l'unite du Systeme international pour la quantite de matiere ?"
            Reponses := array{"le kelvin", "La mole", "le litre", "le gramme"}
            BonneReponse := 1
        question:
            Enonce := "Quel physicien a decouvert l'electron ?"
            Reponses := array{"Bohr", "J.J. Thomson", "Chadwick", "Rutherford"}
            BonneReponse := 1
        question:
            Enonce := "Quel savant russe a etabli la classification periodique des elements ?"
            Reponses := array{"Dalton", "Lavoisier", "Berzelius", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le pH d'une solution neutre a 25 C ?"
            Reponses := array{"14", "7", "0", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus faible des quatre interactions fondamentales ?"
            Reponses := array{"l'interaction faible", "La gravitation", "la force electromagnetique", "l'interaction forte"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la formule chimique du methane ?"
            Reponses := array{"NH3", "CH4", "C2H6", "CO2"}
            BonneReponse := 1
        question:
            Enonce := "Quel physicien a unifie l'electricite et le magnetisme par ses equations ?"
            Reponses := array{"James Clerk Maxwell", "Faraday", "Ampere", "Coulomb"}
            BonneReponse := 0
        question:
            Enonce := "A quelle temperature se situe le zero absolu ?"
            Reponses := array{"-100 C", "-459 C", "0 C", "-273,15 C"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le symbole chimique du tungstene ?"
            Reponses := array{"Tu", "Tg", "W", "Tn"}
            BonneReponse := 2
        question:
            Enonce := "Quel gaz inerte est le plus abondant dans l'atmosphere terrestre (3e gaz) ?"
            Reponses := array{"l'helium", "L'argon", "le krypton", "le neon"}
            BonneReponse := 1
        question:
            Enonce := "Quelle loi relie la pression et le volume d'un gaz a temperature constante ?"
            Reponses := array{"la loi de Hooke", "la loi de Coulomb", "la loi d'Ohm", "La loi de Boyle-Mariotte"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est l'unite de mesure de la charge electrique ?"
            Reponses := array{"l'ampere", "le watt", "le volt", "Le coulomb"}
            BonneReponse := 3
        question:
            Enonce := "Quel type de liaison chimique unit les atomes d'une molecule d'eau ?"
            Reponses := array{"La liaison covalente", "la liaison metallique", "la liaison ionique", "la liaison hydrogene seule"}
            BonneReponse := 0
        question:
            Enonce := "Quel rayonnement correspond a un noyau d'helium emis lors d'une desintegration ?"
            Reponses := array{"le rayonnement gamma", "Le rayonnement alpha", "les rayons X", "le rayonnement beta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le symbole chimique du plomb ?"
            Reponses := array{"Pm", "Pl", "Pb", "Po"}
            BonneReponse := 2
        question:
            Enonce := "Quelle reaction nucleaire fait briller le Soleil ?"
            Reponses := array{"la combustion du carbone", "la radioactivite beta", "la fission de l'uranium", "La fusion de l'hydrogene"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est l'unite SI de mesure de la tension electrique ?"
            Reponses := array{"Le volt", "le hertz", "l'ampere", "l'ohm"}
            BonneReponse := 0
        question:
            Enonce := "Quel composant principal du gaz naturel est aussi un gaz a effet de serre puissant ?"
            Reponses := array{"Le methane", "l'ozone", "l'argon", "l'azote"}
            BonneReponse := 0
        question:
            Enonce := "Quelle grandeur l'echelle de Kelvin mesure-t-elle ?"
            Reponses := array{"la masse", "la pression", "l'energie", "La temperature"}
            BonneReponse := 3
        question:
            Enonce := "Quel scientifique a formule la theorie de la relativite generale ?"
            Reponses := array{"Newton", "Albert Einstein", "Planck", "Hawking"}
            BonneReponse := 1
        question:
            Enonce := "Combien de paires de chromosomes possede un etre humain ?"
            Reponses := array{"46", "23", "12", "24"}
            BonneReponse := 1
        question:
            Enonce := "Quelle proteine du sang transporte l'oxygene ?"
            Reponses := array{"l'albumine", "l'insuline", "L'hemoglobine", "le collagene"}
            BonneReponse := 2
        question:
            Enonce := "Quel chercheur a co-decouvert la structure en double helice de l'ADN avec Crick ?"
            Reponses := array{"James Watson", "Louis Pasteur", "Gregor Mendel", "Charles Darwin"}
            BonneReponse := 0
        question:
            Enonce := "Ou se forment les globules rouges chez l'adulte ?"
            Reponses := array{"Dans la moelle osseuse", "dans le foie", "dans la rate", "dans les reins"}
            BonneReponse := 0
        question:
            Enonce := "Quel organite est la centrale energetique de la cellule ?"
            Reponses := array{"l'appareil de Golgi", "La mitochondrie", "le noyau", "le ribosome"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus long nerf du corps humain ?"
            Reponses := array{"le nerf vague", "le nerf optique", "Le nerf sciatique", "le nerf facial"}
            BonneReponse := 2
        question:
            Enonce := "Quel medecin anglais a decrit la circulation du sang au XVIIe siecle ?"
            Reponses := array{"William Harvey", "Joseph Lister", "Alexander Fleming", "Edward Jenner"}
            BonneReponse := 0
        question:
            Enonce := "Quel processus de division produit les cellules sexuelles (gametes) ?"
            Reponses := array{"la fecondation", "la mitose", "la mutation", "La meiose"}
            BonneReponse := 3
        question:
            Enonce := "Quelle vitamine est indispensable a la coagulation du sang ?"
            Reponses := array{"la vitamine C", "La vitamine K", "la vitamine D", "la vitamine B12"}
            BonneReponse := 1
        question:
            Enonce := "Combien de dents de lait possede un jeune enfant ?"
            Reponses := array{"28", "32", "20", "24"}
            BonneReponse := 2
        question:
            Enonce := "Quel pigment vert permet la photosynthese des plantes ?"
            Reponses := array{"l'hemoglobine", "la melanine", "la keratine", "La chlorophylle"}
            BonneReponse := 3
        question:
            Enonce := "Quelle glande, a la base du cerveau, commande les autres glandes ?"
            Reponses := array{"la thyroide", "L'hypophyse", "le pancreas", "la rate"}
            BonneReponse := 1
        question:
            Enonce := "Quel groupe d'animaux comprend les grenouilles et les salamandres ?"
            Reponses := array{"les mollusques", "les poissons", "Les amphibiens", "les reptiles"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la duree de vie moyenne d'un globule rouge ?"
            Reponses := array{"environ 10 ans", "environ 24 heures", "Environ 120 jours", "environ 7 jours"}
            BonneReponse := 2
        question:
            Enonce := "Quel medecin a mis au point le premier vaccin (contre la variole) ?"
            Reponses := array{"Jonas Salk", "Edward Jenner", "Louis Pasteur", "Robert Koch"}
            BonneReponse := 1
        question:
            Enonce := "Quelle proteine fibreuse compose tendons, peau et cartilages ?"
            Reponses := array{"la keratine", "l'elastine", "la fibrine", "Le collagene"}
            BonneReponse := 3
        question:
            Enonce := "Quelle partie de l'oeil fait la mise au point en se deformant ?"
            Reponses := array{"la pupille", "la cornee", "la retine", "Le cristallin"}
            BonneReponse := 3
        question:
            Enonce := "Combien de chambres possede le coeur d'un poisson ?"
            Reponses := array{"1", "4", "2", "3"}
            BonneReponse := 2
        question:
            Enonce := "Quelle hormone fait baisser le taux de sucre dans le sang ?"
            Reponses := array{"la testosterone", "la melatonine", "l'adrenaline", "L'insuline"}
            BonneReponse := 3
        question:
            Enonce := "Combien de muscles compte environ le corps humain ?"
            Reponses := array{"environ 50", "environ 100", "environ 2000", "Environ 600"}
            BonneReponse := 3
        question:
            Enonce := "Ou se trouve l'ADN dans une cellule humaine ?"
            Reponses := array{"Dans le noyau", "dans la membrane", "dans les ribosomes", "dans le cytoplasme"}
            BonneReponse := 0
        question:
            Enonce := "Quel savant a etabli les lois de l'heredite a partir de croisements de petits pois ?"
            Reponses := array{"Darwin", "Gregor Mendel", "Pasteur", "Lamarck"}
            BonneReponse := 1
        question:
            Enonce := "Quel est l'os qui protege l'encephale ?"
            Reponses := array{"le sternum", "Le crane", "la colonne vertebrale", "la mandibule"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la capacite pulmonaire totale approximative d'un adulte ?"
            Reponses := array{"environ 15 litres", "environ 30 litres", "Environ 6 litres", "environ 1 litre"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on les cellules reproductrices males ?"
            Reponses := array{"les ovules", "Les spermatozoides", "les neurones", "les plaquettes"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus petit oiseau du monde ?"
            Reponses := array{"le roitelet", "le martinet", "le moineau", "Le colibri"}
            BonneReponse := 3
        question:
            Enonce := "Combien de compartiments compte l'estomac d'une vache ?"
            Reponses := array{"6", "2", "1", "4"}
            BonneReponse := 3
        question:
            Enonce := "Quel oiseau migre le plus loin, d'un pole a l'autre ?"
            Reponses := array{"l'oie sauvage", "la cigogne", "l'hirondelle", "La sterne arctique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand felin du continent americain ?"
            Reponses := array{"le puma", "l'ocelot", "le lynx", "Le jaguar"}
            BonneReponse := 3
        question:
            Enonce := "Quel cetace arctique porte une longue defense torsadee, surnomme licorne des mers ?"
            Reponses := array{"le beluga", "le morse", "le cachalot", "Le narval"}
            BonneReponse := 3
        question:
            Enonce := "Quel serpent terrestre est considere comme le plus venimeux du monde ?"
            Reponses := array{"la vipere", "le mamba noir", "le cobra royal", "Le taipan du desert"}
            BonneReponse := 3
        question:
            Enonce := "Quel amphibien mexicain est celebre pour regenerer ses membres ?"
            Reponses := array{"L'axolotl", "le crapaud", "la salamandre", "le triton"}
            BonneReponse := 0
        question:
            Enonce := "Quelle plante detient le record de croissance la plus rapide ?"
            Reponses := array{"le nenuphar", "l'ortie", "Le bambou", "le tournesol"}
            BonneReponse := 2
        question:
            Enonce := "Quel oiseau pond ses oeufs dans le nid d'autres especes ?"
            Reponses := array{"le rouge-gorge", "Le coucou", "le pic", "la pie"}
            BonneReponse := 1
        question:
            Enonce := "Quel animal terrestre est repute le plus lent ?"
            Reponses := array{"le koala", "l'escargot", "Le paresseux", "la tortue"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la plus grande espece de tortue marine ?"
            Reponses := array{"La tortue luth", "la tortue verte", "la caouanne", "la tortue imbriquee"}
            BonneReponse := 0
        question:
            Enonce := "Quel animal possede les plus grands yeux du regne animal ?"
            Reponses := array{"Le calmar geant", "le hibou", "le cheval", "l'autruche"}
            BonneReponse := 0
        question:
            Enonce := "Quel mammifere effectue l'une des plus longues migrations annuelles ?"
            Reponses := array{"la chauve-souris", "le renne", "La baleine grise", "le gnou"}
            BonneReponse := 2
        question:
            Enonce := "Quel mammifere australien pond des oeufs et possede des piquants ?"
            Reponses := array{"le koala", "L'echidne", "le diable de Tasmanie", "le wombat"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand rongeur du monde ?"
            Reponses := array{"le porc-epic", "Le capybara", "le castor", "le ragondin"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand requin est le plus gros poisson du monde ?"
            Reponses := array{"le requin-tigre", "le grand requin blanc", "Le requin-baleine", "le requin-marteau"}
            BonneReponse := 2
        question:
            Enonce := "Quel arbre nord-americain figure parmi les plus vieux etres vivants (millenaires) ?"
            Reponses := array{"le cedre", "Le pin Bristlecone", "le bouleau", "le tremble"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le seul manchot vivant naturellement au nord de l'equateur ?"
            Reponses := array{"Le manchot des Galapagos", "le gorfou", "le manchot royal", "le manchot empereur"}
            BonneReponse := 0
        question:
            Enonce := "Quel reptile possede la force de morsure la plus puissante ?"
            Reponses := array{"l'iguane", "le python", "le cobra", "Le crocodile"}
            BonneReponse := 3
        question:
            Enonce := "Quel grand herbivore africain est responsable du plus grand nombre de morts humaines ?"
            Reponses := array{"la girafe", "le buffle", "L'hippopotame", "l'elephant"}
            BonneReponse := 2
        question:
            Enonce := "Combien de temps vit en moyenne une ephemere adulte ?"
            Reponses := array{"environ un an", "environ un mois", "environ dix ans", "Environ un jour"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le seul mammifere venimeux par un eperon (le male) ?"
            Reponses := array{"la taupe", "le herisson", "L'ornithorynque", "la musaraigne"}
            BonneReponse := 2
        question:
            Enonce := "Quel grand singe est le plus imposant et vit en Afrique centrale ?"
            Reponses := array{"le chimpanze", "le bonobo", "l'orang-outan", "Le gorille"}
            BonneReponse := 3
        question:
            Enonce := "Quel mollusque possede huit bras et peut changer de couleur instantanement ?"
            Reponses := array{"le calmar", "le nautile", "la seiche", "La pieuvre"}
            BonneReponse := 3
        question:
            Enonce := "Pourquoi l'abeille mellifere meurt-elle apres avoir pique un humain ?"
            Reponses := array{"elle s'epuise", "Son dard reste plante et l'eventre", "le venin la tue", "elle se noie dans le miel"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la planete la plus dense du systeme solaire ?"
            Reponses := array{"Saturne", "La Terre", "Jupiter", "Mercure"}
            BonneReponse := 1
        question:
            Enonce := "Comment appelle-t-on la frontiere d'un trou noir d'ou rien ne s'echappe ?"
            Reponses := array{"la singularite externe", "la photosphere", "la magnetosphere", "L'horizon des evenements"}
            BonneReponse := 3
        question:
            Enonce := "Quel astronome a formule les lois du mouvement elliptique des planetes ?"
            Reponses := array{"Johannes Kepler", "Newton", "Ptolemee", "Galilee"}
            BonneReponse := 0
        question:
            Enonce := "Combien de satellites galileens Jupiter possede-t-elle ?"
            Reponses := array{"2", "8", "4", "12"}
            BonneReponse := 2
        question:
            Enonce := "En quel type d'etoile notre Soleil se transformera-t-il en fin de vie ?"
            Reponses := array{"un trou noir", "Une geante rouge", "une supernova", "un pulsar"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus grande lune de Saturne ?"
            Reponses := array{"Japet", "Titan", "Ganymede", "Encelade"}
            BonneReponse := 1
        question:
            Enonce := "Quelle theorie decrit l'origine de l'univers par une expansion initiale ?"
            Reponses := array{"Le Big Bang", "l'etat stationnaire", "la relativite", "la theorie des cordes"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est l'etoile la plus brillante du ciel nocturne ?"
            Reponses := array{"l'etoile Polaire", "Betelgeuse", "Vega", "Sirius"}
            BonneReponse := 3
        question:
            Enonce := "Quelle sonde a largue l'atterrisseur Philae sur une comete en 2014 ?"
            Reponses := array{"Cassini", "Juno", "New Horizons", "Rosetta"}
            BonneReponse := 3
        question:
            Enonce := "Quelle planete subit les vents les plus violents du systeme solaire ?"
            Reponses := array{"Jupiter", "Neptune", "Venus", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "Comment appelle-t-on une etoile a neutrons en rotation rapide emettant des impulsions ?"
            Reponses := array{"un quasar", "Un pulsar", "une nova", "une naine blanche"}
            BonneReponse := 1
        question:
            Enonce := "Quelle mission Apollo a depose les derniers hommes sur la Lune en 1972 ?"
            Reponses := array{"Apollo 11", "Apollo 17", "Apollo 13", "Apollo 15"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand volcan connu du systeme solaire, situe sur Mars ?"
            Reponses := array{"le mont Maxwell", "le Vesuve", "le Mauna Kea", "Olympus Mons"}
            BonneReponse := 3
        question:
            Enonce := "Combien de temps dure approximativement une annee sur Mars ?"
            Reponses := array{"environ 88 jours", "environ 365 jours", "Environ 687 jours", "environ 30 jours"}
            BonneReponse := 2
        question:
            Enonce := "Quel astronome italien a observe les lunes de Jupiter avec sa lunette ?"
            Reponses := array{"Kepler", "Galilee", "Tycho Brahe", "Copernic"}
            BonneReponse := 1
        question:
            Enonce := "De quels gaz le Soleil est-il principalement compose ?"
            Reponses := array{"carbone et fer", "oxygene et azote", "methane et ammoniac", "Hydrogene et helium"}
            BonneReponse := 3
        question:
            Enonce := "Comment appelle-t-on le vaste reservoir de cometes aux confins du systeme solaire ?"
            Reponses := array{"Le nuage d'Oort", "la nebuleuse d'Orion", "la ceinture d'asteroides", "la ceinture de Kuiper"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la couche externe visible du Soleil ?"
            Reponses := array{"la chromosphere profonde", "La photosphere", "la couronne", "le noyau"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus petite planete du systeme solaire ?"
            Reponses := array{"Venus", "Mercure", "Pluton", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "Dans quelle constellation se trouve l'etoile Polaire ?"
            Reponses := array{"Orion", "Cassiopee", "La Petite Ourse", "la Grande Ourse"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on l'etude scientifique de l'origine et de l'evolution de l'univers ?"
            Reponses := array{"l'astrologie", "la planetologie", "La cosmologie", "la geodesie"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est environ la distance Terre-Soleil (unite astronomique) ?"
            Reponses := array{"30 millions de km", "1 milliard de km", "1 million de km", "150 millions de km"}
            BonneReponse := 3
        question:
            Enonce := "Quel phenomene decale vers le rouge la lumiere des galaxies lointaines ?"
            Reponses := array{"L'expansion de l'univers", "la refraction", "l'effet de serre", "les taches solaires"}
            BonneReponse := 0
        question:
            Enonce := "Quel premier satellite artificiel l'URSS a-t-elle lance en 1957 ?"
            Reponses := array{"Vostok 1", "Explorer 1", "Spoutnik 1", "Luna 1"}
            BonneReponse := 2
        question:
            Enonce := "Quelle planete possede la plus faible densite du systeme solaire (flotterait sur l'eau) ?"
            Reponses := array{"Jupiter", "Saturne", "Neptune", "Uranus"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre a fonde le pointillisme avec Un dimanche apres-midi a la Grande Jatte ?"
            Reponses := array{"Georges Seurat", "Camille Pissarro", "Henri Matisse", "Paul Signac"}
            BonneReponse := 0
        question:
            Enonce := "Quel architecte a concu la pyramide de verre du Louvre ?"
            Reponses := array{"Ieoh Ming Pei", "Jean Nouvel", "Norman Foster", "Le Corbusier"}
            BonneReponse := 0
        question:
            Enonce := "Quel peintre flamand a realise Le Jardin des delices ?"
            Reponses := array{"Jerome Bosch", "Rubens", "Bruegel l'Ancien", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Quelle sculptrice francaise fut l'eleve et la collaboratrice de Rodin ?"
            Reponses := array{"Niki de Saint Phalle", "Camille Claudel", "Sophie Calle", "Louise Bourgeois"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre autrichien a realise Le Baiser a la feuille d'or ?"
            Reponses := array{"Oskar Kokoschka", "Egon Schiele", "Hundertwasser", "Gustav Klimt"}
            BonneReponse := 3
        question:
            Enonce := "Quel peintre de la Renaissance a realise La Naissance de Venus ?"
            Reponses := array{"Caravage", "Titien", "Sandro Botticelli", "Raphael"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre americain a popularise le dripping (peinture projetee) ?"
            Reponses := array{"Jackson Pollock", "Willem de Kooning", "Mark Rothko", "Andy Warhol"}
            BonneReponse := 0
        question:
            Enonce := "Quel mouvement artistique provocateur nait a Zurich en 1916 (Duchamp, Tzara) ?"
            Reponses := array{"le constructivisme", "le futurisme", "le surrealisme", "Le dadaisme"}
            BonneReponse := 3
        question:
            Enonce := "Quelle oeuvre de Salvador Dali represente des montres molles ?"
            Reponses := array{"La Cene", "Le Cri", "La Persistance de la memoire", "Le Grand Masturbateur"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre romantique a realise Le Radeau de la Meduse ?"
            Reponses := array{"Eugene Delacroix", "Gustave Courbet", "Theodore Gericault", "Jacques-Louis David"}
            BonneReponse := 2
        question:
            Enonce := "Quel architecte a concu le musee Guggenheim de Bilbao ?"
            Reponses := array{"Tadao Ando", "Frank Gehry", "Renzo Piano", "Zaha Hadid"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre a realise Les Demoiselles d'Avignon ?"
            Reponses := array{"Pablo Picasso", "Juan Gris", "Fernand Leger", "Georges Braque"}
            BonneReponse := 0
        question:
            Enonce := "Quel sculpteur baroque italien a realise L'Extase de sainte Therese ?"
            Reponses := array{"Donatello", "Canova", "Le Bernin", "Michel-Ange"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre americain a peint Nighthawks , un bar la nuit ?"
            Reponses := array{"Jackson Pollock", "Norman Rockwell", "Roy Lichtenstein", "Edward Hopper"}
            BonneReponse := 3
        question:
            Enonce := "Quel sculpteur grec antique aurait realise la statue chryselephantine de Zeus a Olympie ?"
            Reponses := array{"Myron", "Polyclete", "Praxitele", "Phidias"}
            BonneReponse := 3
        question:
            Enonce := "Quelle ecole d'art et de design fut fondee en Allemagne en 1919 ?"
            Reponses := array{"la Secession", "le Werkbund", "l'Art nouveau", "Le Bauhaus"}
            BonneReponse := 3
        question:
            Enonce := "Quelle cathedrale de Moscou est celebre pour ses domes en bulbe colores ?"
            Reponses := array{"Saint-Basile-le-Bienheureux", "la Dormition", "la cathedrale du Christ-Sauveur", "Sainte-Sophie"}
            BonneReponse := 0
        question:
            Enonce := "Dans quelle ville Vincent van Gogh est-il mort en 1890 ?"
            Reponses := array{"Auvers-sur-Oise", "Paris", "Arles", "Amsterdam"}
            BonneReponse := 0
        question:
            Enonce := "Quel artiste a emballe le Pont-Neuf de Paris puis (a titre posthume) l'Arc de triomphe ?"
            Reponses := array{"Daniel Buren", "Christo", "Jeff Koons", "Banksy"}
            BonneReponse := 1
        question:
            Enonce := "Quel peintre a realise Le Dejeuner sur l'herbe ?"
            Reponses := array{"Edouard Manet", "Claude Monet", "Renoir", "Cezanne"}
            BonneReponse := 0
        question:
            Enonce := "De quelle dynastie chinoise la porcelaine bleu et blanc est-elle emblematique ?"
            Reponses := array{"Les Ming", "les Qin", "les Han", "les Tang"}
            BonneReponse := 0
        question:
            Enonce := "Quel peintre venitien de la Renaissance est connu sous le nom de Titien ?"
            Reponses := array{"Tiziano Vecellio", "Bellini", "Veronese", "Le Tintoret"}
            BonneReponse := 0
        question:
            Enonce := "Quel architecte franco-suisse a theorise l' unite d'habitation (Cite radieuse) ?"
            Reponses := array{"Niemeyer", "Gaudi", "Le Corbusier", "Mies van der Rohe"}
            BonneReponse := 2
        question:
            Enonce := "Quel peintre neerlandais a realise Les Mangeurs de pommes de terre ?"
            Reponses := array{"Vincent van Gogh", "Vermeer", "Mondrian", "Rembrandt"}
            BonneReponse := 0
        question:
            Enonce := "Quel mouvement geometrique des Pays-Bas, aux couleurs primaires, est mene par Mondrian ?"
            Reponses := array{"De Stijl", "le futurisme", "le Bauhaus", "le suprematisme"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit le roman Ulysse (1922) ?"
            Reponses := array{"T.S. Eliot", "D.H. Lawrence", "Virginia Woolf", "James Joyce"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit La Divine Comedie ?"
            Reponses := array{"Virgile", "Petrarque", "Dante Alighieri", "Boccace"}
            BonneReponse := 2
        question:
            Enonce := "Quel poete latin a compose l'Eneide ?"
            Reponses := array{"Homere", "Horace", "Virgile", "Ovide"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit le drame Faust ?"
            Reponses := array{"Goethe", "Heine", "Thomas Mann", "Schiller"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Freres Karamazov ?"
            Reponses := array{"Tourgueniev", "Tolstoi", "Fiodor Dostoievski", "Gogol"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit le roman Lolita ?"
            Reponses := array{"Vladimir Nabokov", "Boris Pasternak", "Soljenitsyne", "Tchekhov"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit La Peste ?"
            Reponses := array{"Jean-Paul Sartre", "Andre Gide", "Albert Camus", "Romain Rolland"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Mrs Dalloway ?"
            Reponses := array{"Emily Bronte", "George Eliot", "Virginia Woolf", "Jane Austen"}
            BonneReponse := 2
        question:
            Enonce := "Quel dramaturge norvegien a ecrit Une maison de poupee ?"
            Reponses := array{"Brecht", "Strindberg", "Tchekhov", "Henrik Ibsen"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Maitre et Marguerite ?"
            Reponses := array{"Mikhail Boulgakov", "Pasternak", "Gorki", "Dostoievski"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit la piece Cyrano de Bergerac ?"
            Reponses := array{"Edmond Rostand", "Beaumarchais", "Victor Hugo", "Alfred de Musset"}
            BonneReponse := 0
        question:
            Enonce := "Quelle romanciere afro-americaine, prix Nobel, a ecrit Beloved ?"
            Reponses := array{"Zora Neale Hurston", "Maya Angelou", "Alice Walker", "Toni Morrison"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Bel-Ami ?"
            Reponses := array{"Flaubert", "Balzac", "Emile Zola", "Guy de Maupassant"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Au bonheur des dames ?"
            Reponses := array{"Balzac", "Maupassant", "Emile Zola", "Stendhal"}
            BonneReponse := 2
        question:
            Enonce := "Quel auteur argentin a ecrit le recueil Fictions ?"
            Reponses := array{"Vargas Llosa", "Garcia Marquez", "Jorge Luis Borges", "Cortazar"}
            BonneReponse := 2
        question:
            Enonce := "Quel ecrivain allemand a ecrit Siddhartha et Le Loup des steppes ?"
            Reponses := array{"Thomas Mann", "Goethe", "Hermann Hesse", "Gunter Grass"}
            BonneReponse := 2
        question:
            Enonce := "Quel philosophe allemand a ecrit Ainsi parlait Zarathoustra ?"
            Reponses := array{"Schopenhauer", "Kant", "Friedrich Nietzsche", "Hegel"}
            BonneReponse := 2
        question:
            Enonce := "Quel dramaturge grec antique a ecrit Oedipe roi ?"
            Reponses := array{"Aristophane", "Euripide", "Sophocle", "Eschyle"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Meilleur des mondes ?"
            Reponses := array{"George Orwell", "Ray Bradbury", "H.G. Wells", "Aldous Huxley"}
            BonneReponse := 3
        question:
            Enonce := "Quel poete italien de la Renaissance a ecrit le Canzoniere dedie a Laure ?"
            Reponses := array{"Petrarque", "l'Arioste", "Boccace", "Dante"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit le roman A l'Ouest, rien de nouveau ?"
            Reponses := array{"Erich Maria Remarque", "Stefan Zweig", "Ernst Junger", "Thomas Mann"}
            BonneReponse := 0
        question:
            Enonce := "Quel auteur tcheque a ecrit La Cerisaie et de nombreuses nouvelles ?"
            Reponses := array{"Anton Tchekhov", "Kafka", "Hasek", "Kundera"}
            BonneReponse := 0
        question:
            Enonce := "Quel romancier francais contemporain a ecrit Les Particules elementaires ?"
            Reponses := array{"Marc Levy", "Michel Houellebecq", "Patrick Modiano", "Amelie Nothomb"}
            BonneReponse := 1
        question:
            Enonce := "Quel poete a ecrit le recueil Les Contemplations ?"
            Reponses := array{"Leconte de Lisle", "Victor Hugo", "Lamartine", "Vigny"}
            BonneReponse := 1
        question:
            Enonce := "Quel auteur a ecrit Voyage au bout de la nuit ?"
            Reponses := array{"Louis-Ferdinand Celine", "Andre Malraux", "Marcel Proust", "Georges Bernanos"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur italien a ecrit l'opera La Traviata ?"
            Reponses := array{"Rossini", "Giuseppe Verdi", "Puccini", "Donizetti"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur a ecrit Le Sacre du printemps , a l'origine d'un scandale en 1913 ?"
            Reponses := array{"Debussy", "Igor Stravinsky", "Bartok", "Ravel"}
            BonneReponse := 1
        question:
            Enonce := "Comment appelle-t-on un ensemble de huit musiciens ?"
            Reponses := array{"un nonette", "un quintette", "un sextuor", "Un octuor"}
            BonneReponse := 3
        question:
            Enonce := "Quel compositeur tcheque a ecrit la Symphonie du Nouveau Monde ?"
            Reponses := array{"Smetana", "Mahler", "Antonin Dvorak", "Janacek"}
            BonneReponse := 2
        question:
            Enonce := "Combien de touches noires comporte une octave au piano ?"
            Reponses := array{"8", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quel compositeur baroque venitien etait surnomme le Pretre roux ?"
            Reponses := array{"Monteverdi", "Antonio Vivaldi", "Corelli", "Albinoni"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand instrument a double anche joue dans le registre grave des bois ?"
            Reponses := array{"la clarinette", "Le basson", "la flute", "le cor"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur francais a ecrit Clair de lune (Suite bergamasque) ?"
            Reponses := array{"Claude Debussy", "Faure", "Satie", "Ravel"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur russe a ecrit le ballet Casse-Noisette ?"
            Reponses := array{"Tchaikovski", "Prokofiev", "Stravinsky", "Rimski-Korsakov"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur autrichien, mort jeune, a ecrit le lied La Truite ?"
            Reponses := array{"Mozart", "Haydn", "Franz Schubert", "Bruckner"}
            BonneReponse := 2
        question:
            Enonce := "Quel genre lyrique leger, avec dialogues parles, est associe a Offenbach ?"
            Reponses := array{"l'oratorio", "L'operette", "le requiem", "la cantate"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur hongrois a ecrit les Rhapsodies hongroises ?"
            Reponses := array{"Franz Liszt", "Bartok", "Kodaly", "Brahms"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur a ecrit l'opera Madame Butterfly ?"
            Reponses := array{"Verdi", "Bizet", "Giacomo Puccini", "Wagner"}
            BonneReponse := 2
        question:
            Enonce := "Quel trompettiste de jazz est surnomme Satchmo ?"
            Reponses := array{"Dizzy Gillespie", "Miles Davis", "Chet Baker", "Louis Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Quel compositeur allemand a ecrit La Chevauchee des Walkyries ?"
            Reponses := array{"Beethoven", "Strauss", "Brahms", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Quel compositeur francais a ecrit Le Carnaval des animaux ?"
            Reponses := array{"Bizet", "Gounod", "Camille Saint-Saens", "Berlioz"}
            BonneReponse := 2
        question:
            Enonce := "Quel terme musical signifie tres fort ?"
            Reponses := array{"crescendo", "Fortissimo", "mezzo forte", "pianissimo"}
            BonneReponse := 1
        question:
            Enonce := "Quel trompettiste a marque le jazz modal avec l'album Kind of Blue ?"
            Reponses := array{"Louis Armstrong", "Miles Davis", "John Coltrane", "Duke Ellington"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur russe a ecrit Tableaux d'une exposition ?"
            Reponses := array{"Modeste Moussorgski", "Borodine", "Glinka", "Tchaikovski"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur a ecrit le conte musical Pierre et le Loup ?"
            Reponses := array{"Stravinsky", "Serguei Prokofiev", "Chostakovitch", "Rachmaninov"}
            BonneReponse := 1
        question:
            Enonce := "Quelle voix feminine se situe dans le registre grave ?"
            Reponses := array{"la soprano", "la colorature", "L'alto (contralto)", "le mezzo aigu"}
            BonneReponse := 2
        question:
            Enonce := "Quel groupe de rock britannique a pour chanteur Mick Jagger ?"
            Reponses := array{"The Who", "Les Rolling Stones", "Led Zeppelin", "The Kinks"}
            BonneReponse := 1
        question:
            Enonce := "Combien de cordes compte environ une harpe de concert ?"
            Reponses := array{"47", "12", "88", "24"}
            BonneReponse := 0
        question:
            Enonce := "Quel compositeur baroque allemand est l'auteur de l'oratorio Le Messie ?"
            Reponses := array{"Telemann", "Georg Friedrich Haendel", "Bach", "Pachelbel"}
            BonneReponse := 1
        question:
            Enonce := "Quel compositeur allemand a compose la tetralogie L'Anneau du Nibelung ?"
            Reponses := array{"Bruckner", "Mahler", "Richard Strauss", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Quel realisateur italien a tourne La Dolce Vita ?"
            Reponses := array{"Vittorio De Sica", "Federico Fellini", "Roberto Rossellini", "Luchino Visconti"}
            BonneReponse := 1
        question:
            Enonce := "Quel film de 1941 d'Orson Welles est souvent cite comme l'un des plus grands de l'histoire ?"
            Reponses := array{"Autant en emporte le vent", "Citizen Kane", "Casablanca", "Le Faucon maltais"}
            BonneReponse := 1
        question:
            Enonce := "Quel cineaste suedois a realise Le Septieme Sceau ?"
            Reponses := array{"Bo Widerberg", "Ingmar Bergman", "Roy Andersson", "Lars von Trier"}
            BonneReponse := 1
        question:
            Enonce := "Quel cineaste japonais a realise Les Sept Samourais ?"
            Reponses := array{"Yasujiro Ozu", "Akira Kurosawa", "Hayao Miyazaki", "Takeshi Kitano"}
            BonneReponse := 1
        question:
            Enonce := "Quel film de Coppola sur la guerre du Vietnam contient la replique sur l'odeur du napalm ?"
            Reponses := array{"Full Metal Jacket", "Apocalypse Now", "Voyage au bout de l'enfer", "Platoon"}
            BonneReponse := 1
        question:
            Enonce := "Quel cineaste espagnol a corealise Un chien andalou avec Dali ?"
            Reponses := array{"Victor Erice", "Carlos Saura", "Luis Bunuel", "Pedro Almodovar"}
            BonneReponse := 2
        question:
            Enonce := "Quelle actrice detient le record d'Oscars d'interpretation (quatre) ?"
            Reponses := array{"Meryl Streep", "Bette Davis", "Ingrid Bergman", "Katharine Hepburn"}
            BonneReponse := 3
        question:
            Enonce := "Quel film muet expressionniste allemand de 1920 met en scene un somnambule ?"
            Reponses := array{"M le Maudit", "Nosferatu", "Le Cabinet du docteur Caligari", "Metropolis"}
            BonneReponse := 2
        question:
            Enonce := "Quel premier long-metrage d'animation des studios Disney est sorti en 1937 ?"
            Reponses := array{"Bambi", "Blanche-Neige et les Sept Nains", "Fantasia", "Pinocchio"}
            BonneReponse := 1
        question:
            Enonce := "Quel film sovietique de 1925 d'Eisenstein montre le celebre escalier d'Odessa ?"
            Reponses := array{"Le Cuirasse Potemkine", "La Greve", "Octobre", "Alexandre Nevski"}
            BonneReponse := 0
        question:
            Enonce := "Quelle actrice suedoise tient le premier role feminin de Casablanca ?"
            Reponses := array{"Greta Garbo", "Rita Hayworth", "Lauren Bacall", "Ingrid Bergman"}
            BonneReponse := 3
        question:
            Enonce := "Quel cineaste de la Nouvelle Vague a realise A bout de souffle ?"
            Reponses := array{"Eric Rohmer", "Claude Chabrol", "Francois Truffaut", "Jean-Luc Godard"}
            BonneReponse := 3
        question:
            Enonce := "Combien d'Oscars le film Titanic a-t-il remportes ?"
            Reponses := array{"5", "14", "11", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quel acteur incarne Don Vito Corleone dans Le Parrain ?"
            Reponses := array{"Al Pacino", "Robert De Niro", "Marlon Brando", "James Caan"}
            BonneReponse := 2
        question:
            Enonce := "Quel film de Ridley Scott (1979) met en scene une creature hostile dans un vaisseau ?"
            Reponses := array{"Predator", "Blade Runner", "Alien", "The Thing"}
            BonneReponse := 2
        question:
            Enonce := "Quel acteur americain est l'icone des westerns spaghetti de Sergio Leone ?"
            Reponses := array{"Clint Eastwood", "Charles Bronson", "John Wayne", "Lee Van Cleef"}
            BonneReponse := 0
        question:
            Enonce := "Quelle realisatrice a remporte l'Oscar de la meilleure realisation pour Demineurs ?"
            Reponses := array{"Kathryn Bigelow", "Greta Gerwig", "Sofia Coppola", "Jane Campion"}
            BonneReponse := 0
        question:
            Enonce := "Quel film d'animation de Miyazaki met en scene un chateau qui se deplace ?"
            Reponses := array{"Le Chateau ambulant", "Le Voyage de Chihiro", "Le Chateau dans le ciel", "Princesse Mononoke"}
            BonneReponse := 0
        question:
            Enonce := "Quel film de Jean Renoir (1937) traite de la captivite pendant la Grande Guerre ?"
            Reponses := array{"La Grande Illusion", "La Bete humaine", "La Regle du jeu", "French Cancan"}
            BonneReponse := 0
        question:
            Enonce := "Quel acteur a remporte l'Oscar du meilleur acteur pour Joker (2019) ?"
            Reponses := array{"Heath Ledger", "Joaquin Phoenix", "Jared Leto", "Christian Bale"}
            BonneReponse := 1
        question:
            Enonce := "Quel film de 1994 se deroule dans la prison de Shawshank ?"
            Reponses := array{"La Ligne verte", "Les Evades", "Le Prisonnier d'Alcatraz", "Midnight Express"}
            BonneReponse := 1
        question:
            Enonce := "Quel cineaste danois a cofonde le mouvement Dogme95 ?"
            Reponses := array{"Carl Dreyer", "Nicolas Winding Refn", "Thomas Vinterberg", "Lars von Trier"}
            BonneReponse := 3
        question:
            Enonce := "Quel film de Stanley Kubrick met en scene l'ordinateur HAL 9000 ?"
            Reponses := array{"Barry Lyndon", "2001 : l'Odyssee de l'espace", "Shining", "Docteur Folamour"}
            BonneReponse := 1
        question:
            Enonce := "Quel realisateur a tourne Les Affranchis et Taxi Driver ?"
            Reponses := array{"Sidney Lumet", "Francis Ford Coppola", "Martin Scorsese", "Brian De Palma"}
            BonneReponse := 2
        question:
            Enonce := "Quel film francais de 1962 realise par Chris Marker est compose de photos fixes ?"
            Reponses := array{"Cleo de 5 a 7", "Les Quatre Cents Coups", "La Jetee", "Hiroshima mon amour"}
            BonneReponse := 2
        question:
            Enonce := "Combien de joueurs d'une equipe de water-polo sont dans l'eau ?"
            Reponses := array{"5", "11", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a remporte la toute premiere Coupe du monde de football, en 1930 ?"
            Reponses := array{"le Bresil", "l'Italie", "L'Uruguay", "l'Argentine"}
            BonneReponse := 2
        question:
            Enonce := "En quelle annee se sont tenus les premiers Jeux olympiques de l'ere moderne ?"
            Reponses := array{"1900", "1888", "1896", "1924"}
            BonneReponse := 2
        question:
            Enonce := "Quel pilote allemand a longtemps detenu le record de 7 titres de champion du monde de F1 ?"
            Reponses := array{"Alain Prost", "Niki Lauda", "Ayrton Senna", "Michael Schumacher"}
            BonneReponse := 3
        question:
            Enonce := "Combien de cases compte un echiquier ?"
            Reponses := array{"100", "64", "49", "81"}
            BonneReponse := 1
        question:
            Enonce := "Quel coureur a gagne 7 Tours de France avant d'en etre dechu pour dopage ?"
            Reponses := array{"Eddy Merckx", "Miguel Indurain", "Bernard Hinault", "Lance Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel sport decerne-t-on la Coupe Stanley ?"
            Reponses := array{"le baseball", "le football americain", "Le hockey sur glace", "le basket-ball"}
            BonneReponse := 2
        question:
            Enonce := "Combien de joueurs compose une equipe de handball sur le terrain ?"
            Reponses := array{"6", "7", "5", "11"}
            BonneReponse := 1
        question:
            Enonce := "Quel footballeur a marque le but dit de la main de Dieu en 1986 ?"
            Reponses := array{"Zidane", "Diego Maradona", "Pele", "Romario"}
            BonneReponse := 1
        question:
            Enonce := "Quelle distance exacte couvre un marathon officiel ?"
            Reponses := array{"26 km", "50 km", "42,195 km", "40 km"}
            BonneReponse := 2
        question:
            Enonce := "Quel boxeur a termine sa carriere avec un palmares de 50 victoires et 0 defaite ?"
            Reponses := array{"Floyd Mayweather", "Rocky Marciano", "Mike Tyson", "Mohamed Ali"}
            BonneReponse := 0
        question:
            Enonce := "Quel basketteur a inscrit 100 points en un seul match NBA ?"
            Reponses := array{"LeBron James", "Kobe Bryant", "Michael Jordan", "Wilt Chamberlain"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport de raquette se joue dans un court ferme entoure de murs ?"
            Reponses := array{"le badminton", "Le squash", "le tennis", "le padel"}
            BonneReponse := 1
        question:
            Enonce := "Combien de temps dure un quart-temps en NBA ?"
            Reponses := array{"15 minutes", "10 minutes", "20 minutes", "12 minutes"}
            BonneReponse := 3
        question:
            Enonce := "Quel joueur a realise le dernier Grand Chelem calendaire masculin au tennis (1969) ?"
            Reponses := array{"Bjorn Borg", "Jimmy Connors", "John McEnroe", "Rod Laver"}
            BonneReponse := 3
        question:
            Enonce := "Quel judoka francais multiple champion du monde et olympique des lourds ?"
            Reponses := array{"Lucie Decosse", "Teddy Riner", "David Douillet", "Djamel Bouras"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a remporte le plus grand nombre total de medailles olympiques de l'histoire ?"
            Reponses := array{"l'URSS", "Les Etats-Unis", "la Chine", "l'Allemagne"}
            BonneReponse := 1
        question:
            Enonce := "Quel trophee individuel recompense le meilleur footballeur de l'annee ?"
            Reponses := array{"le Soulier d'argent", "la Coupe d'Europe", "Le Ballon d'or", "le Trophee Kopa"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ecurie italienne mythique est la plus titree de l'histoire de la F1 ?"
            Reponses := array{"Ferrari", "Lotus", "McLaren", "Williams"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport olympique se pratique au fleuret, a l'epee ou au sabre ?"
            Reponses := array{"L'escrime", "le tir sportif", "le tir a l'arc", "le pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "Combien d'epreuves compte le decathlon en athletisme ?"
            Reponses := array{"7", "5", "10", "12"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville francaise accueille la course automobile des 24 Heures ?"
            Reponses := array{"Magny-Cours", "Reims", "Monaco", "Le Mans"}
            BonneReponse := 3
        question:
            Enonce := "Combien de joueurs d'une equipe de hockey sur glace sont sur la glace (gardien compris) ?"
            Reponses := array{"5", "6", "11", "7"}
            BonneReponse := 1
        question:
            Enonce := "Quel athlete jamaicain detient le record du monde du 100 m (9 s 58) ?"
            Reponses := array{"Usain Bolt", "Carl Lewis", "Yohan Blake", "Tyson Gay"}
            BonneReponse := 0
        question:
            Enonce := "Dans quelle cite grecque antique se deroulaient les Jeux olympiques originels ?"
            Reponses := array{"Sparte", "Delphes", "Athenes", "Olympie"}
            BonneReponse := 3
        question:
            Enonce := "Quel dieu grec primordial personnifie le Ciel, epoux de Gaia ?"
            Reponses := array{"Chaos", "Cronos", "Ouranos", "Erebe"}
            BonneReponse := 2
        question:
            Enonce := "Quelle deesse romaine veille sur le foyer (equivalent d'Hestia) ?"
            Reponses := array{"Vesta", "Minerve", "Junon", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Quel heros nordique a tue le dragon Fafnir ?"
            Reponses := array{"Tyr", "Sigurd", "Beowulf", "Thor"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu egyptien fut assassine par son frere Seth ?"
            Reponses := array{"Thot", "Anubis", "Osiris", "Horus"}
            BonneReponse := 2
        question:
            Enonce := "Quel personnage est condamne a pousser eternellement un rocher qui retombe ?"
            Reponses := array{"Tantale", "Promethee", "Sisyphe", "Atlas"}
            BonneReponse := 2
        question:
            Enonce := "Quel geant aux cent yeux garde Io dans la mythologie grecque ?"
            Reponses := array{"Typhon", "le cyclope", "Argos", "Geryon"}
            BonneReponse := 2
        question:
            Enonce := "Quelle deesse grecque personnifie la victoire et inspire une marque de sport ?"
            Reponses := array{"Iris", "Hera", "Nike", "Tyche"}
            BonneReponse := 2
        question:
            Enonce := "Quel roi de Crete fit construire le Labyrinthe par Dedale ?"
            Reponses := array{"Agamemnon", "Minos", "Egee", "Priam"}
            BonneReponse := 1
        question:
            Enonce := "Quelle magicienne transforma les compagnons d'Ulysse en porcs ?"
            Reponses := array{"Medee", "Circe", "Calypso", "Penelope"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu destructeur fait partie de la trimourti hindoue ?"
            Reponses := array{"Shiva", "Ganesh", "Indra", "Krishna"}
            BonneReponse := 0
        question:
            Enonce := "Comment se nomme l'arbre cosmique qui relie les neuf mondes nordiques ?"
            Reponses := array{"le Bifrost", "le Valhalla", "le Ragnarok", "Yggdrasil"}
            BonneReponse := 3
        question:
            Enonce := "Quelle deesse grecque des moissons est la mere de Persephone ?"
            Reponses := array{"Hera", "Hestia", "Demeter", "Artemis"}
            BonneReponse := 2
        question:
            Enonce := "Qui aida Thesee a sortir du Labyrinthe grace a un fil ?"
            Reponses := array{"Medee", "Ariane", "Andromede", "Antigone"}
            BonneReponse := 1
        question:
            Enonce := "Quel personnage s'envola trop pres du soleil avec des ailes de cire ?"
            Reponses := array{"Dedale", "Bellerophon", "Phaeton", "Icare"}
            BonneReponse := 3
        question:
            Enonce := "Quelle creature crache le feu, avec une tete de lion, un corps de chevre et une queue de serpent ?"
            Reponses := array{"le basilic", "La chimere", "l'hydre", "le griffon"}
            BonneReponse := 1
        question:
            Enonce := "Quel dieu nordique garde le pont arc-en-ciel Bifrost ?"
            Reponses := array{"Baldur", "Heimdall", "Freyr", "Tyr"}
            BonneReponse := 1
        question:
            Enonce := "Quelle divinite azteque est representee en serpent a plumes ?"
            Reponses := array{"Quetzalcoatl", "Huitzilopochtli", "Tezcatlipoca", "Tlaloc"}
            BonneReponse := 0
        question:
            Enonce := "Quel roi est condamne a une faim et une soif eternelles aux Enfers (fruits et eau le fuient) ?"
            Reponses := array{"Sisyphe", "Ixion", "Tantale", "Midas"}
            BonneReponse := 2
        question:
            Enonce := "Quel dieu romain a deux visages preside aux commencements et aux portes ?"
            Reponses := array{"Vulcain", "Saturne", "Mars", "Janus"}
            BonneReponse := 3
        question:
            Enonce := "Quel serpent geant entoure le monde dans la mythologie nordique ?"
            Reponses := array{"Jormungand", "Fenrir", "Nidhoggr", "le Kraken"}
            BonneReponse := 0
        question:
            Enonce := "Quel heros grec ruse a concu le stratageme du cheval de Troie ?"
            Reponses := array{"Menelas", "Ulysse", "Ajax", "Achille"}
            BonneReponse := 1
        question:
            Enonce := "Quel personnage biblique a survecu au Deluge a bord d'une arche ?"
            Reponses := array{"Moise", "Jonas", "Abraham", "Noe"}
            BonneReponse := 3
        question:
            Enonce := "Quel demi-dieu grec acceda a l'Olympe apres avoir accompli ses fameux travaux ?"
            Reponses := array{"Heracles", "Bellerophon", "Thesee", "Persee"}
            BonneReponse := 0
        question:
            Enonce := "Quel dieu grec du vin et de l'ivresse est aussi celui du theatre ?"
            Reponses := array{"Dionysos", "Pan", "Hermes", "Apollon"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve des Enfers grecs procure l'oubli aux ames qui en boivent ?"
            Reponses := array{"Le Lethe", "le Styx", "l'Acheron", "le Cocyte"}
            BonneReponse := 0

MakeCultureQuestions() : []question =
    MakeCultureQuestionsFR()

MakeCultureQuestionsEN() : []question =
    array:
        question:
            Enonce := "In what year did the First World War begin?"
            Reponses := array{"1914", "1939", "1905", "1918"}
            BonneReponse := 0
        question:
            Enonce := "What event marks 14 July 1789?"
            Reponses := array{"The coronation of Napoleon", "The storming of the Bastille", "The Battle of Waterloo", "American Independence Day"}
            BonneReponse := 1
        question:
            Enonce := "Who was the first Emperor of the French?"
            Reponses := array{"Charlemagne", "Julius Caesar", "Louis XIV", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "In what year did the Berlin Wall fall?"
            Reponses := array{"1989", "1975", "1961", "1991"}
            BonneReponse := 0
        question:
            Enonce := "Who reached America in 1492?"
            Reponses := array{"Magellan", "Vasco da Gama", "Christopher Columbus", "Marco Polo"}
            BonneReponse := 2
        question:
            Enonce := "In what year did the Second World War end in Europe?"
            Reponses := array{"1950", "1939", "1918", "1945"}
            BonneReponse := 3
        question:
            Enonce := "Which people built the pyramids of Giza?"
            Reponses := array{"The Romans", "The Egyptians", "The Aztecs", "The Greeks"}
            BonneReponse := 1
        question:
            Enonce := "Who led Nazi Germany?"
            Reponses := array{"Adolf Hitler", "Winston Churchill", "Benito Mussolini", "Joseph Stalin"}
            BonneReponse := 0
        question:
            Enonce := "Which queen reigned over the United Kingdom from 1952 to 2022?"
            Reponses := array{"Victoria", "Elizabeth II", "Elizabeth I", "Mary Stuart"}
            BonneReponse := 1
        question:
            Enonce := "The Hundred Years' War pitted France against which country?"
            Reponses := array{"Germany", "Spain", "England", "Italy"}
            BonneReponse := 2
        question:
            Enonce := "Which Roman general conquered Gaul?"
            Reponses := array{"Augustus", "Julius Caesar", "Nero", "Hannibal"}
            BonneReponse := 1
        question:
            Enonce := "In what year did the September 11 attacks take place?"
            Reponses := array{"2005", "1999", "2001", "1998"}
            BonneReponse := 2
        question:
            Enonce := "Which American president abolished slavery during the Civil War?"
            Reponses := array{"Abraham Lincoln", "Franklin Roosevelt", "George Washington", "John Kennedy"}
            BonneReponse := 0
        question:
            Enonce := "Which Roman city was buried by Vesuvius in AD 79?"
            Reponses := array{"Carthage", "Rome", "Pompeii", "Athens"}
            BonneReponse := 2
        question:
            Enonce := "Which king of France is nicknamed the Sun King?"
            Reponses := array{"Francis I", "Henry IV", "Louis XIV", "Louis XVI"}
            BonneReponse := 2
        question:
            Enonce := "Who led the nonviolent struggle for India's independence?"
            Reponses := array{"Mao Zedong", "Churchill", "Nelson Mandela", "Gandhi"}
            BonneReponse := 3
        question:
            Enonce := "Which gigantic defensive structure protects the north of China?"
            Reponses := array{"The wall of Babylon", "The Great Wall", "The Maginot Line", "Hadrian's Wall"}
            BonneReponse := 1
        question:
            Enonce := "Who was the first president of the United States?"
            Reponses := array{"Benjamin Franklin", "George Washington", "Thomas Jefferson", "Abraham Lincoln"}
            BonneReponse := 1
        question:
            Enonce := "Which Japanese city suffered the first atomic bomb in 1945?"
            Reponses := array{"Kyoto", "Tokyo", "Hiroshima", "Nagasaki"}
            BonneReponse := 2
        question:
            Enonce := "Which 1815 battle marked Napoleon's final defeat?"
            Reponses := array{"Verdun", "Austerlitz", "Waterloo", "Marignano"}
            BonneReponse := 2
        question:
            Enonce := "Which American president was assassinated in Dallas in 1963?"
            Reponses := array{"Ronald Reagan", "Abraham Lincoln", "John F. Kennedy", "Richard Nixon"}
            BonneReponse := 2
        question:
            Enonce := "Which navigator led the first expedition to circumnavigate the globe?"
            Reponses := array{"Magellan", "Christopher Columbus", "James Cook", "Vasco da Gama"}
            BonneReponse := 0
        question:
            Enonce := "In what year did France abolish the death penalty?"
            Reponses := array{"1945", "1981", "1968", "1995"}
            BonneReponse := 1
        question:
            Enonce := "Which French emperor sold Louisiana to the United States?"
            Reponses := array{"Napoleon III", "Louis XVI", "Charles X", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "Which leader was nicknamed the Iron Lady in the United Kingdom?"
            Reponses := array{"Angela Merkel", "Theresa May", "Elizabeth II", "Margaret Thatcher"}
            BonneReponse := 3
        question:
            Enonce := "What is the capital of Italy?"
            Reponses := array{"Milan", "Rome", "Naples", "Venice"}
            BonneReponse := 1
        question:
            Enonce := "Which river flows through Paris?"
            Reponses := array{"The Loire", "The Rhone", "The Garonne", "The Seine"}
            BonneReponse := 3
        question:
            Enonce := "What is the highest mountain in the world?"
            Reponses := array{"Kilimanjaro", "K2", "Mont Blanc", "Everest"}
            BonneReponse := 3
        question:
            Enonce := "Which ocean borders the west coast of France?"
            Reponses := array{"The Arctic", "The Indian Ocean", "The Pacific", "The Atlantic"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest hot desert in the world?"
            Reponses := array{"The Sahara", "The Gobi", "The Atacama Desert", "The Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "What is the capital of Japan?"
            Reponses := array{"Beijing", "Seoul", "Tokyo", "Osaka"}
            BonneReponse := 2
        question:
            Enonce := "Which country is shaped like a boot?"
            Reponses := array{"Spain", "Greece", "Italy", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "What is the largest country in the world by area?"
            Reponses := array{"The United States", "Canada", "China", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "On which continent is Egypt located?"
            Reponses := array{"Europe", "Asia", "Africa", "Oceania"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Spain?"
            Reponses := array{"Valencia", "Madrid", "Barcelona", "Seville"}
            BonneReponse := 1
        question:
            Enonce := "Which sea borders the French Riviera?"
            Reponses := array{"The Mediterranean", "The North Sea", "The Baltic Sea", "The English Channel"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest ocean in the world?"
            Reponses := array{"The Indian Ocean", "The Atlantic", "The Pacific", "The Arctic Ocean"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of the United States?"
            Reponses := array{"Los Angeles", "Chicago", "Washington", "New York"}
            BonneReponse := 2
        question:
            Enonce := "Which mountain range separates France from Spain?"
            Reponses := array{"The Vosges", "The Pyrenees", "The Alps", "The Jura"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of Germany?"
            Reponses := array{"Munich", "Berlin", "Frankfurt", "Hamburg"}
            BonneReponse := 1
        question:
            Enonce := "Which strait separates France from the United Kingdom?"
            Reponses := array{"The Aegean Sea", "The English Channel", "The Black Sea", "The Bay of Biscay"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of the United Kingdom?"
            Reponses := array{"London", "Manchester", "Liverpool", "Edinburgh"}
            BonneReponse := 0
        question:
            Enonce := "Which river flows through Egypt?"
            Reponses := array{"The Nile", "The Congo", "The Tigris", "The Amazon"}
            BonneReponse := 0
        question:
            Enonce := "What is the capital of Belgium?"
            Reponses := array{"Liege", "Brussels", "Bruges", "Antwerp"}
            BonneReponse := 1
        question:
            Enonce := "On which continent do wild kangaroos live?"
            Reponses := array{"Africa", "Asia", "Australia", "South America"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Portugal?"
            Reponses := array{"Madrid", "Porto", "Lisbon", "Seville"}
            BonneReponse := 2
        question:
            Enonce := "What is the highest mountain in France and the Alps?"
            Reponses := array{"Mont Blanc", "Pic du Midi", "Mont Ventoux", "Puy de Dome"}
            BonneReponse := 0
        question:
            Enonce := "Which country is nicknamed the Land of the Rising Sun?"
            Reponses := array{"Thailand", "China", "Japan", "South Korea"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Russia?"
            Reponses := array{"Warsaw", "Moscow", "Kyiv", "Saint Petersburg"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the most inhabitants in the world (since 2023)?"
            Reponses := array{"China", "Indonesia", "India", "The United States"}
            BonneReponse := 2
        question:
            Enonce := "What is the chemical formula for water?"
            Reponses := array{"O2", "H2O", "CO2", "H2O2"}
            BonneReponse := 1
        question:
            Enonce := "What is the chemical symbol for gold?"
            Reponses := array{"Or", "Go", "Ag", "Au"}
            BonneReponse := 3
        question:
            Enonce := "Which gas is essential for human breathing?"
            Reponses := array{"Carbon dioxide", "Helium", "Oxygen", "Nitrogen"}
            BonneReponse := 2
        question:
            Enonce := "At what temperature does water boil at sea level?"
            Reponses := array{"90 C", "100 C", "50 C", "0 C"}
            BonneReponse := 1
        question:
            Enonce := "At what temperature does water freeze?"
            Reponses := array{"-10 C", "4 C", "0 C", "32 C"}
            BonneReponse := 2
        question:
            Enonce := "Which metal is liquid at room temperature?"
            Reponses := array{"Mercury", "Copper", "Iron", "Lead"}
            BonneReponse := 0
        question:
            Enonce := "Which force pulls us toward the ground?"
            Reponses := array{"Gravity", "Electricity", "Magnetism", "Friction"}
            BonneReponse := 0
        question:
            Enonce := "What is the chemical symbol for iron?"
            Reponses := array{"F", "Fr", "Ir", "Fe"}
            BonneReponse := 3
        question:
            Enonce := "Which gas do plants absorb for photosynthesis?"
            Reponses := array{"Hydrogen", "Oxygen", "Nitrogen", "Carbon dioxide"}
            BonneReponse := 3
        question:
            Enonce := "Which scientist formulated the famous equation E = mc^2?"
            Reponses := array{"Nikola Tesla", "Isaac Newton", "Albert Einstein", "Galileo"}
            BonneReponse := 2
        question:
            Enonce := "Which instrument measures temperature?"
            Reponses := array{"The compass", "The barometer", "The stopwatch", "The thermometer"}
            BonneReponse := 3
        question:
            Enonce := "Which gas, lighter than air, makes balloons float?"
            Reponses := array{"Carbon dioxide", "Oxygen", "Helium", "Methane"}
            BonneReponse := 2
        question:
            Enonce := "Which scientist stated the law of universal gravitation?"
            Reponses := array{"Isaac Newton", "Einstein", "Pasteur", "Copernicus"}
            BonneReponse := 0
        question:
            Enonce := "Which gas is the most abundant in Earth's atmosphere?"
            Reponses := array{"Argon", "Nitrogen", "Oxygen", "Carbon dioxide"}
            BonneReponse := 1
        question:
            Enonce := "What state is water in when it is frozen?"
            Reponses := array{"Solid", "Plasma", "Liquid", "Gaseous"}
            BonneReponse := 0
        question:
            Enonce := "Which particle of the atom carries a negative charge?"
            Reponses := array{"The electron", "The proton", "The neutron", "The photon"}
            BonneReponse := 0
        question:
            Enonce := "Which instrument is used to observe very small objects?"
            Reponses := array{"The microscope", "The telescope", "Binoculars", "The giant magnifying glass"}
            BonneReponse := 0
        question:
            Enonce := "Which light metal is used for cans and airplanes?"
            Reponses := array{"Aluminium", "Mercury", "Gold", "Lead"}
            BonneReponse := 0
        question:
            Enonce := "How many colours are classically distinguished in a rainbow?"
            Reponses := array{"5", "10", "3", "7"}
            BonneReponse := 3
        question:
            Enonce := "What is the chemical symbol for sodium?"
            Reponses := array{"So", "Sd", "S", "Na"}
            BonneReponse := 3
        question:
            Enonce := "Which celestial body is responsible for tides on Earth?"
            Reponses := array{"Venus", "The Moon", "Mars", "The wind"}
            BonneReponse := 1
        question:
            Enonce := "What is the unit of measurement for electric current intensity?"
            Reponses := array{"The joule", "The watt", "The ampere", "The metre"}
            BonneReponse := 2
        question:
            Enonce := "What is measured in degrees Celsius?"
            Reponses := array{"Time", "Distance", "Temperature", "Weight"}
            BonneReponse := 2
        question:
            Enonce := "What is the basic unit of matter?"
            Reponses := array{"The grain", "The molecule", "The cell", "The atom"}
            BonneReponse := 3
        question:
            Enonce := "Which gas is produced by burning carbon?"
            Reponses := array{"Oxygen", "Helium", "Hydrogen", "Carbon dioxide"}
            BonneReponse := 3
        question:
            Enonce := "How many lungs does a human being have?"
            Reponses := array{"3", "1", "4", "2"}
            BonneReponse := 3
        question:
            Enonce := "Which organ pumps blood through the body?"
            Reponses := array{"The lungs", "The stomach", "The heart", "The liver"}
            BonneReponse := 2
        question:
            Enonce := "How many teeth does an adult have (including wisdom teeth)?"
            Reponses := array{"20", "28", "36", "32"}
            BonneReponse := 3
        question:
            Enonce := "Which organ mainly digests food?"
            Reponses := array{"The lung", "The stomach", "The brain", "The heart"}
            BonneReponse := 1
        question:
            Enonce := "Which organ is the center of the nervous system?"
            Reponses := array{"The kidney", "The liver", "The heart", "The brain"}
            BonneReponse := 3
        question:
            Enonce := "What is the thigh bone called?"
            Reponses := array{"The humerus", "The femur", "The tibia", "The clavicle"}
            BonneReponse := 1
        question:
            Enonce := "Which group of animals nurses its young?"
            Reponses := array{"Birds", "Fish", "Mammals", "Reptiles"}
            BonneReponse := 2
        question:
            Enonce := "How many legs does a spider have?"
            Reponses := array{"4", "8", "10", "6"}
            BonneReponse := 1
        question:
            Enonce := "How many legs does an insect have?"
            Reponses := array{"6", "2", "4", "8"}
            BonneReponse := 0
        question:
            Enonce := "What do bees produce?"
            Reponses := array{"Milk", "Silk", "Honey", "Earwax"}
            BonneReponse := 2
        question:
            Enonce := "What is the largest animal in the world?"
            Reponses := array{"The elephant", "The great white shark", "The blue whale", "The diplodocus"}
            BonneReponse := 2
        question:
            Enonce := "How many chambers does the human heart have?"
            Reponses := array{"2", "4", "3", "1"}
            BonneReponse := 1
        question:
            Enonce := "Which vitamin is produced thanks to the sun?"
            Reponses := array{"Vitamin A", "Vitamin B12", "Vitamin C", "Vitamin D"}
            BonneReponse := 3
        question:
            Enonce := "Which organ filters the blood and produces urine?"
            Reponses := array{"The liver", "The kidneys", "The heart", "The lungs"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest organ of the human body?"
            Reponses := array{"The lungs", "The intestines", "The liver", "The skin"}
            BonneReponse := 3
        question:
            Enonce := "Which blood cell carries oxygen?"
            Reponses := array{"The red blood cell", "The white blood cell", "The neuron", "The platelet"}
            BonneReponse := 0
        question:
            Enonce := "Which reptile can change color?"
            Reponses := array{"The chameleon", "The turtle", "The crocodile", "The cobra"}
            BonneReponse := 0
        question:
            Enonce := "How many senses does the human being classically have?"
            Reponses := array{"6", "7", "5", "3"}
            BonneReponse := 2
        question:
            Enonce := "Which gas do we mainly exhale?"
            Reponses := array{"Hydrogen", "Oxygen", "Helium", "Carbon dioxide"}
            BonneReponse := 3
        question:
            Enonce := "Which organ allows us to breathe?"
            Reponses := array{"The lungs", "The kidneys", "The liver", "The heart"}
            BonneReponse := 0
        question:
            Enonce := "How many fingers does a human hand have?"
            Reponses := array{"10", "6", "5", "4"}
            BonneReponse := 2
        question:
            Enonce := "Which red liquid flows through our vessels?"
            Reponses := array{"Bile", "Blood", "Lymph", "Saliva"}
            BonneReponse := 1
        question:
            Enonce := "Which sense is associated with the eyes?"
            Reponses := array{"Taste", "Hearing", "Sight", "Smell"}
            BonneReponse := 2
        question:
            Enonce := "What does a herbivorous animal feed on?"
            Reponses := array{"Insects only", "Fish", "Plants", "Meat"}
            BonneReponse := 2
        question:
            Enonce := "Which human organ can largely regenerate itself?"
            Reponses := array{"The heart", "The brain", "The liver", "The eye"}
            BonneReponse := 2
        question:
            Enonce := "Which is the fastest land animal?"
            Reponses := array{"The cheetah", "The horse", "The greyhound", "The lion"}
            BonneReponse := 0
        question:
            Enonce := "Which animal is nicknamed the king of the animals?"
            Reponses := array{"The elephant", "The eagle", "The lion", "The tiger"}
            BonneReponse := 2
        question:
            Enonce := "Which large African bird cannot fly but runs very fast?"
            Reponses := array{"The ostrich", "The flamingo", "The toucan", "The eagle"}
            BonneReponse := 0
        question:
            Enonce := "Which is the largest land animal?"
            Reponses := array{"The elephant", "The giraffe", "The hippopotamus", "The rhinoceros"}
            BonneReponse := 0
        question:
            Enonce := "Which tree produces acorns?"
            Reponses := array{"The pine", "The maple", "The oak", "The birch"}
            BonneReponse := 2
        question:
            Enonce := "Which animal has a trunk?"
            Reponses := array{"The rhinoceros", "The tapir", "The elephant", "The buffalo"}
            BonneReponse := 2
        question:
            Enonce := "Which bird symbolizes peace?"
            Reponses := array{"The crow", "The sparrow", "The dove", "The falcon"}
            BonneReponse := 2
        question:
            Enonce := "How many humps does a dromedary have?"
            Reponses := array{"0", "2", "3", "1"}
            BonneReponse := 3
        question:
            Enonce := "Which animal hibernates in winter and is known for it?"
            Reponses := array{"The wolf", "The deer", "The bear", "The fox"}
            BonneReponse := 2
        question:
            Enonce := "Which flower turns its head toward the sun?"
            Reponses := array{"The sunflower", "The rose", "The poppy", "The tulip"}
            BonneReponse := 0
        question:
            Enonce := "Which black-and-white bird lives in Antarctica and cannot fly?"
            Reponses := array{"The penguin", "The toucan", "The owl", "The seagull"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest tropical rainforest in the world?"
            Reponses := array{"The Black Forest", "The Congo Basin", "The Siberian forest", "The Amazon"}
            BonneReponse := 3
        question:
            Enonce := "Which reptile has a shell?"
            Reponses := array{"The crocodile", "The snake", "The turtle", "The lizard"}
            BonneReponse := 2
        question:
            Enonce := "Which mammal is able to fly?"
            Reponses := array{"The owl", "The squirrel", "The bat", "The hummingbird"}
            BonneReponse := 2
        question:
            Enonce := "Which animal weaves a web to catch its prey?"
            Reponses := array{"The spider", "The bee", "The ant", "The wasp"}
            BonneReponse := 0
        question:
            Enonce := "Which great ape shares the most genes with humans?"
            Reponses := array{"The orangutan", "The chimpanzee", "The baboon", "The gorilla"}
            BonneReponse := 1
        question:
            Enonce := "Which nocturnal bird hoots?"
            Reponses := array{"The robin", "The duck", "The pigeon", "The owl"}
            BonneReponse := 3
        question:
            Enonce := "The giraffe is a/an..."
            Reponses := array{"insectivore", "herbivore", "carnivore", "omnivore"}
            BonneReponse := 1
        question:
            Enonce := "Which insect produces silk?"
            Reponses := array{"The silkworm", "The ant", "The butterfly", "The bee"}
            BonneReponse := 0
        question:
            Enonce := "Which is the largest feline in the world?"
            Reponses := array{"The lion", "The jaguar", "The tiger", "The leopard"}
            BonneReponse := 2
        question:
            Enonce := "Which very intelligent marine mammal leaps out of the water?"
            Reponses := array{"The dolphin", "The shark", "The seal", "The jellyfish"}
            BonneReponse := 0
        question:
            Enonce := "Which tree keeps its needles green all year round?"
            Reponses := array{"The fir", "The oak", "The plane tree", "The willow"}
            BonneReponse := 0
        question:
            Enonce := "Which animal is considered man's best friend?"
            Reponses := array{"The cat", "The horse", "The dog", "The parrot"}
            BonneReponse := 2
        question:
            Enonce := "Which amphibian lives near ponds and croaks?"
            Reponses := array{"The snail", "The dragonfly", "The frog", "The lizard"}
            BonneReponse := 2
        question:
            Enonce := "What color does a dead leaf often turn in autumn?"
            Reponses := array{"Brown/russet", "Purple", "Blue", "Black"}
            BonneReponse := 0
        question:
            Enonce := "Which celestial body is at the center of our solar system?"
            Reponses := array{"Jupiter", "The Earth", "The Sun", "The Moon"}
            BonneReponse := 2
        question:
            Enonce := "Which planet is nicknamed the red planet?"
            Reponses := array{"Saturn", "Mercury", "Mars", "Venus"}
            BonneReponse := 2
        question:
            Enonce := "What is Earth's natural satellite?"
            Reponses := array{"The Sun", "Venus", "The Moon", "Mars"}
            BonneReponse := 2
        question:
            Enonce := "Who was the first man to walk on the Moon?"
            Reponses := array{"Buzz Aldrin", "Neil Armstrong", "Yuri Gagarin", "Thomas Pesquet"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest planet in the solar system?"
            Reponses := array{"Jupiter", "Neptune", "The Earth", "Saturn"}
            BonneReponse := 0
        question:
            Enonce := "How many planets are in the solar system?"
            Reponses := array{"8", "7", "10", "9"}
            BonneReponse := 0
        question:
            Enonce := "Which planet is famous for its rings?"
            Reponses := array{"Mars", "Saturn", "Mercury", "Venus"}
            BonneReponse := 1
        question:
            Enonce := "What is the name of the galaxy that contains our solar system?"
            Reponses := array{"The Whirlpool Galaxy", "Andromeda", "The Big Dipper", "The Milky Way"}
            BonneReponse := 3
        question:
            Enonce := "Which planet is closest to the Sun?"
            Reponses := array{"Venus", "Mars", "The Earth", "Mercury"}
            BonneReponse := 3
        question:
            Enonce := "In what year did man first walk on the Moon?"
            Reponses := array{"1969", "1961", "1975", "1958"}
            BonneReponse := 0
        question:
            Enonce := "Which space agency is American?"
            Reponses := array{"NASA", "CNES", "Roscosmos", "ESA"}
            BonneReponse := 0
        question:
            Enonce := "Which planet do we live on?"
            Reponses := array{"The Earth", "Venus", "Mars", "The Moon"}
            BonneReponse := 0
        question:
            Enonce := "What is the phenomenon called when the Moon hides the Sun?"
            Reponses := array{"An aurora borealis", "A solar eclipse", "A supernova", "A comet"}
            BonneReponse := 1
        question:
            Enonce := "Which planet is nicknamed the Shepherd's star?"
            Reponses := array{"Venus", "Saturn", "Mars", "Jupiter"}
            BonneReponse := 0
        question:
            Enonce := "Which vehicle propels astronauts into space?"
            Reponses := array{"A plane", "A rocket", "A submarine", "A hot-air balloon"}
            BonneReponse := 1
        question:
            Enonce := "Which famous space telescope was launched in 1990?"
            Reponses := array{"Kepler", "Voyager", "Galileo", "Hubble"}
            BonneReponse := 3
        question:
            Enonce := "How long does the Earth take to orbit the Sun?"
            Reponses := array{"One month", "Ten years", "About one year", "One day"}
            BonneReponse := 2
        question:
            Enonce := "What is the shape of the Earth?"
            Reponses := array{"A cube", "A sphere", "A cone", "A flat disc"}
            BonneReponse := 1
        question:
            Enonce := "What causes the alternation of day and night?"
            Reponses := array{"The tides", "The Earth's rotation", "The Moon", "The clouds"}
            BonneReponse := 1
        question:
            Enonce := "What is the study of celestial bodies and the universe called?"
            Reponses := array{"Meteorology", "Astronomy", "Biology", "Geology"}
            BonneReponse := 1
        question:
            Enonce := "Which famous French astronaut stayed aboard the International Space Station?"
            Reponses := array{"Thomas Pesquet", "Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin"}
            BonneReponse := 0
        question:
            Enonce := "Which first human went into space in 1961?"
            Reponses := array{"Alan Shepard", "John Glenn", "Neil Armstrong", "Yuri Gagarin"}
            BonneReponse := 3
        question:
            Enonce := "Which celestial object has a long luminous tail and returns periodically?"
            Reponses := array{"The nebula", "The comet", "The planet", "The black hole"}
            BonneReponse := 1
        question:
            Enonce := "Which force keeps the planets in orbit around the Sun?"
            Reponses := array{"Gravity", "The solar wind", "Earth's magnetism", "Light"}
            BonneReponse := 0
        question:
            Enonce := "Which garment protects the astronaut in space?"
            Reponses := array{"The life jacket", "The raincoat", "The spacesuit", "The chainmail"}
            BonneReponse := 2
        question:
            Enonce := "Who painted the Mona Lisa?"
            Reponses := array{"Monet", "Leonardo da Vinci", "Van Gogh", "Picasso"}
            BonneReponse := 1
        question:
            Enonce := "In which museum is the Mona Lisa displayed?"
            Reponses := array{"The British Museum", "The Louvre", "The Prado", "The Musee d'Orsay"}
            BonneReponse := 1
        question:
            Enonce := "Which painter cut off his ear and painted The Starry Night?"
            Reponses := array{"Claude Monet", "Salvador Dali", "Vincent van Gogh", "Rembrandt"}
            BonneReponse := 2
        question:
            Enonce := "Which Spanish artist is a co-founder of Cubism?"
            Reponses := array{"Miro", "Pablo Picasso", "Goya", "Velazquez"}
            BonneReponse := 1
        question:
            Enonce := "Which statue, a gift from France, stands in New York?"
            Reponses := array{"The David", "The Statue of Liberty", "The Thinker", "The Venus de Milo"}
            BonneReponse := 1
        question:
            Enonce := "Who sculpted The Thinker?"
            Reponses := array{"Michelangelo", "Camille Claudel", "Donatello", "Auguste Rodin"}
            BonneReponse := 3
        question:
            Enonce := "Which famous ceiling did Michelangelo paint in the Vatican?"
            Reponses := array{"The Sistine Chapel", "The Pantheon", "St Mark's", "Notre-Dame"}
            BonneReponse := 0
        question:
            Enonce := "Which ancient Roman monument is a large amphitheatre?"
            Reponses := array{"The Acropolis", "The Tower of Pisa", "The Colosseum", "The Parthenon"}
            BonneReponse := 2
        question:
            Enonce := "To which movement does Claude Monet belong?"
            Reponses := array{"Cubism", "Surrealism", "Baroque", "Impressionism"}
            BonneReponse := 3
        question:
            Enonce := "Which white marble funerary monument is located in India?"
            Reponses := array{"Machu Picchu", "The Taj Mahal", "Angkor Wat", "The Great Wall"}
            BonneReponse := 1
        question:
            Enonce := "Which work by Edvard Munch depicts a screaming figure?"
            Reponses := array{"The Sunflowers", "The Scream", "The Mona Lisa", "Liberty Leading the People"}
            BonneReponse := 1
        question:
            Enonce := "Which Renaissance painter created The Creation of Adam?"
            Reponses := array{"Raphael", "Michelangelo", "Titian", "Botticelli"}
            BonneReponse := 1
        question:
            Enonce := "Which Gothic cathedral in Paris burned in 2019?"
            Reponses := array{"The Sainte-Chapelle", "The Sacre-Coeur", "Notre-Dame de Paris", "Reims Cathedral"}
            BonneReponse := 2
        question:
            Enonce := "Which artist painted Guernica?"
            Reponses := array{"Matisse", "Dali", "Van Gogh", "Pablo Picasso"}
            BonneReponse := 3
        question:
            Enonce := "What are the three primary colours?"
            Reponses := array{"Green, orange, purple", "Pink, brown, beige", "Black, white, grey", "Red, blue, yellow"}
            BonneReponse := 3
        question:
            Enonce := "Which glass pyramid stands in front of the Louvre?"
            Reponses := array{"The Pyramid of Cheops", "The Pyramid of the Sun", "The Louvre Pyramid", "Pei's pyramid in Beijing"}
            BonneReponse := 2
        question:
            Enonce := "Which prehistoric monument made of large standing stones is in England?"
            Reponses := array{"The Colosseum", "The Parthenon", "Carnac", "Stonehenge"}
            BonneReponse := 3
        question:
            Enonce := "Which performing art uses classical dance on pointe?"
            Reponses := array{"Theatre", "Opera", "Ballet", "Circus"}
            BonneReponse := 2
        question:
            Enonce := "What main tool does a painter use?"
            Reponses := array{"The brush", "The hammer", "The chisel", "The trowel"}
            BonneReponse := 0
        question:
            Enonce := "Which country invented origami, the art of paper folding?"
            Reponses := array{"France", "India", "Japan", "China"}
            BonneReponse := 2
        question:
            Enonce := "Which Parisian museum, a former railway station, houses Impressionist art?"
            Reponses := array{"The Louvre", "The Grand Palais", "The Centre Pompidou", "The Musee d'Orsay"}
            BonneReponse := 3
        question:
            Enonce := "Which famous iron tower was built in Paris in 1889?"
            Reponses := array{"The Tower of London", "Big Ben", "The Eiffel Tower", "The Tower of Pisa"}
            BonneReponse := 2
        question:
            Enonce := "Which white material, quarried in Carrara, is often used for sculpting?"
            Reponses := array{"Wood", "Glass", "Bronze", "Marble"}
            BonneReponse := 3
        question:
            Enonce := "Which famous Greek sculpture of a woman has no arms?"
            Reponses := array{"The David", "The Thinker", "The Mona Lisa", "The Venus de Milo"}
            BonneReponse := 3
        question:
            Enonce := "What colour are Van Gogh's famous Sunflowers?"
            Reponses := array{"Green", "Red", "Blue", "Yellow"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Les Miserables?"
            Reponses := array{"Victor Hugo", "Emile Zola", "Balzac", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Romeo and Juliet?"
            Reponses := array{"Dante", "Cervantes", "Moliere", "William Shakespeare"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Little Prince?"
            Reponses := array{"Camus", "Antoine de Saint-Exupery", "La Fontaine", "Jules Verne"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote the Harry Potter saga?"
            Reponses := array{"Tolkien", "J.K. Rowling", "Stephen King", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Which famous detective was created by Arthur Conan Doyle?"
            Reponses := array{"Maigret", "Hercule Poirot", "Arsene Lupin", "Sherlock Holmes"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote fables such as The Crow and the Fox?"
            Reponses := array{"Andersen", "Jean de La Fontaine", "Charles Perrault", "Victor Hugo"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote The Three Musketeers?"
            Reponses := array{"Alexandre Dumas", "Jules Verne", "Stendhal", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Which dreamy knight is the hero of Cervantes' novel?"
            Reponses := array{"Robin Hood", "Ivanhoe", "Don Quixote", "Lancelot"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Twenty Thousand Leagues Under the Sea?"
            Reponses := array{"Hemingway", "H.G. Wells", "Jules Verne", "Daniel Defoe"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Lord of the Rings?"
            Reponses := array{"J.R.R. Tolkien", "George R.R. Martin", "C.S. Lewis", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Which French poet wrote The Flowers of Evil?"
            Reponses := array{"Charles Baudelaire", "Verlaine", "Rimbaud", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Which famous line comes from the play Hamlet?"
            Reponses := array{"To be or not to be", "To arms, citizens", "Veni, vidi, vici", "I think, therefore I am"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote tales such as Cinderella and Little Red Riding Hood?"
            Reponses := array{"Victor Hugo", "Moliere", "Charles Perrault", "La Fontaine"}
            BonneReponse := 2
        question:
            Enonce := "Which Danish author wrote The Little Mermaid?"
            Reponses := array{"Hans Christian Andersen", "Lewis Carroll", "Charles Perrault", "Collodi"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote the novel 1984?"
            Reponses := array{"Jules Verne", "Ray Bradbury", "George Orwell", "Aldous Huxley"}
            BonneReponse := 2
        question:
            Enonce := "Which novel by Daniel Defoe tells of a castaway on a desert island?"
            Reponses := array{"Moby Dick", "Treasure Island", "Friday", "Robinson Crusoe"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Hunchback of Notre-Dame?"
            Reponses := array{"Flaubert", "Victor Hugo", "Zola", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Which great white sperm whale is hunted in Melville's novel?"
            Reponses := array{"Nemo", "Moby Dick", "Leviathan", "Willy"}
            BonneReponse := 1
        question:
            Enonce := "In which language did Shakespeare write his plays?"
            Reponses := array{"Latin", "French", "Italian", "English"}
            BonneReponse := 3
        question:
            Enonce := "How many musketeers appear in the title of Dumas' novel?"
            Reponses := array{"Three", "Four", "Five", "Two"}
            BonneReponse := 0
        question:
            Enonce := "Which author wrote Germinal?"
            Reponses := array{"Maupassant", "Proust", "Emile Zola", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Which gentleman thief was created by Maurice Leblanc?"
            Reponses := array{"Robin Hood", "Fantomas", "Sherlock Holmes", "Arsene Lupin"}
            BonneReponse := 3
        question:
            Enonce := "Which young girl follows a white rabbit down a hole (Lewis Carroll)?"
            Reponses := array{"Wendy", "Alice", "Dorothy", "Heidi"}
            BonneReponse := 1
        question:
            Enonce := "Which author wrote The Count of Monte Cristo?"
            Reponses := array{"Jules Verne", "Balzac", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Which French philosopher wrote Candide?"
            Reponses := array{"Voltaire", "Montesquieu", "Diderot", "Rousseau"}
            BonneReponse := 0
        question:
            Enonce := "Which instrument has black and white keys?"
            Reponses := array{"The piano", "The violin", "The guitar", "The trumpet"}
            BonneReponse := 0
        question:
            Enonce := "How many strings does a classical guitar have?"
            Reponses := array{"12", "6", "8", "4"}
            BonneReponse := 1
        question:
            Enonce := "Who composed the 9th Symphony and its Ode to Joy?"
            Reponses := array{"Beethoven", "Bach", "Chopin", "Mozart"}
            BonneReponse := 0
        question:
            Enonce := "Which British band brought together John, Paul, George and Ringo?"
            Reponses := array{"The Beatles", "Queen", "The Rolling Stones", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Which singer is nicknamed the King of Pop?"
            Reponses := array{"Elvis Presley", "Freddie Mercury", "Prince", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Which American singer is nicknamed the King of Rock?"
            Reponses := array{"Johnny Hallyday", "Elvis Presley", "Chuck Berry", "Bob Dylan"}
            BonneReponse := 1
        question:
            Enonce := "Which Austrian composer was a child prodigy and wrote a Requiem?"
            Reponses := array{"Mozart", "Beethoven", "Vivaldi", "Haydn"}
            BonneReponse := 0
        question:
            Enonce := "With what object is the violin played?"
            Reponses := array{"A bow", "A hammer", "A baton", "A pick"}
            BonneReponse := 0
        question:
            Enonce := "How many notes are in the scale (do, re, mi...)?"
            Reponses := array{"7", "8", "5", "12"}
            BonneReponse := 0
        question:
            Enonce := "Which brass wind instrument has a slide?"
            Reponses := array{"The clarinet", "The saxophone", "The trombone", "The flute"}
            BonneReponse := 2
        question:
            Enonce := "Which large pipe instrument is found in churches?"
            Reponses := array{"The harpsichord", "The organ", "The piano", "The harp"}
            BonneReponse := 1
        question:
            Enonce := "Which Viennese dance is played in triple time?"
            Reponses := array{"The waltz", "The salsa", "The tango", "The rock"}
            BonneReponse := 0
        question:
            Enonce := "Who conducts an orchestra with a baton?"
            Reponses := array{"The composer", "The soloist", "The conductor", "The stage manager"}
            BonneReponse := 2
        question:
            Enonce := "Which country does reggae (Bob Marley) come from?"
            Reponses := array{"Brazil", "Senegal", "Jamaica", "Cuba"}
            BonneReponse := 2
        question:
            Enonce := "How many strings does a violin have?"
            Reponses := array{"6", "3", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Which American city is considered the birthplace of jazz?"
            Reponses := array{"New York", "Detroit", "New Orleans", "Chicago"}
            BonneReponse := 2
        question:
            Enonce := "How many musicians play in a quartet?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Which German Baroque composer wrote the Toccata and Fugue in D minor?"
            Reponses := array{"Mozart", "Wagner", "Johann Sebastian Bach", "Beethoven"}
            BonneReponse := 2
        question:
            Enonce := "Which string instrument is the lowest in the orchestra?"
            Reponses := array{"The double bass", "The violin", "The harp", "The cello"}
            BonneReponse := 0
        question:
            Enonce := "Which instrument has 88 keys?"
            Reponses := array{"The accordion", "The piano", "The xylophone", "The organ"}
            BonneReponse := 1
        question:
            Enonce := "Which country does flamenco come from?"
            Reponses := array{"Portugal", "Spain", "Italy", "Mexico"}
            BonneReponse := 1
        question:
            Enonce := "Which female voice is the highest?"
            Reponses := array{"Soprano", "Tenor", "Bass", "Alto"}
            BonneReponse := 0
        question:
            Enonce := "Which reed wind instrument is emblematic of jazz?"
            Reponses := array{"The saxophone", "The violin", "The harp", "The drums"}
            BonneReponse := 0
        question:
            Enonce := "On which analog medium was music listened to before the CD?"
            Reponses := array{"The vinyl record", "The memory card", "The USB flash drive", "The DVD"}
            BonneReponse := 0
        question:
            Enonce := "Which family of instruments includes the drum kit and the drum?"
            Reponses := array{"Woodwinds", "Percussion", "Brass", "Strings"}
            BonneReponse := 1
        question:
            Enonce := "Which mouse is the mascot of the Disney studios?"
            Reponses := array{"Stuart", "Mickey", "Jerry", "Speedy"}
            BonneReponse := 1
        question:
            Enonce := "Which 'Star Wars' character says 'I am your father'?"
            Reponses := array{"Han Solo", "Luke", "Darth Vader", "Yoda"}
            BonneReponse := 2
        question:
            Enonce := "Which studio made 'Toy Story'?"
            Reponses := array{"Warner", "Universal", "Pixar", "DreamWorks"}
            BonneReponse := 2
        question:
            Enonce := "Which green ogre is the hero of a DreamWorks film?"
            Reponses := array{"Gollum", "Yoda", "Shrek", "Hulk"}
            BonneReponse := 2
        question:
            Enonce := "Which archaeologist carries a whip and wears a hat in the movies?"
            Reponses := array{"Indiana Jones", "Tintin", "James Bond", "Lara Croft"}
            BonneReponse := 0
        question:
            Enonce := "Which Steven Spielberg film features a giant shark?"
            Reponses := array{"Titanic", "Jaws", "Finding Nemo", "Jurassic Park"}
            BonneReponse := 1
        question:
            Enonce := "Which golden award is given out in American cinema?"
            Reponses := array{"The Palme d'Or", "The Cesar", "The Golden Buzzer", "The Oscar"}
            BonneReponse := 3
        question:
            Enonce := "Which major film festival is held in France and awards the Palme d'Or?"
            Reponses := array{"Cannes", "Berlin", "Venice", "Sundance"}
            BonneReponse := 0
        question:
            Enonce := "Which superhero protects the city of Gotham?"
            Reponses := array{"Superman", "Batman", "Iron Man", "Spider-Man"}
            BonneReponse := 1
        question:
            Enonce := "In the movie 'Titanic', what are the two heroes named?"
            Reponses := array{"Romeo and Juliet", "Leo and Kate", "Tom and Jerry", "Jack and Rose"}
            BonneReponse := 3
        question:
            Enonce := "Which little alien wants to 'phone home'?"
            Reponses := array{"Alf", "Yoda", "E.T.", "Stitch"}
            BonneReponse := 2
        question:
            Enonce := "Which yellow family is at the heart of a famous cartoon?"
            Reponses := array{"The Flintstones", "South Park", "Family Guy", "The Simpsons"}
            BonneReponse := 3
        question:
            Enonce := "Which British secret agent carries the code number 007?"
            Reponses := array{"Ethan Hunt", "Jason Bourne", "Austin Powers", "James Bond"}
            BonneReponse := 3
        question:
            Enonce := "Which Disney princess loses a glass slipper?"
            Reponses := array{"Cinderella", "Snow White", "Rapunzel", "Belle"}
            BonneReponse := 0
        question:
            Enonce := "Which Marvel superhero shoots spider webs?"
            Reponses := array{"Spider-Man", "Thor", "Captain America", "Hulk"}
            BonneReponse := 0
        question:
            Enonce := "Which Disney animated film follows a young lion named Simba?"
            Reponses := array{"Madagascar", "The Lion King", "Bambi", "Tarzan"}
            BonneReponse := 1
        question:
            Enonce := "Which small, wise green Jedi master appears in 'Star Wars'?"
            Reponses := array{"Yoda", "Chewbacca", "R2-D2", "Jabba"}
            BonneReponse := 0
        question:
            Enonce := "Which clownfish is searched for by his father in a Pixar film?"
            Reponses := array{"Willy", "Nemo", "Dory", "Flipper"}
            BonneReponse := 1
        question:
            Enonce := "Which cowboy is a toy hero in 'Toy Story'?"
            Reponses := array{"Jessie", "Woody", "Buzz", "Lucky Luke"}
            BonneReponse := 1
        question:
            Enonce := "Which silent-film actor wore a bowler hat, a cane and a small moustache?"
            Reponses := array{"Mr. Bean", "Louis de Funes", "Buster Keaton", "Charlie Chaplin"}
            BonneReponse := 3
        question:
            Enonce := "Which cyborg says 'I'll be back' in a science-fiction film?"
            Reponses := array{"Iron Man", "RoboCop", "The Terminator", "Wall-E"}
            BonneReponse := 2
        question:
            Enonce := "Which boxer from Philadelphia is played by Sylvester Stallone?"
            Reponses := array{"Rambo", "Rocky", "Creed", "Tyson"}
            BonneReponse := 1
        question:
            Enonce := "Which saga features Frodo and a ring to be destroyed?"
            Reponses := array{"The Lord of the Rings", "Narnia", "The Hobbit only", "Harry Potter"}
            BonneReponse := 0
        question:
            Enonce := "Which red-haired little mermaid is a Disney heroine?"
            Reponses := array{"Elsa", "Moana", "Ariel", "Jasmine"}
            BonneReponse := 2
        question:
            Enonce := "Which Disney character is a wooden puppet whose nose grows when he lies?"
            Reponses := array{"Pinpin", "Pinocchio", "Peter Pan", "Aladdin"}
            BonneReponse := 1
        question:
            Enonce := "How many players make up a football team on the field?"
            Reponses := array{"11", "7", "15", "9"}
            BonneReponse := 0
        question:
            Enonce := "How often are the Summer Olympic Games held?"
            Reponses := array{"Every 4 years", "Every 5 years", "Every 3 years", "Every 2 years"}
            BonneReponse := 0
        question:
            Enonce := "What sport is played at Roland-Garros?"
            Reponses := array{"Handball", "Golf", "Rugby", "Tennis"}
            BonneReponse := 3
        question:
            Enonce := "How many rings are on the Olympic flag?"
            Reponses := array{"3", "4", "6", "5"}
            BonneReponse := 3
        question:
            Enonce := "Which sport is played with an orange ball and hoops?"
            Reponses := array{"Football", "Handball", "Basketball", "Volleyball"}
            BonneReponse := 2
        question:
            Enonce := "What sport does the sprinter Usain Bolt practice?"
            Reponses := array{"Cycling", "Athletics", "Swimming", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Which world football trophy takes place every four years?"
            Reponses := array{"The Euro", "The Champions League", "The World Cup", "The French Cup"}
            BonneReponse := 2
        question:
            Enonce := "How many players from a basketball team are on the court?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Which sport is nicknamed the little queen?"
            Reponses := array{"Horse riding", "Rowing", "Cycling", "Boxing"}
            BonneReponse := 2
        question:
            Enonce := "In which sport do you score a try?"
            Reponses := array{"Rugby", "Tennis", "Basketball", "Football"}
            BonneReponse := 0
        question:
            Enonce := "How many holes does a standard golf course have?"
            Reponses := array{"24", "9", "18", "12"}
            BonneReponse := 2
        question:
            Enonce := "The Tour de France is a race in which sport?"
            Reponses := array{"Motor racing", "Motorcycling", "Cycling", "Running"}
            BonneReponse := 2
        question:
            Enonce := "Which Japanese combat sport is practiced in a kimono with grips and belts?"
            Reponses := array{"Greco-Roman wrestling", "Fencing", "Judo", "Boxing"}
            BonneReponse := 2
        question:
            Enonce := "How many players make up a volleyball team on the court?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 0
        question:
            Enonce := "Which sport is played with a racket and a shuttlecock?"
            Reponses := array{"Table tennis", "Squash", "Tennis", "Badminton"}
            BonneReponse := 3
        question:
            Enonce := "Which boxer is nicknamed The Greatest?"
            Reponses := array{"Floyd Mayweather", "Mike Tyson", "Muhammad Ali", "Rocky Marciano"}
            BonneReponse := 2
        question:
            Enonce := "Which player guards the goal in football?"
            Reponses := array{"The goalkeeper", "The referee", "The forward", "The defender"}
            BonneReponse := 0
        question:
            Enonce := "Which legendary sport is played on the grass at Wimbledon?"
            Reponses := array{"Cricket", "Golf", "Tennis", "Polo"}
            BonneReponse := 2
        question:
            Enonce := "What is the approximate distance of a marathon?"
            Reponses := array{"21 km", "10 km", "100 km", "42 km"}
            BonneReponse := 3
        question:
            Enonce := "Which sport is practiced in water with breaststroke and crawl?"
            Reponses := array{"Swimming", "Sailing", "Diving", "Rowing"}
            BonneReponse := 0
        question:
            Enonce := "Which winter sport involves going down a snowy slope?"
            Reponses := array{"Skiing", "Curling", "Surfing", "Figure skating"}
            BonneReponse := 0
        question:
            Enonce := "How many points is an ordinary basket worth in basketball (outside the 3-point zone)?"
            Reponses := array{"1", "2", "5", "3"}
            BonneReponse := 1
        question:
            Enonce := "What sport does the American star Michael Jordan play?"
            Reponses := array{"Basketball", "Golf", "American football", "Baseball"}
            BonneReponse := 0
        question:
            Enonce := "Which sport is played with a stick and a puck on the ice?"
            Reponses := array{"Curling", "Ice hockey", "Bobsleigh", "Skating"}
            BonneReponse := 1
        question:
            Enonce := "In which city is the headquarters of the International Olympic Committee located?"
            Reponses := array{"Athens", "Geneva", "Lausanne", "Paris"}
            BonneReponse := 2
        question:
            Enonce := "Who is the king of the Greek gods, master of lightning?"
            Reponses := array{"Poseidon", "Zeus", "Hades", "Apollo"}
            BonneReponse := 1
        question:
            Enonce := "Which Greek god rules over the seas?"
            Reponses := array{"Hermes", "Ares", "Poseidon", "Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Which Greek hero has a heel as his only weak point?"
            Reponses := array{"Odysseus", "Theseus", "Perseus", "Achilles"}
            BonneReponse := 3
        question:
            Enonce := "Which Greek hero performed the twelve labours?"
            Reponses := array{"Odysseus", "Hercules", "Achilles", "Jason"}
            BonneReponse := 1
        question:
            Enonce := "Which creature with the body of a horse and the torso of a man exists in Greek mythology?"
            Reponses := array{"The mermaid", "The cyclops", "The minotaur", "The centaur"}
            BonneReponse := 3
        question:
            Enonce := "Which creature with a bull's head lives in the labyrinth?"
            Reponses := array{"The centaur", "The sphinx", "Medusa", "The Minotaur"}
            BonneReponse := 3
        question:
            Enonce := "Which Norse god of thunder wields a hammer?"
            Reponses := array{"Zeus", "Odin", "Thor", "Loki"}
            BonneReponse := 2
        question:
            Enonce := "Which legendary bird is reborn from its ashes?"
            Reponses := array{"The dragon", "The eagle", "The phoenix", "The griffin"}
            BonneReponse := 2
        question:
            Enonce := "Which Egyptian god has a jackal's head and presides over the dead?"
            Reponses := array{"Osiris", "Horus", "Ra", "Anubis"}
            BonneReponse := 3
        question:
            Enonce := "Which female creature has snakes instead of hair?"
            Reponses := array{"Pandora", "Aphrodite", "Athena", "Medusa"}
            BonneReponse := 3
        question:
            Enonce := "What is the sacred book of Islam?"
            Reponses := array{"The Vedas", "The Bible", "The Torah", "The Quran"}
            BonneReponse := 3
        question:
            Enonce := "What is the sacred book of Christians?"
            Reponses := array{"The Talmud", "The Bible", "The Quran", "The Torah"}
            BonneReponse := 1
        question:
            Enonce := "Which Greek goddess of wisdom gave her name to Athens?"
            Reponses := array{"Artemis", "Athena", "Hera", "Aphrodite"}
            BonneReponse := 1
        question:
            Enonce := "Which Roman god of war gave his name to a planet?"
            Reponses := array{"Mars", "Mercury", "Jupiter", "Neptune"}
            BonneReponse := 0
        question:
            Enonce := "How many heads does Cerberus, the dog of the Underworld, have?"
            Reponses := array{"1", "3", "2", "7"}
            BonneReponse := 1
        question:
            Enonce := "Which mythical king turned everything he touched into gold?"
            Reponses := array{"Midas", "Minos", "Croesus", "Tantalus"}
            BonneReponse := 0
        question:
            Enonce := "Which Greek messenger god wears winged sandals?"
            Reponses := array{"Hermes", "Ares", "Dionysus", "Apollo"}
            BonneReponse := 0
        question:
            Enonce := "Which Greek goddess represents love and beauty?"
            Reponses := array{"Demeter", "Athena", "Hera", "Aphrodite"}
            BonneReponse := 3
        question:
            Enonce := "Which Roman god is the equivalent of Zeus?"
            Reponses := array{"Mars", "Jupiter", "Neptune", "Pluto"}
            BonneReponse := 1
        question:
            Enonce := "Which half-woman, half-fish creature lures sailors with her song?"
            Reponses := array{"The gorgon", "The nymph", "The harpy", "The mermaid"}
            BonneReponse := 3
        question:
            Enonce := "Which religion is associated with the Torah and the Jewish people?"
            Reponses := array{"Buddhism", "Hinduism", "Islam", "Judaism"}
            BonneReponse := 3
        question:
            Enonce := "Which multi-headed monster, whose heads grow back, did Hercules face?"
            Reponses := array{"The kraken", "The chimera", "The sphinx", "The Hydra of Lerna"}
            BonneReponse := 3
        question:
            Enonce := "Which Greek god of the sun and the arts drives a chariot?"
            Reponses := array{"Cronus", "Hades", "Hephaestus", "Apollo"}
            BonneReponse := 3
        question:
            Enonce := "In Norse mythology, what is the realm of the gods called?"
            Reponses := array{"Midgard", "Asgard", "Valhalla", "Olympus"}
            BonneReponse := 1
        question:
            Enonce := "Which giant has only one eye in the middle of his forehead in the Odyssey?"
            Reponses := array{"The troll", "The cyclops", "The golem", "The titan"}
            BonneReponse := 1
        question:
            Enonce := "Which 1919 treaty officially ended the First World War?"
            Reponses := array{"The Treaty of Rome", "The Treaty of Tordesillas", "The Treaty of Versailles", "The Treaty of Vienna"}
            BonneReponse := 2
        question:
            Enonce := "Which Chinese dynasty built most of the present-day Great Wall?"
            Reponses := array{"The Tang", "The Ming", "The Qing", "The Han"}
            BonneReponse := 1
        question:
            Enonce := "Who was the first president of the French Fifth Republic?"
            Reponses := array{"Georges Pompidou", "Vincent Auriol", "Francois Mitterrand", "Charles de Gaulle"}
            BonneReponse := 3
        question:
            Enonce := "In what year did the Battle of Hastings take place?"
            Reponses := array{"1066", "1215", "987", "1453"}
            BonneReponse := 0
        question:
            Enonce := "Which Roman emperor legalized Christianity with the Edict of Milan (313)?"
            Reponses := array{"Trajan", "Constantine", "Augustus", "Nero"}
            BonneReponse := 1
        question:
            Enonce := "Which queen of Egypt allied with Julius Caesar and then Mark Antony?"
            Reponses := array{"Nefertiti", "Cleopatra", "Hatshepsut", "Theodora"}
            BonneReponse := 1
        question:
            Enonce := "In what year did the October Revolution take place in Russia?"
            Reponses := array{"1905", "1917", "1789", "1922"}
            BonneReponse := 1
        question:
            Enonce := "Which king of France was guillotined in 1793?"
            Reponses := array{"Louis XV", "Louis XIV", "Louis XVI", "Charles X"}
            BonneReponse := 2
        question:
            Enonce := "Which city was the capital of the Byzantine Empire?"
            Reponses := array{"Rome", "Alexandria", "Athens", "Constantinople"}
            BonneReponse := 3
        question:
            Enonce := "Which leader headed the USSR during the Second World War?"
            Reponses := array{"Khrushchev", "Lenin", "Gorbachev", "Joseph Stalin"}
            BonneReponse := 3
        question:
            Enonce := "In what year did women obtain the right to vote in France?"
            Reponses := array{"1968", "1944", "1900", "1918"}
            BonneReponse := 1
        question:
            Enonce := "Which Portuguese explorer reached India by sea in 1498?"
            Reponses := array{"Christopher Columbus", "Vasco da Gama", "Magellan", "Bartolomeu Dias"}
            BonneReponse := 1
        question:
            Enonce := "Which French emperor was defeated and captured at Sedan in 1870?"
            Reponses := array{"Louis-Philippe", "Napoleon I", "Charles X", "Napoleon III"}
            BonneReponse := 3
        question:
            Enonce := "Which pre-Columbian civilization dominated Peru before the Spanish?"
            Reponses := array{"The Mayas", "The Incas", "The Olmecs", "The Aztecs"}
            BonneReponse := 1
        question:
            Enonce := "Which young pharaoh has a famous golden funerary mask?"
            Reponses := array{"Akhenaten", "Ramesses II", "Cheops", "Tutankhamun"}
            BonneReponse := 3
        question:
            Enonce := "Which naval battle of 1805 saw the victory of Admiral Nelson?"
            Reponses := array{"Salamis", "Actium", "Trafalgar", "Lepanto"}
            BonneReponse := 2
        question:
            Enonce := "Which hero led the Expedition of the Thousand for Italian unity?"
            Reponses := array{"Mussolini", "Mazzini", "Cavour", "Garibaldi"}
            BonneReponse := 3
        question:
            Enonce := "Which sultan brought the Ottoman Empire to its peak in the 16th century?"
            Reponses := array{"Saladin", "Ataturk", "Mehmed II", "Suleiman the Magnificent"}
            BonneReponse := 3
        question:
            Enonce := "In what year did the United States declare its independence?"
            Reponses := array{"1776", "1789", "1620", "1812"}
            BonneReponse := 0
        question:
            Enonce := "Which English king founded the Anglican Church so he could divorce?"
            Reponses := array{"John Lackland", "Henry VIII", "William the Conqueror", "Richard the Lionheart"}
            BonneReponse := 1
        question:
            Enonce := "Which epidemic decimated Europe in the mid-14th century?"
            Reponses := array{"Smallpox", "Cholera", "The Black Death", "The Spanish flu"}
            BonneReponse := 2
        question:
            Enonce := "Which Gaulish chieftain resisted Caesar before surrendering at Alesia?"
            Reponses := array{"Brennus", "Asterix", "Ambiorix", "Vercingetorix"}
            BonneReponse := 3
        question:
            Enonce := "Which 1945 conference brought together Churchill, Roosevelt and Stalin?"
            Reponses := array{"Tehran", "Yalta", "Munich", "Potsdam"}
            BonneReponse := 1
        question:
            Enonce := "Which Christian military expedition aimed to retake Jerusalem in the Middle Ages?"
            Reponses := array{"The Reconquista", "The Thirty Years' War", "The Crusades", "The Hanseatic League"}
            BonneReponse := 2
        question:
            Enonce := "Which wall was built in 1961 to divide a German city?"
            Reponses := array{"The Maginot Line", "The Atlantic Wall", "The Berlin Wall", "Hadrian's Wall"}
            BonneReponse := 2
        question:
            Enonce := "What is the longest river in Europe?"
            Reponses := array{"The Danube", "The Rhine", "The Rhone", "The Volga"}
            BonneReponse := 3
        question:
            Enonce := "What is the capital of Australia?"
            Reponses := array{"Melbourne", "Sydney", "Perth", "Canberra"}
            BonneReponse := 3
        question:
            Enonce := "Which strait separates Europe from Africa?"
            Reponses := array{"The Bosphorus", "The Strait of Dover", "The Strait of Gibraltar", "The Bering Strait"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Canada?"
            Reponses := array{"Vancouver", "Montreal", "Ottawa", "Toronto"}
            BonneReponse := 2
        question:
            Enonce := "Which small kingdom is entirely enclosed within South Africa?"
            Reponses := array{"Botswana", "Swaziland", "Namibia", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Which canal connects the Mediterranean to the Red Sea?"
            Reponses := array{"The Corinth Canal", "The Suez Canal", "The Panama Canal", "The Kiel Canal"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest island in the world?"
            Reponses := array{"Madagascar", "Borneo", "New Guinea", "Greenland"}
            BonneReponse := 3
        question:
            Enonce := "Which canal connects the Atlantic Ocean to the Pacific Ocean in Central America?"
            Reponses := array{"The Canal du Midi", "The Panama Canal", "The Suez Canal", "The Strait of Magellan"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of Turkey?"
            Reponses := array{"Antalya", "Izmir", "Ankara", "Istanbul"}
            BonneReponse := 2
        question:
            Enonce := "Which city straddles both Europe and Asia?"
            Reponses := array{"Istanbul", "Athens", "Cairo", "Moscow"}
            BonneReponse := 0
        question:
            Enonce := "Which country has Brasilia as its capital?"
            Reponses := array{"Peru", "Brazil", "Argentina", "Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Which mountain range is home to Everest?"
            Reponses := array{"The Himalayas", "The Rockies", "The Caucasus", "The Andes"}
            BonneReponse := 0
        question:
            Enonce := "What is the smallest state in the world?"
            Reponses := array{"The Vatican", "Nauru", "Monaco", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "What is the longest continental mountain range in the world?"
            Reponses := array{"The Rockies", "The Himalayas", "The Andes", "The Alps"}
            BonneReponse := 2
        question:
            Enonce := "Which large cold desert stretches across Mongolia and China?"
            Reponses := array{"The Sahara", "The Atacama", "The Gobi", "The Kalahari"}
            BonneReponse := 2
        question:
            Enonce := "Which river flows through London?"
            Reponses := array{"The Severn", "The Thames", "The Mersey", "The Clyde"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of New Zealand?"
            Reponses := array{"Wellington", "Auckland", "Christchurch", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Which South American country is named after the imaginary line that crosses it?"
            Reponses := array{"Bolivia", "Chile", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "What is the capital of Argentina?"
            Reponses := array{"Lima", "Buenos Aires", "Santiago", "Montevideo"}
            BonneReponse := 1
        question:
            Enonce := "Which highest peak in Africa is located in Tanzania?"
            Reponses := array{"Mount Kenya", "The Atlas", "Kilimanjaro", "Mount Cameroon"}
            BonneReponse := 2
        question:
            Enonce := "Which inland sea in Central Asia has dramatically dried up?"
            Reponses := array{"Lake Baikal", "The Aral Sea", "The Caspian Sea", "The Dead Sea"}
            BonneReponse := 1
        question:
            Enonce := "How many capitals does South Africa have (administrative, legislative, judicial)?"
            Reponses := array{"4", "2", "3", "1"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Norway?"
            Reponses := array{"Copenhagen", "Stockholm", "Helsinki", "Oslo"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest freshwater lake in the world by surface area?"
            Reponses := array{"Lake Superior", "Lake Geneva", "Lake Baikal", "Lake Victoria"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the most pyramids in the world?"
            Reponses := array{"Sudan", "Egypt", "Mexico", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "What is the approximate speed of light in a vacuum?"
            Reponses := array{"30,000 km/s", "1,000 km/s", "3,000,000 km/s", "300,000 km/s"}
            BonneReponse := 3
        question:
            Enonce := "Which scientist discovered penicillin?"
            Reponses := array{"Alexander Fleming", "Robert Koch", "Louis Pasteur", "Jonas Salk"}
            BonneReponse := 0
        question:
            Enonce := "What is the most abundant metal in the Earth's crust?"
            Reponses := array{"Copper", "Gold", "Aluminium", "Iron"}
            BonneReponse := 2
        question:
            Enonce := "What is the chemical symbol for potassium?"
            Reponses := array{"Pt", "K", "Po", "P"}
            BonneReponse := 1
        question:
            Enonce := "What is the unit of measurement for electrical power?"
            Reponses := array{"The volt", "The ampere", "The joule", "The watt"}
            BonneReponse := 3
        question:
            Enonce := "Which noble gas makes neon signs glow red?"
            Reponses := array{"Neon", "Argon", "Krypton", "Helium"}
            BonneReponse := 0
        question:
            Enonce := "Which physical principle explains why bodies float?"
            Reponses := array{"The Doppler effect", "Newton's law", "Archimedes' principle", "Ohm's law"}
            BonneReponse := 2
        question:
            Enonce := "What is the lightest chemical element?"
            Reponses := array{"Hydrogen", "Carbon", "Helium", "Oxygen"}
            BonneReponse := 0
        question:
            Enonce := "Which acid is present in the human stomach?"
            Reponses := array{"Acetic acid", "Hydrochloric acid", "Citric acid", "Sulfuric acid"}
            BonneReponse := 1
        question:
            Enonce := "What is the unit of measurement for frequency?"
            Reponses := array{"The watt", "The newton", "The decibel", "The hertz"}
            BonneReponse := 3
        question:
            Enonce := "Which scientist received two Nobel Prizes for her work on radioactivity?"
            Reponses := array{"Rosalind Franklin", "Ada Lovelace", "Marie Curie", "Lise Meitner"}
            BonneReponse := 2
        question:
            Enonce := "What is the direct change from solid to gas called?"
            Reponses := array{"Sublimation", "Melting", "Condensation", "Evaporation"}
            BonneReponse := 0
        question:
            Enonce := "What is the chemical formula of table salt?"
            Reponses := array{"H2SO4", "KCl", "NaCl", "CaCO3"}
            BonneReponse := 2
        question:
            Enonce := "Which solar radiation causes sunburn?"
            Reponses := array{"Microwaves", "Ultraviolet rays", "Infrared rays", "X-rays"}
            BonneReponse := 1
        question:
            Enonce := "What is the unit of measurement for electrical resistance?"
            Reponses := array{"The tesla", "The ohm", "The ampere", "The farad"}
            BonneReponse := 1
        question:
            Enonce := "About how many elements does the periodic table contain?"
            Reponses := array{"About 118", "About 80", "About 200", "About 50"}
            BonneReponse := 0
        question:
            Enonce := "Which main component is used to make glass?"
            Reponses := array{"Clay", "Lead", "Silica (sand)", "Pure limestone"}
            BonneReponse := 2
        question:
            Enonce := "What is the chemical symbol for silver?"
            Reponses := array{"Au", "Ag", "Ar", "Si"}
            BonneReponse := 1
        question:
            Enonce := "Which particle in the atomic nucleus has a positive charge?"
            Reponses := array{"The proton", "The electron", "The neutron", "The photon"}
            BonneReponse := 0
        question:
            Enonce := "Which scientist stated the three fundamental laws of motion?"
            Reponses := array{"Isaac Newton", "Einstein", "Kepler", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Which glass object splits white light into colors?"
            Reponses := array{"The mirror", "The lens", "The prism", "The filter"}
            BonneReponse := 2
        question:
            Enonce := "Which reaction releases the energy of a nuclear power plant?"
            Reponses := array{"Electrolysis", "Fermentation", "Uranium fission", "Coal combustion"}
            BonneReponse := 2
        question:
            Enonce := "Which greenhouse gas is massively emitted by petrol engines?"
            Reponses := array{"Oxygen", "Nitrogen", "Carbon dioxide", "Ozone"}
            BonneReponse := 2
        question:
            Enonce := "Which quantity is measured in pascals?"
            Reponses := array{"Temperature", "Pressure", "Speed", "Mass"}
            BonneReponse := 1
        question:
            Enonce := "What is the chemical symbol for carbon?"
            Reponses := array{"C", "Ca", "Cr", "Co"}
            BonneReponse := 0
        question:
            Enonce := "How many bones are there in the skeleton of an adult human?"
            Reponses := array{"206", "150", "250", "300"}
            BonneReponse := 0
        question:
            Enonce := "Which scientist formulated the theory of evolution by natural selection?"
            Reponses := array{"Gregor Mendel", "Louis Pasteur", "Charles Darwin", "Carl Linnaeus"}
            BonneReponse := 2
        question:
            Enonce := "Which molecule carries genetic information?"
            Reponses := array{"DNA", "Glucose", "Hemoglobin", "Collagen"}
            BonneReponse := 0
        question:
            Enonce := "How many chromosomes does a human cell have?"
            Reponses := array{"46", "23", "64", "48"}
            BonneReponse := 0
        question:
            Enonce := "Which blood type is called the universal donor?"
            Reponses := array{"AB positive", "A positive", "O negative", "B negative"}
            BonneReponse := 2
        question:
            Enonce := "Which blood type is called the universal recipient?"
            Reponses := array{"O negative", "A negative", "B positive", "AB positive"}
            BonneReponse := 3
        question:
            Enonce := "Which part of the eye contains the light-sensitive cells?"
            Reponses := array{"The cornea", "The retina", "The lens", "The iris"}
            BonneReponse := 1
        question:
            Enonce := "Which organ produces bile?"
            Reponses := array{"The stomach", "The pancreas", "The liver", "The spleen"}
            BonneReponse := 2
        question:
            Enonce := "What is the smallest bone in the human body?"
            Reponses := array{"The coccyx", "The stapes (ear)", "The kneecap", "The phalanx"}
            BonneReponse := 1
        question:
            Enonce := "Which gland located in the neck regulates metabolism?"
            Reponses := array{"The pituitary gland", "The thyroid", "The pancreas", "The spleen"}
            BonneReponse := 1
        question:
            Enonce := "How many pairs of ribs does a human have?"
            Reponses := array{"10", "12", "14", "8"}
            BonneReponse := 1
        question:
            Enonce := "Which scientist discovered the blood groups?"
            Reponses := array{"Edward Jenner", "Karl Landsteiner", "Alexander Fleming", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Which mammal lays eggs and lives in Australia?"
            Reponses := array{"The koala", "The wombat", "The kangaroo", "The platypus"}
            BonneReponse := 3
        question:
            Enonce := "Which part of the brain controls balance and coordination?"
            Reponses := array{"The hypothalamus", "The cortex", "The cerebellum", "The medulla"}
            BonneReponse := 2
        question:
            Enonce := "Which process allows green plants to produce their energy?"
            Reponses := array{"Respiration", "Photosynthesis", "Fermentation", "Digestion"}
            BonneReponse := 1
        question:
            Enonce := "Reptiles are animals with blood that is..."
            Reponses := array{"lukewarm", "warm", "cold", "nonexistent"}
            BonneReponse := 2
        question:
            Enonce := "Which is the thigh bone, also the longest in the body?"
            Reponses := array{"The tibia", "The femur", "The radius", "The humerus"}
            BonneReponse := 1
        question:
            Enonce := "Which cell transmits nerve impulses?"
            Reponses := array{"The white blood cell", "The osteocyte", "The neuron", "The platelet"}
            BonneReponse := 2
        question:
            Enonce := "Which organ stores urine before it is expelled?"
            Reponses := array{"The liver", "The bladder", "The ureter", "The kidney"}
            BonneReponse := 1
        question:
            Enonce := "About what volume of blood circulates in an adult?"
            Reponses := array{"About 1 liter", "About 10 liters", "About 5 liters", "About 20 liters"}
            BonneReponse := 2
        question:
            Enonce := "Which vitamin prevents scurvy?"
            Reponses := array{"Vitamin A", "Vitamin C", "Vitamin D", "Vitamin K"}
            BonneReponse := 1
        question:
            Enonce := "Which is the largest muscle in the human body?"
            Reponses := array{"The calf", "The biceps", "The heart", "The gluteus maximus"}
            BonneReponse := 3
        question:
            Enonce := "What is the basic unit of every living being?"
            Reponses := array{"The atom", "The organ", "The molecule", "The cell"}
            BonneReponse := 3
        question:
            Enonce := "Which scientist monk discovered the laws of heredity using peas?"
            Reponses := array{"Darwin", "Gregor Mendel", "Lamarck", "Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Which human organ can largely regenerate after partial removal?"
            Reponses := array{"The heart", "The liver", "The brain", "The kidney"}
            BonneReponse := 1
        question:
            Enonce := "Which bird reaches the highest speed in a dive?"
            Reponses := array{"The ostrich", "The golden eagle", "The swift", "The peregrine falcon"}
            BonneReponse := 3
        question:
            Enonce := "About how long does an elephant's gestation last?"
            Reponses := array{"9 months", "22 months", "6 months", "12 months"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest living reptile today?"
            Reponses := array{"The leatherback turtle", "The saltwater crocodile", "The anaconda", "The Komodo dragon"}
            BonneReponse := 1
        question:
            Enonce := "How many hearts does an octopus have?"
            Reponses := array{"2", "3", "5", "1"}
            BonneReponse := 1
        question:
            Enonce := "Which large flightless Australian bird resembles the ostrich?"
            Reponses := array{"The kiwi", "The penguin", "The cassowary", "The emu"}
            BonneReponse := 3
        question:
            Enonce := "Which is the tallest tree in the world?"
            Reponses := array{"The oak", "The baobab", "The sequoia", "The eucalyptus"}
            BonneReponse := 2
        question:
            Enonce := "Which Amazonian snake is the most massive in the world?"
            Reponses := array{"The python", "The anaconda", "The black mamba", "The king cobra"}
            BonneReponse := 1
        question:
            Enonce := "Which insect builds a termite mound?"
            Reponses := array{"The wasp", "The ant", "The bee", "The termite"}
            BonneReponse := 3
        question:
            Enonce := "Which male marine mammal sings long songs?"
            Reponses := array{"The walrus", "The humpback whale", "The shark", "The otter"}
            BonneReponse := 1
        question:
            Enonce := "Which carnivorous plant snaps its traps shut on insects?"
            Reponses := array{"The Venus flytrap", "The cactus", "The ivy", "The water lily"}
            BonneReponse := 0
        question:
            Enonce := "Which seabird has the largest wingspan?"
            Reponses := array{"The albatross", "The pelican", "The cormorant", "The eagle"}
            BonneReponse := 0
        question:
            Enonce := "Which red-haired great ape lives in the forests of Asia?"
            Reponses := array{"The orangutan", "The chimpanzee", "The gorilla", "The gibbon"}
            BonneReponse := 0
        question:
            Enonce := "Which prized underground mushroom is sought out by dogs?"
            Reponses := array{"The truffle", "The chanterelle", "The button mushroom", "The porcini"}
            BonneReponse := 0
        question:
            Enonce := "Which bird lays the largest egg in the world?"
            Reponses := array{"The condor", "The eagle", "The ostrich", "The emperor penguin"}
            BonneReponse := 2
        question:
            Enonce := "Which Australian jellyfish is one of the most venomous animals?"
            Reponses := array{"The Portuguese man o' war", "The moon jellyfish", "The mauve stinger", "The box jellyfish"}
            BonneReponse := 3
        question:
            Enonce := "Which animal can find its way at night using echolocation?"
            Reponses := array{"The fox", "The owl", "The bat", "The cat"}
            BonneReponse := 2
        question:
            Enonce := "Which bear lives in the Arctic regions?"
            Reponses := array{"The brown bear", "The black bear", "The polar bear", "The panda"}
            BonneReponse := 2
        question:
            Enonce := "Which fish changes sex during its life?"
            Reponses := array{"The sardine", "The tuna", "The shark", "The clownfish"}
            BonneReponse := 3
        question:
            Enonce := "Which tree appears on the flag of Canada?"
            Reponses := array{"The oak", "The maple", "The birch", "The pine"}
            BonneReponse := 1
        question:
            Enonce := "Which bee lays the eggs in a hive?"
            Reponses := array{"The forager", "The queen", "The drone", "The worker"}
            BonneReponse := 1
        question:
            Enonce := "Which reptile smells odors with its forked tongue?"
            Reponses := array{"The snake", "The turtle", "The gecko", "The crocodile"}
            BonneReponse := 0
        question:
            Enonce := "What is the life expectancy of a giant tortoise?"
            Reponses := array{"About 20 years", "About 50 years", "More than 100 years", "About 10 years"}
            BonneReponse := 2
        question:
            Enonce := "Which animal has the longest neck?"
            Reponses := array{"The llama", "The swan", "The giraffe", "The ostrich"}
            BonneReponse := 2
        question:
            Enonce := "Which bird is famous for imitating human speech?"
            Reponses := array{"The nightingale", "The pigeon", "The parrot", "The sparrow"}
            BonneReponse := 2
        question:
            Enonce := "Where does ivory, the material of tusks, mainly come from?"
            Reponses := array{"The wild boar", "The rhinoceros", "The whale", "The elephant"}
            BonneReponse := 3
        question:
            Enonce := "Which is the hottest planet in the solar system?"
            Reponses := array{"Venus", "Jupiter", "Mercury", "Mars"}
            BonneReponse := 0
        question:
            Enonce := "How many moons does the planet Mars have?"
            Reponses := array{"0", "2", "4", "1"}
            BonneReponse := 1
        question:
            Enonce := "Which is the closest star to our Sun?"
            Reponses := array{"Proxima Centauri", "the North Star", "Sirius", "Betelgeuse"}
            BonneReponse := 0
        question:
            Enonce := "Which mission landed the first men on the Moon?"
            Reponses := array{"Gemini 4", "Apollo 11", "Apollo 13", "Soyuz 1"}
            BonneReponse := 1
        question:
            Enonce := "Which planet rotates practically lying on its side?"
            Reponses := array{"Uranus", "Saturn", "Venus", "Neptune"}
            BonneReponse := 0
        question:
            Enonce := "Which is the largest moon in the solar system?"
            Reponses := array{"Europa", "Ganymede", "Titan", "The Moon"}
            BonneReponse := 1
        question:
            Enonce := "What is the explosion of a massive star at the end of its life called?"
            Reponses := array{"A comet", "A supernova", "An eclipse", "A nebula"}
            BonneReponse := 1
        question:
            Enonce := "Which object has gravity so strong that not even light can escape it?"
            Reponses := array{"A cold quasar", "A dwarf planet", "A black hole", "A shooting star"}
            BonneReponse := 2
        question:
            Enonce := "Which planet hosts the Great Red Spot, a giant storm?"
            Reponses := array{"Neptune", "Mars", "Jupiter", "Saturn"}
            BonneReponse := 2
        question:
            Enonce := "Which probe launched in 1977 has left the solar system?"
            Reponses := array{"Apollo 17", "Sputnik", "Voyager 1", "Cassini"}
            BonneReponse := 2
        question:
            Enonce := "Which astronomer argued that the Earth revolves around the Sun?"
            Reponses := array{"Aristotle", "Newton", "Ptolemy", "Copernicus"}
            BonneReponse := 3
        question:
            Enonce := "Which is the farthest planet from the Sun?"
            Reponses := array{"Uranus", "Pluto", "Saturn", "Neptune"}
            BonneReponse := 3
        question:
            Enonce := "How long does sunlight take to reach the Earth?"
            Reponses := array{"About 1 hour", "About 8 minutes", "About 1 second", "About 1 day"}
            BonneReponse := 1
        question:
            Enonce := "Which space telescope succeeded Hubble in 2021?"
            Reponses := array{"James Webb", "Galileo", "Spitzer", "Kepler"}
            BonneReponse := 0
        question:
            Enonce := "Which celestial body was reclassified as a dwarf planet in 2006?"
            Reponses := array{"Pluto", "Charon", "Titan", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Which Soviet dog was the first animal to orbit the Earth?"
            Reponses := array{"Rex", "Belka", "Laika", "Strelka"}
            BonneReponse := 2
        question:
            Enonce := "Which layer of the atmosphere protects us from ultraviolet rays?"
            Reponses := array{"The ozone layer", "The mesosphere", "The troposphere", "The ionosphere"}
            BonneReponse := 0
        question:
            Enonce := "Which is the second planet from the Sun?"
            Reponses := array{"Mercury", "Mars", "Earth", "Venus"}
            BonneReponse := 3
        question:
            Enonce := "What are comets mainly composed of?"
            Reponses := array{"Pure iron", "Burning gases", "Volcanic rock", "Ice and dust"}
            BonneReponse := 3
        question:
            Enonce := "Which rocky belt lies between Mars and Jupiter?"
            Reponses := array{"The rings of Saturn", "The Oort cloud", "The Kuiper belt", "The asteroid belt"}
            BonneReponse := 3
        question:
            Enonce := "Which luminous phenomenon colours the sky near the poles?"
            Reponses := array{"Lightning", "The polar auroras", "Mirages", "Rainbows"}
            BonneReponse := 1
        question:
            Enonce := "Which planet has the longest day (rotation)?"
            Reponses := array{"Mercury", "Jupiter", "Venus", "Earth"}
            BonneReponse := 2
        question:
            Enonce := "What is a rock from space that has fallen to Earth called?"
            Reponses := array{"A comet", "A meteorite", "An asteroid", "A nebula"}
            BonneReponse := 1
        question:
            Enonce := "Which first artificial satellite was launched by the USSR in 1957?"
            Reponses := array{"Explorer 1", "Sputnik", "Vostok", "Telstar"}
            BonneReponse := 1
        question:
            Enonce := "Which neighbouring galaxy is visible to the naked eye from Earth?"
            Reponses := array{"the Sombrero", "Triangulum", "Andromeda", "the Whirlpool"}
            BonneReponse := 2
        question:
            Enonce := "Which painter co-founded Cubism alongside Picasso?"
            Reponses := array{"Henri Matisse", "Marc Chagall", "Paul Cezanne", "Georges Braque"}
            BonneReponse := 3
        question:
            Enonce := "Which architect designed the Sagrada Familia basilica in Barcelona?"
            Reponses := array{"Renzo Piano", "Antoni Gaudi", "Le Corbusier", "Gustave Eiffel"}
            BonneReponse := 1
        question:
            Enonce := "Which artistic movement, exemplified by Dali, explores dreams and the unconscious?"
            Reponses := array{"Surrealism", "Realism", "Impressionism", "Cubism"}
            BonneReponse := 0
        question:
            Enonce := "Who painted Girl with a Pearl Earring?"
            Reponses := array{"Johannes Vermeer", "Rubens", "Rembrandt", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Which pop artist painted the Campbell's soup cans?"
            Reponses := array{"Jackson Pollock", "Andy Warhol", "Keith Haring", "Roy Lichtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Which Dutch painter created The Night Watch?"
            Reponses := array{"Mondrian", "Vermeer", "Van Gogh", "Rembrandt"}
            BonneReponse := 3
        question:
            Enonce := "Which fresco by Leonardo da Vinci depicts Christ's last meal?"
            Reponses := array{"The Creation of Adam", "The School of Athens", "The Last Supper", "The Last Judgement"}
            BonneReponse := 2
        question:
            Enonce := "Which Spanish painter created Las Meninas?"
            Reponses := array{"Murillo", "Diego Velazquez", "El Greco", "Goya"}
            BonneReponse := 1
        question:
            Enonce := "Which great Madrid museum houses Goya and Velazquez?"
            Reponses := array{"The Uffizi", "The Guggenheim", "The Prado", "The Reina Sofia"}
            BonneReponse := 2
        question:
            Enonce := "Who painted Liberty Leading the People?"
            Reponses := array{"Eugene Delacroix", "Courbet", "Jacques-Louis David", "Gericault"}
            BonneReponse := 0
        question:
            Enonce := "Which medieval architectural style is recognized by its flying buttresses and stained glass?"
            Reponses := array{"Romanesque", "Baroque", "Art Deco", "Gothic"}
            BonneReponse := 3
        question:
            Enonce := "Which painter created many canvases of water lilies in his garden at Giverny?"
            Reponses := array{"Sisley", "Pissarro", "Renoir", "Claude Monet"}
            BonneReponse := 3
        question:
            Enonce := "Which Mexican artist is famous for her intense self-portraits?"
            Reponses := array{"Georgia O'Keeffe", "Niki de Saint Phalle", "Frida Kahlo", "Tamara de Lempicka"}
            BonneReponse := 2
        question:
            Enonce := "Which Impressionist painter often depicted ballet dancers?"
            Reponses := array{"Edgar Degas", "Caillebotte", "Monet", "Manet"}
            BonneReponse := 0
        question:
            Enonce := "Which winged Greek statue, headless and armless, stands in the Louvre?"
            Reponses := array{"The Discobolus", "The Venus de Milo", "The Winged Victory of Samothrace", "The Pieta"}
            BonneReponse := 2
        question:
            Enonce := "Which early 20th-century movement, led by Matisse, uses vivid colours?"
            Reponses := array{"Dadaism", "Cubism", "Fauvism", "Pointillism"}
            BonneReponse := 2
        question:
            Enonce := "Which Italian city is considered the cradle of the Renaissance?"
            Reponses := array{"Florence", "Rome", "Milan", "Venice"}
            BonneReponse := 0
        question:
            Enonce := "Which alloy of copper and tin is used to cast statues?"
            Reponses := array{"Steel", "Brass", "Bronze", "Pure tin"}
            BonneReponse := 2
        question:
            Enonce := "Which highly ornate and theatrical style dominates 17th-century art?"
            Reponses := array{"Baroque", "Minimalism", "Gothic", "Cubism"}
            BonneReponse := 0
        question:
            Enonce := "Which famous clock tower stands in London?"
            Reponses := array{"Big Ben", "The Kremlin", "The Tower of Pisa", "The Giralda"}
            BonneReponse := 0
        question:
            Enonce := "Who painted the ceiling of the Sistine Chapel?"
            Reponses := array{"Raphael", "Caravaggio", "Michelangelo", "Leonardo da Vinci"}
            BonneReponse := 2
        question:
            Enonce := "Which Dutch post-Impressionist painter created The Potato Eaters?"
            Reponses := array{"Vermeer", "Mondrian", "Rembrandt", "Vincent van Gogh"}
            BonneReponse := 3
        question:
            Enonce := "Which geometric movement of black lines and primary colours is linked to Mondrian?"
            Reponses := array{"Baroque", "Realism", "Rococo", "De Stijl"}
            BonneReponse := 3
        question:
            Enonce := "Which Italian Renaissance sculptor created a bronze David?"
            Reponses := array{"Cellini", "Donatello", "Canova", "Bernini"}
            BonneReponse := 1
        question:
            Enonce := "Which modern Franco-Swiss architect theorized the Radiant City?"
            Reponses := array{"Gaudi", "Gustave Eiffel", "Frank Lloyd Wright", "Le Corbusier"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Crime and Punishment?"
            Reponses := array{"Fyodor Dostoevsky", "Tolstoy", "Chekhov", "Gogol"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote In Search of Lost Time?"
            Reponses := array{"Marcel Proust", "Flaubert", "Gide", "Camus"}
            BonneReponse := 0
        question:
            Enonce := "Which author created the detective Hercule Poirot?"
            Reponses := array{"Georges Simenon", "Agatha Christie", "Conan Doyle", "Patricia Highsmith"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote The Stranger?"
            Reponses := array{"Albert Camus", "Andre Malraux", "Jean-Paul Sartre", "Boris Vian"}
            BonneReponse := 0
        question:
            Enonce := "Which poet wrote The Drunken Boat?"
            Reponses := array{"Arthur Rimbaud", "Paul Verlaine", "Baudelaire", "Mallarme"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote War and Peace?"
            Reponses := array{"Solzhenitsyn", "Leo Tolstoy", "Pushkin", "Dostoevsky"}
            BonneReponse := 1
        question:
            Enonce := "Which French playwright wrote The Misanthrope?"
            Reponses := array{"Racine", "Moliere", "Corneille", "Beaumarchais"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Pride and Prejudice?"
            Reponses := array{"Jane Austen", "Virginia Woolf", "Mary Shelley", "Charlotte Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Which author wrote One Hundred Years of Solitude?"
            Reponses := array{"Mario Vargas Llosa", "Jorge Luis Borges", "Gabriel Garcia Marquez", "Pablo Neruda"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Old Man and the Sea?"
            Reponses := array{"Fitzgerald", "Steinbeck", "Faulkner", "Ernest Hemingway"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote the play Waiting for Godot?"
            Reponses := array{"Sartre", "Samuel Beckett", "Brecht", "Ionesco"}
            BonneReponse := 1
        question:
            Enonce := "Which philosopher wrote The Social Contract?"
            Reponses := array{"Diderot", "Voltaire", "Montesquieu", "Jean-Jacques Rousseau"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Red and the Black?"
            Reponses := array{"Zola", "Stendhal", "Flaubert", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Which Prague writer wrote The Metamorphosis and The Trial?"
            Reponses := array{"Thomas Mann", "Franz Kafka", "Hermann Hesse", "Robert Musil"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Dracula?"
            Reponses := array{"H.P. Lovecraft", "Mary Shelley", "Edgar Allan Poe", "Bram Stoker"}
            BonneReponse := 3
        question:
            Enonce := "Which author wrote Journey to the End of the Night?"
            Reponses := array{"Marcel Ayme", "Georges Bernanos", "Romain Gary", "Louis-Ferdinand Celine"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote the saga A Song of Ice and Fire (Game of Thrones)?"
            Reponses := array{"Robert Jordan", "George R.R. Martin", "Patrick Rothfuss", "J.R.R. Tolkien"}
            BonneReponse := 1
        question:
            Enonce := "Which Italian writer wrote The Name of the Rose?"
            Reponses := array{"Umberto Eco", "Alberto Moravia", "Primo Levi", "Italo Calvino"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Madame Bovary?"
            Reponses := array{"Maupassant", "Balzac", "Gustave Flaubert", "Zola"}
            BonneReponse := 2
        question:
            Enonce := "Which poet wrote Tomorrow, at Dawn?"
            Reponses := array{"Victor Hugo", "Vigny", "Lamartine", "Musset"}
            BonneReponse := 0
        question:
            Enonce := "Which British author wrote the original James Bond novels?"
            Reponses := array{"Ian Fleming", "Graham Greene", "John le Carre", "Frederick Forsyth"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Anna Karenina?"
            Reponses := array{"Leo Tolstoy", "Chekhov", "Dostoevsky", "Turgenev"}
            BonneReponse := 0
        question:
            Enonce := "Which author wrote Empire of the Ants and The Thanatonauts?"
            Reponses := array{"Guillaume Musso", "Michel Houellebecq", "Bernard Werber", "Marc Levy"}
            BonneReponse := 2
        question:
            Enonce := "Which Enlightenment philosopher wrote the tale Candide?"
            Reponses := array{"Kant", "Voltaire", "Rousseau", "Spinoza"}
            BonneReponse := 1
        question:
            Enonce := "Which Shakespeare tragedy features a Scottish king and three witches?"
            Reponses := array{"Othello", "King Lear", "Macbeth", "Hamlet"}
            BonneReponse := 2
        question:
            Enonce := "Which Italian composer wrote The Four Seasons?"
            Reponses := array{"Puccini", "Verdi", "Rossini", "Antonio Vivaldi"}
            BonneReponse := 3
        question:
            Enonce := "Which band performed Bohemian Rhapsody?"
            Reponses := array{"Led Zeppelin", "Deep Purple", "Queen", "The Who"}
            BonneReponse := 2
        question:
            Enonce := "Which great German composer became deaf at the end of his life?"
            Reponses := array{"Handel", "Ludwig van Beethoven", "Schubert", "Brahms"}
            BonneReponse := 1
        question:
            Enonce := "Which instrument does the famous Yo-Yo Ma play?"
            Reponses := array{"The violin", "The piano", "The flute", "The cello"}
            BonneReponse := 3
        question:
            Enonce := "Which French composer wrote the opera Carmen?"
            Reponses := array{"Georges Bizet", "Gounod", "Saint-Saens", "Berlioz"}
            BonneReponse := 0
        question:
            Enonce := "How many symphonies did Beethoven compose?"
            Reponses := array{"7", "9", "12", "5"}
            BonneReponse := 1
        question:
            Enonce := "Which Swedish group sang Dancing Queen?"
            Reponses := array{"ABBA", "Roxette", "Europe", "Ace of Base"}
            BonneReponse := 0
        question:
            Enonce := "Which Russian composer wrote the ballet Swan Lake?"
            Reponses := array{"Tchaikovsky", "Rachmaninoff", "Prokofiev", "Stravinsky"}
            BonneReponse := 0
        question:
            Enonce := "Which keyboard instrument is the ancestor of the piano?"
            Reponses := array{"The organ", "The accordion", "The harpsichord", "The synthesizer"}
            BonneReponse := 2
        question:
            Enonce := "Which American singer is nicknamed Queen B?"
            Reponses := array{"Rihanna", "Lady Gaga", "Beyonce", "Madonna"}
            BonneReponse := 2
        question:
            Enonce := "Which Mozart opera is titled The Magic...?"
            Reponses := array{"The Marriage of Figaro", "Cosi fan tutte", "Don Giovanni", "The Magic Flute"}
            BonneReponse := 3
        question:
            Enonce := "Which Polish composer is famous for his piano nocturnes?"
            Reponses := array{"Schumann", "Frederic Chopin", "Debussy", "Liszt"}
            BonneReponse := 1
        question:
            Enonce := "Which Italian term indicates a fast, lively tempo?"
            Reponses := array{"Lento", "Allegro", "Largo", "Adagio"}
            BonneReponse := 1
        question:
            Enonce := "Which Scottish instrument has a bag and pipes?"
            Reponses := array{"The bagpipes", "The accordion", "The oboe", "The pan flute"}
            BonneReponse := 0
        question:
            Enonce := "Which family of instruments includes the flute, oboe and clarinet?"
            Reponses := array{"The percussion", "The brass", "The strings", "The woodwinds"}
            BonneReponse := 3
        question:
            Enonce := "Which British band released the album The Dark Side of the Moon?"
            Reponses := array{"Pink Floyd", "The Beatles", "Genesis", "The Rolling Stones"}
            BonneReponse := 0
        question:
            Enonce := "Which French composer wrote the Bolero?"
            Reponses := array{"Erik Satie", "Claude Debussy", "Maurice Ravel", "Camille Saint-Saens"}
            BonneReponse := 2
        question:
            Enonce := "Which male voice is the lowest?"
            Reponses := array{"The countertenor", "The bass", "The baritone", "The tenor"}
            BonneReponse := 1
        question:
            Enonce := "Which Jamaican singer popularized reggae around the world?"
            Reponses := array{"Shaggy", "Jimmy Cliff", "Peter Tosh", "Bob Marley"}
            BonneReponse := 3
        question:
            Enonce := "Which musical genre blending blues and country was popularized by Elvis Presley?"
            Reponses := array{"Jazz", "Rock'n'roll", "Funk", "Soul"}
            BonneReponse := 1
        question:
            Enonce := "Which composer wrote the piece Turkish March?"
            Reponses := array{"Mozart", "Liszt", "Beethoven", "Schubert"}
            BonneReponse := 0
        question:
            Enonce := "At what frequency is the reference A usually tuned?"
            Reponses := array{"440 Hz", "100 Hz", "880 Hz", "220 Hz"}
            BonneReponse := 0
        question:
            Enonce := "Which musical style was born in the New York Bronx with rap and DJing?"
            Reponses := array{"Hip-hop", "Disco", "Pop", "Techno"}
            BonneReponse := 0
        question:
            Enonce := "Which German Baroque composer wrote Messiah and Music for the Royal Fireworks?"
            Reponses := array{"Vivaldi", "Handel", "Telemann", "Bach"}
            BonneReponse := 1
        question:
            Enonce := "Which electric instrument is emblematic of Jimi Hendrix's playing?"
            Reponses := array{"The electric guitar", "The drums", "The bass", "The synthesizer"}
            BonneReponse := 0
        question:
            Enonce := "Which director made Pulp Fiction?"
            Reponses := array{"Coen", "Martin Scorsese", "David Lynch", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Which South Korean film won the Oscar for Best Picture in 2020?"
            Reponses := array{"Old Boy", "Burning", "Train to Busan", "Parasite"}
            BonneReponse := 3
        question:
            Enonce := "Which director is nicknamed the master of suspense (Psycho)?"
            Reponses := array{"Stanley Kubrick", "Brian De Palma", "Alfred Hitchcock", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Which Peter Jackson trilogy adapts Tolkien's work?"
            Reponses := array{"Harry Potter", "The Lord of the Rings", "Game of Thrones", "Star Wars"}
            BonneReponse := 1
        question:
            Enonce := "Which actor plays the pirate Jack Sparrow?"
            Reponses := array{"Brad Pitt", "Orlando Bloom", "Johnny Depp", "Russell Crowe"}
            BonneReponse := 2
        question:
            Enonce := "Which 1999 science-fiction film offers a red pill?"
            Reponses := array{"The Matrix", "Terminator", "Blade Runner", "Tron"}
            BonneReponse := 0
        question:
            Enonce := "Which Japanese studio made Spirited Away?"
            Reponses := array{"Toei", "Pixar", "Studio Ghibli", "Madhouse"}
            BonneReponse := 2
        question:
            Enonce := "Which Francis Ford Coppola film tells the story of an Italian-American mafia family?"
            Reponses := array{"Casino", "Scarface", "The Godfather", "Goodfellas"}
            BonneReponse := 2
        question:
            Enonce := "Which Pixar animated film depicts the emotions inside a girl's head?"
            Reponses := array{"Up", "Coco", "Inside Out", "Ratatouille"}
            BonneReponse := 2
        question:
            Enonce := "Which director made Inception and Interstellar?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Which DC Comics character is Batman's clown enemy?"
            Reponses := array{"Bane", "Lex Luthor", "The Joker", "The Penguin"}
            BonneReponse := 2
        question:
            Enonce := "Which French silent film won the Oscar for Best Picture in 2012?"
            Reponses := array{"The Intouchables", "Blue Is the Warmest Colour", "Amelie", "The Artist"}
            BonneReponse := 3
        question:
            Enonce := "Which actress plays Hermione in the Harry Potter saga?"
            Reponses := array{"Emma Watson", "Keira Knightley", "Emma Stone", "Anna Kendrick"}
            BonneReponse := 0
        question:
            Enonce := "Which Austrian actor, action film star, became governor of California?"
            Reponses := array{"Arnold Schwarzenegger", "Jean-Claude Van Damme", "Sylvester Stallone", "Dolph Lundgren"}
            BonneReponse := 0
        question:
            Enonce := "Which 1994 film follows a naive man through American history?"
            Reponses := array{"Dead Poets Society", "Big", "Rain Man", "Forrest Gump"}
            BonneReponse := 3
        question:
            Enonce := "Which Kubrick film features the computer HAL 9000?"
            Reponses := array{"Solaris", "The Shining", "A Clockwork Orange", "2001: A Space Odyssey"}
            BonneReponse := 3
        question:
            Enonce := "Which French actress won an Oscar for her role as Edith Piaf?"
            Reponses := array{"Juliette Binoche", "Marion Cotillard", "Isabelle Adjani", "Audrey Tautou"}
            BonneReponse := 1
        question:
            Enonce := "Which actor plays Iron Man in the Marvel Cinematic Universe?"
            Reponses := array{"Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"}
            BonneReponse := 2
        question:
            Enonce := "Which 2009 James Cameron film takes place on the planet Pandora?"
            Reponses := array{"Dune", "Avatar", "Aliens", "The Abyss"}
            BonneReponse := 1
        question:
            Enonce := "Which actor long played James Bond in the 1970s and 1980s?"
            Reponses := array{"Timothy Dalton", "Roger Moore", "Sean Connery", "Pierce Brosnan"}
            BonneReponse := 1
        question:
            Enonce := "Which horror franchise features the killer Freddy Krueger?"
            Reponses := array{"Scream", "Friday the 13th", "A Nightmare on Elm Street", "Halloween"}
            BonneReponse := 2
        question:
            Enonce := "Which actor often plays the heroes of Martin Scorsese (Taxi Driver)?"
            Reponses := array{"Dustin Hoffman", "Jack Nicholson", "Robert De Niro", "Al Pacino"}
            BonneReponse := 2
        question:
            Enonce := "Which 1997 disaster film long held the box-office record?"
            Reponses := array{"Avatar", "Jurassic Park", "Twister", "Titanic"}
            BonneReponse := 3
        question:
            Enonce := "Which saga pits the Jedi against the Empire and the Sith?"
            Reponses := array{"Dune", "Star Trek", "Star Wars", "Stargate"}
            BonneReponse := 2
        question:
            Enonce := "Which young wizard with glasses is the hero of a film saga?"
            Reponses := array{"Gandalf", "Harry Potter", "Merlin", "Dumbledore"}
            BonneReponse := 1
        question:
            Enonce := "Which country won the 2018 FIFA World Cup?"
            Reponses := array{"France", "Germany", "Brazil", "Croatia"}
            BonneReponse := 0
        question:
            Enonce := "How many players make up a rugby union team on the field?"
            Reponses := array{"7", "13", "15", "11"}
            BonneReponse := 2
        question:
            Enonce := "Which American swimmer holds the record for Olympic medals?"
            Reponses := array{"Ryan Lochte", "Ian Thorpe", "Michael Phelps", "Mark Spitz"}
            BonneReponse := 2
        question:
            Enonce := "In which city were the 2024 Summer Olympics held?"
            Reponses := array{"Paris", "Tokyo", "Los Angeles", "London"}
            BonneReponse := 0
        question:
            Enonce := "Which tennis player holds the record for wins at Roland-Garros?"
            Reponses := array{"Novak Djokovic", "Roger Federer", "Rafael Nadal", "Bjorn Borg"}
            BonneReponse := 2
        question:
            Enonce := "In which motorsport does Lewis Hamilton compete?"
            Reponses := array{"MotoGP", "Rally", "The 24 Hours of Le Mans", "Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Which Argentine captain lifted the 2022 World Cup?"
            Reponses := array{"Sergio Aguero", "Angel Di Maria", "Diego Maradona", "Lionel Messi"}
            BonneReponse := 3
        question:
            Enonce := "How many bases are there on a baseball field?"
            Reponses := array{"2", "4", "3", "5"}
            BonneReponse := 1
        question:
            Enonce := "How many times did Eddy Merckx win the Tour de France?"
            Reponses := array{"7", "3", "2", "5"}
            BonneReponse := 3
        question:
            Enonce := "Which Olympic discipline combines cross-country skiing and rifle shooting?"
            Reponses := array{"Biathlon", "Skeleton", "Nordic combined", "Pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "Which boxer bit Evander Holyfield's ear during a fight?"
            Reponses := array{"Muhammad Ali", "George Foreman", "Lennox Lewis", "Mike Tyson"}
            BonneReponse := 3
        question:
            Enonce := "Which sport is played on horseback with a mallet and a ball?"
            Reponses := array{"Horse-ball", "Polo", "Croquet", "Cricket"}
            BonneReponse := 1
        question:
            Enonce := "Which country has won the most FIFA World Cups?"
            Reponses := array{"Argentina", "Germany", "Brazil", "Italy"}
            BonneReponse := 2
        question:
            Enonce := "What is the tennis shot hit hard above the head called?"
            Reponses := array{"The smash", "The lob", "The drop shot", "The volley"}
            BonneReponse := 0
        question:
            Enonce := "Which American basketball player is nicknamed King James?"
            Reponses := array{"Shaquille O'Neal", "Kobe Bryant", "LeBron James", "Stephen Curry"}
            BonneReponse := 2
        question:
            Enonce := "Which Madrid football club is nicknamed the Merengues?"
            Reponses := array{"Atletico Madrid", "Sevilla FC", "FC Barcelona", "Real Madrid"}
            BonneReponse := 3
        question:
            Enonce := "How many points is a basket scored beyond the three-point line worth?"
            Reponses := array{"4", "2", "1", "3"}
            BonneReponse := 3
        question:
            Enonce := "Which Japanese martial art is practiced barefoot, with katas and striking techniques?"
            Reponses := array{"Karate", "Aikido", "Sumo", "Judo"}
            BonneReponse := 0
        question:
            Enonce := "What is the regulation duration of a football match (excluding extra time)?"
            Reponses := array{"80 minutes", "120 minutes", "90 minutes", "60 minutes"}
            BonneReponse := 2
        question:
            Enonce := "Which American team sport is played with an oval ball and touchdowns?"
            Reponses := array{"American football", "Baseball", "Hockey", "Rugby"}
            BonneReponse := 0
        question:
            Enonce := "Which tennis tournament is played on the grass of London?"
            Reponses := array{"the Australian Open", "the US Open", "Roland-Garros", "Wimbledon"}
            BonneReponse := 3
        question:
            Enonce := "Which national football team is nicknamed the Mannschaft?"
            Reponses := array{"Germany", "Belgium", "the Netherlands", "Italy"}
            BonneReponse := 0
        question:
            Enonce := "Which board sport is practiced standing on a board, on the snow?"
            Reponses := array{"Sledding", "Bobsleigh", "Snowboarding", "Skiing"}
            BonneReponse := 2
        question:
            Enonce := "How many events make up the decathlon in athletics?"
            Reponses := array{"10", "5", "7", "12"}
            BonneReponse := 0
        question:
            Enonce := "In which country were the ancient Olympic Games born?"
            Reponses := array{"Egypt", "Turkey", "Greece", "Italy"}
            BonneReponse := 2
        question:
            Enonce := "Which Greek god rules the realm of the dead (the Underworld)?"
            Reponses := array{"Hades", "Poseidon", "Zeus", "Ares"}
            BonneReponse := 0
        question:
            Enonce := "Which Greek hero cut off the head of Medusa?"
            Reponses := array{"Heracles", "Theseus", "Perseus", "Jason"}
            BonneReponse := 2
        question:
            Enonce := "Which Titan stole fire from the gods to give it to mankind?"
            Reponses := array{"Prometheus", "Atlas", "Epimetheus", "Cronus"}
            BonneReponse := 0
        question:
            Enonce := "Which one-eyed Norse god is the ruler of the gods?"
            Reponses := array{"Loki", "Thor", "Odin", "Baldr"}
            BonneReponse := 2
        question:
            Enonce := "Which Greek hero set out to win the Golden Fleece?"
            Reponses := array{"Odysseus", "Achilles", "Jason", "Hector"}
            BonneReponse := 2
        question:
            Enonce := "Which river do souls cross to reach the Greek Underworld?"
            Reponses := array{"The Styx", "The Acheron", "The Nile", "The Lethe"}
            BonneReponse := 0
        question:
            Enonce := "Which falcon-headed Egyptian god is associated with the pharaoh?"
            Reponses := array{"Set", "Thoth", "Anubis", "Horus"}
            BonneReponse := 3
        question:
            Enonce := "Which monster, half lion and half woman, poses deadly riddles?"
            Reponses := array{"The Harpy", "The Sphinx", "The Chimera", "The Gorgon"}
            BonneReponse := 1
        question:
            Enonce := "Which Greek god of the forge works metal for the gods?"
            Reponses := array{"Hephaestus", "Apollo", "Hermes", "Dionysus"}
            BonneReponse := 0
        question:
            Enonce := "Which religion follows the teachings of Siddhartha Gautama?"
            Reponses := array{"Buddhism", "Shintoism", "Hinduism", "Taoism"}
            BonneReponse := 0
        question:
            Enonce := "Which Greek hero killed the Minotaur in the labyrinth?"
            Reponses := array{"Theseus", "Heracles", "Perseus", "Icarus"}
            BonneReponse := 0
        question:
            Enonce := "Which trickster god of Norse mythology causes chaos?"
            Reponses := array{"Freyr", "Loki", "Tyr", "Heimdall"}
            BonneReponse := 1
        question:
            Enonce := "Which Greek goddess of the hunt is the twin sister of Apollo?"
            Reponses := array{"Hera", "Hestia", "Artemis", "Demeter"}
            BonneReponse := 2
        question:
            Enonce := "Which epic tells of Odysseus's long journey home to Ithaca?"
            Reponses := array{"The Aeneid", "The Odyssey", "The Iliad", "The Theogony"}
            BonneReponse := 1
        question:
            Enonce := "Which Hindu god has the head of an elephant?"
            Reponses := array{"Ganesha", "Brahma", "Shiva", "Vishnu"}
            BonneReponse := 0
        question:
            Enonce := "What is the name of King Arthur's legendary sword?"
            Reponses := array{"Tizona", "Joyeuse", "Durendal", "Excalibur"}
            BonneReponse := 3
        question:
            Enonce := "How many Muses are there in Greek mythology?"
            Reponses := array{"9", "7", "12", "3"}
            BonneReponse := 0
        question:
            Enonce := "Which figure was condemned to carry the vault of heaven on his shoulders?"
            Reponses := array{"Sisyphus", "Tantalus", "Prometheus", "Atlas"}
            BonneReponse := 3
        question:
            Enonce := "Which Egyptian goddess is the wife of Osiris?"
            Reponses := array{"Nut", "Hathor", "Bastet", "Isis"}
            BonneReponse := 3
        question:
            Enonce := "Which religion has the largest number of followers in the world?"
            Reponses := array{"Christianity", "Buddhism", "Islam", "Hinduism"}
            BonneReponse := 0
        question:
            Enonce := "Which box, in Greek myth, released all the evils of humanity?"
            Reponses := array{"Midas's vase", "Pandora's box", "Achilles's urn", "Perseus's chest"}
            BonneReponse := 1
        question:
            Enonce := "Which Roman god of commerce and travelers is the equivalent of Hermes?"
            Reponses := array{"Vulcan", "Mars", "Janus", "Mercury"}
            BonneReponse := 3
        question:
            Enonce := "Which winged creature with a lion's body and an eagle's head guards treasures?"
            Reponses := array{"The cyclops", "The centaur", "The griffin", "The basilisk"}
            BonneReponse := 2
        question:
            Enonce := "Which celestial hall welcomes warriors who died in battle (Norse mythology)?"
            Reponses := array{"Valhalla", "Helheim", "Niflheim", "Midgard"}
            BonneReponse := 0
        question:
            Enonce := "Which animal was sacred to the Egyptian goddess Bastet?"
            Reponses := array{"The dog", "The cat", "The crocodile", "The falcon"}
            BonneReponse := 1
        question:
            Enonce := "In what year did Constantinople fall to the Ottomans?"
            Reponses := array{"1071", "1453", "1204", "1492"}
            BonneReponse := 1
        question:
            Enonce := "Which treaties of 1648 ended the Thirty Years' War?"
            Reponses := array{"The Treaty of Versailles", "The Treaty of Utrecht", "The Peace of Westphalia", "The Peace of Augsburg"}
            BonneReponse := 2
        question:
            Enonce := "Which Byzantine emperor had Roman law codified?"
            Reponses := array{"Basil II", "Constantine", "Heraclius", "Justinian"}
            BonneReponse := 3
        question:
            Enonce := "In what year was the Magna Carta signed in England?"
            Reponses := array{"1066", "1215", "1314", "1453"}
            BonneReponse := 1
        question:
            Enonce := "Which dynasty ruled France from 987 with Hugh Capet?"
            Reponses := array{"The Carolingians", "The Capetians", "The Merovingians", "The Valois"}
            BonneReponse := 1
        question:
            Enonce := "Which Prussian chancellor orchestrated German unification in 1871?"
            Reponses := array{"Wilhelm II", "Metternich", "Adenauer", "Otto von Bismarck"}
            BonneReponse := 3
        question:
            Enonce := "In what year did the American Civil War break out?"
            Reponses := array{"1898", "1861", "1776", "1812"}
            BonneReponse := 1
        question:
            Enonce := "Under which emperor of the Flavian dynasty was the Colosseum inaugurated?"
            Reponses := array{"Augustus", "Hadrian", "Nero", "Vespasian"}
            BonneReponse := 3
        question:
            Enonce := "Which gladiator led a great slave revolt against Rome?"
            Reponses := array{"Vercingetorix", "Crassus", "Spartacus", "Hannibal"}
            BonneReponse := 2
        question:
            Enonce := "In what year was Joan of Arc burned at Rouen?"
            Reponses := array{"1415", "1453", "1429", "1431"}
            BonneReponse := 3
        question:
            Enonce := "Which 1494 treaty divided the New World between Spain and Portugal?"
            Reponses := array{"The Treaty of Tordesillas", "The Treaty of Paris", "The Treaty of Madrid", "The Treaty of Zaragoza"}
            BonneReponse := 0
        question:
            Enonce := "Which Mongol dynasty preceded the Ming in China?"
            Reponses := array{"The Han", "The Qing", "The Yuan", "The Song"}
            BonneReponse := 2
        question:
            Enonce := "Which tsar modernized Russia and founded Saint Petersburg?"
            Reponses := array{"Peter the Great", "Nicholas II", "Alexander I", "Ivan the Terrible"}
            BonneReponse := 0
        question:
            Enonce := "In what year was Hong Kong handed back to China?"
            Reponses := array{"1997", "1989", "1984", "2001"}
            BonneReponse := 0
        question:
            Enonce := "Which pharaoh had the temples of Abu Simbel built?"
            Reponses := array{"Akhenaten", "Ramesses II", "Tutankhamun", "Cheops"}
            BonneReponse := 1
        question:
            Enonce := "Which civilization had Tenochtitlan as its capital?"
            Reponses := array{"The Toltecs", "The Maya", "The Aztecs", "The Incas"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered the tomb of Tutankhamun in 1922?"
            Reponses := array{"Auguste Mariette", "Howard Carter", "Heinrich Schliemann", "Jean-Francois Champollion"}
            BonneReponse := 1
        question:
            Enonce := "Which chancellor led German reunification in 1990?"
            Reponses := array{"Konrad Adenauer", "Helmut Kohl", "Willy Brandt", "Gerhard Schroder"}
            BonneReponse := 1
        question:
            Enonce := "To which year do the 'Three Glorious Days' of the Paris revolution correspond?"
            Reponses := array{"1848", "1830", "1789", "1871"}
            BonneReponse := 1
        question:
            Enonce := "Which Macedonian conqueror built a vast empire in the 4th century BC?"
            Reponses := array{"Alexander the Great", "Julius Caesar", "Pericles", "Darius"}
            BonneReponse := 0
        question:
            Enonce := "In what year was serfdom abolished in the Russian Empire?"
            Reponses := array{"1861", "1789", "1812", "1917"}
            BonneReponse := 0
        question:
            Enonce := "Which secret 1916 agreement divided the Near East between France and the United Kingdom?"
            Reponses := array{"The Sykes-Picot Agreement", "The Balfour Declaration", "The Yalta Agreements", "The Treaty of Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Which dynasty ruled France on the eve of the 1789 Revolution?"
            Reponses := array{"The Valois", "The Bourbons", "The Orleans", "The direct Capetians"}
            BonneReponse := 1
        question:
            Enonce := "Which emperor moved the Roman capital to Byzantium in 330?"
            Reponses := array{"Theodosius", "Augustus", "Diocletian", "Constantine"}
            BonneReponse := 3
        question:
            Enonce := "Which queen of England is famed for her 'era' in the 19th century and a worldwide empire?"
            Reponses := array{"Mary Tudor", "Elizabeth I", "Anne", "Victoria"}
            BonneReponse := 3
        question:
            Enonce := "What is the capital of Kazakhstan?"
            Reponses := array{"Astana", "Almaty", "Bishkek", "Tashkent"}
            BonneReponse := 0
        question:
            Enonce := "What is the most populous country in Africa?"
            Reponses := array{"Nigeria", "South Africa", "Ethiopia", "Egypt"}
            BonneReponse := 0
        question:
            Enonce := "Which strait separates Russia from Alaska?"
            Reponses := array{"The Bering Strait", "The Strait of Magellan", "The Denmark Strait", "The Strait of Hormuz"}
            BonneReponse := 0
        question:
            Enonce := "What is the lowest land point on the Earth's surface?"
            Reponses := array{"The Afar Depression", "The Nile Delta", "Death Valley", "The shores of the Dead Sea"}
            BonneReponse := 3
        question:
            Enonce := "What is the capital of Mongolia?"
            Reponses := array{"Ulaanbaatar", "Lhasa", "Astana", "Tashkent"}
            BonneReponse := 0
        question:
            Enonce := "What is the capital of Finland?"
            Reponses := array{"Stockholm", "Tallinn", "Oslo", "Helsinki"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest lake in Africa?"
            Reponses := array{"Lake Victoria", "Lake Chad", "Lake Tanganyika", "Lake Malawi"}
            BonneReponse := 0
        question:
            Enonce := "What is the driest desert in the world?"
            Reponses := array{"The Atacama Desert", "The Gobi Desert", "The Sahara", "The Mojave Desert"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the longest coastline in the world?"
            Reponses := array{"Russia", "Canada", "Indonesia", "Australia"}
            BonneReponse := 1
        question:
            Enonce := "Which African country was never colonized (apart from a brief occupation)?"
            Reponses := array{"Kenya", "Ethiopia", "Senegal", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of Vietnam?"
            Reponses := array{"Bangkok", "Phnom Penh", "Ho Chi Minh City", "Hanoi"}
            BonneReponse := 3
        question:
            Enonce := "Which river flows through the city of Baghdad?"
            Reponses := array{"The Euphrates", "The Jordan", "The Nile", "The Tigris"}
            BonneReponse := 3
        question:
            Enonce := "Which mountain range marks the Europe-Asia border in Russia?"
            Reponses := array{"The Urals", "The Caucasus", "The Carpathians", "The Altai"}
            BonneReponse := 0
        question:
            Enonce := "Which Asian archipelago has the most active volcanoes?"
            Reponses := array{"New Zealand", "Indonesia", "The Philippines", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "What is the capital of Bulgaria?"
            Reponses := array{"Bucharest", "Zagreb", "Sofia", "Belgrade"}
            BonneReponse := 2
        question:
            Enonce := "What is the capital of Chile?"
            Reponses := array{"Santiago", "Buenos Aires", "La Paz", "Lima"}
            BonneReponse := 0
        question:
            Enonce := "Which major river flows into the Caspian Sea?"
            Reponses := array{"The Ural", "The Volga", "The Danube", "The Dnieper"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest peninsula in the world?"
            Reponses := array{"The Arabian Peninsula", "The Kamchatka Peninsula", "The Iberian Peninsula", "The Indian Peninsula"}
            BonneReponse := 0
        question:
            Enonce := "Which city is the seat of the Dutch government, although Amsterdam is the capital?"
            Reponses := array{"Eindhoven", "The Hague", "Utrecht", "Rotterdam"}
            BonneReponse := 1
        question:
            Enonce := "What is the deepest lake in the world?"
            Reponses := array{"Lake Baikal", "Lake Superior", "Lake Tanganyika", "The Caspian Sea"}
            BonneReponse := 0
        question:
            Enonce := "What is the capital of North Korea?"
            Reponses := array{"Hanoi", "Beijing", "Seoul", "Pyongyang"}
            BonneReponse := 3
        question:
            Enonce := "What is the highest peak in the Andes mountain range?"
            Reponses := array{"Aconcagua", "Illimani", "Cotopaxi", "Chimborazo"}
            BonneReponse := 0
        question:
            Enonce := "What is the capital of Morocco?"
            Reponses := array{"Marrakesh", "Fez", "Rabat", "Casablanca"}
            BonneReponse := 2
        question:
            Enonce := "Which country borders the most countries (14, tied with Russia)?"
            Reponses := array{"Brazil", "India", "China", "Germany"}
            BonneReponse := 2
        question:
            Enonce := "Which strait, a key oil chokepoint, links the Persian Gulf to the Gulf of Oman?"
            Reponses := array{"The Strait of Hormuz", "The Bosphorus", "The Strait of Malacca", "The Suez Canal"}
            BonneReponse := 0
        question:
            Enonce := "What is the atomic number of hydrogen?"
            Reponses := array{"0", "1", "2", "8"}
            BonneReponse := 1
        question:
            Enonce := "Which particle mediates the electromagnetic force?"
            Reponses := array{"the Higgs boson", "the neutrino", "The photon", "the gluon"}
            BonneReponse := 2
        question:
            Enonce := "Which physicist formulated the uncertainty principle?"
            Reponses := array{"Erwin Schrodinger", "Werner Heisenberg", "Niels Bohr", "Max Planck"}
            BonneReponse := 1
        question:
            Enonce := "What is the most abundant chemical element in the universe?"
            Reponses := array{"oxygen", "helium", "Hydrogen", "carbon"}
            BonneReponse := 2
        question:
            Enonce := "What is the approximate value of Avogadro's number?"
            Reponses := array{"1.6 x 10^1^9", "3.14 x 10^8", "9.81", "6.022 x 10^2^3"}
            BonneReponse := 3
        question:
            Enonce := "What is the International System unit for amount of substance?"
            Reponses := array{"the kelvin", "The mole", "the litre", "the gram"}
            BonneReponse := 1
        question:
            Enonce := "Which physicist discovered the electron?"
            Reponses := array{"Bohr", "J.J. Thomson", "Chadwick", "Rutherford"}
            BonneReponse := 1
        question:
            Enonce := "Which Russian scientist established the periodic table of elements?"
            Reponses := array{"Dalton", "Lavoisier", "Berzelius", "Dmitri Mendeleev"}
            BonneReponse := 3
        question:
            Enonce := "What is the pH of a neutral solution at 25 C?"
            Reponses := array{"14", "7", "0", "1"}
            BonneReponse := 1
        question:
            Enonce := "Which is the weakest of the four fundamental interactions?"
            Reponses := array{"the weak interaction", "Gravitation", "the electromagnetic force", "the strong interaction"}
            BonneReponse := 1
        question:
            Enonce := "What is the chemical formula of methane?"
            Reponses := array{"NH3", "CH4", "C2H6", "CO2"}
            BonneReponse := 1
        question:
            Enonce := "Which physicist unified electricity and magnetism through his equations?"
            Reponses := array{"James Clerk Maxwell", "Faraday", "Ampere", "Coulomb"}
            BonneReponse := 0
        question:
            Enonce := "At what temperature is absolute zero?"
            Reponses := array{"-100 C", "-459 C", "0 C", "-273.15 C"}
            BonneReponse := 3
        question:
            Enonce := "What is the chemical symbol for tungsten?"
            Reponses := array{"Tu", "Tg", "W", "Tn"}
            BonneReponse := 2
        question:
            Enonce := "Which inert gas is the most abundant in Earth's atmosphere (3rd gas)?"
            Reponses := array{"helium", "Argon", "krypton", "neon"}
            BonneReponse := 1
        question:
            Enonce := "Which law relates the pressure and volume of a gas at constant temperature?"
            Reponses := array{"Hooke's law", "Coulomb's law", "Ohm's law", "Boyle's law"}
            BonneReponse := 3
        question:
            Enonce := "What is the unit of measurement for electric charge?"
            Reponses := array{"the ampere", "the watt", "the volt", "The coulomb"}
            BonneReponse := 3
        question:
            Enonce := "What type of chemical bond joins the atoms of a water molecule?"
            Reponses := array{"The covalent bond", "the metallic bond", "the ionic bond", "the hydrogen bond alone"}
            BonneReponse := 0
        question:
            Enonce := "Which radiation corresponds to a helium nucleus emitted during a decay?"
            Reponses := array{"gamma radiation", "Alpha radiation", "X-rays", "beta radiation"}
            BonneReponse := 1
        question:
            Enonce := "What is the chemical symbol for lead?"
            Reponses := array{"Pm", "Pl", "Pb", "Po"}
            BonneReponse := 2
        question:
            Enonce := "Which nuclear reaction makes the Sun shine?"
            Reponses := array{"carbon combustion", "beta radioactivity", "uranium fission", "Hydrogen fusion"}
            BonneReponse := 3
        question:
            Enonce := "What is the SI unit for measuring electric voltage?"
            Reponses := array{"The volt", "the hertz", "the ampere", "the ohm"}
            BonneReponse := 0
        question:
            Enonce := "Which main component of natural gas is also a powerful greenhouse gas?"
            Reponses := array{"Methane", "ozone", "argon", "nitrogen"}
            BonneReponse := 0
        question:
            Enonce := "What quantity does the Kelvin scale measure?"
            Reponses := array{"mass", "pressure", "energy", "Temperature"}
            BonneReponse := 3
        question:
            Enonce := "Which scientist formulated the theory of general relativity?"
            Reponses := array{"Newton", "Albert Einstein", "Planck", "Hawking"}
            BonneReponse := 1
        question:
            Enonce := "How many pairs of chromosomes does a human being have?"
            Reponses := array{"46", "23", "12", "24"}
            BonneReponse := 1
        question:
            Enonce := "Which blood protein transports oxygen?"
            Reponses := array{"albumin", "insulin", "Hemoglobin", "collagen"}
            BonneReponse := 2
        question:
            Enonce := "Which researcher co-discovered the double helix structure of DNA with Crick?"
            Reponses := array{"James Watson", "Louis Pasteur", "Gregor Mendel", "Charles Darwin"}
            BonneReponse := 0
        question:
            Enonce := "Where are red blood cells formed in adults?"
            Reponses := array{"In the bone marrow", "in the liver", "in the spleen", "in the kidneys"}
            BonneReponse := 0
        question:
            Enonce := "Which organelle is the cell's powerhouse?"
            Reponses := array{"the Golgi apparatus", "The mitochondrion", "the nucleus", "the ribosome"}
            BonneReponse := 1
        question:
            Enonce := "What is the longest nerve in the human body?"
            Reponses := array{"the vagus nerve", "the optic nerve", "The sciatic nerve", "the facial nerve"}
            BonneReponse := 2
        question:
            Enonce := "Which English physician described blood circulation in the 17th century?"
            Reponses := array{"William Harvey", "Joseph Lister", "Alexander Fleming", "Edward Jenner"}
            BonneReponse := 0
        question:
            Enonce := "Which process of cell division produces the sex cells (gametes)?"
            Reponses := array{"fertilization", "mitosis", "mutation", "Meiosis"}
            BonneReponse := 3
        question:
            Enonce := "Which vitamin is essential for blood clotting?"
            Reponses := array{"vitamin C", "Vitamin K", "vitamin D", "vitamin B12"}
            BonneReponse := 1
        question:
            Enonce := "How many baby teeth does a young child have?"
            Reponses := array{"28", "32", "20", "24"}
            BonneReponse := 2
        question:
            Enonce := "Which green pigment enables photosynthesis in plants?"
            Reponses := array{"hemoglobin", "melanin", "keratin", "Chlorophyll"}
            BonneReponse := 3
        question:
            Enonce := "Which gland, at the base of the brain, controls the other glands?"
            Reponses := array{"the thyroid", "The pituitary gland", "the pancreas", "the spleen"}
            BonneReponse := 1
        question:
            Enonce := "Which group of animals includes frogs and salamanders?"
            Reponses := array{"mollusks", "fish", "Amphibians", "reptiles"}
            BonneReponse := 2
        question:
            Enonce := "What is the average lifespan of a red blood cell?"
            Reponses := array{"about 10 years", "about 24 hours", "About 120 days", "about 7 days"}
            BonneReponse := 2
        question:
            Enonce := "Which physician developed the first vaccine (against smallpox)?"
            Reponses := array{"Jonas Salk", "Edward Jenner", "Louis Pasteur", "Robert Koch"}
            BonneReponse := 1
        question:
            Enonce := "Which fibrous protein makes up tendons, skin and cartilage?"
            Reponses := array{"keratin", "elastin", "fibrin", "Collagen"}
            BonneReponse := 3
        question:
            Enonce := "Which part of the eye focuses by changing shape?"
            Reponses := array{"the pupil", "the cornea", "the retina", "The lens"}
            BonneReponse := 3
        question:
            Enonce := "How many chambers does a fish's heart have?"
            Reponses := array{"1", "4", "2", "3"}
            BonneReponse := 2
        question:
            Enonce := "Which hormone lowers the level of sugar in the blood?"
            Reponses := array{"testosterone", "melatonin", "adrenaline", "Insulin"}
            BonneReponse := 3
        question:
            Enonce := "Approximately how many muscles does the human body have?"
            Reponses := array{"about 50", "about 100", "about 2000", "About 600"}
            BonneReponse := 3
        question:
            Enonce := "Where is DNA located in a human cell?"
            Reponses := array{"In the nucleus", "in the membrane", "in the ribosomes", "in the cytoplasm"}
            BonneReponse := 0
        question:
            Enonce := "Which scientist established the laws of heredity through pea plant crosses?"
            Reponses := array{"Darwin", "Gregor Mendel", "Pasteur", "Lamarck"}
            BonneReponse := 1
        question:
            Enonce := "Which bone protects the brain?"
            Reponses := array{"the sternum", "The skull", "the spine", "the mandible"}
            BonneReponse := 1
        question:
            Enonce := "What is the approximate total lung capacity of an adult?"
            Reponses := array{"about 15 liters", "about 30 liters", "About 6 liters", "about 1 liter"}
            BonneReponse := 2
        question:
            Enonce := "What are the male reproductive cells called?"
            Reponses := array{"ova", "Spermatozoa", "neurons", "platelets"}
            BonneReponse := 1
        question:
            Enonce := "What is the smallest bird in the world?"
            Reponses := array{"the goldcrest", "the swift", "the sparrow", "The hummingbird"}
            BonneReponse := 3
        question:
            Enonce := "How many compartments does a cow's stomach have?"
            Reponses := array{"6", "2", "1", "4"}
            BonneReponse := 3
        question:
            Enonce := "Which bird migrates the farthest, from one pole to the other?"
            Reponses := array{"the wild goose", "the stork", "the swallow", "The Arctic tern"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest feline of the American continent?"
            Reponses := array{"the puma", "the ocelot", "the lynx", "The jaguar"}
            BonneReponse := 3
        question:
            Enonce := "Which Arctic cetacean has a long spiral tusk, nicknamed the unicorn of the seas?"
            Reponses := array{"the beluga", "the walrus", "the sperm whale", "The narwhal"}
            BonneReponse := 3
        question:
            Enonce := "Which land snake is considered the most venomous in the world?"
            Reponses := array{"the viper", "the black mamba", "the king cobra", "The inland taipan"}
            BonneReponse := 3
        question:
            Enonce := "Which Mexican amphibian is famous for regenerating its limbs?"
            Reponses := array{"The axolotl", "the toad", "the salamander", "the newt"}
            BonneReponse := 0
        question:
            Enonce := "Which plant holds the record for fastest growth?"
            Reponses := array{"the water lily", "the nettle", "Bamboo", "the sunflower"}
            BonneReponse := 2
        question:
            Enonce := "Which bird lays its eggs in the nests of other species?"
            Reponses := array{"the robin", "The cuckoo", "the woodpecker", "the magpie"}
            BonneReponse := 1
        question:
            Enonce := "Which land animal is reputed to be the slowest?"
            Reponses := array{"the koala", "the snail", "The sloth", "the tortoise"}
            BonneReponse := 2
        question:
            Enonce := "What is the largest species of sea turtle?"
            Reponses := array{"The leatherback turtle", "the green turtle", "the loggerhead", "the hawksbill turtle"}
            BonneReponse := 0
        question:
            Enonce := "Which animal has the largest eyes in the animal kingdom?"
            Reponses := array{"The giant squid", "the owl", "the horse", "the ostrich"}
            BonneReponse := 0
        question:
            Enonce := "Which mammal makes one of the longest annual migrations?"
            Reponses := array{"the bat", "the reindeer", "The gray whale", "the wildebeest"}
            BonneReponse := 2
        question:
            Enonce := "Which Australian mammal lays eggs and has spines?"
            Reponses := array{"the koala", "The echidna", "the Tasmanian devil", "the wombat"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest rodent in the world?"
            Reponses := array{"the porcupine", "The capybara", "the beaver", "the coypu"}
            BonneReponse := 1
        question:
            Enonce := "Which large shark is the biggest fish in the world?"
            Reponses := array{"the tiger shark", "the great white shark", "The whale shark", "the hammerhead shark"}
            BonneReponse := 2
        question:
            Enonce := "Which North American tree is among the oldest living beings (thousands of years)?"
            Reponses := array{"the cedar", "The Bristlecone pine", "the birch", "the aspen"}
            BonneReponse := 1
        question:
            Enonce := "Which is the only penguin living naturally north of the equator?"
            Reponses := array{"The Galapagos penguin", "the rockhopper penguin", "the king penguin", "the emperor penguin"}
            BonneReponse := 0
        question:
            Enonce := "Which reptile has the most powerful bite force?"
            Reponses := array{"the iguana", "the python", "the cobra", "The crocodile"}
            BonneReponse := 3
        question:
            Enonce := "Which large African herbivore is responsible for the most human deaths?"
            Reponses := array{"the giraffe", "the buffalo", "The hippopotamus", "the elephant"}
            BonneReponse := 2
        question:
            Enonce := "How long does an adult mayfly live on average?"
            Reponses := array{"about one year", "about one month", "about ten years", "About one day"}
            BonneReponse := 3
        question:
            Enonce := "Which is the only mammal venomous through a spur (the male)?"
            Reponses := array{"the mole", "the hedgehog", "The platypus", "the shrew"}
            BonneReponse := 2
        question:
            Enonce := "Which great ape is the most imposing and lives in Central Africa?"
            Reponses := array{"the chimpanzee", "the bonobo", "the orangutan", "The gorilla"}
            BonneReponse := 3
        question:
            Enonce := "Which mollusk has eight arms and can change color instantly?"
            Reponses := array{"the squid", "the nautilus", "the cuttlefish", "The octopus"}
            BonneReponse := 3
        question:
            Enonce := "Why does the honeybee die after stinging a human?"
            Reponses := array{"it exhausts itself", "Its stinger stays embedded and disembowels it", "the venom kills it", "it drowns in honey"}
            BonneReponse := 1
        question:
            Enonce := "Which is the densest planet in the solar system?"
            Reponses := array{"Saturn", "Earth", "Jupiter", "Mercury"}
            BonneReponse := 1
        question:
            Enonce := "What is the boundary of a black hole from which nothing escapes called?"
            Reponses := array{"the outer singularity", "the photosphere", "the magnetosphere", "The event horizon"}
            BonneReponse := 3
        question:
            Enonce := "Which astronomer formulated the laws of the elliptical motion of planets?"
            Reponses := array{"Johannes Kepler", "Newton", "Ptolemy", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "How many Galilean moons does Jupiter have?"
            Reponses := array{"2", "8", "4", "12"}
            BonneReponse := 2
        question:
            Enonce := "Into what type of star will our Sun turn at the end of its life?"
            Reponses := array{"a black hole", "A red giant", "a supernova", "a pulsar"}
            BonneReponse := 1
        question:
            Enonce := "Which is the largest moon of Saturn?"
            Reponses := array{"Iapetus", "Titan", "Ganymede", "Enceladus"}
            BonneReponse := 1
        question:
            Enonce := "Which theory describes the origin of the universe through an initial expansion?"
            Reponses := array{"The Big Bang", "the steady state", "relativity", "string theory"}
            BonneReponse := 0
        question:
            Enonce := "Which is the brightest star in the night sky?"
            Reponses := array{"the Pole Star", "Betelgeuse", "Vega", "Sirius"}
            BonneReponse := 3
        question:
            Enonce := "Which probe deployed the Philae lander on a comet in 2014?"
            Reponses := array{"Cassini", "Juno", "New Horizons", "Rosetta"}
            BonneReponse := 3
        question:
            Enonce := "Which planet experiences the most violent winds in the solar system?"
            Reponses := array{"Jupiter", "Neptune", "Venus", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "What is a rapidly rotating neutron star that emits pulses called?"
            Reponses := array{"a quasar", "A pulsar", "a nova", "a white dwarf"}
            BonneReponse := 1
        question:
            Enonce := "Which Apollo mission landed the last men on the Moon in 1972?"
            Reponses := array{"Apollo 11", "Apollo 17", "Apollo 13", "Apollo 15"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest known volcano in the solar system, located on Mars?"
            Reponses := array{"Mount Maxwell", "Vesuvius", "Mauna Kea", "Olympus Mons"}
            BonneReponse := 3
        question:
            Enonce := "Approximately how long does a year on Mars last?"
            Reponses := array{"about 88 days", "about 365 days", "About 687 days", "about 30 days"}
            BonneReponse := 2
        question:
            Enonce := "Which Italian astronomer observed the moons of Jupiter with his telescope?"
            Reponses := array{"Kepler", "Galileo", "Tycho Brahe", "Copernicus"}
            BonneReponse := 1
        question:
            Enonce := "What gases is the Sun mainly composed of?"
            Reponses := array{"carbon and iron", "oxygen and nitrogen", "methane and ammonia", "Hydrogen and helium"}
            BonneReponse := 3
        question:
            Enonce := "What is the vast reservoir of comets at the edge of the solar system called?"
            Reponses := array{"The Oort cloud", "the Orion Nebula", "the asteroid belt", "the Kuiper belt"}
            BonneReponse := 0
        question:
            Enonce := "What is the visible outer layer of the Sun?"
            Reponses := array{"the deep chromosphere", "The photosphere", "the corona", "the core"}
            BonneReponse := 1
        question:
            Enonce := "Which is the smallest planet in the solar system?"
            Reponses := array{"Venus", "Mercury", "Pluto", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "In which constellation is the Pole Star located?"
            Reponses := array{"Orion", "Cassiopeia", "Ursa Minor", "Ursa Major"}
            BonneReponse := 2
        question:
            Enonce := "What is the scientific study of the origin and evolution of the universe called?"
            Reponses := array{"astrology", "planetology", "Cosmology", "geodesy"}
            BonneReponse := 2
        question:
            Enonce := "What is roughly the Earth-Sun distance (astronomical unit)?"
            Reponses := array{"30 million km", "1 billion km", "1 million km", "150 million km"}
            BonneReponse := 3
        question:
            Enonce := "What phenomenon shifts the light of distant galaxies toward red?"
            Reponses := array{"The expansion of the universe", "refraction", "the greenhouse effect", "sunspots"}
            BonneReponse := 0
        question:
            Enonce := "Which first artificial satellite did the USSR launch in 1957?"
            Reponses := array{"Vostok 1", "Explorer 1", "Sputnik 1", "Luna 1"}
            BonneReponse := 2
        question:
            Enonce := "Which planet has the lowest density in the solar system (it would float on water)?"
            Reponses := array{"Jupiter", "Saturn", "Neptune", "Uranus"}
            BonneReponse := 1
        question:
            Enonce := "Which painter founded Pointillism with A Sunday Afternoon on the Island of La Grande Jatte?"
            Reponses := array{"Georges Seurat", "Camille Pissarro", "Henri Matisse", "Paul Signac"}
            BonneReponse := 0
        question:
            Enonce := "Which architect designed the glass pyramid of the Louvre?"
            Reponses := array{"Ieoh Ming Pei", "Jean Nouvel", "Norman Foster", "Le Corbusier"}
            BonneReponse := 0
        question:
            Enonce := "Which Flemish painter created The Garden of Earthly Delights?"
            Reponses := array{"Hieronymus Bosch", "Rubens", "Bruegel the Elder", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Which French sculptor was the pupil and collaborator of Rodin?"
            Reponses := array{"Niki de Saint Phalle", "Camille Claudel", "Sophie Calle", "Louise Bourgeois"}
            BonneReponse := 1
        question:
            Enonce := "Which Austrian painter created The Kiss with gold leaf?"
            Reponses := array{"Oskar Kokoschka", "Egon Schiele", "Hundertwasser", "Gustav Klimt"}
            BonneReponse := 3
        question:
            Enonce := "Which Renaissance painter created The Birth of Venus?"
            Reponses := array{"Caravaggio", "Titian", "Sandro Botticelli", "Raphael"}
            BonneReponse := 2
        question:
            Enonce := "Which American painter popularized dripping (poured paint)?"
            Reponses := array{"Jackson Pollock", "Willem de Kooning", "Mark Rothko", "Andy Warhol"}
            BonneReponse := 0
        question:
            Enonce := "Which provocative art movement was born in Zurich in 1916 (Duchamp, Tzara)?"
            Reponses := array{"Constructivism", "Futurism", "Surrealism", "Dadaism"}
            BonneReponse := 3
        question:
            Enonce := "Which work by Salvador Dali depicts melting clocks?"
            Reponses := array{"The Last Supper", "The Scream", "The Persistence of Memory", "The Great Masturbator"}
            BonneReponse := 2
        question:
            Enonce := "Which Romantic painter created The Raft of the Medusa?"
            Reponses := array{"Eugene Delacroix", "Gustave Courbet", "Theodore Gericault", "Jacques-Louis David"}
            BonneReponse := 2
        question:
            Enonce := "Which architect designed the Guggenheim Museum in Bilbao?"
            Reponses := array{"Tadao Ando", "Frank Gehry", "Renzo Piano", "Zaha Hadid"}
            BonneReponse := 1
        question:
            Enonce := "Which painter created Les Demoiselles d'Avignon?"
            Reponses := array{"Pablo Picasso", "Juan Gris", "Fernand Leger", "Georges Braque"}
            BonneReponse := 0
        question:
            Enonce := "Which Italian Baroque sculptor created The Ecstasy of Saint Teresa?"
            Reponses := array{"Donatello", "Canova", "Bernini", "Michelangelo"}
            BonneReponse := 2
        question:
            Enonce := "Which American painter painted Nighthawks, a bar at night?"
            Reponses := array{"Jackson Pollock", "Norman Rockwell", "Roy Lichtenstein", "Edward Hopper"}
            BonneReponse := 3
        question:
            Enonce := "Which ancient Greek sculptor is said to have made the chryselephantine statue of Zeus at Olympia?"
            Reponses := array{"Myron", "Polyclitus", "Praxiteles", "Phidias"}
            BonneReponse := 3
        question:
            Enonce := "Which art and design school was founded in Germany in 1919?"
            Reponses := array{"The Secession", "The Werkbund", "Art Nouveau", "The Bauhaus"}
            BonneReponse := 3
        question:
            Enonce := "Which cathedral in Moscow is famous for its colourful onion domes?"
            Reponses := array{"Saint Basil's Cathedral", "the Dormition Cathedral", "the Cathedral of Christ the Saviour", "Hagia Sophia"}
            BonneReponse := 0
        question:
            Enonce := "In which town did Vincent van Gogh die in 1890?"
            Reponses := array{"Auvers-sur-Oise", "Paris", "Arles", "Amsterdam"}
            BonneReponse := 0
        question:
            Enonce := "Which artist wrapped the Pont-Neuf in Paris and (posthumously) the Arc de Triomphe?"
            Reponses := array{"Daniel Buren", "Christo", "Jeff Koons", "Banksy"}
            BonneReponse := 1
        question:
            Enonce := "Which painter created The Luncheon on the Grass?"
            Reponses := array{"Edouard Manet", "Claude Monet", "Renoir", "Cezanne"}
            BonneReponse := 0
        question:
            Enonce := "Which Chinese dynasty is blue and white porcelain emblematic of?"
            Reponses := array{"The Ming", "the Qin", "the Han", "the Tang"}
            BonneReponse := 0
        question:
            Enonce := "Which Venetian Renaissance painter is known as Titian?"
            Reponses := array{"Tiziano Vecellio", "Bellini", "Veronese", "Tintoretto"}
            BonneReponse := 0
        question:
            Enonce := "Which Franco-Swiss architect theorized the unite d'habitation (Cite Radieuse)?"
            Reponses := array{"Niemeyer", "Gaudi", "Le Corbusier", "Mies van der Rohe"}
            BonneReponse := 2
        question:
            Enonce := "Which Dutch painter created The Potato Eaters?"
            Reponses := array{"Vincent van Gogh", "Vermeer", "Mondrian", "Rembrandt"}
            BonneReponse := 0
        question:
            Enonce := "Which geometric movement from the Netherlands, using primary colours, is led by Mondrian?"
            Reponses := array{"De Stijl", "Futurism", "the Bauhaus", "Suprematism"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote the novel Ulysses (1922)?"
            Reponses := array{"T.S. Eliot", "D.H. Lawrence", "Virginia Woolf", "James Joyce"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Divine Comedy?"
            Reponses := array{"Virgil", "Petrarch", "Dante Alighieri", "Boccaccio"}
            BonneReponse := 2
        question:
            Enonce := "Which Latin poet composed the Aeneid?"
            Reponses := array{"Homer", "Horace", "Virgil", "Ovid"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote the drama Faust?"
            Reponses := array{"Goethe", "Heine", "Thomas Mann", "Schiller"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Brothers Karamazov?"
            Reponses := array{"Turgenev", "Tolstoy", "Fyodor Dostoevsky", "Gogol"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote the novel Lolita?"
            Reponses := array{"Vladimir Nabokov", "Boris Pasternak", "Solzhenitsyn", "Chekhov"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Plague?"
            Reponses := array{"Jean-Paul Sartre", "Andre Gide", "Albert Camus", "Romain Rolland"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Mrs Dalloway?"
            Reponses := array{"Emily Bronte", "George Eliot", "Virginia Woolf", "Jane Austen"}
            BonneReponse := 2
        question:
            Enonce := "Which Norwegian playwright wrote A Doll's House?"
            Reponses := array{"Brecht", "Strindberg", "Chekhov", "Henrik Ibsen"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Master and Margarita?"
            Reponses := array{"Mikhail Bulgakov", "Pasternak", "Gorky", "Dostoevsky"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote the play Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Beaumarchais", "Victor Hugo", "Alfred de Musset"}
            BonneReponse := 0
        question:
            Enonce := "Which African American novelist, a Nobel laureate, wrote Beloved?"
            Reponses := array{"Zora Neale Hurston", "Maya Angelou", "Alice Walker", "Toni Morrison"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Bel-Ami?"
            Reponses := array{"Flaubert", "Balzac", "Emile Zola", "Guy de Maupassant"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Ladies' Paradise?"
            Reponses := array{"Balzac", "Maupassant", "Emile Zola", "Stendhal"}
            BonneReponse := 2
        question:
            Enonce := "Which Argentine author wrote the collection Ficciones?"
            Reponses := array{"Vargas Llosa", "Garcia Marquez", "Jorge Luis Borges", "Cortazar"}
            BonneReponse := 2
        question:
            Enonce := "Which German writer wrote Siddhartha and Steppenwolf?"
            Reponses := array{"Thomas Mann", "Goethe", "Hermann Hesse", "Gunter Grass"}
            BonneReponse := 2
        question:
            Enonce := "Which German philosopher wrote Thus Spoke Zarathustra?"
            Reponses := array{"Schopenhauer", "Kant", "Friedrich Nietzsche", "Hegel"}
            BonneReponse := 2
        question:
            Enonce := "Which ancient Greek playwright wrote Oedipus Rex?"
            Reponses := array{"Aristophanes", "Euripides", "Sophocles", "Aeschylus"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Brave New World?"
            Reponses := array{"George Orwell", "Ray Bradbury", "H.G. Wells", "Aldous Huxley"}
            BonneReponse := 3
        question:
            Enonce := "Which Italian Renaissance poet wrote the Canzoniere dedicated to Laura?"
            Reponses := array{"Petrarch", "Ariosto", "Boccaccio", "Dante"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote the novel All Quiet on the Western Front?"
            Reponses := array{"Erich Maria Remarque", "Stefan Zweig", "Ernst Junger", "Thomas Mann"}
            BonneReponse := 0
        question:
            Enonce := "Which author wrote The Cherry Orchard and many short stories?"
            Reponses := array{"Anton Chekhov", "Kafka", "Hasek", "Kundera"}
            BonneReponse := 0
        question:
            Enonce := "Which contemporary French novelist wrote The Elementary Particles?"
            Reponses := array{"Marc Levy", "Michel Houellebecq", "Patrick Modiano", "Amelie Nothomb"}
            BonneReponse := 1
        question:
            Enonce := "Which poet wrote the collection The Contemplations?"
            Reponses := array{"Leconte de Lisle", "Victor Hugo", "Lamartine", "Vigny"}
            BonneReponse := 1
        question:
            Enonce := "Which author wrote Journey to the End of the Night?"
            Reponses := array{"Louis-Ferdinand Celine", "Andre Malraux", "Marcel Proust", "Georges Bernanos"}
            BonneReponse := 0
        question:
            Enonce := "Which Italian composer wrote the opera La Traviata?"
            Reponses := array{"Rossini", "Giuseppe Verdi", "Puccini", "Donizetti"}
            BonneReponse := 1
        question:
            Enonce := "Which composer wrote The Rite of Spring, which caused a scandal in 1913?"
            Reponses := array{"Debussy", "Igor Stravinsky", "Bartok", "Ravel"}
            BonneReponse := 1
        question:
            Enonce := "What do you call a group of eight musicians?"
            Reponses := array{"a nonet", "a quintet", "a sextet", "An octet"}
            BonneReponse := 3
        question:
            Enonce := "Which Czech composer wrote the New World Symphony?"
            Reponses := array{"Smetana", "Mahler", "Antonin Dvorak", "Janacek"}
            BonneReponse := 2
        question:
            Enonce := "How many black keys does an octave on the piano have?"
            Reponses := array{"8", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Which Venetian Baroque composer was nicknamed the Red Priest?"
            Reponses := array{"Monteverdi", "Antonio Vivaldi", "Corelli", "Albinoni"}
            BonneReponse := 1
        question:
            Enonce := "Which large double-reed instrument plays in the low register of the woodwinds?"
            Reponses := array{"the clarinet", "The bassoon", "the flute", "the horn"}
            BonneReponse := 1
        question:
            Enonce := "Which French composer wrote Clair de lune (Suite bergamasque)?"
            Reponses := array{"Claude Debussy", "Faure", "Satie", "Ravel"}
            BonneReponse := 0
        question:
            Enonce := "Which Russian composer wrote the ballet The Nutcracker?"
            Reponses := array{"Tchaikovsky", "Prokofiev", "Stravinsky", "Rimsky-Korsakov"}
            BonneReponse := 0
        question:
            Enonce := "Which Austrian composer, who died young, wrote the lied The Trout?"
            Reponses := array{"Mozart", "Haydn", "Franz Schubert", "Bruckner"}
            BonneReponse := 2
        question:
            Enonce := "Which light lyric genre, with spoken dialogue, is associated with Offenbach?"
            Reponses := array{"the oratorio", "The operetta", "the requiem", "the cantata"}
            BonneReponse := 1
        question:
            Enonce := "Which Hungarian composer wrote the Hungarian Rhapsodies?"
            Reponses := array{"Franz Liszt", "Bartok", "Kodaly", "Brahms"}
            BonneReponse := 0
        question:
            Enonce := "Which composer wrote the opera Madama Butterfly?"
            Reponses := array{"Verdi", "Bizet", "Giacomo Puccini", "Wagner"}
            BonneReponse := 2
        question:
            Enonce := "Which jazz trumpeter is nicknamed Satchmo?"
            Reponses := array{"Dizzy Gillespie", "Miles Davis", "Chet Baker", "Louis Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Which German composer wrote The Ride of the Valkyries?"
            Reponses := array{"Beethoven", "Strauss", "Brahms", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Which French composer wrote The Carnival of the Animals?"
            Reponses := array{"Bizet", "Gounod", "Camille Saint-Saens", "Berlioz"}
            BonneReponse := 2
        question:
            Enonce := "Which musical term means very loud?"
            Reponses := array{"crescendo", "Fortissimo", "mezzo forte", "pianissimo"}
            BonneReponse := 1
        question:
            Enonce := "Which trumpeter shaped modal jazz with the album Kind of Blue?"
            Reponses := array{"Louis Armstrong", "Miles Davis", "John Coltrane", "Duke Ellington"}
            BonneReponse := 1
        question:
            Enonce := "Which Russian composer wrote Pictures at an Exhibition?"
            Reponses := array{"Modest Mussorgsky", "Borodin", "Glinka", "Tchaikovsky"}
            BonneReponse := 0
        question:
            Enonce := "Which composer wrote the musical tale Peter and the Wolf?"
            Reponses := array{"Stravinsky", "Sergei Prokofiev", "Shostakovich", "Rachmaninoff"}
            BonneReponse := 1
        question:
            Enonce := "Which female voice lies in the low register?"
            Reponses := array{"the soprano", "the coloratura", "The alto (contralto)", "the high mezzo"}
            BonneReponse := 2
        question:
            Enonce := "Which British rock band has Mick Jagger as its singer?"
            Reponses := array{"The Who", "The Rolling Stones", "Led Zeppelin", "The Kinks"}
            BonneReponse := 1
        question:
            Enonce := "Roughly how many strings does a concert harp have?"
            Reponses := array{"47", "12", "88", "24"}
            BonneReponse := 0
        question:
            Enonce := "Which German Baroque composer is the author of the oratorio Messiah?"
            Reponses := array{"Telemann", "George Frideric Handel", "Bach", "Pachelbel"}
            BonneReponse := 1
        question:
            Enonce := "Which German composer composed the tetralogy The Ring of the Nibelung?"
            Reponses := array{"Bruckner", "Mahler", "Richard Strauss", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Which Italian director made La Dolce Vita?"
            Reponses := array{"Vittorio De Sica", "Federico Fellini", "Roberto Rossellini", "Luchino Visconti"}
            BonneReponse := 1
        question:
            Enonce := "Which 1941 film by Orson Welles is often cited as one of the greatest of all time?"
            Reponses := array{"Gone with the Wind", "Citizen Kane", "Casablanca", "The Maltese Falcon"}
            BonneReponse := 1
        question:
            Enonce := "Which Swedish filmmaker directed The Seventh Seal?"
            Reponses := array{"Bo Widerberg", "Ingmar Bergman", "Roy Andersson", "Lars von Trier"}
            BonneReponse := 1
        question:
            Enonce := "Which Japanese filmmaker directed Seven Samurai?"
            Reponses := array{"Yasujiro Ozu", "Akira Kurosawa", "Hayao Miyazaki", "Takeshi Kitano"}
            BonneReponse := 1
        question:
            Enonce := "Which Coppola film about the Vietnam War contains the line about the smell of napalm?"
            Reponses := array{"Full Metal Jacket", "Apocalypse Now", "The Deer Hunter", "Platoon"}
            BonneReponse := 1
        question:
            Enonce := "Which Spanish filmmaker co-directed Un Chien Andalou with Dali?"
            Reponses := array{"Victor Erice", "Carlos Saura", "Luis Bunuel", "Pedro Almodovar"}
            BonneReponse := 2
        question:
            Enonce := "Which actress holds the record for acting Oscars (four)?"
            Reponses := array{"Meryl Streep", "Bette Davis", "Ingrid Bergman", "Katharine Hepburn"}
            BonneReponse := 3
        question:
            Enonce := "Which 1920 German expressionist silent film features a sleepwalker?"
            Reponses := array{"M", "Nosferatu", "The Cabinet of Dr. Caligari", "Metropolis"}
            BonneReponse := 2
        question:
            Enonce := "Which first animated feature film from Disney studios was released in 1937?"
            Reponses := array{"Bambi", "Snow White and the Seven Dwarfs", "Fantasia", "Pinocchio"}
            BonneReponse := 1
        question:
            Enonce := "Which 1925 Soviet film by Eisenstein shows the famous Odessa Steps?"
            Reponses := array{"Battleship Potemkin", "Strike", "October", "Alexander Nevsky"}
            BonneReponse := 0
        question:
            Enonce := "Which Swedish actress plays the female lead in Casablanca?"
            Reponses := array{"Greta Garbo", "Rita Hayworth", "Lauren Bacall", "Ingrid Bergman"}
            BonneReponse := 3
        question:
            Enonce := "Which New Wave filmmaker directed Breathless?"
            Reponses := array{"Eric Rohmer", "Claude Chabrol", "Francois Truffaut", "Jean-Luc Godard"}
            BonneReponse := 3
        question:
            Enonce := "How many Oscars did the film Titanic win?"
            Reponses := array{"5", "14", "11", "7"}
            BonneReponse := 2
        question:
            Enonce := "Which actor plays Don Vito Corleone in The Godfather?"
            Reponses := array{"Al Pacino", "Robert De Niro", "Marlon Brando", "James Caan"}
            BonneReponse := 2
        question:
            Enonce := "Which 1979 Ridley Scott film features a hostile creature aboard a spaceship?"
            Reponses := array{"Predator", "Blade Runner", "Alien", "The Thing"}
            BonneReponse := 2
        question:
            Enonce := "Which American actor is the icon of Sergio Leone's spaghetti westerns?"
            Reponses := array{"Clint Eastwood", "Charles Bronson", "John Wayne", "Lee Van Cleef"}
            BonneReponse := 0
        question:
            Enonce := "Which director won the Oscar for Best Director for The Hurt Locker?"
            Reponses := array{"Kathryn Bigelow", "Greta Gerwig", "Sofia Coppola", "Jane Campion"}
            BonneReponse := 0
        question:
            Enonce := "Which Miyazaki animated film features a castle that moves?"
            Reponses := array{"Howl's Moving Castle", "Spirited Away", "Castle in the Sky", "Princess Mononoke"}
            BonneReponse := 0
        question:
            Enonce := "Which Jean Renoir film (1937) deals with captivity during the Great War?"
            Reponses := array{"Grand Illusion", "La Bete Humaine", "The Rules of the Game", "French Cancan"}
            BonneReponse := 0
        question:
            Enonce := "Which actor won the Best Actor Oscar for Joker (2019)?"
            Reponses := array{"Heath Ledger", "Joaquin Phoenix", "Jared Leto", "Christian Bale"}
            BonneReponse := 1
        question:
            Enonce := "Which 1994 film is set in Shawshank prison?"
            Reponses := array{"The Green Mile", "The Shawshank Redemption", "Birdman of Alcatraz", "Midnight Express"}
            BonneReponse := 1
        question:
            Enonce := "Which Danish filmmaker co-founded the Dogme95 movement?"
            Reponses := array{"Carl Dreyer", "Nicolas Winding Refn", "Thomas Vinterberg", "Lars von Trier"}
            BonneReponse := 3
        question:
            Enonce := "Which Stanley Kubrick film features the computer HAL 9000?"
            Reponses := array{"Barry Lyndon", "2001: A Space Odyssey", "The Shining", "Dr. Strangelove"}
            BonneReponse := 1
        question:
            Enonce := "Which director made Goodfellas and Taxi Driver?"
            Reponses := array{"Sidney Lumet", "Francis Ford Coppola", "Martin Scorsese", "Brian De Palma"}
            BonneReponse := 2
        question:
            Enonce := "Which 1962 French film directed by Chris Marker is composed of still photographs?"
            Reponses := array{"Cleo from 5 to 7", "The 400 Blows", "La Jetee", "Hiroshima mon amour"}
            BonneReponse := 2
        question:
            Enonce := "How many players from a water polo team are in the water?"
            Reponses := array{"5", "11", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "Which country won the very first football World Cup, in 1930?"
            Reponses := array{"Brazil", "Italy", "Uruguay", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "In what year were the first Olympic Games of the modern era held?"
            Reponses := array{"1900", "1888", "1896", "1924"}
            BonneReponse := 2
        question:
            Enonce := "Which German driver long held the record of 7 F1 World Championship titles?"
            Reponses := array{"Alain Prost", "Niki Lauda", "Ayrton Senna", "Michael Schumacher"}
            BonneReponse := 3
        question:
            Enonce := "How many squares does a chessboard have?"
            Reponses := array{"100", "64", "49", "81"}
            BonneReponse := 1
        question:
            Enonce := "Which cyclist 'won' 7 Tours de France before being stripped of them for doping?"
            Reponses := array{"Eddy Merckx", "Miguel Indurain", "Bernard Hinault", "Lance Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "In which sport is the 'Stanley Cup' awarded?"
            Reponses := array{"baseball", "American football", "Ice hockey", "basketball"}
            BonneReponse := 2
        question:
            Enonce := "How many players make up a handball team on the court?"
            Reponses := array{"6", "7", "5", "11"}
            BonneReponse := 1
        question:
            Enonce := "Which footballer scored the so-called 'Hand of God' goal in 1986?"
            Reponses := array{"Zidane", "Diego Maradona", "Pele", "Romario"}
            BonneReponse := 1
        question:
            Enonce := "What exact distance does an official marathon cover?"
            Reponses := array{"26 km", "50 km", "42.195 km", "40 km"}
            BonneReponse := 2
        question:
            Enonce := "Which boxer ended his career with a record of 50 wins and 0 losses?"
            Reponses := array{"Floyd Mayweather", "Rocky Marciano", "Mike Tyson", "Muhammad Ali"}
            BonneReponse := 0
        question:
            Enonce := "Which basketball player scored 100 points in a single NBA game?"
            Reponses := array{"LeBron James", "Kobe Bryant", "Michael Jordan", "Wilt Chamberlain"}
            BonneReponse := 3
        question:
            Enonce := "Which racket sport is played on a closed court surrounded by walls?"
            Reponses := array{"badminton", "Squash", "tennis", "padel"}
            BonneReponse := 1
        question:
            Enonce := "How long does a quarter last in the NBA?"
            Reponses := array{"15 minutes", "10 minutes", "20 minutes", "12 minutes"}
            BonneReponse := 3
        question:
            Enonce := "Which player achieved the last men's calendar-year 'Grand Slam' in tennis (1969)?"
            Reponses := array{"Bjorn Borg", "Jimmy Connors", "John McEnroe", "Rod Laver"}
            BonneReponse := 3
        question:
            Enonce := "Which French judoka is a multiple world and Olympic heavyweight champion?"
            Reponses := array{"Lucie Decosse", "Teddy Riner", "David Douillet", "Djamel Bouras"}
            BonneReponse := 1
        question:
            Enonce := "Which country has won the largest total number of Olympic medals in history?"
            Reponses := array{"the USSR", "The United States", "China", "Germany"}
            BonneReponse := 1
        question:
            Enonce := "Which individual trophy rewards the best footballer of the year?"
            Reponses := array{"the Silver Boot", "the European Cup", "The Ballon d'Or", "the Kopa Trophy"}
            BonneReponse := 2
        question:
            Enonce := "Which legendary Italian team is the most decorated in F1 history?"
            Reponses := array{"Ferrari", "Lotus", "McLaren", "Williams"}
            BonneReponse := 0
        question:
            Enonce := "Which Olympic sport is practiced with the foil, the epee or the sabre?"
            Reponses := array{"Fencing", "sport shooting", "archery", "pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "How many events does the decathlon include in athletics?"
            Reponses := array{"7", "5", "10", "12"}
            BonneReponse := 2
        question:
            Enonce := "Which French city hosts the 24 Hours motor race?"
            Reponses := array{"Magny-Cours", "Reims", "Monaco", "Le Mans"}
            BonneReponse := 3
        question:
            Enonce := "How many players from an ice hockey team are on the ice (goalkeeper included)?"
            Reponses := array{"5", "6", "11", "7"}
            BonneReponse := 1
        question:
            Enonce := "Which Jamaican athlete holds the world record for the 100 m (9.58 s)?"
            Reponses := array{"Usain Bolt", "Carl Lewis", "Yohan Blake", "Tyson Gay"}
            BonneReponse := 0
        question:
            Enonce := "In which ancient Greek city were the original Olympic Games held?"
            Reponses := array{"Sparta", "Delphi", "Athens", "Olympia"}
            BonneReponse := 3
        question:
            Enonce := "Which primordial Greek god personifies the Sky, husband of Gaia?"
            Reponses := array{"Chaos", "Cronus", "Uranus", "Erebus"}
            BonneReponse := 2
        question:
            Enonce := "Which Roman goddess watches over the hearth (equivalent of Hestia)?"
            Reponses := array{"Vesta", "Minerva", "Juno", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Which Norse hero slew the dragon Fafnir?"
            Reponses := array{"Tyr", "Sigurd", "Beowulf", "Thor"}
            BonneReponse := 1
        question:
            Enonce := "Which Egyptian god was murdered by his brother Set?"
            Reponses := array{"Thoth", "Anubis", "Osiris", "Horus"}
            BonneReponse := 2
        question:
            Enonce := "Which figure is condemned to forever push a boulder that rolls back down?"
            Reponses := array{"Tantalus", "Prometheus", "Sisyphus", "Atlas"}
            BonneReponse := 2
        question:
            Enonce := "Which hundred-eyed giant guards Io in Greek mythology?"
            Reponses := array{"Typhon", "the Cyclops", "Argus", "Geryon"}
            BonneReponse := 2
        question:
            Enonce := "Which Greek goddess personifies victory and inspires a sports brand?"
            Reponses := array{"Iris", "Hera", "Nike", "Tyche"}
            BonneReponse := 2
        question:
            Enonce := "Which king of Crete had the Labyrinth built by Daedalus?"
            Reponses := array{"Agamemnon", "Minos", "Aegeus", "Priam"}
            BonneReponse := 1
        question:
            Enonce := "Which sorceress turned Odysseus's companions into pigs?"
            Reponses := array{"Medea", "Circe", "Calypso", "Penelope"}
            BonneReponse := 1
        question:
            Enonce := "Which god of destruction is part of the Hindu Trimurti?"
            Reponses := array{"Shiva", "Ganesha", "Indra", "Krishna"}
            BonneReponse := 0
        question:
            Enonce := "What is the name of the cosmic tree that connects the nine Norse worlds?"
            Reponses := array{"the Bifrost", "Valhalla", "Ragnarok", "Yggdrasil"}
            BonneReponse := 3
        question:
            Enonce := "Which Greek goddess of the harvest is the mother of Persephone?"
            Reponses := array{"Hera", "Hestia", "Demeter", "Artemis"}
            BonneReponse := 2
        question:
            Enonce := "Who helped Theseus escape the Labyrinth with a thread?"
            Reponses := array{"Medea", "Ariadne", "Andromeda", "Antigone"}
            BonneReponse := 1
        question:
            Enonce := "Which figure flew too close to the sun with wings of wax?"
            Reponses := array{"Daedalus", "Bellerophon", "Phaethon", "Icarus"}
            BonneReponse := 3
        question:
            Enonce := "Which fire-breathing creature has a lion's head, a goat's body and a serpent's tail?"
            Reponses := array{"the Basilisk", "The Chimera", "the Hydra", "the Griffin"}
            BonneReponse := 1
        question:
            Enonce := "Which Norse god guards the rainbow bridge Bifrost?"
            Reponses := array{"Baldr", "Heimdall", "Freyr", "Tyr"}
            BonneReponse := 1
        question:
            Enonce := "Which Aztec deity is depicted as a feathered serpent?"
            Reponses := array{"Quetzalcoatl", "Huitzilopochtli", "Tezcatlipoca", "Tlaloc"}
            BonneReponse := 0
        question:
            Enonce := "Which king is condemned to eternal hunger and thirst in the Underworld (fruit and water elude him)?"
            Reponses := array{"Sisyphus", "Ixion", "Tantalus", "Midas"}
            BonneReponse := 2
        question:
            Enonce := "Which two-faced Roman god presides over beginnings and doorways?"
            Reponses := array{"Vulcan", "Saturn", "Mars", "Janus"}
            BonneReponse := 3
        question:
            Enonce := "Which giant serpent encircles the world in Norse mythology?"
            Reponses := array{"Jormungandr", "Fenrir", "Nidhoggr", "the Kraken"}
            BonneReponse := 0
        question:
            Enonce := "Which cunning Greek hero devised the stratagem of the Trojan Horse?"
            Reponses := array{"Menelaus", "Odysseus", "Ajax", "Achilles"}
            BonneReponse := 1
        question:
            Enonce := "Which biblical figure survived the Flood aboard an ark?"
            Reponses := array{"Moses", "Jonah", "Abraham", "Noah"}
            BonneReponse := 3
        question:
            Enonce := "Which Greek demigod ascended to Olympus after completing his famous labours?"
            Reponses := array{"Heracles", "Bellerophon", "Theseus", "Perseus"}
            BonneReponse := 0
        question:
            Enonce := "Which Greek god of wine and intoxication is also the god of theatre?"
            Reponses := array{"Dionysus", "Pan", "Hermes", "Apollo"}
            BonneReponse := 0
        question:
            Enonce := "Which river of the Greek Underworld brings oblivion to the souls who drink from it?"
            Reponses := array{"The Lethe", "the Styx", "the Acheron", "the Cocytus"}
            BonneReponse := 0

MakeCultureQuestionsES() : []question =
    array:
        question:
            Enonce := "En que ano comenzo la Primera Guerra Mundial?"
            Reponses := array{"1914", "1939", "1905", "1918"}
            BonneReponse := 0
        question:
            Enonce := "Que acontecimiento marca el 14 de julio de 1789?"
            Reponses := array{"La coronacion de Napoleon", "La toma de la Bastilla", "La batalla de Waterloo", "La fiesta nacional de Estados Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Quien fue el primer emperador de los franceses?"
            Reponses := array{"Carlomagno", "Julio Cesar", "Luis XIV", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "En que ano cayo el Muro de Berlin?"
            Reponses := array{"1989", "1975", "1961", "1991"}
            BonneReponse := 0
        question:
            Enonce := "Quien llego a America en 1492?"
            Reponses := array{"Magallanes", "Vasco de Gama", "Cristobal Colon", "Marco Polo"}
            BonneReponse := 2
        question:
            Enonce := "En que ano termino la Segunda Guerra Mundial en Europa?"
            Reponses := array{"1950", "1939", "1918", "1945"}
            BonneReponse := 3
        question:
            Enonce := "Que pueblo construyo las piramides de Guiza?"
            Reponses := array{"Los romanos", "Los egipcios", "Los aztecas", "Los griegos"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigia la Alemania nazi?"
            Reponses := array{"Adolf Hitler", "Winston Churchill", "Benito Mussolini", "Iosif Stalin"}
            BonneReponse := 0
        question:
            Enonce := "Que reina reino en el Reino Unido de 1952 a 2022?"
            Reponses := array{"Victoria", "Isabel II", "Isabel I", "Maria Estuardo"}
            BonneReponse := 1
        question:
            Enonce := "La guerra de los Cien Anos enfrento a Francia contra que pais?"
            Reponses := array{"Alemania", "Espana", "Inglaterra", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Que general romano conquisto la Galia?"
            Reponses := array{"Augusto", "Julio Cesar", "Neron", "Anibal"}
            BonneReponse := 1
        question:
            Enonce := "En que ano ocurrieron los atentados del 11 de septiembre?"
            Reponses := array{"2005", "1999", "2001", "1998"}
            BonneReponse := 2
        question:
            Enonce := "Que presidente estadounidense abolio la esclavitud durante la Guerra de Secesion?"
            Reponses := array{"Abraham Lincoln", "Franklin Roosevelt", "George Washington", "John Kennedy"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad romana fue sepultada por el Vesubio en el ano 79?"
            Reponses := array{"Cartago", "Roma", "Pompeya", "Atenas"}
            BonneReponse := 2
        question:
            Enonce := "Que rey de Francia es apodado el Rey Sol?"
            Reponses := array{"Francisco I", "Enrique IV", "Luis XIV", "Luis XVI"}
            BonneReponse := 2
        question:
            Enonce := "Quien lidero la lucha no violenta por la independencia de la India?"
            Reponses := array{"Mao Zedong", "Churchill", "Nelson Mandela", "Gandhi"}
            BonneReponse := 3
        question:
            Enonce := "Que gigantesca obra defensiva protege el norte de China?"
            Reponses := array{"La muralla de Babilonia", "La Gran Muralla", "La linea Maginot", "El muro de Adriano"}
            BonneReponse := 1
        question:
            Enonce := "Quien fue el primer presidente de Estados Unidos?"
            Reponses := array{"Benjamin Franklin", "George Washington", "Thomas Jefferson", "Abraham Lincoln"}
            BonneReponse := 1
        question:
            Enonce := "Que ciudad japonesa sufrio la primera bomba atomica en 1945?"
            Reponses := array{"Kioto", "Tokio", "Hiroshima", "Nagasaki"}
            BonneReponse := 2
        question:
            Enonce := "Que batalla de 1815 marco la derrota final de Napoleon?"
            Reponses := array{"Verdun", "Austerlitz", "Waterloo", "Marignano"}
            BonneReponse := 2
        question:
            Enonce := "Que presidente estadounidense fue asesinado en Dallas en 1963?"
            Reponses := array{"Ronald Reagan", "Abraham Lincoln", "John F. Kennedy", "Richard Nixon"}
            BonneReponse := 2
        question:
            Enonce := "Que navegante dirigio la primera expedicion en dar la vuelta al mundo?"
            Reponses := array{"Magallanes", "Cristobal Colon", "James Cook", "Vasco de Gama"}
            BonneReponse := 0
        question:
            Enonce := "En que ano abolio Francia la pena de muerte?"
            Reponses := array{"1945", "1981", "1968", "1995"}
            BonneReponse := 1
        question:
            Enonce := "Que emperador frances vendio Luisiana a Estados Unidos?"
            Reponses := array{"Napoleon III", "Luis XVI", "Carlos X", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "Que dirigente fue apodada la Dama de Hierro en el Reino Unido?"
            Reponses := array{"Angela Merkel", "Theresa May", "Isabel II", "Margaret Thatcher"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la capital de Italia?"
            Reponses := array{"Milan", "Roma", "Napoles", "Venecia"}
            BonneReponse := 1
        question:
            Enonce := "Que rio atraviesa Paris?"
            Reponses := array{"El Loira", "El Rodano", "El Garona", "El Sena"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la montana mas alta del mundo?"
            Reponses := array{"El Kilimanjaro", "El K2", "El Mont Blanc", "El Everest"}
            BonneReponse := 3
        question:
            Enonce := "Que oceano bana la costa oeste de Francia?"
            Reponses := array{"El Artico", "El oceano Indico", "El Pacifico", "El Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el mayor desierto calido del mundo?"
            Reponses := array{"El Sahara", "El Gobi", "El desierto de Atacama", "El Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capital de Japon?"
            Reponses := array{"Pekin", "Seul", "Tokio", "Osaka"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene forma de bota?"
            Reponses := array{"Espana", "Grecia", "Italia", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el pais mas grande del mundo por superficie?"
            Reponses := array{"Estados Unidos", "Canada", "China", "Rusia"}
            BonneReponse := 3
        question:
            Enonce := "En que continente se encuentra Egipto?"
            Reponses := array{"Europa", "Asia", "Africa", "Oceania"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Espana?"
            Reponses := array{"Valencia", "Madrid", "Barcelona", "Sevilla"}
            BonneReponse := 1
        question:
            Enonce := "Que mar bana la Costa Azul?"
            Reponses := array{"El Mediterraneo", "El mar del Norte", "El mar Baltico", "El canal de la Mancha"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el oceano mas grande del mundo?"
            Reponses := array{"El oceano Indico", "El Atlantico", "El Pacifico", "El oceano Artico"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Estados Unidos?"
            Reponses := array{"Los Angeles", "Chicago", "Washington", "Nueva York"}
            BonneReponse := 2
        question:
            Enonce := "Que cordillera separa Francia de Espana?"
            Reponses := array{"Los Vosgos", "Los Pirineos", "Los Alpes", "El Jura"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital de Alemania?"
            Reponses := array{"Munich", "Berlin", "Francfort", "Hamburgo"}
            BonneReponse := 1
        question:
            Enonce := "Que brazo de mar separa Francia del Reino Unido?"
            Reponses := array{"El mar Egeo", "El canal de la Mancha", "El mar Negro", "El golfo de Vizcaya"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital del Reino Unido?"
            Reponses := array{"Londres", "Manchester", "Liverpool", "Edimburgo"}
            BonneReponse := 0
        question:
            Enonce := "Que rio atraviesa Egipto?"
            Reponses := array{"El Nilo", "El Congo", "El Tigris", "El Amazonas"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capital de Belgica?"
            Reponses := array{"Lieja", "Bruselas", "Brujas", "Amberes"}
            BonneReponse := 1
        question:
            Enonce := "En que continente viven los canguros salvajes?"
            Reponses := array{"Africa", "Asia", "Australia", "America del Sur"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Portugal?"
            Reponses := array{"Madrid", "Oporto", "Lisboa", "Sevilla"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la montana mas alta de Francia y de los Alpes?"
            Reponses := array{"El Mont Blanc", "El Pic du Midi", "El Mont Ventoux", "El Puy de Dome"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es apodado el pais del Sol Naciente?"
            Reponses := array{"Tailandia", "China", "Japon", "Corea del Sur"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Rusia?"
            Reponses := array{"Varsovia", "Moscu", "Kiev", "San Petersburgo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mas habitantes del mundo (desde 2023)?"
            Reponses := array{"China", "Indonesia", "India", "Estados Unidos"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la formula quimica del agua?"
            Reponses := array{"O2", "H2O", "CO2", "H2O2"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el simbolo quimico del oro?"
            Reponses := array{"Or", "Go", "Ag", "Au"}
            BonneReponse := 3
        question:
            Enonce := "Que gas es indispensable para la respiracion humana?"
            Reponses := array{"El dioxido de carbono", "El helio", "El oxigeno", "El nitrogeno"}
            BonneReponse := 2
        question:
            Enonce := "A que temperatura hierve el agua a nivel del mar?"
            Reponses := array{"90 C", "100 C", "50 C", "0 C"}
            BonneReponse := 1
        question:
            Enonce := "A que temperatura se congela el agua?"
            Reponses := array{"-10 C", "4 C", "0 C", "32 C"}
            BonneReponse := 2
        question:
            Enonce := "Que metal es liquido a temperatura ambiente?"
            Reponses := array{"El mercurio", "El cobre", "El hierro", "El plomo"}
            BonneReponse := 0
        question:
            Enonce := "Que fuerza nos atrae hacia el suelo?"
            Reponses := array{"La gravedad", "La electricidad", "El magnetismo", "La friccion"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el simbolo quimico del hierro?"
            Reponses := array{"F", "Fr", "Ir", "Fe"}
            BonneReponse := 3
        question:
            Enonce := "Que gas absorben las plantas para la fotosintesis?"
            Reponses := array{"El hidrogeno", "El oxigeno", "El nitrogeno", "El dioxido de carbono"}
            BonneReponse := 3
        question:
            Enonce := "Que cientifico formulo la famosa ecuacion E = mc^2?"
            Reponses := array{"Nikola Tesla", "Isaac Newton", "Albert Einstein", "Galileo"}
            BonneReponse := 2
        question:
            Enonce := "Que instrumento mide la temperatura?"
            Reponses := array{"La brujula", "El barometro", "El cronometro", "El termometro"}
            BonneReponse := 3
        question:
            Enonce := "Que gas, mas ligero que el aire, hace flotar los globos?"
            Reponses := array{"El dioxido de carbono", "El oxigeno", "El helio", "El metano"}
            BonneReponse := 2
        question:
            Enonce := "Que cientifico enuncio la ley de la gravitacion universal?"
            Reponses := array{"Isaac Newton", "Einstein", "Pasteur", "Copernico"}
            BonneReponse := 0
        question:
            Enonce := "Que gas es el mas abundante en la atmosfera terrestre?"
            Reponses := array{"El argon", "El nitrogeno", "El oxigeno", "El dioxido de carbono"}
            BonneReponse := 1
        question:
            Enonce := "En que estado esta el agua cuando esta congelada?"
            Reponses := array{"Solido", "Plasma", "Liquido", "Gaseoso"}
            BonneReponse := 0
        question:
            Enonce := "Que particula del atomo tiene carga negativa?"
            Reponses := array{"El electron", "El proton", "El neutron", "El foton"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento permite observar objetos muy pequenos?"
            Reponses := array{"El microscopio", "El telescopio", "Los prismaticos", "La lupa gigante"}
            BonneReponse := 0
        question:
            Enonce := "Que metal ligero se usa para las latas y los aviones?"
            Reponses := array{"El aluminio", "El mercurio", "El oro", "El plomo"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos colores se distinguen clasicamente en un arcoiris?"
            Reponses := array{"5", "10", "3", "7"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el simbolo quimico del sodio?"
            Reponses := array{"So", "Sd", "S", "Na"}
            BonneReponse := 3
        question:
            Enonce := "Que astro es responsable de las mareas en la Tierra?"
            Reponses := array{"Venus", "La Luna", "Marte", "El viento"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la unidad de medida de la intensidad de la corriente electrica?"
            Reponses := array{"El julio", "El vatio", "El amperio", "El metro"}
            BonneReponse := 2
        question:
            Enonce := "Que se mide en grados Celsius?"
            Reponses := array{"El tiempo", "La distancia", "La temperatura", "El peso"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la unidad basica de la materia?"
            Reponses := array{"El grano", "La molecula", "La celula", "El atomo"}
            BonneReponse := 3
        question:
            Enonce := "Que gas se produce al quemar carbono?"
            Reponses := array{"El oxigeno", "El helio", "El hidrogeno", "El dioxido de carbono"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos pulmones tiene el ser humano?"
            Reponses := array{"3", "1", "4", "2"}
            BonneReponse := 3
        question:
            Enonce := "Que organo bombea la sangre por el cuerpo?"
            Reponses := array{"Los pulmones", "El estomago", "El corazon", "El higado"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos dientes tiene un adulto (incluidas las muelas del juicio)?"
            Reponses := array{"20", "28", "36", "32"}
            BonneReponse := 3
        question:
            Enonce := "Que organo digiere principalmente los alimentos?"
            Reponses := array{"El pulmon", "El estomago", "El cerebro", "El corazon"}
            BonneReponse := 1
        question:
            Enonce := "Que organo es el centro del sistema nervioso?"
            Reponses := array{"El rinon", "El higado", "El corazon", "El cerebro"}
            BonneReponse := 3
        question:
            Enonce := "Como se llama el hueso del muslo?"
            Reponses := array{"El humero", "El femur", "La tibia", "La clavicula"}
            BonneReponse := 1
        question:
            Enonce := "Que grupo de animales amamanta a sus crias?"
            Reponses := array{"Las aves", "Los peces", "Los mamiferos", "Los reptiles"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas patas tiene una arana?"
            Reponses := array{"4", "8", "10", "6"}
            BonneReponse := 1
        question:
            Enonce := "Cuantas patas tiene un insecto?"
            Reponses := array{"6", "2", "4", "8"}
            BonneReponse := 0
        question:
            Enonce := "Que producen las abejas?"
            Reponses := array{"La leche", "La seda", "La miel", "La cera de los oidos"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el animal mas grande del mundo?"
            Reponses := array{"El elefante", "El tiburon blanco", "La ballena azul", "El diplodocus"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas cavidades tiene el corazon humano?"
            Reponses := array{"2", "4", "3", "1"}
            BonneReponse := 1
        question:
            Enonce := "Que vitamina se produce gracias al sol?"
            Reponses := array{"La vitamina A", "La vitamina B12", "La vitamina C", "La vitamina D"}
            BonneReponse := 3
        question:
            Enonce := "Que organo filtra la sangre y produce la orina?"
            Reponses := array{"El higado", "Los rinones", "El corazon", "Los pulmones"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el organo mas grande del cuerpo humano?"
            Reponses := array{"Los pulmones", "Los intestinos", "El higado", "La piel"}
            BonneReponse := 3
        question:
            Enonce := "Que celula sanguinea transporta el oxigeno?"
            Reponses := array{"El globulo rojo", "El globulo blanco", "La neurona", "La plaqueta"}
            BonneReponse := 0
        question:
            Enonce := "Que reptil puede cambiar de color?"
            Reponses := array{"El camaleon", "La tortuga", "El cocodrilo", "La cobra"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos sentidos tiene clasicamente el ser humano?"
            Reponses := array{"6", "7", "5", "3"}
            BonneReponse := 2
        question:
            Enonce := "Que gas exhalamos principalmente?"
            Reponses := array{"El hidrogeno", "El oxigeno", "El helio", "El dioxido de carbono"}
            BonneReponse := 3
        question:
            Enonce := "Que organo permite respirar?"
            Reponses := array{"Los pulmones", "Los rinones", "El higado", "El corazon"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos dedos tiene una mano humana?"
            Reponses := array{"10", "6", "5", "4"}
            BonneReponse := 2
        question:
            Enonce := "Que liquido rojo circula por nuestros vasos?"
            Reponses := array{"La bilis", "La sangre", "La linfa", "La saliva"}
            BonneReponse := 1
        question:
            Enonce := "Que sentido se asocia con los ojos?"
            Reponses := array{"El gusto", "El oido", "La vista", "El olfato"}
            BonneReponse := 2
        question:
            Enonce := "De que se alimenta un animal herbivoro?"
            Reponses := array{"Solo de insectos", "De peces", "De plantas", "De carne"}
            BonneReponse := 2
        question:
            Enonce := "Que organo humano puede regenerarse en gran parte?"
            Reponses := array{"El corazon", "El cerebro", "El higado", "El ojo"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el animal terrestre mas rapido?"
            Reponses := array{"El guepardo", "El caballo", "El galgo", "El leon"}
            BonneReponse := 0
        question:
            Enonce := "Que animal es apodado el rey de los animales?"
            Reponses := array{"El elefante", "El aguila", "El leon", "El tigre"}
            BonneReponse := 2
        question:
            Enonce := "Que gran ave africana no vuela pero corre muy rapido?"
            Reponses := array{"El avestruz", "El flamenco", "El tucan", "El aguila"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el animal terrestre mas grande?"
            Reponses := array{"El elefante", "La jirafa", "El hipopotamo", "El rinoceronte"}
            BonneReponse := 0
        question:
            Enonce := "Que arbol produce las bellotas?"
            Reponses := array{"El pino", "El arce", "El roble", "El abedul"}
            BonneReponse := 2
        question:
            Enonce := "Que animal tiene trompa?"
            Reponses := array{"El rinoceronte", "El tapir", "El elefante", "El bufalo"}
            BonneReponse := 2
        question:
            Enonce := "Que ave simboliza la paz?"
            Reponses := array{"El cuervo", "El gorrion", "La paloma", "El halcon"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas jorobas tiene un dromedario?"
            Reponses := array{"0", "2", "3", "1"}
            BonneReponse := 3
        question:
            Enonce := "Que animal hiberna durante el invierno y es conocido por ello?"
            Reponses := array{"El lobo", "El ciervo", "El oso", "El zorro"}
            BonneReponse := 2
        question:
            Enonce := "Que flor gira su cabeza hacia el sol?"
            Reponses := array{"El girasol", "La rosa", "La amapola", "El tulipan"}
            BonneReponse := 0
        question:
            Enonce := "Que ave blanca y negra vive en la Antartida y no vuela?"
            Reponses := array{"El pinguino", "El tucan", "El buho", "La gaviota"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la selva tropical mas grande del mundo?"
            Reponses := array{"La Selva Negra", "La cuenca del Congo", "El bosque de Siberia", "La Amazonia"}
            BonneReponse := 3
        question:
            Enonce := "Que reptil tiene caparazon?"
            Reponses := array{"El cocodrilo", "La serpiente", "La tortuga", "El lagarto"}
            BonneReponse := 2
        question:
            Enonce := "Que mamifero es capaz de volar?"
            Reponses := array{"El buho", "La ardilla", "El murcielago", "El colibri"}
            BonneReponse := 2
        question:
            Enonce := "Que animal teje una tela para atrapar a sus presas?"
            Reponses := array{"La arana", "La abeja", "La hormiga", "La avispa"}
            BonneReponse := 0
        question:
            Enonce := "Que gran simio comparte mas genes con el ser humano?"
            Reponses := array{"El orangutan", "El chimpance", "El babuino", "El gorila"}
            BonneReponse := 1
        question:
            Enonce := "Que ave nocturna ulula?"
            Reponses := array{"El petirrojo", "El pato", "La paloma", "La lechuza"}
            BonneReponse := 3
        question:
            Enonce := "La jirafa es un animal..."
            Reponses := array{"insectivoro", "herbivoro", "carnivoro", "omnivoro"}
            BonneReponse := 1
        question:
            Enonce := "Que insecto produce la seda?"
            Reponses := array{"El gusano de seda", "La hormiga", "La mariposa", "La abeja"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el felino mas grande del mundo?"
            Reponses := array{"El leon", "El jaguar", "El tigre", "El leopardo"}
            BonneReponse := 2
        question:
            Enonce := "Que mamifero marino muy inteligente salta fuera del agua?"
            Reponses := array{"El delfin", "El tiburon", "La foca", "La medusa"}
            BonneReponse := 0
        question:
            Enonce := "Que arbol mantiene sus agujas verdes todo el ano?"
            Reponses := array{"El abeto", "El roble", "El platano", "El sauce"}
            BonneReponse := 0
        question:
            Enonce := "Que animal es considerado el mejor amigo del hombre?"
            Reponses := array{"El gato", "El caballo", "El perro", "El loro"}
            BonneReponse := 2
        question:
            Enonce := "Que anfibio vive cerca de las charcas y croa?"
            Reponses := array{"El caracol", "La libelula", "La rana", "El lagarto"}
            BonneReponse := 2
        question:
            Enonce := "De que color se vuelve a menudo una hoja seca en otono?"
            Reponses := array{"Marron/rojiza", "Violeta", "Azul", "Negra"}
            BonneReponse := 0
        question:
            Enonce := "Que astro se encuentra en el centro de nuestro sistema solar?"
            Reponses := array{"Jupiter", "La Tierra", "El Sol", "La Luna"}
            BonneReponse := 2
        question:
            Enonce := "Que planeta es apodado el planeta rojo?"
            Reponses := array{"Saturno", "Mercurio", "Marte", "Venus"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el satelite natural de la Tierra?"
            Reponses := array{"El Sol", "Venus", "La Luna", "Marte"}
            BonneReponse := 2
        question:
            Enonce := "Quien fue el primer hombre en caminar sobre la Luna?"
            Reponses := array{"Buzz Aldrin", "Neil Armstrong", "Yuri Gagarin", "Thomas Pesquet"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el planeta mas grande del sistema solar?"
            Reponses := array{"Jupiter", "Neptuno", "La Tierra", "Saturno"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos planetas tiene el sistema solar?"
            Reponses := array{"8", "7", "10", "9"}
            BonneReponse := 0
        question:
            Enonce := "Que planeta es famoso por sus anillos?"
            Reponses := array{"Marte", "Saturno", "Mercurio", "Venus"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama la galaxia que contiene nuestro sistema solar?"
            Reponses := array{"La galaxia del Remolino", "Andromeda", "La Osa Mayor", "La Via Lactea"}
            BonneReponse := 3
        question:
            Enonce := "Que planeta es el mas cercano al Sol?"
            Reponses := array{"Venus", "Marte", "La Tierra", "Mercurio"}
            BonneReponse := 3
        question:
            Enonce := "En que ano camino el hombre sobre la Luna por primera vez?"
            Reponses := array{"1969", "1961", "1975", "1958"}
            BonneReponse := 0
        question:
            Enonce := "Que agencia espacial es estadounidense?"
            Reponses := array{"La NASA", "El CNES", "Roscosmos", "La ESA"}
            BonneReponse := 0
        question:
            Enonce := "En que planeta vivimos?"
            Reponses := array{"La Tierra", "Venus", "Marte", "La Luna"}
            BonneReponse := 0
        question:
            Enonce := "Como se llama el fenomeno en el que la Luna oculta el Sol?"
            Reponses := array{"Una aurora boreal", "Un eclipse solar", "Una supernova", "Un cometa"}
            BonneReponse := 1
        question:
            Enonce := "Que planeta es apodado el lucero del alba?"
            Reponses := array{"Venus", "Saturno", "Marte", "Jupiter"}
            BonneReponse := 0
        question:
            Enonce := "Que vehiculo impulsa a los astronautas al espacio?"
            Reponses := array{"Un avion", "Un cohete", "Un submarino", "Un globo aerostatico"}
            BonneReponse := 1
        question:
            Enonce := "Que famoso telescopio espacial fue lanzado en 1990?"
            Reponses := array{"Kepler", "Voyager", "Galileo", "Hubble"}
            BonneReponse := 3
        question:
            Enonce := "Cuanto tarda la Tierra en dar la vuelta al Sol?"
            Reponses := array{"Un mes", "Diez anos", "Aproximadamente un ano", "Un dia"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la forma de la Tierra?"
            Reponses := array{"Un cubo", "Una esfera", "Un cono", "Un disco plano"}
            BonneReponse := 1
        question:
            Enonce := "Que provoca la alternancia del dia y la noche?"
            Reponses := array{"Las mareas", "La rotacion de la Tierra", "La Luna", "Las nubes"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama el estudio de los astros y el universo?"
            Reponses := array{"La meteorologia", "La astronomia", "La biologia", "La geologia"}
            BonneReponse := 1
        question:
            Enonce := "Que famoso astronauta frances estuvo en la Estacion Espacial Internacional?"
            Reponses := array{"Thomas Pesquet", "Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin"}
            BonneReponse := 0
        question:
            Enonce := "Que primer ser humano fue al espacio en 1961?"
            Reponses := array{"Alan Shepard", "John Glenn", "Neil Armstrong", "Yuri Gagarin"}
            BonneReponse := 3
        question:
            Enonce := "Que objeto celeste tiene una larga estela luminosa y regresa periodicamente?"
            Reponses := array{"La nebulosa", "El cometa", "El planeta", "El agujero negro"}
            BonneReponse := 1
        question:
            Enonce := "Que fuerza mantiene a los planetas en orbita alrededor del Sol?"
            Reponses := array{"La gravedad", "El viento solar", "El magnetismo terrestre", "La luz"}
            BonneReponse := 0
        question:
            Enonce := "Que prenda protege al astronauta en el espacio?"
            Reponses := array{"El chaleco salvavidas", "El impermeable", "El traje espacial", "La cota de malla"}
            BonneReponse := 2
        question:
            Enonce := "Quien pinto la Mona Lisa?"
            Reponses := array{"Monet", "Leonardo da Vinci", "Van Gogh", "Picasso"}
            BonneReponse := 1
        question:
            Enonce := "En que museo se exhibe la Mona Lisa?"
            Reponses := array{"El Museo Britanico", "El Louvre", "El Prado", "El Museo de Orsay"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor se corto la oreja y pinto La noche estrellada?"
            Reponses := array{"Claude Monet", "Salvador Dali", "Vincent van Gogh", "Rembrandt"}
            BonneReponse := 2
        question:
            Enonce := "Que artista espanol es cofundador del cubismo?"
            Reponses := array{"Miro", "Pablo Picasso", "Goya", "Velazquez"}
            BonneReponse := 1
        question:
            Enonce := "Que estatua, regalo de Francia, se alza en Nueva York?"
            Reponses := array{"El David", "La Estatua de la Libertad", "El Pensador", "La Venus de Milo"}
            BonneReponse := 1
        question:
            Enonce := "Quien esculpio El Pensador?"
            Reponses := array{"Miguel Angel", "Camille Claudel", "Donatello", "Auguste Rodin"}
            BonneReponse := 3
        question:
            Enonce := "Que famoso techo pinto Miguel Angel en el Vaticano?"
            Reponses := array{"La Capilla Sixtina", "El Panteon", "San Marcos", "Notre-Dame"}
            BonneReponse := 0
        question:
            Enonce := "Que monumento de la antigua Roma es un gran anfiteatro?"
            Reponses := array{"La Acropolis", "La Torre de Pisa", "El Coliseo", "El Partenon"}
            BonneReponse := 2
        question:
            Enonce := "A que movimiento pertenece Claude Monet?"
            Reponses := array{"El cubismo", "El surrealismo", "El barroco", "El impresionismo"}
            BonneReponse := 3
        question:
            Enonce := "Que monumento funerario de marmol blanco se encuentra en la India?"
            Reponses := array{"Machu Picchu", "El Taj Mahal", "Angkor Wat", "La Gran Muralla"}
            BonneReponse := 1
        question:
            Enonce := "Que obra de Edvard Munch representa una figura gritando?"
            Reponses := array{"Los girasoles", "El grito", "La Mona Lisa", "La libertad guiando al pueblo"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor del Renacimiento realizo La creacion de Adan?"
            Reponses := array{"Rafael", "Miguel Angel", "Tiziano", "Botticelli"}
            BonneReponse := 1
        question:
            Enonce := "Que catedral gotica de Paris se incendio en 2019?"
            Reponses := array{"La Sainte-Chapelle", "El Sacre-Coeur", "Notre-Dame de Paris", "La catedral de Reims"}
            BonneReponse := 2
        question:
            Enonce := "Que artista pinto Guernica?"
            Reponses := array{"Matisse", "Dali", "Van Gogh", "Pablo Picasso"}
            BonneReponse := 3
        question:
            Enonce := "Cuales son los tres colores primarios?"
            Reponses := array{"Verde, naranja, violeta", "Rosa, marron, beige", "Negro, blanco, gris", "Rojo, azul, amarillo"}
            BonneReponse := 3
        question:
            Enonce := "Que piramide de cristal se alza frente al Louvre?"
            Reponses := array{"La piramide de Keops", "La piramide del Sol", "La Piramide del Louvre", "La piramide de Pei en Pekin"}
            BonneReponse := 2
        question:
            Enonce := "Que monumento prehistorico hecho de grandes piedras erguidas se encuentra en Inglaterra?"
            Reponses := array{"El Coliseo", "El Partenon", "Carnac", "Stonehenge"}
            BonneReponse := 3
        question:
            Enonce := "Que arte escenico utiliza la danza clasica de puntas?"
            Reponses := array{"El teatro", "La opera", "El ballet", "El circo"}
            BonneReponse := 2
        question:
            Enonce := "Que herramienta principal usa un pintor?"
            Reponses := array{"El pincel", "El martillo", "El cincel", "La paleta"}
            BonneReponse := 0
        question:
            Enonce := "Que pais invento el origami, el arte del plegado de papel?"
            Reponses := array{"Francia", "India", "Japon", "China"}
            BonneReponse := 2
        question:
            Enonce := "Que museo parisino, antigua estacion de tren, alberga el arte impresionista?"
            Reponses := array{"El Louvre", "El Grand Palais", "El Centro Pompidou", "El Museo de Orsay"}
            BonneReponse := 3
        question:
            Enonce := "Que famosa torre de hierro se construyo en Paris en 1889?"
            Reponses := array{"La Torre de Londres", "el Big Ben", "La Torre Eiffel", "La Torre de Pisa"}
            BonneReponse := 2
        question:
            Enonce := "Que material blanco, extraido en Carrara, se usa a menudo para esculpir?"
            Reponses := array{"La madera", "El vidrio", "El bronce", "El marmol"}
            BonneReponse := 3
        question:
            Enonce := "Que famosa escultura griega de mujer no tiene brazos?"
            Reponses := array{"El David", "El Pensador", "La Mona Lisa", "La Venus de Milo"}
            BonneReponse := 3
        question:
            Enonce := "De que color son los famosos Girasoles de Van Gogh?"
            Reponses := array{"Verde", "Rojo", "Azul", "Amarillo"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Los Miserables?"
            Reponses := array{"Victor Hugo", "Emile Zola", "Balzac", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Romeo y Julieta?"
            Reponses := array{"Dante", "Cervantes", "Moliere", "William Shakespeare"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El Principito?"
            Reponses := array{"Camus", "Antoine de Saint-Exupery", "La Fontaine", "Jules Verne"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio la saga Harry Potter?"
            Reponses := array{"Tolkien", "J.K. Rowling", "Stephen King", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Que famoso detective creo Arthur Conan Doyle?"
            Reponses := array{"Maigret", "Hercules Poirot", "Arsene Lupin", "Sherlock Holmes"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio fabulas como El cuervo y el zorro?"
            Reponses := array{"Andersen", "Jean de La Fontaine", "Charles Perrault", "Victor Hugo"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Los tres mosqueteros?"
            Reponses := array{"Alexandre Dumas", "Jules Verne", "Stendhal", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Que sonador caballero es el heroe de la novela de Cervantes?"
            Reponses := array{"Robin Hood", "Ivanhoe", "Don Quijote", "Lanzarote"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Veinte mil leguas de viaje submarino?"
            Reponses := array{"Hemingway", "H.G. Wells", "Jules Verne", "Daniel Defoe"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El Senor de los Anillos?"
            Reponses := array{"J.R.R. Tolkien", "George R.R. Martin", "C.S. Lewis", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Que poeta frances escribio Las flores del mal?"
            Reponses := array{"Charles Baudelaire", "Verlaine", "Rimbaud", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Que celebre frase proviene de la obra Hamlet?"
            Reponses := array{"Ser o no ser", "A las armas, ciudadanos", "Veni, vidi, vici", "Pienso, luego existo"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio cuentos como Cenicienta y Caperucita Roja?"
            Reponses := array{"Victor Hugo", "Moliere", "Charles Perrault", "La Fontaine"}
            BonneReponse := 2
        question:
            Enonce := "Que autor danes escribio La Sirenita?"
            Reponses := array{"Hans Christian Andersen", "Lewis Carroll", "Charles Perrault", "Collodi"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio la novela 1984?"
            Reponses := array{"Jules Verne", "Ray Bradbury", "George Orwell", "Aldous Huxley"}
            BonneReponse := 2
        question:
            Enonce := "Que novela de Daniel Defoe narra a un naufrago en una isla desierta?"
            Reponses := array{"Moby Dick", "La isla del tesoro", "Viernes", "Robinson Crusoe"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Nuestra Senora de Paris?"
            Reponses := array{"Flaubert", "Victor Hugo", "Zola", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Que gran cachalote blanco es perseguido en la novela de Melville?"
            Reponses := array{"Nemo", "Moby Dick", "Leviatan", "Willy"}
            BonneReponse := 1
        question:
            Enonce := "En que idioma escribio Shakespeare sus obras?"
            Reponses := array{"Latin", "Frances", "Italiano", "Ingles"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos mosqueteros figuran en el titulo de la novela de Dumas?"
            Reponses := array{"Tres", "Cuatro", "Cinco", "Dos"}
            BonneReponse := 0
        question:
            Enonce := "Que autor escribio Germinal?"
            Reponses := array{"Maupassant", "Proust", "Emile Zola", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Que ladron de guante blanco creo Maurice Leblanc?"
            Reponses := array{"Robin Hood", "Fantomas", "Sherlock Holmes", "Arsene Lupin"}
            BonneReponse := 3
        question:
            Enonce := "Que jovencita sigue a un conejo blanco por una madriguera (Lewis Carroll)?"
            Reponses := array{"Wendy", "Alicia", "Dorothy", "Heidi"}
            BonneReponse := 1
        question:
            Enonce := "Que autor escribio El conde de Montecristo?"
            Reponses := array{"Jules Verne", "Balzac", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Que filosofo frances escribio Candido?"
            Reponses := array{"Voltaire", "Montesquieu", "Diderot", "Rousseau"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento tiene teclas negras y blancas?"
            Reponses := array{"El piano", "El violin", "La guitarra", "La trompeta"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas cuerdas tiene una guitarra clasica?"
            Reponses := array{"12", "6", "8", "4"}
            BonneReponse := 1
        question:
            Enonce := "Quien compuso la 9.a sinfonia y su Himno a la Alegria?"
            Reponses := array{"Beethoven", "Bach", "Chopin", "Mozart"}
            BonneReponse := 0
        question:
            Enonce := "Que grupo britanico reunia a John, Paul, George y Ringo?"
            Reponses := array{"Los Beatles", "Queen", "The Rolling Stones", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Que cantante es apodado el rey del pop?"
            Reponses := array{"Elvis Presley", "Freddie Mercury", "Prince", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Que cantante estadounidense es apodado el rey del rock?"
            Reponses := array{"Johnny Hallyday", "Elvis Presley", "Chuck Berry", "Bob Dylan"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor austriaco fue un nino prodigio y escribio un Requiem?"
            Reponses := array{"Mozart", "Beethoven", "Vivaldi", "Haydn"}
            BonneReponse := 0
        question:
            Enonce := "Con que objeto se toca el violin?"
            Reponses := array{"Un arco", "Un martillo", "Una batuta", "Una pua"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas notas tiene la escala (do, re, mi...)?"
            Reponses := array{"7", "8", "5", "12"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento de viento de metal tiene una vara?"
            Reponses := array{"El clarinete", "El saxofon", "El trombon", "La flauta"}
            BonneReponse := 2
        question:
            Enonce := "Que gran instrumento de tubos se encuentra en las iglesias?"
            Reponses := array{"El clavecin", "El organo", "El piano", "El arpa"}
            BonneReponse := 1
        question:
            Enonce := "Que danza vienesa se toca en tres tiempos?"
            Reponses := array{"El vals", "La salsa", "El tango", "El rock"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirige una orquesta con una batuta?"
            Reponses := array{"El compositor", "El solista", "El director de orquesta", "El regidor"}
            BonneReponse := 2
        question:
            Enonce := "De que pais es originario el reggae (Bob Marley)?"
            Reponses := array{"Brasil", "Senegal", "Jamaica", "Cuba"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas cuerdas tiene un violin?"
            Reponses := array{"6", "3", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad estadounidense se considera la cuna del jazz?"
            Reponses := array{"Nueva York", "Detroit", "Nueva Orleans", "Chicago"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos musicos tocan en un cuarteto?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Que compositor barroco aleman escribio la Tocata y fuga en re menor?"
            Reponses := array{"Mozart", "Wagner", "Johann Sebastian Bach", "Beethoven"}
            BonneReponse := 2
        question:
            Enonce := "Que instrumento de cuerda es el mas grave de la orquesta?"
            Reponses := array{"El contrabajo", "El violin", "El arpa", "El violonchelo"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento tiene 88 teclas?"
            Reponses := array{"El acordeon", "El piano", "El xilofono", "El organo"}
            BonneReponse := 1
        question:
            Enonce := "De que pais viene el flamenco?"
            Reponses := array{"Portugal", "Espana", "Italia", "Mexico"}
            BonneReponse := 1
        question:
            Enonce := "Que voz femenina es la mas aguda?"
            Reponses := array{"Soprano", "Tenor", "Bajo", "Contralto"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento de viento con lengueta es emblematico del jazz?"
            Reponses := array{"El saxofon", "El violin", "El arpa", "La bateria"}
            BonneReponse := 0
        question:
            Enonce := "En que soporte analogico se escuchaba musica antes del CD?"
            Reponses := array{"El disco de vinilo", "La tarjeta de memoria", "La memoria USB", "El DVD"}
            BonneReponse := 0
        question:
            Enonce := "Que familia de instrumentos incluye la bateria y el tambor?"
            Reponses := array{"La madera", "La percusion", "El metal", "La cuerda"}
            BonneReponse := 1
        question:
            Enonce := "Que raton es la mascota de los estudios Disney?"
            Reponses := array{"Stuart", "Mickey", "Jerry", "Speedy"}
            BonneReponse := 1
        question:
            Enonce := "Que personaje de 'Star Wars' dice 'Yo soy tu padre'?"
            Reponses := array{"Han Solo", "Luke", "Darth Vader", "Yoda"}
            BonneReponse := 2
        question:
            Enonce := "Que estudio realizo 'Toy Story'?"
            Reponses := array{"Warner", "Universal", "Pixar", "DreamWorks"}
            BonneReponse := 2
        question:
            Enonce := "Que ogro verde es el heroe de una pelicula de DreamWorks?"
            Reponses := array{"Gollum", "Yoda", "Shrek", "Hulk"}
            BonneReponse := 2
        question:
            Enonce := "Que arqueologo lleva un latigo y un sombrero en el cine?"
            Reponses := array{"Indiana Jones", "Tintin", "James Bond", "Lara Croft"}
            BonneReponse := 0
        question:
            Enonce := "Que pelicula de Steven Spielberg muestra un tiburon gigante?"
            Reponses := array{"Titanic", "Tiburon", "Buscando a Nemo", "Jurassic Park"}
            BonneReponse := 1
        question:
            Enonce := "Que premio dorado se entrega en el cine estadounidense?"
            Reponses := array{"La Palma de Oro", "El Cesar", "El Golden Buzzer", "El Oscar"}
            BonneReponse := 3
        question:
            Enonce := "Que gran festival de cine se celebra en Francia y entrega la Palma de Oro?"
            Reponses := array{"Cannes", "Berlin", "Venecia", "Sundance"}
            BonneReponse := 0
        question:
            Enonce := "Que superheroe protege la ciudad de Gotham?"
            Reponses := array{"Superman", "Batman", "Iron Man", "Spider-Man"}
            BonneReponse := 1
        question:
            Enonce := "En la pelicula 'Titanic', como se llaman los dos protagonistas?"
            Reponses := array{"Romeo y Julieta", "Leo y Kate", "Tom y Jerry", "Jack y Rose"}
            BonneReponse := 3
        question:
            Enonce := "Que pequeno extraterrestre quiere 'llamar a casa'?"
            Reponses := array{"Alf", "Yoda", "E.T.", "Stitch"}
            BonneReponse := 2
        question:
            Enonce := "Que familia amarilla protagoniza un famoso dibujo animado?"
            Reponses := array{"Los Picapiedra", "South Park", "Padre de familia", "Los Simpson"}
            BonneReponse := 3
        question:
            Enonce := "Que agente secreto britanico lleva el numero 007?"
            Reponses := array{"Ethan Hunt", "Jason Bourne", "Austin Powers", "James Bond"}
            BonneReponse := 3
        question:
            Enonce := "Que princesa Disney pierde un zapato de cristal?"
            Reponses := array{"Cenicienta", "Blancanieves", "Rapunzel", "Bella"}
            BonneReponse := 0
        question:
            Enonce := "Que superheroe de Marvel lanza telaranas?"
            Reponses := array{"Spider-Man", "Thor", "Capitan America", "Hulk"}
            BonneReponse := 0
        question:
            Enonce := "Que pelicula animada de Disney sigue a un joven leon llamado Simba?"
            Reponses := array{"Madagascar", "El Rey Leon", "Bambi", "Tarzan"}
            BonneReponse := 1
        question:
            Enonce := "Que pequeno y sabio maestro Jedi verde aparece en 'Star Wars'?"
            Reponses := array{"Yoda", "Chewbacca", "R2-D2", "Jabba"}
            BonneReponse := 0
        question:
            Enonce := "Que pez payaso es buscado por su padre en una pelicula de Pixar?"
            Reponses := array{"Willy", "Nemo", "Dory", "Flipper"}
            BonneReponse := 1
        question:
            Enonce := "Que vaquero es un juguete protagonista de 'Toy Story'?"
            Reponses := array{"Jessie", "Woody", "Buzz", "Lucky Luke"}
            BonneReponse := 1
        question:
            Enonce := "Que actor del cine mudo llevaba un bombin, un baston y un pequeno bigote?"
            Reponses := array{"Mr. Bean", "Louis de Funes", "Buster Keaton", "Charlie Chaplin"}
            BonneReponse := 3
        question:
            Enonce := "Que ciborg dice 'I'll be back' en una pelicula de ciencia ficcion?"
            Reponses := array{"Iron Man", "RoboCop", "Terminator", "Wall-E"}
            BonneReponse := 2
        question:
            Enonce := "Que boxeador de Filadelfia es interpretado por Sylvester Stallone?"
            Reponses := array{"Rambo", "Rocky", "Creed", "Tyson"}
            BonneReponse := 1
        question:
            Enonce := "Que saga presenta a Frodo y un anillo que debe ser destruido?"
            Reponses := array{"El Senor de los Anillos", "Narnia", "Solo El Hobbit", "Harry Potter"}
            BonneReponse := 0
        question:
            Enonce := "Que pequena sirena pelirroja es una heroina de Disney?"
            Reponses := array{"Elsa", "Vaiana", "Ariel", "Jasmin"}
            BonneReponse := 2
        question:
            Enonce := "Que personaje de Disney es un titere de madera cuya nariz crece cuando miente?"
            Reponses := array{"Pinpin", "Pinocho", "Peter Pan", "Aladdin"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos jugadores forman un equipo de futbol en el campo?"
            Reponses := array{"11", "7", "15", "9"}
            BonneReponse := 0
        question:
            Enonce := "Cada cuantos anos se celebran los Juegos Olimpicos de verano?"
            Reponses := array{"Cada 4 anos", "Cada 5 anos", "Cada 3 anos", "Cada 2 anos"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte se juega en Roland-Garros?"
            Reponses := array{"El balonmano", "El golf", "El rugby", "El tenis"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos anillos hay en la bandera olimpica?"
            Reponses := array{"3", "4", "6", "5"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte se juega con un balon naranja y canastas?"
            Reponses := array{"El futbol", "El balonmano", "El baloncesto", "El voleibol"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte practica el velocista Usain Bolt?"
            Reponses := array{"El ciclismo", "El atletismo", "La natacion", "El tenis"}
            BonneReponse := 1
        question:
            Enonce := "Que trofeo mundial de futbol se disputa cada cuatro anos?"
            Reponses := array{"La Eurocopa", "La Liga de Campeones", "La Copa del Mundo", "La Copa de Francia"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos jugadores de un equipo de baloncesto estan en la cancha?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte es apodado la pequena reina?"
            Reponses := array{"La equitacion", "El remo", "El ciclismo", "El boxeo"}
            BonneReponse := 2
        question:
            Enonce := "En que deporte se marca un ensayo?"
            Reponses := array{"El rugby", "El tenis", "El baloncesto", "El futbol"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos hoyos tiene un campo de golf clasico?"
            Reponses := array{"24", "9", "18", "12"}
            BonneReponse := 2
        question:
            Enonce := "El Tour de Francia es una carrera de que deporte?"
            Reponses := array{"El automovilismo", "El motociclismo", "El ciclismo", "El atletismo"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte de combate japones se practica en kimono con agarres y cinturones?"
            Reponses := array{"La lucha grecorromana", "La esgrima", "El judo", "El boxeo"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos jugadores forman un equipo de voleibol en la cancha?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte se juega con una raqueta y un volante?"
            Reponses := array{"El ping-pong", "El squash", "El tenis", "El badminton"}
            BonneReponse := 3
        question:
            Enonce := "Que boxeador es apodado The Greatest?"
            Reponses := array{"Floyd Mayweather", "Mike Tyson", "Muhammad Ali", "Rocky Marciano"}
            BonneReponse := 2
        question:
            Enonce := "Que jugador defiende la porteria en el futbol?"
            Reponses := array{"El portero", "El arbitro", "El delantero", "El defensa"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte mitico se juega sobre la hierba de Wimbledon?"
            Reponses := array{"El criquet", "El golf", "El tenis", "El polo"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la distancia aproximada de un maraton?"
            Reponses := array{"21 km", "10 km", "100 km", "42 km"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte se practica en el agua con braza y crol?"
            Reponses := array{"La natacion", "La vela", "Los saltos", "El remo"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte de invierno consiste en descender por una pista nevada?"
            Reponses := array{"El esqui", "El curling", "El surf", "El patinaje artistico"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos puntos vale una canasta normal en baloncesto (fuera de la zona de 3 puntos)?"
            Reponses := array{"1", "2", "5", "3"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte practica la estrella estadounidense Michael Jordan?"
            Reponses := array{"El baloncesto", "El golf", "El futbol americano", "El beisbol"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte se juega con un stick y un disco sobre el hielo?"
            Reponses := array{"El curling", "El hockey sobre hielo", "El bobsleigh", "El patinaje"}
            BonneReponse := 1
        question:
            Enonce := "En que ciudad se encuentra la sede del Comite Olimpico Internacional?"
            Reponses := array{"Atenas", "Ginebra", "Lausana", "Paris"}
            BonneReponse := 2
        question:
            Enonce := "Quien es el rey de los dioses griegos, senor del rayo?"
            Reponses := array{"Poseidon", "Zeus", "Hades", "Apolo"}
            BonneReponse := 1
        question:
            Enonce := "Que dios griego reina sobre los mares?"
            Reponses := array{"Hermes", "Ares", "Poseidon", "Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Que heroe griego tiene un talon como unico punto debil?"
            Reponses := array{"Ulises", "Teseo", "Perseo", "Aquiles"}
            BonneReponse := 3
        question:
            Enonce := "Que heroe griego realizo los doce trabajos?"
            Reponses := array{"Ulises", "Hercules", "Aquiles", "Jason"}
            BonneReponse := 1
        question:
            Enonce := "Que criatura con cuerpo de caballo y torso de hombre existe en la mitologia griega?"
            Reponses := array{"La sirena", "El ciclope", "El minotauro", "El centauro"}
            BonneReponse := 3
        question:
            Enonce := "Que criatura con cabeza de toro vive en el laberinto?"
            Reponses := array{"El centauro", "La esfinge", "La Medusa", "El Minotauro"}
            BonneReponse := 3
        question:
            Enonce := "Que dios nordico del trueno empuna un martillo?"
            Reponses := array{"Zeus", "Odin", "Thor", "Loki"}
            BonneReponse := 2
        question:
            Enonce := "Que ave legendaria renace de sus cenizas?"
            Reponses := array{"El dragon", "El aguila", "El fenix", "El grifo"}
            BonneReponse := 2
        question:
            Enonce := "Que dios egipcio tiene cabeza de chacal y preside a los muertos?"
            Reponses := array{"Osiris", "Horus", "Ra", "Anubis"}
            BonneReponse := 3
        question:
            Enonce := "Que criatura femenina tiene serpientes en lugar de cabello?"
            Reponses := array{"Pandora", "Afrodita", "Atenea", "Medusa"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el libro sagrado del islam?"
            Reponses := array{"Los Vedas", "La Biblia", "La Tora", "El Coran"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el libro sagrado de los cristianos?"
            Reponses := array{"El Talmud", "La Biblia", "El Coran", "La Tora"}
            BonneReponse := 1
        question:
            Enonce := "Que diosa griega de la sabiduria dio nombre a Atenas?"
            Reponses := array{"Artemisa", "Atenea", "Hera", "Afrodita"}
            BonneReponse := 1
        question:
            Enonce := "Que dios romano de la guerra dio nombre a un planeta?"
            Reponses := array{"Marte", "Mercurio", "Jupiter", "Neptuno"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas cabezas tiene Cerbero, el perro del inframundo?"
            Reponses := array{"1", "3", "2", "7"}
            BonneReponse := 1
        question:
            Enonce := "Que rey mitico convertia en oro todo lo que tocaba?"
            Reponses := array{"Midas", "Minos", "Creso", "Tantalo"}
            BonneReponse := 0
        question:
            Enonce := "Que dios griego mensajero lleva sandalias aladas?"
            Reponses := array{"Hermes", "Ares", "Dioniso", "Apolo"}
            BonneReponse := 0
        question:
            Enonce := "Que diosa griega representa el amor y la belleza?"
            Reponses := array{"Demeter", "Atenea", "Hera", "Afrodita"}
            BonneReponse := 3
        question:
            Enonce := "Que dios romano es el equivalente de Zeus?"
            Reponses := array{"Marte", "Jupiter", "Neptuno", "Pluton"}
            BonneReponse := 1
        question:
            Enonce := "Que criatura mitad mujer, mitad pez atrae a los marineros con su canto?"
            Reponses := array{"La gorgona", "La ninfa", "La arpia", "La sirena"}
            BonneReponse := 3
        question:
            Enonce := "Que religion se asocia con la Tora y el pueblo judio?"
            Reponses := array{"El budismo", "El hinduismo", "El islam", "El judaismo"}
            BonneReponse := 3
        question:
            Enonce := "Que monstruo de varias cabezas que vuelven a crecer enfrento Hercules?"
            Reponses := array{"El kraken", "La quimera", "La esfinge", "La hidra de Lerna"}
            BonneReponse := 3
        question:
            Enonce := "Que dios griego del sol y las artes conduce un carro?"
            Reponses := array{"Crono", "Hades", "Hefesto", "Apolo"}
            BonneReponse := 3
        question:
            Enonce := "En la mitologia nordica, como se llama el reino de los dioses?"
            Reponses := array{"Midgard", "Asgard", "Valhalla", "Olimpo"}
            BonneReponse := 1
        question:
            Enonce := "Que gigante tiene un solo ojo en medio de la frente en la Odisea?"
            Reponses := array{"El trol", "El ciclope", "El golem", "El titan"}
            BonneReponse := 1
        question:
            Enonce := "Que tratado de 1919 puso fin oficialmente a la Primera Guerra Mundial?"
            Reponses := array{"El Tratado de Roma", "El Tratado de Tordesillas", "El Tratado de Versalles", "El Tratado de Viena"}
            BonneReponse := 2
        question:
            Enonce := "Que dinastia china construyo la mayor parte de la Gran Muralla actual?"
            Reponses := array{"Los Tang", "Los Ming", "Los Qing", "Los Han"}
            BonneReponse := 1
        question:
            Enonce := "Quien fue el primer presidente de la Quinta Republica francesa?"
            Reponses := array{"Georges Pompidou", "Vincent Auriol", "Francois Mitterrand", "Charles de Gaulle"}
            BonneReponse := 3
        question:
            Enonce := "En que ano tuvo lugar la batalla de Hastings?"
            Reponses := array{"1066", "1215", "987", "1453"}
            BonneReponse := 0
        question:
            Enonce := "Que emperador romano legalizo el cristianismo con el Edicto de Milan (313)?"
            Reponses := array{"Trajano", "Constantino", "Augusto", "Neron"}
            BonneReponse := 1
        question:
            Enonce := "Que reina de Egipto se alio con Julio Cesar y luego con Marco Antonio?"
            Reponses := array{"Nefertiti", "Cleopatra", "Hatshepsut", "Teodora"}
            BonneReponse := 1
        question:
            Enonce := "En que ano tuvo lugar la Revolucion de Octubre en Rusia?"
            Reponses := array{"1905", "1917", "1789", "1922"}
            BonneReponse := 1
        question:
            Enonce := "Que rey de Francia fue guillotinado en 1793?"
            Reponses := array{"Luis XV", "Luis XIV", "Luis XVI", "Carlos X"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad era la capital del Imperio bizantino?"
            Reponses := array{"Roma", "Alejandria", "Atenas", "Constantinopla"}
            BonneReponse := 3
        question:
            Enonce := "Que lider estaba al frente de la URSS durante la Segunda Guerra Mundial?"
            Reponses := array{"Jrushchov", "Lenin", "Gorbachov", "Iosif Stalin"}
            BonneReponse := 3
        question:
            Enonce := "En que ano obtuvieron las mujeres el derecho al voto en Francia?"
            Reponses := array{"1968", "1944", "1900", "1918"}
            BonneReponse := 1
        question:
            Enonce := "Que explorador portugues llego a la India por mar en 1498?"
            Reponses := array{"Cristobal Colon", "Vasco de Gama", "Magallanes", "Bartolome Diaz"}
            BonneReponse := 1
        question:
            Enonce := "Que emperador frances fue derrotado y capturado en Sedan en 1870?"
            Reponses := array{"Luis Felipe", "Napoleon I", "Carlos X", "Napoleon III"}
            BonneReponse := 3
        question:
            Enonce := "Que civilizacion precolombina dominaba Peru antes de los espanoles?"
            Reponses := array{"Los mayas", "Los incas", "Los olmecas", "Los aztecas"}
            BonneReponse := 1
        question:
            Enonce := "Que joven faraon posee una famosa mascara funeraria de oro?"
            Reponses := array{"Akenaton", "Ramses II", "Keops", "Tutankamon"}
            BonneReponse := 3
        question:
            Enonce := "Que batalla naval de 1805 vio la victoria del almirante Nelson?"
            Reponses := array{"Salamina", "Accio", "Trafalgar", "Lepanto"}
            BonneReponse := 2
        question:
            Enonce := "Que heroe lidero la Expedicion de los Mil por la unidad italiana?"
            Reponses := array{"Mussolini", "Mazzini", "Cavour", "Garibaldi"}
            BonneReponse := 3
        question:
            Enonce := "Que sultan llevo al Imperio otomano a su apogeo en el siglo XVI?"
            Reponses := array{"Saladino", "Ataturk", "Mehmed II", "Soliman el Magnifico"}
            BonneReponse := 3
        question:
            Enonce := "En que ano declararon su independencia los Estados Unidos?"
            Reponses := array{"1776", "1789", "1620", "1812"}
            BonneReponse := 0
        question:
            Enonce := "Que rey ingles fundo la Iglesia anglicana para poder divorciarse?"
            Reponses := array{"Juan sin Tierra", "Enrique VIII", "Guillermo el Conquistador", "Ricardo Corazon de Leon"}
            BonneReponse := 1
        question:
            Enonce := "Que epidemia diezmo Europa a mediados del siglo XIV?"
            Reponses := array{"La viruela", "El colera", "La peste negra", "La gripe espanola"}
            BonneReponse := 2
        question:
            Enonce := "Que jefe galo resistio a Cesar antes de rendirse en Alesia?"
            Reponses := array{"Breno", "Asterix", "Ambiorix", "Vercingetorix"}
            BonneReponse := 3
        question:
            Enonce := "Que conferencia de 1945 reunio a Churchill, Roosevelt y Stalin?"
            Reponses := array{"Teheran", "Yalta", "Munich", "Potsdam"}
            BonneReponse := 1
        question:
            Enonce := "Que expedicion militar cristiana buscaba reconquistar Jerusalen en la Edad Media?"
            Reponses := array{"La Reconquista", "La guerra de los Treinta Anos", "Las cruzadas", "La Hansa"}
            BonneReponse := 2
        question:
            Enonce := "Que muro se erigio en 1961 para dividir una ciudad alemana?"
            Reponses := array{"La Linea Maginot", "El Muro del Atlantico", "El Muro de Berlin", "El Muro de Adriano"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el rio mas largo de Europa?"
            Reponses := array{"El Danubio", "El Rin", "El Rodano", "El Volga"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la capital de Australia?"
            Reponses := array{"Melbourne", "Sidney", "Perth", "Canberra"}
            BonneReponse := 3
        question:
            Enonce := "Que estrecho separa Europa de Africa?"
            Reponses := array{"El Bosforo", "El paso de Calais", "El estrecho de Gibraltar", "El estrecho de Bering"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Canada?"
            Reponses := array{"Vancouver", "Montreal", "Ottawa", "Toronto"}
            BonneReponse := 2
        question:
            Enonce := "Que pequeno reino esta enclavado por completo dentro de Sudafrica?"
            Reponses := array{"Botsuana", "Suazilandia", "Namibia", "Lesoto"}
            BonneReponse := 3
        question:
            Enonce := "Que canal conecta el Mediterraneo con el mar Rojo?"
            Reponses := array{"El canal de Corinto", "El canal de Suez", "El canal de Panama", "El canal de Kiel"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la isla mas grande del mundo?"
            Reponses := array{"Madagascar", "Borneo", "Nueva Guinea", "Groenlandia"}
            BonneReponse := 3
        question:
            Enonce := "Que canal conecta el oceano Atlantico con el oceano Pacifico en America Central?"
            Reponses := array{"El Canal du Midi", "El canal de Panama", "El canal de Suez", "El estrecho de Magallanes"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital de Turquia?"
            Reponses := array{"Antalya", "Esmirna", "Ankara", "Estambul"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad se extiende entre Europa y Asia?"
            Reponses := array{"Estambul", "Atenas", "El Cairo", "Moscu"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene como capital Brasilia?"
            Reponses := array{"Peru", "Brasil", "Argentina", "Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Que cordillera alberga el Everest?"
            Reponses := array{"El Himalaya", "Las Rocosas", "El Caucaso", "Los Andes"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el Estado mas pequeno del mundo?"
            Reponses := array{"El Vaticano", "Nauru", "Monaco", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la cordillera continental mas larga del mundo?"
            Reponses := array{"Las Rocosas", "El Himalaya", "La cordillera de los Andes", "Los Alpes"}
            BonneReponse := 2
        question:
            Enonce := "Que gran desierto frio se extiende por Mongolia y China?"
            Reponses := array{"El Sahara", "El Atacama", "El Gobi", "El Kalahari"}
            BonneReponse := 2
        question:
            Enonce := "Que rio atraviesa Londres?"
            Reponses := array{"El Severn", "El Tamesis", "El Mersey", "El Clyde"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital de Nueva Zelanda?"
            Reponses := array{"Wellington", "Auckland", "Christchurch", "Sidney"}
            BonneReponse := 0
        question:
            Enonce := "Que pais sudamericano lleva el nombre de la linea imaginaria que lo atraviesa?"
            Reponses := array{"Bolivia", "Chile", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la capital de Argentina?"
            Reponses := array{"Lima", "Buenos Aires", "Santiago", "Montevideo"}
            BonneReponse := 1
        question:
            Enonce := "Que pico mas alto de Africa se encuentra en Tanzania?"
            Reponses := array{"El monte Kenia", "el Atlas", "El Kilimanjaro", "el monte Camerun"}
            BonneReponse := 2
        question:
            Enonce := "Que mar interior de Asia central se ha secado en gran medida?"
            Reponses := array{"El lago Baikal", "El mar de Aral", "El mar Caspio", "El mar Muerto"}
            BonneReponse := 1
        question:
            Enonce := "Cuantas capitales tiene Sudafrica (administrativa, legislativa, judicial)?"
            Reponses := array{"4", "2", "3", "1"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Noruega?"
            Reponses := array{"Copenhague", "Estocolmo", "Helsinki", "Oslo"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el lago de agua dulce mas grande del mundo por su superficie?"
            Reponses := array{"El lago Superior", "El lago Leman", "El lago Baikal", "El lago Victoria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mas piramides del mundo?"
            Reponses := array{"Sudan", "Egipto", "Mexico", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la velocidad aproximada de la luz en el vacio?"
            Reponses := array{"30 000 km/s", "1 000 km/s", "3 000 000 km/s", "300 000 km/s"}
            BonneReponse := 3
        question:
            Enonce := "Que cientifico descubrio la penicilina?"
            Reponses := array{"Alexander Fleming", "Robert Koch", "Louis Pasteur", "Jonas Salk"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el metal mas abundante en la corteza terrestre?"
            Reponses := array{"El cobre", "El oro", "El aluminio", "El hierro"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el simbolo quimico del potasio?"
            Reponses := array{"Pt", "K", "Po", "P"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la unidad de medida de la potencia electrica?"
            Reponses := array{"El voltio", "El amperio", "El julio", "El vatio"}
            BonneReponse := 3
        question:
            Enonce := "Que gas noble hace brillar en rojo los letreros luminosos?"
            Reponses := array{"El neon", "El argon", "El cripton", "El helio"}
            BonneReponse := 0
        question:
            Enonce := "Que principio fisico explica la flotacion de los cuerpos?"
            Reponses := array{"El efecto Doppler", "La ley de Newton", "El principio de Arquimedes", "La ley de Ohm"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el elemento quimico mas ligero?"
            Reponses := array{"El hidrogeno", "El carbono", "El helio", "El oxigeno"}
            BonneReponse := 0
        question:
            Enonce := "Que acido esta presente en el estomago humano?"
            Reponses := array{"El acido acetico", "El acido clorhidrico", "El acido citrico", "El acido sulfurico"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la unidad de medida de la frecuencia?"
            Reponses := array{"El vatio", "El newton", "El decibelio", "El hercio"}
            BonneReponse := 3
        question:
            Enonce := "Que cientifica recibio dos premios Nobel por sus trabajos sobre la radiactividad?"
            Reponses := array{"Rosalind Franklin", "Ada Lovelace", "Marie Curie", "Lise Meitner"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama el paso directo del estado solido al estado gaseoso?"
            Reponses := array{"La sublimacion", "La fusion", "La condensacion", "La evaporacion"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la formula quimica de la sal de mesa?"
            Reponses := array{"H2SO4", "KCl", "NaCl", "CaCO3"}
            BonneReponse := 2
        question:
            Enonce := "Que radiacion solar provoca las quemaduras solares?"
            Reponses := array{"Las microondas", "Los ultravioleta", "Los infrarrojos", "Los rayos X"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la unidad de medida de la resistencia electrica?"
            Reponses := array{"El tesla", "El ohmio", "El amperio", "El faradio"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos elementos contiene aproximadamente la tabla periodica?"
            Reponses := array{"Unos 118", "Unos 80", "Unos 200", "Unos 50"}
            BonneReponse := 0
        question:
            Enonce := "Que componente principal se usa para fabricar el vidrio?"
            Reponses := array{"La arcilla", "El plomo", "La silice (arena)", "La caliza pura"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el simbolo quimico de la plata?"
            Reponses := array{"Au", "Ag", "Ar", "Si"}
            BonneReponse := 1
        question:
            Enonce := "Que particula del nucleo atomico tiene carga positiva?"
            Reponses := array{"El proton", "El electron", "El neutron", "El foton"}
            BonneReponse := 0
        question:
            Enonce := "Que cientifico enuncio las tres leyes fundamentales del movimiento?"
            Reponses := array{"Isaac Newton", "Einstein", "Kepler", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Que objeto de vidrio descompone la luz blanca en colores?"
            Reponses := array{"El espejo", "La lente", "El prisma", "El filtro"}
            BonneReponse := 2
        question:
            Enonce := "Que reaccion libera la energia de una central nuclear?"
            Reponses := array{"La electrolisis", "La fermentacion", "La fision del uranio", "La combustion del carbon"}
            BonneReponse := 2
        question:
            Enonce := "Que gas de efecto invernadero emiten masivamente los motores de gasolina?"
            Reponses := array{"El oxigeno", "El nitrogeno", "El dioxido de carbono", "El ozono"}
            BonneReponse := 2
        question:
            Enonce := "Que magnitud se mide en pascales?"
            Reponses := array{"La temperatura", "La presion", "La velocidad", "La masa"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el simbolo quimico del carbono?"
            Reponses := array{"C", "Ca", "Cr", "Co"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos huesos tiene el esqueleto de un ser humano adulto?"
            Reponses := array{"206", "150", "250", "300"}
            BonneReponse := 0
        question:
            Enonce := "Que cientifico formulo la teoria de la evolucion por seleccion natural?"
            Reponses := array{"Gregor Mendel", "Louis Pasteur", "Charles Darwin", "Carlos Linneo"}
            BonneReponse := 2
        question:
            Enonce := "Que molecula porta la informacion genetica?"
            Reponses := array{"El ADN", "La glucosa", "La hemoglobina", "El colageno"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos cromosomas tiene una celula humana?"
            Reponses := array{"46", "23", "64", "48"}
            BonneReponse := 0
        question:
            Enonce := "Que grupo sanguineo se considera el donante universal?"
            Reponses := array{"AB positivo", "A positivo", "O negativo", "B negativo"}
            BonneReponse := 2
        question:
            Enonce := "Que grupo sanguineo se considera el receptor universal?"
            Reponses := array{"O negativo", "A negativo", "B positivo", "AB positivo"}
            BonneReponse := 3
        question:
            Enonce := "Que parte del ojo contiene las celulas sensibles a la luz?"
            Reponses := array{"La cornea", "La retina", "El cristalino", "El iris"}
            BonneReponse := 1
        question:
            Enonce := "Que organo produce la bilis?"
            Reponses := array{"El estomago", "El pancreas", "El higado", "El bazo"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el hueso mas pequeno del cuerpo humano?"
            Reponses := array{"El coccix", "El estribo (oido)", "La rotula", "La falange"}
            BonneReponse := 1
        question:
            Enonce := "Que glandula situada en el cuello regula el metabolismo?"
            Reponses := array{"La hipofisis", "La tiroides", "El pancreas", "El bazo"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos pares de costillas tiene el ser humano?"
            Reponses := array{"10", "12", "14", "8"}
            BonneReponse := 1
        question:
            Enonce := "Que cientifico descubrio los grupos sanguineos?"
            Reponses := array{"Edward Jenner", "Karl Landsteiner", "Alexander Fleming", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Que mamifero pone huevos y vive en Australia?"
            Reponses := array{"El koala", "El uombat", "El canguro", "El ornitorrinco"}
            BonneReponse := 3
        question:
            Enonce := "Que parte del cerebro controla el equilibrio y la coordinacion?"
            Reponses := array{"El hipotalamo", "La corteza", "El cerebelo", "El bulbo raquideo"}
            BonneReponse := 2
        question:
            Enonce := "Que proceso permite a las plantas verdes producir su energia?"
            Reponses := array{"La respiracion", "La fotosintesis", "La fermentacion", "La digestion"}
            BonneReponse := 1
        question:
            Enonce := "Los reptiles son animales de sangre..."
            Reponses := array{"templada", "caliente", "fria", "inexistente"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el hueso del muslo, tambien el mas largo del cuerpo?"
            Reponses := array{"La tibia", "El femur", "El radio", "El humero"}
            BonneReponse := 1
        question:
            Enonce := "Que celula transmite el impulso nervioso?"
            Reponses := array{"El globulo blanco", "El osteocito", "La neurona", "La plaqueta"}
            BonneReponse := 2
        question:
            Enonce := "Que organo almacena la orina antes de su evacuacion?"
            Reponses := array{"El higado", "La vejiga", "El ureter", "El rinon"}
            BonneReponse := 1
        question:
            Enonce := "Que volumen de sangre circula aproximadamente en un adulto?"
            Reponses := array{"Aproximadamente 1 litro", "Unos 10 litros", "Unos 5 litros", "Unos 20 litros"}
            BonneReponse := 2
        question:
            Enonce := "Que vitamina previene el escorbuto?"
            Reponses := array{"La vitamina A", "La vitamina C", "La vitamina D", "La vitamina K"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el musculo mas voluminoso del cuerpo humano?"
            Reponses := array{"La pantorrilla", "El biceps", "El corazon", "El gluteo mayor"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la unidad basica de todo ser vivo?"
            Reponses := array{"El atomo", "El organo", "La molecula", "La celula"}
            BonneReponse := 3
        question:
            Enonce := "Que sabio monje descubrio las leyes de la herencia con guisantes?"
            Reponses := array{"Darwin", "Gregor Mendel", "Lamarck", "Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Que organo humano puede regenerarse en gran parte tras una extirpacion parcial?"
            Reponses := array{"El corazon", "El higado", "El cerebro", "El rinon"}
            BonneReponse := 1
        question:
            Enonce := "Que ave alcanza la mayor velocidad en picado?"
            Reponses := array{"El avestruz", "El aguila real", "El vencejo", "El halcon peregrino"}
            BonneReponse := 3
        question:
            Enonce := "Cuanto dura aproximadamente la gestacion de una elefanta?"
            Reponses := array{"9 meses", "22 meses", "6 meses", "12 meses"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el reptil vivo mas grande de la actualidad?"
            Reponses := array{"La tortuga laud", "El cocodrilo marino", "La anaconda", "El dragon de Komodo"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos corazones tiene un pulpo?"
            Reponses := array{"2", "3", "5", "1"}
            BonneReponse := 1
        question:
            Enonce := "Que gran ave australiana, incapaz de volar, se parece al avestruz?"
            Reponses := array{"El kiwi", "El pinguino", "El casuario", "El emu"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el arbol mas alto del mundo?"
            Reponses := array{"El roble", "El baobab", "La secuoya", "El eucalipto"}
            BonneReponse := 2
        question:
            Enonce := "Que serpiente amazonica es la mas corpulenta del mundo?"
            Reponses := array{"La piton", "La anaconda", "La mamba negra", "La cobra real"}
            BonneReponse := 1
        question:
            Enonce := "Que insecto construye un termitero?"
            Reponses := array{"La avispa", "La hormiga", "La abeja", "La termita"}
            BonneReponse := 3
        question:
            Enonce := "Que mamifero marino macho canta largos cantos?"
            Reponses := array{"La morsa", "La ballena jorobada", "El tiburon", "La nutria"}
            BonneReponse := 1
        question:
            Enonce := "Que planta carnivora cierra sus trampas sobre los insectos?"
            Reponses := array{"La dionea (atrapamoscas)", "El cactus", "La hiedra", "El nenufar"}
            BonneReponse := 0
        question:
            Enonce := "Que ave marina tiene la mayor envergadura?"
            Reponses := array{"El albatros", "El pelicano", "El cormoran", "El aguila"}
            BonneReponse := 0
        question:
            Enonce := "Que gran simio pelirrojo vive en los bosques de Asia?"
            Reponses := array{"El orangutan", "El chimpance", "El gorila", "El gibon"}
            BonneReponse := 0
        question:
            Enonce := "Que hongo subterraneo muy apreciado buscan los perros?"
            Reponses := array{"La trufa", "El rebozuelo", "El champinon", "El boletus"}
            BonneReponse := 0
        question:
            Enonce := "Que ave pone el huevo mas grande del mundo?"
            Reponses := array{"El condor", "El aguila", "El avestruz", "El pinguino emperador"}
            BonneReponse := 2
        question:
            Enonce := "Que medusa australiana es uno de los animales mas venenosos?"
            Reponses := array{"La carabela portuguesa", "La medusa luna", "La pelagia", "La medusa caja"}
            BonneReponse := 3
        question:
            Enonce := "Que animal se orienta de noche gracias a la ecolocalizacion?"
            Reponses := array{"El zorro", "El buho", "El murcielago", "El gato"}
            BonneReponse := 2
        question:
            Enonce := "Que oso vive en las regiones articas?"
            Reponses := array{"El oso pardo", "El oso negro", "El oso polar", "El panda"}
            BonneReponse := 2
        question:
            Enonce := "Que pez cambia de sexo a lo largo de su vida?"
            Reponses := array{"La sardina", "El atun", "El tiburon", "El pez payaso"}
            BonneReponse := 3
        question:
            Enonce := "Que arbol aparece en la bandera de Canada?"
            Reponses := array{"El roble", "El arce", "El abedul", "El pino"}
            BonneReponse := 1
        question:
            Enonce := "Que abeja pone los huevos en una colmena?"
            Reponses := array{"La pecoreadora", "La reina", "El zangano", "La obrera"}
            BonneReponse := 1
        question:
            Enonce := "Que reptil huele los olores gracias a su lengua bifida?"
            Reponses := array{"La serpiente", "La tortuga", "El gecko", "El cocodrilo"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la esperanza de vida de una tortuga gigante?"
            Reponses := array{"Unos 20 anos", "Unos 50 anos", "Mas de 100 anos", "Unos 10 anos"}
            BonneReponse := 2
        question:
            Enonce := "Que animal tiene el cuello mas largo?"
            Reponses := array{"La llama", "El cisne", "La jirafa", "El avestruz"}
            BonneReponse := 2
        question:
            Enonce := "Que ave es conocida por imitar el habla humana?"
            Reponses := array{"El ruisenor", "La paloma", "El loro", "El gorrion"}
            BonneReponse := 2
        question:
            Enonce := "De donde procede principalmente el marfil, la materia de los colmillos?"
            Reponses := array{"Del jabali", "Del rinoceronte", "De la ballena", "Del elefante"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el planeta mas caliente del sistema solar?"
            Reponses := array{"Venus", "Jupiter", "Mercurio", "Marte"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas lunas tiene el planeta Marte?"
            Reponses := array{"0", "2", "4", "1"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la estrella mas cercana a nuestro Sol?"
            Reponses := array{"Proxima Centauri", "la estrella Polar", "Sirio", "Betelgeuse"}
            BonneReponse := 0
        question:
            Enonce := "Que mision llevo a los primeros hombres a la Luna?"
            Reponses := array{"Gemini 4", "Apolo 11", "Apolo 13", "Soyuz 1"}
            BonneReponse := 1
        question:
            Enonce := "Que planeta gira practicamente acostado de lado?"
            Reponses := array{"Urano", "Saturno", "Venus", "Neptuno"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la luna mas grande del sistema solar?"
            Reponses := array{"Europa", "Ganimedes", "Titan", "La Luna"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama la explosion de una estrella masiva al final de su vida?"
            Reponses := array{"Un cometa", "Una supernova", "Un eclipse", "Una nebulosa"}
            BonneReponse := 1
        question:
            Enonce := "Que objeto tiene una gravedad tan fuerte que ni siquiera la luz puede escapar?"
            Reponses := array{"Un cuasar frio", "Un planeta enano", "Un agujero negro", "Una estrella fugaz"}
            BonneReponse := 2
        question:
            Enonce := "Que planeta alberga la Gran Mancha Roja, una tormenta gigante?"
            Reponses := array{"Neptuno", "Marte", "Jupiter", "Saturno"}
            BonneReponse := 2
        question:
            Enonce := "Que sonda lanzada en 1977 ha abandonado el sistema solar?"
            Reponses := array{"Apolo 17", "Sputnik", "Voyager 1", "Cassini"}
            BonneReponse := 2
        question:
            Enonce := "Que astronomo defendio que la Tierra gira alrededor del Sol?"
            Reponses := array{"Aristoteles", "Newton", "Ptolomeo", "Copernico"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el planeta mas lejano del Sol?"
            Reponses := array{"Urano", "Pluton", "Saturno", "Neptuno"}
            BonneReponse := 3
        question:
            Enonce := "Cuanto tarda la luz del Sol en llegar a la Tierra?"
            Reponses := array{"Aproximadamente 1 hora", "Unos 8 minutos", "Aproximadamente 1 segundo", "Aproximadamente 1 dia"}
            BonneReponse := 1
        question:
            Enonce := "Que telescopio espacial sucedio a Hubble en 2021?"
            Reponses := array{"James Webb", "Galileo", "Spitzer", "Kepler"}
            BonneReponse := 0
        question:
            Enonce := "Que cuerpo celeste fue reclasificado como planeta enano en 2006?"
            Reponses := array{"Pluton", "Caronte", "Titan", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Que perra sovietica fue el primer animal en orbitar la Tierra?"
            Reponses := array{"Rex", "Belka", "Laika", "Strelka"}
            BonneReponse := 2
        question:
            Enonce := "Que capa de la atmosfera nos protege de los rayos ultravioleta?"
            Reponses := array{"La capa de ozono", "La mesosfera", "La troposfera", "La ionosfera"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el segundo planeta a partir del Sol?"
            Reponses := array{"Mercurio", "Marte", "la Tierra", "Venus"}
            BonneReponse := 3
        question:
            Enonce := "De que estan compuestos principalmente los cometas?"
            Reponses := array{"De hierro puro", "De gases ardientes", "De roca volcanica", "De hielo y polvo"}
            BonneReponse := 3
        question:
            Enonce := "Que cinturon rocoso se situa entre Marte y Jupiter?"
            Reponses := array{"Los anillos de Saturno", "La nube de Oort", "El cinturon de Kuiper", "El cinturon de asteroides"}
            BonneReponse := 3
        question:
            Enonce := "Que fenomeno luminoso colorea el cielo cerca de los polos?"
            Reponses := array{"Los relampagos", "Las auroras polares", "Los espejismos", "Los arcoiris"}
            BonneReponse := 1
        question:
            Enonce := "Que planeta tiene el dia (rotacion) mas largo?"
            Reponses := array{"Mercurio", "Jupiter", "Venus", "la Tierra"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama una roca venida del espacio que ha caido a la Tierra?"
            Reponses := array{"Un cometa", "Un meteorito", "Un asteroide", "Una nebulosa"}
            BonneReponse := 1
        question:
            Enonce := "Que primer satelite artificial fue lanzado por la URSS en 1957?"
            Reponses := array{"Explorer 1", "Sputnik", "Vostok", "Telstar"}
            BonneReponse := 1
        question:
            Enonce := "Que galaxia vecina es visible a simple vista desde la Tierra?"
            Reponses := array{"el Sombrero", "el Triangulo", "Andromeda", "el Remolino"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor cofundo el cubismo junto a Picasso?"
            Reponses := array{"Henri Matisse", "Marc Chagall", "Paul Cezanne", "Georges Braque"}
            BonneReponse := 3
        question:
            Enonce := "Que arquitecto diseno la basilica de la Sagrada Familia en Barcelona?"
            Reponses := array{"Renzo Piano", "Antoni Gaudi", "Le Corbusier", "Gustave Eiffel"}
            BonneReponse := 1
        question:
            Enonce := "Que movimiento artistico, representado por Dali, explora el sueno y el inconsciente?"
            Reponses := array{"El surrealismo", "El realismo", "El impresionismo", "El cubismo"}
            BonneReponse := 0
        question:
            Enonce := "Quien pinto La joven de la perla?"
            Reponses := array{"Johannes Vermeer", "Rubens", "Rembrandt", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Que artista pop pinto las latas de sopa Campbell?"
            Reponses := array{"Jackson Pollock", "Andy Warhol", "Keith Haring", "Roy Lichtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor neerlandes realizo La ronda de noche?"
            Reponses := array{"Mondrian", "Vermeer", "Van Gogh", "Rembrandt"}
            BonneReponse := 3
        question:
            Enonce := "Que fresco de Leonardo da Vinci representa la ultima cena de Cristo?"
            Reponses := array{"La creacion de Adan", "La escuela de Atenas", "La ultima cena", "El juicio final"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor espanol realizo Las meninas?"
            Reponses := array{"Murillo", "Diego Velazquez", "El Greco", "Goya"}
            BonneReponse := 1
        question:
            Enonce := "Que gran museo de Madrid alberga a Goya y Velazquez?"
            Reponses := array{"Los Uffizi", "El Guggenheim", "El Prado", "El Reina Sofia"}
            BonneReponse := 2
        question:
            Enonce := "Quien pinto La libertad guiando al pueblo?"
            Reponses := array{"Eugene Delacroix", "Courbet", "Jacques-Louis David", "Gericault"}
            BonneReponse := 0
        question:
            Enonce := "Que estilo arquitectonico medieval se reconoce por sus arbotantes y vidrieras?"
            Reponses := array{"El romanico", "El barroco", "El art deco", "El gotico"}
            BonneReponse := 3
        question:
            Enonce := "Que pintor realizo numerosos cuadros de nenufares en su jardin de Giverny?"
            Reponses := array{"Sisley", "Pissarro", "Renoir", "Claude Monet"}
            BonneReponse := 3
        question:
            Enonce := "Que artista mexicana es celebre por sus intensos autorretratos?"
            Reponses := array{"Georgia O'Keeffe", "Niki de Saint Phalle", "Frida Kahlo", "Tamara de Lempicka"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor impresionista represento a menudo bailarinas de ballet?"
            Reponses := array{"Edgar Degas", "Caillebotte", "Monet", "Manet"}
            BonneReponse := 0
        question:
            Enonce := "Que estatua griega alada, sin cabeza ni brazos, se halla en el Louvre?"
            Reponses := array{"El Discobolo", "La Venus de Milo", "La Victoria de Samotracia", "La Piedad"}
            BonneReponse := 2
        question:
            Enonce := "Que corriente artistica de principios del siglo XX, liderada por Matisse, usa colores vivos?"
            Reponses := array{"El dadaismo", "El cubismo", "El fauvismo", "El puntillismo"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad italiana se considera la cuna del Renacimiento?"
            Reponses := array{"Florencia", "Roma", "Milan", "Venecia"}
            BonneReponse := 0
        question:
            Enonce := "Que aleacion de cobre y estano sirve para fundir estatuas?"
            Reponses := array{"El acero", "El laton", "El bronce", "El estano puro"}
            BonneReponse := 2
        question:
            Enonce := "Que estilo muy ornamentado y teatral domina el arte del siglo XVII?"
            Reponses := array{"El barroco", "El minimalismo", "El gotico", "El cubismo"}
            BonneReponse := 0
        question:
            Enonce := "Que celebre torre del reloj se alza en Londres?"
            Reponses := array{"Big Ben", "El Kremlin", "La Torre de Pisa", "La Giralda"}
            BonneReponse := 0
        question:
            Enonce := "Quien pinto el techo de la Capilla Sixtina?"
            Reponses := array{"Rafael", "Caravaggio", "Miguel Angel", "Leonardo da Vinci"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor neerlandes posimpresionista pinto Los comedores de patatas?"
            Reponses := array{"Vermeer", "Mondrian", "Rembrandt", "Vincent van Gogh"}
            BonneReponse := 3
        question:
            Enonce := "Que movimiento geometrico de lineas negras y colores primarios se asocia a Mondrian?"
            Reponses := array{"El barroco", "El realismo", "El rococo", "De Stijl"}
            BonneReponse := 3
        question:
            Enonce := "Que escultor italiano del Renacimiento realizo un David de bronce?"
            Reponses := array{"Cellini", "Donatello", "Canova", "Bernini"}
            BonneReponse := 1
        question:
            Enonce := "Que arquitecto moderno francosuizo teorizo la Ciudad radiante?"
            Reponses := array{"Gaudi", "Gustave Eiffel", "Frank Lloyd Wright", "Le Corbusier"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Crimen y castigo?"
            Reponses := array{"Fiodor Dostoyevski", "Tolstoi", "Chejov", "Gogol"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio En busca del tiempo perdido?"
            Reponses := array{"Marcel Proust", "Flaubert", "Gide", "Camus"}
            BonneReponse := 0
        question:
            Enonce := "Que autora creo al detective Hercules Poirot?"
            Reponses := array{"Georges Simenon", "Agatha Christie", "Conan Doyle", "Patricia Highsmith"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio El extranjero?"
            Reponses := array{"Albert Camus", "Andre Malraux", "Jean-Paul Sartre", "Boris Vian"}
            BonneReponse := 0
        question:
            Enonce := "Que poeta escribio El barco ebrio?"
            Reponses := array{"Arthur Rimbaud", "Paul Verlaine", "Baudelaire", "Mallarme"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Guerra y paz?"
            Reponses := array{"Solzhenitsyn", "Leon Tolstoi", "Pushkin", "Dostoyevski"}
            BonneReponse := 1
        question:
            Enonce := "Que dramaturgo frances escribio El misantropo?"
            Reponses := array{"Racine", "Moliere", "Corneille", "Beaumarchais"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Orgullo y prejuicio?"
            Reponses := array{"Jane Austen", "Virginia Woolf", "Mary Shelley", "Charlotte Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Que autor escribio Cien anos de soledad?"
            Reponses := array{"Mario Vargas Llosa", "Jorge Luis Borges", "Gabriel Garcia Marquez", "Pablo Neruda"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El viejo y el mar?"
            Reponses := array{"Fitzgerald", "Steinbeck", "Faulkner", "Ernest Hemingway"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio la obra Esperando a Godot?"
            Reponses := array{"Sartre", "Samuel Beckett", "Brecht", "Ionesco"}
            BonneReponse := 1
        question:
            Enonce := "Que filosofo escribio El contrato social?"
            Reponses := array{"Diderot", "Voltaire", "Montesquieu", "Jean-Jacques Rousseau"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Rojo y negro?"
            Reponses := array{"Zola", "Stendhal", "Flaubert", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Que escritor praguense escribio La metamorfosis y El proceso?"
            Reponses := array{"Thomas Mann", "Franz Kafka", "Hermann Hesse", "Robert Musil"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Dracula?"
            Reponses := array{"H.P. Lovecraft", "Mary Shelley", "Edgar Allan Poe", "Bram Stoker"}
            BonneReponse := 3
        question:
            Enonce := "Que autor escribio Viaje al fin de la noche?"
            Reponses := array{"Marcel Ayme", "Georges Bernanos", "Romain Gary", "Louis-Ferdinand Celine"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio la saga Cancion de hielo y fuego (Juego de Tronos)?"
            Reponses := array{"Robert Jordan", "George R.R. Martin", "Patrick Rothfuss", "J.R.R. Tolkien"}
            BonneReponse := 1
        question:
            Enonce := "Que escritor italiano escribio El nombre de la rosa?"
            Reponses := array{"Umberto Eco", "Alberto Moravia", "Primo Levi", "Italo Calvino"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Madame Bovary?"
            Reponses := array{"Maupassant", "Balzac", "Gustave Flaubert", "Zola"}
            BonneReponse := 2
        question:
            Enonce := "Que poeta escribio Manana, al alba?"
            Reponses := array{"Victor Hugo", "Vigny", "Lamartine", "Musset"}
            BonneReponse := 0
        question:
            Enonce := "Que autor britanico escribio las novelas originales de James Bond?"
            Reponses := array{"Ian Fleming", "Graham Greene", "John le Carre", "Frederick Forsyth"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Anna Karenina?"
            Reponses := array{"Leon Tolstoi", "Chejov", "Dostoyevski", "Turguenev"}
            BonneReponse := 0
        question:
            Enonce := "Que autor escribio Las hormigas y Los tanatonautas?"
            Reponses := array{"Guillaume Musso", "Michel Houellebecq", "Bernard Werber", "Marc Levy"}
            BonneReponse := 2
        question:
            Enonce := "Que filosofo de la Ilustracion escribio el cuento Candido?"
            Reponses := array{"Kant", "Voltaire", "Rousseau", "Spinoza"}
            BonneReponse := 1
        question:
            Enonce := "Que tragedia de Shakespeare presenta a un rey escoces y tres brujas?"
            Reponses := array{"Otelo", "El rey Lear", "Macbeth", "Hamlet"}
            BonneReponse := 2
        question:
            Enonce := "Que compositor italiano escribio Las cuatro estaciones?"
            Reponses := array{"Puccini", "Verdi", "Rossini", "Antonio Vivaldi"}
            BonneReponse := 3
        question:
            Enonce := "Que grupo interpreto Bohemian Rhapsody?"
            Reponses := array{"Led Zeppelin", "Deep Purple", "Queen", "The Who"}
            BonneReponse := 2
        question:
            Enonce := "Que gran compositor aleman se quedo sordo al final de su vida?"
            Reponses := array{"Handel", "Ludwig van Beethoven", "Schubert", "Brahms"}
            BonneReponse := 1
        question:
            Enonce := "Que instrumento toca el famoso Yo-Yo Ma?"
            Reponses := array{"El violin", "El piano", "La flauta", "El violonchelo"}
            BonneReponse := 3
        question:
            Enonce := "Que compositor frances escribio la opera Carmen?"
            Reponses := array{"Georges Bizet", "Gounod", "Saint-Saens", "Berlioz"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas sinfonias compuso Beethoven?"
            Reponses := array{"7", "9", "12", "5"}
            BonneReponse := 1
        question:
            Enonce := "Que grupo sueco canto Dancing Queen?"
            Reponses := array{"ABBA", "Roxette", "Europe", "Ace of Base"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor ruso escribio el ballet El lago de los cisnes?"
            Reponses := array{"Chaikovski", "Rajmaninov", "Prokofiev", "Stravinski"}
            BonneReponse := 0
        question:
            Enonce := "Que instrumento de teclado es el antepasado del piano?"
            Reponses := array{"El organo", "El acordeon", "El clavecin", "El sintetizador"}
            BonneReponse := 2
        question:
            Enonce := "Que cantante estadounidense es apodada Queen B?"
            Reponses := array{"Rihanna", "Lady Gaga", "Beyonce", "Madonna"}
            BonneReponse := 2
        question:
            Enonce := "Que opera de Mozart se titula La flauta...?"
            Reponses := array{"Las bodas de Figaro", "Cosi fan tutte", "Don Giovanni", "La flauta magica"}
            BonneReponse := 3
        question:
            Enonce := "Que compositor polaco es celebre por sus nocturnos para piano?"
            Reponses := array{"Schumann", "Frederic Chopin", "Debussy", "Liszt"}
            BonneReponse := 1
        question:
            Enonce := "Que termino italiano indica un tempo rapido y animado?"
            Reponses := array{"Lento", "Allegro", "Largo", "Adagio"}
            BonneReponse := 1
        question:
            Enonce := "Que instrumento escoces tiene un saco y tubos?"
            Reponses := array{"La gaita", "El acordeon", "El oboe", "La flauta de pan"}
            BonneReponse := 0
        question:
            Enonce := "Que familia de instrumentos incluye la flauta, el oboe y el clarinete?"
            Reponses := array{"La percusion", "Los metales", "Las cuerdas", "Las maderas"}
            BonneReponse := 3
        question:
            Enonce := "Que grupo britanico lanzo el album The Dark Side of the Moon?"
            Reponses := array{"Pink Floyd", "The Beatles", "Genesis", "The Rolling Stones"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor frances escribio el Bolero?"
            Reponses := array{"Erik Satie", "Claude Debussy", "Maurice Ravel", "Camille Saint-Saens"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la voz masculina mas grave?"
            Reponses := array{"El contratenor", "El bajo", "El baritono", "El tenor"}
            BonneReponse := 1
        question:
            Enonce := "Que cantante jamaicano popularizo el reggae en el mundo?"
            Reponses := array{"Shaggy", "Jimmy Cliff", "Peter Tosh", "Bob Marley"}
            BonneReponse := 3
        question:
            Enonce := "Que genero musical que mezcla blues y country popularizo Elvis Presley?"
            Reponses := array{"El jazz", "El rock'n'roll", "El funk", "El soul"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor escribio la pieza Marcha turca?"
            Reponses := array{"Mozart", "Liszt", "Beethoven", "Schubert"}
            BonneReponse := 0
        question:
            Enonce := "A que frecuencia se afina normalmente el la de referencia?"
            Reponses := array{"440 Hz", "100 Hz", "880 Hz", "220 Hz"}
            BonneReponse := 0
        question:
            Enonce := "Que estilo musical nacio en el Bronx de Nueva York con el rap y el DJing?"
            Reponses := array{"El hip-hop", "El disco", "El pop", "El techno"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor barroco aleman es autor de El Mesias y Musica para los reales fuegos artificiales?"
            Reponses := array{"Vivaldi", "Handel", "Telemann", "Bach"}
            BonneReponse := 1
        question:
            Enonce := "Que instrumento electrico es emblematico del estilo de Jimi Hendrix?"
            Reponses := array{"La guitarra electrica", "La bateria", "El bajo", "El sintetizador"}
            BonneReponse := 0
        question:
            Enonce := "Que director rodo Pulp Fiction?"
            Reponses := array{"Coen", "Martin Scorsese", "David Lynch", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Que pelicula surcoreana gano el Oscar a la mejor pelicula en 2020?"
            Reponses := array{"Old Boy", "Burning", "Tren a Busan", "Parasitos"}
            BonneReponse := 3
        question:
            Enonce := "Que director es apodado el maestro del suspense (Psicosis)?"
            Reponses := array{"Stanley Kubrick", "Brian De Palma", "Alfred Hitchcock", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Que trilogia de Peter Jackson adapta la obra de Tolkien?"
            Reponses := array{"Harry Potter", "El Senor de los Anillos", "Juego de Tronos", "Star Wars"}
            BonneReponse := 1
        question:
            Enonce := "Que actor interpreta al pirata Jack Sparrow?"
            Reponses := array{"Brad Pitt", "Orlando Bloom", "Johnny Depp", "Russell Crowe"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de ciencia ficcion de 1999 ofrece una pastilla roja?"
            Reponses := array{"Matrix", "Terminator", "Blade Runner", "Tron"}
            BonneReponse := 0
        question:
            Enonce := "Que estudio japones realizo El viaje de Chihiro?"
            Reponses := array{"Toei", "Pixar", "El estudio Ghibli", "Madhouse"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de Francis Ford Coppola narra una familia mafiosa italo-americana?"
            Reponses := array{"Casino", "Scarface", "El Padrino", "Uno de los nuestros"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de animacion de Pixar muestra las emociones en la mente de una nina?"
            Reponses := array{"Up", "Coco", "Del reves (Inside Out)", "Ratatouille"}
            BonneReponse := 2
        question:
            Enonce := "Que director rodo Inception e Interstellar?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Que personaje de DC Comics es el enemigo payaso de Batman?"
            Reponses := array{"Bane", "Lex Luthor", "El Joker", "El Pinguino"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula muda francesa gano el Oscar a la mejor pelicula en 2012?"
            Reponses := array{"Intocable", "La vida de Adele", "Amelie", "The Artist"}
            BonneReponse := 3
        question:
            Enonce := "Que actriz interpreta a Hermione en la saga Harry Potter?"
            Reponses := array{"Emma Watson", "Keira Knightley", "Emma Stone", "Anna Kendrick"}
            BonneReponse := 0
        question:
            Enonce := "Que actor austriaco, estrella de peliculas de accion, llego a ser gobernador de California?"
            Reponses := array{"Arnold Schwarzenegger", "Jean-Claude Van Damme", "Sylvester Stallone", "Dolph Lundgren"}
            BonneReponse := 0
        question:
            Enonce := "Que pelicula de 1994 sigue a un hombre ingenuo a traves de la historia de Estados Unidos?"
            Reponses := array{"El club de los poetas muertos", "Big", "Rain Man", "Forrest Gump"}
            BonneReponse := 3
        question:
            Enonce := "Que pelicula de Kubrick presenta al ordenador HAL 9000?"
            Reponses := array{"Solaris", "El resplandor", "La naranja mecanica", "2001: Una odisea del espacio"}
            BonneReponse := 3
        question:
            Enonce := "Que actriz francesa gano un Oscar por su papel de Edith Piaf?"
            Reponses := array{"Juliette Binoche", "Marion Cotillard", "Isabelle Adjani", "Audrey Tautou"}
            BonneReponse := 1
        question:
            Enonce := "Que actor interpreta a Iron Man en el universo cinematografico de Marvel?"
            Reponses := array{"Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de James Cameron de 2009 transcurre en el planeta Pandora?"
            Reponses := array{"Dune", "Avatar", "Aliens", "Abyss"}
            BonneReponse := 1
        question:
            Enonce := "Que actor interpreto a James Bond durante mucho tiempo en los anos 1970-1980?"
            Reponses := array{"Timothy Dalton", "Roger Moore", "Sean Connery", "Pierce Brosnan"}
            BonneReponse := 1
        question:
            Enonce := "Que franquicia de terror presenta al asesino Freddy Krueger?"
            Reponses := array{"Scream", "Viernes 13", "Pesadilla en Elm Street", "Halloween"}
            BonneReponse := 2
        question:
            Enonce := "Que actor interpreta a menudo a los heroes de Martin Scorsese (Taxi Driver)?"
            Reponses := array{"Dustin Hoffman", "Jack Nicholson", "Robert De Niro", "Al Pacino"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de catastrofes de 1997 ostento durante mucho tiempo el record de taquilla?"
            Reponses := array{"Avatar", "Jurassic Park", "Twister", "Titanic"}
            BonneReponse := 3
        question:
            Enonce := "Que saga enfrenta a los Jedi contra el Imperio y los Sith?"
            Reponses := array{"Dune", "Star Trek", "Star Wars", "Stargate"}
            BonneReponse := 2
        question:
            Enonce := "Que joven mago con gafas es el heroe de una saga cinematografica?"
            Reponses := array{"Gandalf", "Harry Potter", "Merlin", "Dumbledore"}
            BonneReponse := 1
        question:
            Enonce := "Que pais gano la Copa Mundial de Futbol de 2018?"
            Reponses := array{"Francia", "Alemania", "Brasil", "Croacia"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos jugadores forman un equipo de rugby a 15 en el campo?"
            Reponses := array{"7", "13", "15", "11"}
            BonneReponse := 2
        question:
            Enonce := "Que nadador estadounidense tiene el record de medallas olimpicas?"
            Reponses := array{"Ryan Lochte", "Ian Thorpe", "Michael Phelps", "Mark Spitz"}
            BonneReponse := 2
        question:
            Enonce := "En que ciudad se celebraron los Juegos Olimpicos de verano de 2024?"
            Reponses := array{"Paris", "Tokio", "Los Angeles", "Londres"}
            BonneReponse := 0
        question:
            Enonce := "Que tenista tiene el record de victorias en Roland-Garros?"
            Reponses := array{"Novak Djokovic", "Roger Federer", "Rafael Nadal", "Bjorn Borg"}
            BonneReponse := 2
        question:
            Enonce := "En que disciplina automovilistica compite Lewis Hamilton?"
            Reponses := array{"El MotoGP", "El rally", "Las 24 Horas de Le Mans", "La Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Que capitan argentino levanto la Copa del Mundo de 2022?"
            Reponses := array{"Sergio Aguero", "Angel Di Maria", "Diego Maradona", "Lionel Messi"}
            BonneReponse := 3
        question:
            Enonce := "Cuantas bases hay en un campo de beisbol?"
            Reponses := array{"2", "4", "3", "5"}
            BonneReponse := 1
        question:
            Enonce := "Cuantas veces gano Eddy Merckx el Tour de Francia?"
            Reponses := array{"7", "3", "2", "5"}
            BonneReponse := 3
        question:
            Enonce := "Que disciplina olimpica combina esqui de fondo y tiro con carabina?"
            Reponses := array{"El biatlon", "El skeleton", "La combinada nordica", "El pentatlon"}
            BonneReponse := 0
        question:
            Enonce := "Que boxeador mordio la oreja de Evander Holyfield durante un combate?"
            Reponses := array{"Mohamed Ali", "George Foreman", "Lennox Lewis", "Mike Tyson"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte se practica a caballo con un mazo y una pelota?"
            Reponses := array{"El horse-ball", "El polo", "El croquet", "El criquet"}
            BonneReponse := 1
        question:
            Enonce := "Que pais ha ganado mas Copas del Mundo de futbol?"
            Reponses := array{"Argentina", "Alemania", "Brasil", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama el golpe de tenis pegado con fuerza por encima de la cabeza?"
            Reponses := array{"El smash", "El globo", "La dejada", "La volea"}
            BonneReponse := 0
        question:
            Enonce := "Que jugador de baloncesto estadounidense es apodado King James?"
            Reponses := array{"Shaquille O'Neal", "Kobe Bryant", "LeBron James", "Stephen Curry"}
            BonneReponse := 2
        question:
            Enonce := "Que club de futbol madrileno es apodado los Merengues?"
            Reponses := array{"El Atletico de Madrid", "El Sevilla FC", "El FC Barcelona", "El Real Madrid"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos puntos vale una canasta encestada mas alla de la linea de tres puntos?"
            Reponses := array{"4", "2", "1", "3"}
            BonneReponse := 3
        question:
            Enonce := "Que arte marcial japones se practica descalzo, con katas y golpes?"
            Reponses := array{"El karate", "El aikido", "El sumo", "El judo"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la duracion reglamentaria de un partido de futbol (sin prorroga)?"
            Reponses := array{"80 minutos", "120 minutos", "90 minutos", "60 minutos"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte de equipo estadounidense se juega con un balon ovalado y touchdowns?"
            Reponses := array{"El futbol americano", "El beisbol", "El hockey", "El rugby"}
            BonneReponse := 0
        question:
            Enonce := "Que torneo de tenis se juega sobre la hierba de Londres?"
            Reponses := array{"el Abierto de Australia", "el US Open", "Roland-Garros", "Wimbledon"}
            BonneReponse := 3
        question:
            Enonce := "Que seleccion nacional de futbol es apodada la Mannschaft?"
            Reponses := array{"Alemania", "Belgica", "los Paises Bajos", "Italia"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte de deslizamiento se practica de pie sobre una tabla, en la nieve?"
            Reponses := array{"El trineo", "El bobsleigh", "El snowboard", "El esqui"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas pruebas componen el decatlon en atletismo?"
            Reponses := array{"10", "5", "7", "12"}
            BonneReponse := 0
        question:
            Enonce := "En que pais nacieron los Juegos Olimpicos antiguos?"
            Reponses := array{"Egipto", "Turquia", "Grecia", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Que dios griego reina sobre el reino de los muertos (el Inframundo)?"
            Reponses := array{"Hades", "Poseidon", "Zeus", "Ares"}
            BonneReponse := 0
        question:
            Enonce := "Que heroe griego corto la cabeza de Medusa?"
            Reponses := array{"Hercules", "Teseo", "Perseo", "Jason"}
            BonneReponse := 2
        question:
            Enonce := "Que titan robo el fuego a los dioses para darselo a los hombres?"
            Reponses := array{"Prometeo", "Atlas", "Epimeteo", "Cronos"}
            BonneReponse := 0
        question:
            Enonce := "Que dios nordico tuerto es el soberano de los dioses?"
            Reponses := array{"Loki", "Thor", "Odin", "Baldr"}
            BonneReponse := 2
        question:
            Enonce := "Que heroe griego partio en busca del Vellocino de Oro?"
            Reponses := array{"Ulises", "Aquiles", "Jason", "Hector"}
            BonneReponse := 2
        question:
            Enonce := "Que rio cruzan las almas para llegar al Inframundo griego?"
            Reponses := array{"El Estigia", "El Aqueronte", "El Nilo", "El Leteo"}
            BonneReponse := 0
        question:
            Enonce := "Que dios egipcio con cabeza de halcon se asocia con el faraon?"
            Reponses := array{"Seth", "Thot", "Anubis", "Horus"}
            BonneReponse := 3
        question:
            Enonce := "Que monstruo, mitad leon y mitad mujer, plantea acertijos mortales?"
            Reponses := array{"La arpia", "La esfinge", "La quimera", "La gorgona"}
            BonneReponse := 1
        question:
            Enonce := "Que dios griego de la forja trabaja el metal para los dioses?"
            Reponses := array{"Hefesto", "Apolo", "Hermes", "Dioniso"}
            BonneReponse := 0
        question:
            Enonce := "Que religion sigue las ensenanzas de Siddhartha Gautama?"
            Reponses := array{"El budismo", "El sintoismo", "El hinduismo", "El taoismo"}
            BonneReponse := 0
        question:
            Enonce := "Que heroe griego mato al Minotauro en el laberinto?"
            Reponses := array{"Teseo", "Hercules", "Perseo", "Icaro"}
            BonneReponse := 0
        question:
            Enonce := "Que dios embaucador de la mitologia nordica provoca el caos?"
            Reponses := array{"Freyr", "Loki", "Tyr", "Heimdall"}
            BonneReponse := 1
        question:
            Enonce := "Que diosa griega de la caza es la hermana gemela de Apolo?"
            Reponses := array{"Hera", "Hestia", "Artemisa", "Demeter"}
            BonneReponse := 2
        question:
            Enonce := "Que epopeya narra el largo regreso de Ulises a Itaca?"
            Reponses := array{"La Eneida", "La Odisea", "La Iliada", "La Teogonia"}
            BonneReponse := 1
        question:
            Enonce := "Que dios hindu tiene cabeza de elefante?"
            Reponses := array{"Ganesha", "Brahma", "Shiva", "Vishnu"}
            BonneReponse := 0
        question:
            Enonce := "Como se llama la espada legendaria del rey Arturo?"
            Reponses := array{"Tizona", "Joyeuse", "Durandal", "Excalibur"}
            BonneReponse := 3
        question:
            Enonce := "Cuantas Musas hay en la mitologia griega?"
            Reponses := array{"9", "7", "12", "3"}
            BonneReponse := 0
        question:
            Enonce := "Que personaje fue condenado a cargar la boveda celeste sobre sus hombros?"
            Reponses := array{"Sisifo", "Tantalo", "Prometeo", "Atlas"}
            BonneReponse := 3
        question:
            Enonce := "Que diosa egipcia es la esposa de Osiris?"
            Reponses := array{"Nut", "Hathor", "Bastet", "Isis"}
            BonneReponse := 3
        question:
            Enonce := "Que religion cuenta con el mayor numero de fieles en el mundo?"
            Reponses := array{"El cristianismo", "El budismo", "El islam", "El hinduismo"}
            BonneReponse := 0
        question:
            Enonce := "Que caja, en el mito griego, libero todos los males de la humanidad?"
            Reponses := array{"El jarron de Midas", "La caja de Pandora", "La urna de Aquiles", "El cofre de Perseo"}
            BonneReponse := 1
        question:
            Enonce := "Que dios romano del comercio y los viajeros equivale a Hermes?"
            Reponses := array{"Vulcano", "Marte", "Jano", "Mercurio"}
            BonneReponse := 3
        question:
            Enonce := "Que criatura alada con cuerpo de leon y cabeza de aguila guarda los tesoros?"
            Reponses := array{"El ciclope", "El centauro", "El grifo", "El basilisco"}
            BonneReponse := 2
        question:
            Enonce := "Que morada celestial acoge a los guerreros muertos en combate (mitologia nordica)?"
            Reponses := array{"El Valhalla", "El Helheim", "El Niflheim", "El Midgard"}
            BonneReponse := 0
        question:
            Enonce := "Que animal era sagrado para la diosa egipcia Bastet?"
            Reponses := array{"El perro", "El gato", "El cocodrilo", "El halcon"}
            BonneReponse := 1
        question:
            Enonce := "En que ano cayo Constantinopla en manos de los otomanos?"
            Reponses := array{"1071", "1453", "1204", "1492"}
            BonneReponse := 1
        question:
            Enonce := "Que tratados de 1648 pusieron fin a la guerra de los Treinta Anos?"
            Reponses := array{"El Tratado de Versalles", "El Tratado de Utrecht", "La Paz de Westfalia", "La Paz de Augsburgo"}
            BonneReponse := 2
        question:
            Enonce := "Que emperador bizantino mando codificar el derecho romano?"
            Reponses := array{"Basilio II", "Constantino", "Heraclio", "Justiniano"}
            BonneReponse := 3
        question:
            Enonce := "En que ano se firmo la Carta Magna en Inglaterra?"
            Reponses := array{"1066", "1215", "1314", "1453"}
            BonneReponse := 1
        question:
            Enonce := "Que dinastia reino en Francia a partir de 987 con Hugo Capeto?"
            Reponses := array{"Los Carolingios", "Los Capetos", "Los Merovingios", "Los Valois"}
            BonneReponse := 1
        question:
            Enonce := "Que canciller prusiano orquesto la unidad alemana en 1871?"
            Reponses := array{"Guillermo II", "Metternich", "Adenauer", "Otto von Bismarck"}
            BonneReponse := 3
        question:
            Enonce := "En que ano estallo la guerra de Secesion estadounidense?"
            Reponses := array{"1898", "1861", "1776", "1812"}
            BonneReponse := 1
        question:
            Enonce := "Bajo que emperador de la dinastia flavia se inauguro el Coliseo?"
            Reponses := array{"Augusto", "Adriano", "Neron", "Vespasiano"}
            BonneReponse := 3
        question:
            Enonce := "Que gladiador encabezo una gran revuelta de esclavos contra Roma?"
            Reponses := array{"Vercingetorix", "Craso", "Espartaco", "Anibal"}
            BonneReponse := 2
        question:
            Enonce := "En que ano fue quemada Juana de Arco en Ruan?"
            Reponses := array{"1415", "1453", "1429", "1431"}
            BonneReponse := 3
        question:
            Enonce := "Que tratado de 1494 repartio el Nuevo Mundo entre Espana y Portugal?"
            Reponses := array{"El Tratado de Tordesillas", "El Tratado de Paris", "El Tratado de Madrid", "El Tratado de Zaragoza"}
            BonneReponse := 0
        question:
            Enonce := "Que dinastia mongola precedio a la Ming en China?"
            Reponses := array{"Los Han", "Los Qing", "Los Yuan", "Los Song"}
            BonneReponse := 2
        question:
            Enonce := "Que zar modernizo Rusia y fundo San Petersburgo?"
            Reponses := array{"Pedro el Grande", "Nicolas II", "Alejandro I", "Ivan el Terrible"}
            BonneReponse := 0
        question:
            Enonce := "En que ano fue devuelto Hong Kong a China?"
            Reponses := array{"1997", "1989", "1984", "2001"}
            BonneReponse := 0
        question:
            Enonce := "Que faraon mando construir los templos de Abu Simbel?"
            Reponses := array{"Akenaton", "Ramses II", "Tutankamon", "Keops"}
            BonneReponse := 1
        question:
            Enonce := "Que civilizacion tenia a Tenochtitlan como capital?"
            Reponses := array{"Los toltecas", "Los mayas", "Los aztecas", "Los incas"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio la tumba de Tutankamon en 1922?"
            Reponses := array{"Auguste Mariette", "Howard Carter", "Heinrich Schliemann", "Jean-Francois Champollion"}
            BonneReponse := 1
        question:
            Enonce := "Que canciller dirigio la reunificacion alemana en 1990?"
            Reponses := array{"Konrad Adenauer", "Helmut Kohl", "Willy Brandt", "Gerhard Schroder"}
            BonneReponse := 1
        question:
            Enonce := "A que ano corresponden las 'Tres Gloriosas' de la revolucion parisina?"
            Reponses := array{"1848", "1830", "1789", "1871"}
            BonneReponse := 1
        question:
            Enonce := "Que conquistador macedonio construyo un inmenso imperio en el siglo IV a. C.?"
            Reponses := array{"Alejandro Magno", "Julio Cesar", "Pericles", "Dario"}
            BonneReponse := 0
        question:
            Enonce := "En que ano se abolio la servidumbre en el Imperio ruso?"
            Reponses := array{"1861", "1789", "1812", "1917"}
            BonneReponse := 0
        question:
            Enonce := "Que acuerdo secreto de 1916 repartio el Proximo Oriente entre Francia y el Reino Unido?"
            Reponses := array{"Los acuerdos Sykes-Picot", "La declaracion Balfour", "Los acuerdos de Yalta", "El tratado de Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Que dinastia reinaba en Francia en visperas de la Revolucion de 1789?"
            Reponses := array{"Los Valois", "Los Borbones", "Los Orleans", "Los Capetos directos"}
            BonneReponse := 1
        question:
            Enonce := "Que emperador traslado la capital romana a Bizancio en 330?"
            Reponses := array{"Teodosio", "Augusto", "Diocleciano", "Constantino"}
            BonneReponse := 3
        question:
            Enonce := "Que reina de Inglaterra es celebre por su 'era' en el siglo XIX y un imperio mundial?"
            Reponses := array{"Maria Tudor", "Isabel I", "Ana", "Victoria"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la capital de Kazajistan?"
            Reponses := array{"Astana", "Almaty", "Biskek", "Taskent"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el pais mas poblado de Africa?"
            Reponses := array{"Nigeria", "Sudafrica", "Etiopia", "Egipto"}
            BonneReponse := 0
        question:
            Enonce := "Que estrecho separa Rusia de Alaska?"
            Reponses := array{"El estrecho de Bering", "El estrecho de Magallanes", "El estrecho de Dinamarca", "El estrecho de Ormuz"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el punto terrestre mas bajo de la superficie de la Tierra?"
            Reponses := array{"La depresion de Afar", "El delta del Nilo", "El Valle de la Muerte", "Las orillas del mar Muerto"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la capital de Mongolia?"
            Reponses := array{"Ulan Bator", "Lhasa", "Astana", "Taskent"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capital de Finlandia?"
            Reponses := array{"Estocolmo", "Tallin", "Oslo", "Helsinki"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el lago mas grande de Africa?"
            Reponses := array{"El lago Victoria", "El lago Chad", "El lago Tanganica", "El lago Malaui"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el desierto mas arido del mundo?"
            Reponses := array{"El desierto de Atacama", "El desierto de Gobi", "El Sahara", "El desierto de Mojave"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene la costa mas larga del mundo?"
            Reponses := array{"Rusia", "Canada", "Indonesia", "Australia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais africano nunca fue colonizado (salvo una breve ocupacion)?"
            Reponses := array{"Kenia", "Etiopia", "Senegal", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital de Vietnam?"
            Reponses := array{"Bangkok", "Nom Pen", "Ciudad Ho Chi Minh", "Hanoi"}
            BonneReponse := 3
        question:
            Enonce := "Que rio atraviesa la ciudad de Bagdad?"
            Reponses := array{"El Eufrates", "El Jordan", "El Nilo", "El Tigris"}
            BonneReponse := 3
        question:
            Enonce := "Que cordillera marca la frontera entre Europa y Asia en Rusia?"
            Reponses := array{"Los Urales", "El Caucaso", "Los Carpatos", "El Altai"}
            BonneReponse := 0
        question:
            Enonce := "Que archipielago asiatico tiene mas volcanes activos?"
            Reponses := array{"Nueva Zelanda", "Indonesia", "Filipinas", "Japon"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capital de Bulgaria?"
            Reponses := array{"Bucarest", "Zagreb", "Sofia", "Belgrado"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la capital de Chile?"
            Reponses := array{"Santiago", "Buenos Aires", "La Paz", "Lima"}
            BonneReponse := 0
        question:
            Enonce := "Que gran rio desemboca en el mar Caspio?"
            Reponses := array{"El Ural", "El Volga", "El Danubio", "El Dnieper"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la peninsula mas grande del mundo?"
            Reponses := array{"La peninsula arabiga", "La peninsula de Kamchatka", "La peninsula iberica", "La peninsula india"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad es la sede del gobierno neerlandes, aunque Amsterdam sea la capital?"
            Reponses := array{"Eindhoven", "La Haya", "Utrecht", "Roterdam"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el lago mas profundo del mundo?"
            Reponses := array{"El lago Baikal", "El lago Superior", "El lago Tanganica", "El mar Caspio"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capital de Corea del Norte?"
            Reponses := array{"Hanoi", "Pekin", "Seul", "Pionyang"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la cima mas alta de la cordillera de los Andes?"
            Reponses := array{"El Aconcagua", "El Illimani", "El Cotopaxi", "El Chimborazo"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capital de Marruecos?"
            Reponses := array{"Marrakech", "Fez", "Rabat", "Casablanca"}
            BonneReponse := 2
        question:
            Enonce := "Que pais limita con el mayor numero de paises (14, empatado con Rusia)?"
            Reponses := array{"Brasil", "India", "China", "Alemania"}
            BonneReponse := 2
        question:
            Enonce := "Que estrecho, punto clave del petroleo, une el golfo Persico con el golfo de Oman?"
            Reponses := array{"El estrecho de Ormuz", "El Bosforo", "El estrecho de Malaca", "El canal de Suez"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el numero atomico del hidrogeno?"
            Reponses := array{"0", "1", "2", "8"}
            BonneReponse := 1
        question:
            Enonce := "Que particula es el mediador de la fuerza electromagnetica?"
            Reponses := array{"el boson de Higgs", "el neutrino", "El foton", "el gluon"}
            BonneReponse := 2
        question:
            Enonce := "Que fisico enuncio el principio de incertidumbre?"
            Reponses := array{"Erwin Schrodinger", "Werner Heisenberg", "Niels Bohr", "Max Planck"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el elemento quimico mas abundante del universo?"
            Reponses := array{"el oxigeno", "el helio", "El hidrogeno", "el carbono"}
            BonneReponse := 2
        question:
            Enonce := "Cuanto vale aproximadamente el numero de Avogadro?"
            Reponses := array{"1,6 x 10^1^9", "3,14 x 10^8", "9,81", "6,022 x 10^2^3"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la unidad del Sistema Internacional para la cantidad de materia?"
            Reponses := array{"el kelvin", "El mol", "el litro", "el gramo"}
            BonneReponse := 1
        question:
            Enonce := "Que fisico descubrio el electron?"
            Reponses := array{"Bohr", "J.J. Thomson", "Chadwick", "Rutherford"}
            BonneReponse := 1
        question:
            Enonce := "Que cientifico ruso establecio la clasificacion periodica de los elementos?"
            Reponses := array{"Dalton", "Lavoisier", "Berzelius", "Dmitri Mendeleyev"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el pH de una solucion neutra a 25 C?"
            Reponses := array{"14", "7", "0", "1"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la mas debil de las cuatro interacciones fundamentales?"
            Reponses := array{"la interaccion debil", "La gravitacion", "la fuerza electromagnetica", "la interaccion fuerte"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la formula quimica del metano?"
            Reponses := array{"NH3", "CH4", "C2H6", "CO2"}
            BonneReponse := 1
        question:
            Enonce := "Que fisico unifico la electricidad y el magnetismo con sus ecuaciones?"
            Reponses := array{"James Clerk Maxwell", "Faraday", "Ampere", "Coulomb"}
            BonneReponse := 0
        question:
            Enonce := "A que temperatura se situa el cero absoluto?"
            Reponses := array{"-100 C", "-459 C", "0 C", "-273,15 C"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el simbolo quimico del tungsteno?"
            Reponses := array{"Tu", "Tg", "W", "Tn"}
            BonneReponse := 2
        question:
            Enonce := "Que gas inerte es el mas abundante en la atmosfera terrestre (3.er gas)?"
            Reponses := array{"el helio", "El argon", "el kripton", "el neon"}
            BonneReponse := 1
        question:
            Enonce := "Que ley relaciona la presion y el volumen de un gas a temperatura constante?"
            Reponses := array{"la ley de Hooke", "la ley de Coulomb", "la ley de Ohm", "La ley de Boyle-Mariotte"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la unidad de medida de la carga electrica?"
            Reponses := array{"el amperio", "el vatio", "el voltio", "El culombio"}
            BonneReponse := 3
        question:
            Enonce := "Que tipo de enlace quimico une los atomos de una molecula de agua?"
            Reponses := array{"El enlace covalente", "el enlace metalico", "el enlace ionico", "solo el enlace de hidrogeno"}
            BonneReponse := 0
        question:
            Enonce := "Que radiacion corresponde a un nucleo de helio emitido durante una desintegracion?"
            Reponses := array{"la radiacion gamma", "La radiacion alfa", "los rayos X", "la radiacion beta"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el simbolo quimico del plomo?"
            Reponses := array{"Pm", "Pl", "Pb", "Po"}
            BonneReponse := 2
        question:
            Enonce := "Que reaccion nuclear hace brillar al Sol?"
            Reponses := array{"la combustion del carbono", "la radiactividad beta", "la fision del uranio", "La fusion del hidrogeno"}
            BonneReponse := 3
        question:
            Enonce := "Cual es la unidad del SI para medir la tension electrica?"
            Reponses := array{"El voltio", "el hercio", "el amperio", "el ohmio"}
            BonneReponse := 0
        question:
            Enonce := "Que componente principal del gas natural es tambien un potente gas de efecto invernadero?"
            Reponses := array{"El metano", "el ozono", "el argon", "el nitrogeno"}
            BonneReponse := 0
        question:
            Enonce := "Que magnitud mide la escala Kelvin?"
            Reponses := array{"la masa", "la presion", "la energia", "La temperatura"}
            BonneReponse := 3
        question:
            Enonce := "Que cientifico formulo la teoria de la relatividad general?"
            Reponses := array{"Newton", "Albert Einstein", "Planck", "Hawking"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos pares de cromosomas tiene un ser humano?"
            Reponses := array{"46", "23", "12", "24"}
            BonneReponse := 1
        question:
            Enonce := "Que proteina de la sangre transporta el oxigeno?"
            Reponses := array{"la albumina", "la insulina", "La hemoglobina", "el colageno"}
            BonneReponse := 2
        question:
            Enonce := "Que investigador codescubrio la estructura de doble helice del ADN junto con Crick?"
            Reponses := array{"James Watson", "Louis Pasteur", "Gregor Mendel", "Charles Darwin"}
            BonneReponse := 0
        question:
            Enonce := "Donde se forman los globulos rojos en el adulto?"
            Reponses := array{"En la medula osea", "en el higado", "en el bazo", "en los rinones"}
            BonneReponse := 0
        question:
            Enonce := "Que organulo es la central energetica de la celula?"
            Reponses := array{"el aparato de Golgi", "La mitocondria", "el nucleo", "el ribosoma"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el nervio mas largo del cuerpo humano?"
            Reponses := array{"el nervio vago", "el nervio optico", "El nervio ciatico", "el nervio facial"}
            BonneReponse := 2
        question:
            Enonce := "Que medico ingles describio la circulacion de la sangre en el siglo XVII?"
            Reponses := array{"William Harvey", "Joseph Lister", "Alexander Fleming", "Edward Jenner"}
            BonneReponse := 0
        question:
            Enonce := "Que proceso de division produce las celulas sexuales (gametos)?"
            Reponses := array{"la fecundacion", "la mitosis", "la mutacion", "La meiosis"}
            BonneReponse := 3
        question:
            Enonce := "Que vitamina es indispensable para la coagulacion de la sangre?"
            Reponses := array{"la vitamina C", "La vitamina K", "la vitamina D", "la vitamina B12"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos dientes de leche tiene un nino pequeno?"
            Reponses := array{"28", "32", "20", "24"}
            BonneReponse := 2
        question:
            Enonce := "Que pigmento verde permite la fotosintesis de las plantas?"
            Reponses := array{"la hemoglobina", "la melanina", "la queratina", "La clorofila"}
            BonneReponse := 3
        question:
            Enonce := "Que glandula, en la base del cerebro, controla las demas glandulas?"
            Reponses := array{"la tiroides", "La hipofisis", "el pancreas", "el bazo"}
            BonneReponse := 1
        question:
            Enonce := "Que grupo de animales incluye a las ranas y las salamandras?"
            Reponses := array{"los moluscos", "los peces", "Los anfibios", "los reptiles"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la vida media de un globulo rojo?"
            Reponses := array{"unos 10 anos", "unas 24 horas", "Unos 120 dias", "unos 7 dias"}
            BonneReponse := 2
        question:
            Enonce := "Que medico desarrollo la primera vacuna (contra la viruela)?"
            Reponses := array{"Jonas Salk", "Edward Jenner", "Louis Pasteur", "Robert Koch"}
            BonneReponse := 1
        question:
            Enonce := "Que proteina fibrosa compone tendones, piel y cartilagos?"
            Reponses := array{"la queratina", "la elastina", "la fibrina", "El colageno"}
            BonneReponse := 3
        question:
            Enonce := "Que parte del ojo enfoca deformandose?"
            Reponses := array{"la pupila", "la cornea", "la retina", "El cristalino"}
            BonneReponse := 3
        question:
            Enonce := "Cuantas camaras tiene el corazon de un pez?"
            Reponses := array{"1", "4", "2", "3"}
            BonneReponse := 2
        question:
            Enonce := "Que hormona reduce el nivel de azucar en la sangre?"
            Reponses := array{"la testosterona", "la melatonina", "la adrenalina", "La insulina"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos musculos tiene aproximadamente el cuerpo humano?"
            Reponses := array{"unos 50", "unos 100", "unos 2000", "Unos 600"}
            BonneReponse := 3
        question:
            Enonce := "Donde se encuentra el ADN en una celula humana?"
            Reponses := array{"En el nucleo", "en la membrana", "en los ribosomas", "en el citoplasma"}
            BonneReponse := 0
        question:
            Enonce := "Que cientifico establecio las leyes de la herencia a partir de cruces de guisantes?"
            Reponses := array{"Darwin", "Gregor Mendel", "Pasteur", "Lamarck"}
            BonneReponse := 1
        question:
            Enonce := "Que hueso protege el encefalo?"
            Reponses := array{"el esternon", "El craneo", "la columna vertebral", "la mandibula"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la capacidad pulmonar total aproximada de un adulto?"
            Reponses := array{"unos 15 litros", "unos 30 litros", "Unos 6 litros", "aproximadamente 1 litro"}
            BonneReponse := 2
        question:
            Enonce := "Como se llaman las celulas reproductoras masculinas?"
            Reponses := array{"los ovulos", "Los espermatozoides", "las neuronas", "las plaquetas"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el ave mas pequena del mundo?"
            Reponses := array{"el reyezuelo", "el vencejo", "el gorrion", "El colibri"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos compartimentos tiene el estomago de una vaca?"
            Reponses := array{"6", "2", "1", "4"}
            BonneReponse := 3
        question:
            Enonce := "Que ave migra mas lejos, de un polo al otro?"
            Reponses := array{"el ganso salvaje", "la ciguena", "la golondrina", "El charran artico"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el felino mas grande del continente americano?"
            Reponses := array{"el puma", "el ocelote", "el lince", "El jaguar"}
            BonneReponse := 3
        question:
            Enonce := "Que cetaceo artico tiene un largo colmillo en espiral, apodado unicornio de los mares?"
            Reponses := array{"la beluga", "la morsa", "el cachalote", "El narval"}
            BonneReponse := 3
        question:
            Enonce := "Que serpiente terrestre se considera la mas venenosa del mundo?"
            Reponses := array{"la vibora", "la mamba negra", "la cobra real", "El taipan del desierto"}
            BonneReponse := 3
        question:
            Enonce := "Que anfibio mexicano es famoso por regenerar sus extremidades?"
            Reponses := array{"El ajolote", "el sapo", "la salamandra", "el triton"}
            BonneReponse := 0
        question:
            Enonce := "Que planta tiene el record de crecimiento mas rapido?"
            Reponses := array{"el nenufar", "la ortiga", "El bambu", "el girasol"}
            BonneReponse := 2
        question:
            Enonce := "Que ave pone sus huevos en el nido de otras especies?"
            Reponses := array{"el petirrojo", "El cuco", "el pajaro carpintero", "la urraca"}
            BonneReponse := 1
        question:
            Enonce := "Que animal terrestre tiene fama de ser el mas lento?"
            Reponses := array{"el koala", "el caracol", "El perezoso", "la tortuga"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la especie mas grande de tortuga marina?"
            Reponses := array{"La tortuga laud", "la tortuga verde", "la tortuga boba", "la tortuga carey"}
            BonneReponse := 0
        question:
            Enonce := "Que animal tiene los ojos mas grandes del reino animal?"
            Reponses := array{"El calamar gigante", "el buho", "el caballo", "el avestruz"}
            BonneReponse := 0
        question:
            Enonce := "Que mamifero realiza una de las migraciones anuales mas largas?"
            Reponses := array{"el murcielago", "el reno", "La ballena gris", "el nu"}
            BonneReponse := 2
        question:
            Enonce := "Que mamifero australiano pone huevos y tiene puas?"
            Reponses := array{"el koala", "El equidna", "el demonio de Tasmania", "el wombat"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el roedor mas grande del mundo?"
            Reponses := array{"el puercoespin", "El capibara", "el castor", "el coipo"}
            BonneReponse := 1
        question:
            Enonce := "Que gran tiburon es el pez mas grande del mundo?"
            Reponses := array{"el tiburon tigre", "el gran tiburon blanco", "El tiburon ballena", "el tiburon martillo"}
            BonneReponse := 2
        question:
            Enonce := "Que arbol norteamericano figura entre los seres vivos mas antiguos (milenios)?"
            Reponses := array{"el cedro", "El pino Bristlecone", "el abedul", "el alamo temblon"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el unico pinguino que vive de forma natural al norte del ecuador?"
            Reponses := array{"El pinguino de las Galapagos", "el pinguino saltarrocas", "el pinguino rey", "el pinguino emperador"}
            BonneReponse := 0
        question:
            Enonce := "Que reptil tiene la fuerza de mordida mas potente?"
            Reponses := array{"la iguana", "la piton", "la cobra", "El cocodrilo"}
            BonneReponse := 3
        question:
            Enonce := "Que gran herbivoro africano es responsable del mayor numero de muertes humanas?"
            Reponses := array{"la jirafa", "el bufalo", "El hipopotamo", "el elefante"}
            BonneReponse := 2
        question:
            Enonce := "Cuanto vive en promedio una efimera adulta?"
            Reponses := array{"aproximadamente un ano", "aproximadamente un mes", "aproximadamente diez anos", "Aproximadamente un dia"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el unico mamifero venenoso mediante un espolon (el macho)?"
            Reponses := array{"el topo", "el erizo", "El ornitorrinco", "la musarana"}
            BonneReponse := 2
        question:
            Enonce := "Que gran simio es el mas imponente y vive en Africa central?"
            Reponses := array{"el chimpance", "el bonobo", "el orangutan", "El gorila"}
            BonneReponse := 3
        question:
            Enonce := "Que molusco tiene ocho brazos y puede cambiar de color al instante?"
            Reponses := array{"el calamar", "el nautilo", "la sepia", "El pulpo"}
            BonneReponse := 3
        question:
            Enonce := "Por que muere la abeja melifera despues de picar a un humano?"
            Reponses := array{"se agota", "Su aguijon queda clavado y la destripa", "el veneno la mata", "se ahoga en la miel"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el planeta mas denso del sistema solar?"
            Reponses := array{"Saturno", "La Tierra", "Jupiter", "Mercurio"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama la frontera de un agujero negro de la que nada escapa?"
            Reponses := array{"la singularidad externa", "la fotosfera", "la magnetosfera", "El horizonte de sucesos"}
            BonneReponse := 3
        question:
            Enonce := "Que astronomo formulo las leyes del movimiento eliptico de los planetas?"
            Reponses := array{"Johannes Kepler", "Newton", "Ptolomeo", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas lunas galileanas tiene Jupiter?"
            Reponses := array{"2", "8", "4", "12"}
            BonneReponse := 2
        question:
            Enonce := "En que tipo de estrella se convertira nuestro Sol al final de su vida?"
            Reponses := array{"un agujero negro", "Una gigante roja", "una supernova", "un pulsar"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la mayor luna de Saturno?"
            Reponses := array{"Japeto", "Titan", "Ganimedes", "Encelado"}
            BonneReponse := 1
        question:
            Enonce := "Que teoria describe el origen del universo mediante una expansion inicial?"
            Reponses := array{"El Big Bang", "el estado estacionario", "la relatividad", "la teoria de cuerdas"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la estrella mas brillante del cielo nocturno?"
            Reponses := array{"la estrella Polar", "Betelgeuse", "Vega", "Sirio"}
            BonneReponse := 3
        question:
            Enonce := "Que sonda libero el modulo de aterrizaje Philae sobre un cometa en 2014?"
            Reponses := array{"Cassini", "Juno", "New Horizons", "Rosetta"}
            BonneReponse := 3
        question:
            Enonce := "Que planeta sufre los vientos mas violentos del sistema solar?"
            Reponses := array{"Jupiter", "Neptuno", "Venus", "Marte"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama una estrella de neutrones en rotacion rapida que emite pulsos?"
            Reponses := array{"un cuasar", "Un pulsar", "una nova", "una enana blanca"}
            BonneReponse := 1
        question:
            Enonce := "Que mision Apolo llevo a los ultimos hombres a la Luna en 1972?"
            Reponses := array{"Apolo 11", "Apolo 17", "Apolo 13", "Apolo 15"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el mayor volcan conocido del sistema solar, situado en Marte?"
            Reponses := array{"el monte Maxwell", "el Vesubio", "el Mauna Kea", "Olympus Mons"}
            BonneReponse := 3
        question:
            Enonce := "Cuanto dura aproximadamente un ano en Marte?"
            Reponses := array{"unos 88 dias", "unos 365 dias", "Unos 687 dias", "unos 30 dias"}
            BonneReponse := 2
        question:
            Enonce := "Que astronomo italiano observo las lunas de Jupiter con su catalejo?"
            Reponses := array{"Kepler", "Galileo", "Tycho Brahe", "Copernico"}
            BonneReponse := 1
        question:
            Enonce := "De que gases esta compuesto principalmente el Sol?"
            Reponses := array{"carbono y hierro", "oxigeno y nitrogeno", "metano y amoniaco", "Hidrogeno y helio"}
            BonneReponse := 3
        question:
            Enonce := "Como se llama el vasto reservorio de cometas en los confines del sistema solar?"
            Reponses := array{"La nube de Oort", "la nebulosa de Orion", "el cinturon de asteroides", "el cinturon de Kuiper"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la capa externa visible del Sol?"
            Reponses := array{"la cromosfera profunda", "La fotosfera", "la corona", "el nucleo"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el planeta mas pequeno del sistema solar?"
            Reponses := array{"Venus", "Mercurio", "Pluton", "Marte"}
            BonneReponse := 1
        question:
            Enonce := "En que constelacion se encuentra la estrella Polar?"
            Reponses := array{"Orion", "Casiopea", "La Osa Menor", "la Osa Mayor"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama el estudio cientifico del origen y la evolucion del universo?"
            Reponses := array{"la astrologia", "la planetologia", "La cosmologia", "la geodesia"}
            BonneReponse := 2
        question:
            Enonce := "Cual es aproximadamente la distancia Tierra-Sol (unidad astronomica)?"
            Reponses := array{"30 millones de km", "1000 millones de km", "1 millon de km", "150 millones de km"}
            BonneReponse := 3
        question:
            Enonce := "Que fenomeno desplaza hacia el rojo la luz de las galaxias lejanas?"
            Reponses := array{"La expansion del universo", "la refraccion", "el efecto invernadero", "las manchas solares"}
            BonneReponse := 0
        question:
            Enonce := "Que primer satelite artificial lanzo la URSS en 1957?"
            Reponses := array{"Vostok 1", "Explorer 1", "Sputnik 1", "Luna 1"}
            BonneReponse := 2
        question:
            Enonce := "Que planeta tiene la menor densidad del sistema solar (flotaria en el agua)?"
            Reponses := array{"Jupiter", "Saturno", "Neptuno", "Urano"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor fundo el puntillismo con Un domingo por la tarde en la isla de la Grande Jatte?"
            Reponses := array{"Georges Seurat", "Camille Pissarro", "Henri Matisse", "Paul Signac"}
            BonneReponse := 0
        question:
            Enonce := "Que arquitecto diseno la piramide de cristal del Louvre?"
            Reponses := array{"Ieoh Ming Pei", "Jean Nouvel", "Norman Foster", "Le Corbusier"}
            BonneReponse := 0
        question:
            Enonce := "Que pintor flamenco realizo El jardin de las delicias?"
            Reponses := array{"El Bosco", "Rubens", "Bruegel el Viejo", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Que escultora francesa fue alumna y colaboradora de Rodin?"
            Reponses := array{"Niki de Saint Phalle", "Camille Claudel", "Sophie Calle", "Louise Bourgeois"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor austriaco realizo El beso con pan de oro?"
            Reponses := array{"Oskar Kokoschka", "Egon Schiele", "Hundertwasser", "Gustav Klimt"}
            BonneReponse := 3
        question:
            Enonce := "Que pintor del Renacimiento realizo El nacimiento de Venus?"
            Reponses := array{"Caravaggio", "Tiziano", "Sandro Botticelli", "Rafael"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor estadounidense popularizo el dripping (pintura goteada)?"
            Reponses := array{"Jackson Pollock", "Willem de Kooning", "Mark Rothko", "Andy Warhol"}
            BonneReponse := 0
        question:
            Enonce := "Que provocador movimiento artistico nacio en Zurich en 1916 (Duchamp, Tzara)?"
            Reponses := array{"el constructivismo", "el futurismo", "el surrealismo", "El dadaismo"}
            BonneReponse := 3
        question:
            Enonce := "Que obra de Salvador Dali representa relojes blandos?"
            Reponses := array{"La ultima cena", "El grito", "La persistencia de la memoria", "El gran masturbador"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor romantico realizo La balsa de la Medusa?"
            Reponses := array{"Eugene Delacroix", "Gustave Courbet", "Theodore Gericault", "Jacques-Louis David"}
            BonneReponse := 2
        question:
            Enonce := "Que arquitecto diseno el Museo Guggenheim de Bilbao?"
            Reponses := array{"Tadao Ando", "Frank Gehry", "Renzo Piano", "Zaha Hadid"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor realizo Las senoritas de Avinon?"
            Reponses := array{"Pablo Picasso", "Juan Gris", "Fernand Leger", "Georges Braque"}
            BonneReponse := 0
        question:
            Enonce := "Que escultor barroco italiano realizo El extasis de Santa Teresa?"
            Reponses := array{"Donatello", "Canova", "Bernini", "Miguel Angel"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor estadounidense pinto Nighthawks, un bar de noche?"
            Reponses := array{"Jackson Pollock", "Norman Rockwell", "Roy Lichtenstein", "Edward Hopper"}
            BonneReponse := 3
        question:
            Enonce := "Que escultor de la antigua Grecia habria realizado la estatua criselefantina de Zeus en Olimpia?"
            Reponses := array{"Miron", "Policleto", "Praxiteles", "Fidias"}
            BonneReponse := 3
        question:
            Enonce := "Que escuela de arte y diseno fue fundada en Alemania en 1919?"
            Reponses := array{"la Secesion", "el Werkbund", "el Art Nouveau", "La Bauhaus"}
            BonneReponse := 3
        question:
            Enonce := "Que catedral de Moscu es famosa por sus coloridas cupulas de bulbo?"
            Reponses := array{"San Basilio", "la Dormicion", "la catedral de Cristo Salvador", "Santa Sofia"}
            BonneReponse := 0
        question:
            Enonce := "En que localidad murio Vincent van Gogh en 1890?"
            Reponses := array{"Auvers-sur-Oise", "Paris", "Arles", "Amsterdam"}
            BonneReponse := 0
        question:
            Enonce := "Que artista envolvio el Pont-Neuf de Paris y (postumamente) el Arco del Triunfo?"
            Reponses := array{"Daniel Buren", "Christo", "Jeff Koons", "Banksy"}
            BonneReponse := 1
        question:
            Enonce := "Que pintor realizo El almuerzo sobre la hierba?"
            Reponses := array{"Edouard Manet", "Claude Monet", "Renoir", "Cezanne"}
            BonneReponse := 0
        question:
            Enonce := "De que dinastia china es emblematica la porcelana azul y blanca?"
            Reponses := array{"Los Ming", "los Qin", "los Han", "los Tang"}
            BonneReponse := 0
        question:
            Enonce := "Que pintor veneciano del Renacimiento es conocido como Tiziano?"
            Reponses := array{"Tiziano Vecellio", "Bellini", "Verones", "Tintoretto"}
            BonneReponse := 0
        question:
            Enonce := "Que arquitecto franco-suizo teorizo la unidad de habitacion (Cite Radieuse)?"
            Reponses := array{"Niemeyer", "Gaudi", "Le Corbusier", "Mies van der Rohe"}
            BonneReponse := 2
        question:
            Enonce := "Que pintor neerlandes realizo Los comedores de patatas?"
            Reponses := array{"Vincent van Gogh", "Vermeer", "Mondrian", "Rembrandt"}
            BonneReponse := 0
        question:
            Enonce := "Que movimiento geometrico de los Paises Bajos, de colores primarios, lidera Mondrian?"
            Reponses := array{"De Stijl", "el futurismo", "la Bauhaus", "el suprematismo"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio la novela Ulises (1922)?"
            Reponses := array{"T.S. Eliot", "D.H. Lawrence", "Virginia Woolf", "James Joyce"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio La Divina Comedia?"
            Reponses := array{"Virgilio", "Petrarca", "Dante Alighieri", "Boccaccio"}
            BonneReponse := 2
        question:
            Enonce := "Que poeta latino compuso la Eneida?"
            Reponses := array{"Homero", "Horacio", "Virgilio", "Ovidio"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio el drama Fausto?"
            Reponses := array{"Goethe", "Heine", "Thomas Mann", "Schiller"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Los hermanos Karamazov?"
            Reponses := array{"Turguenev", "Tolstoi", "Fiodor Dostoyevski", "Gogol"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio la novela Lolita?"
            Reponses := array{"Vladimir Nabokov", "Boris Pasternak", "Solzhenitsyn", "Chejov"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio La peste?"
            Reponses := array{"Jean-Paul Sartre", "Andre Gide", "Albert Camus", "Romain Rolland"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio La senora Dalloway?"
            Reponses := array{"Emily Bronte", "George Eliot", "Virginia Woolf", "Jane Austen"}
            BonneReponse := 2
        question:
            Enonce := "Que dramaturgo noruego escribio Casa de munecas?"
            Reponses := array{"Brecht", "Strindberg", "Chejov", "Henrik Ibsen"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El maestro y Margarita?"
            Reponses := array{"Mijail Bulgakov", "Pasternak", "Gorki", "Dostoyevski"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio la obra Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Beaumarchais", "Victor Hugo", "Alfred de Musset"}
            BonneReponse := 0
        question:
            Enonce := "Que novelista afroamericana, premio Nobel, escribio Beloved?"
            Reponses := array{"Zora Neale Hurston", "Maya Angelou", "Alice Walker", "Toni Morrison"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Bel-Ami?"
            Reponses := array{"Flaubert", "Balzac", "Emile Zola", "Guy de Maupassant"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El paraiso de las damas?"
            Reponses := array{"Balzac", "Maupassant", "Emile Zola", "Stendhal"}
            BonneReponse := 2
        question:
            Enonce := "Que autor argentino escribio la coleccion Ficciones?"
            Reponses := array{"Vargas Llosa", "Garcia Marquez", "Jorge Luis Borges", "Cortazar"}
            BonneReponse := 2
        question:
            Enonce := "Que escritor aleman escribio Siddhartha y El lobo estepario?"
            Reponses := array{"Thomas Mann", "Goethe", "Hermann Hesse", "Gunter Grass"}
            BonneReponse := 2
        question:
            Enonce := "Que filosofo aleman escribio Asi hablo Zaratustra?"
            Reponses := array{"Schopenhauer", "Kant", "Friedrich Nietzsche", "Hegel"}
            BonneReponse := 2
        question:
            Enonce := "Que dramaturgo de la antigua Grecia escribio Edipo rey?"
            Reponses := array{"Aristofanes", "Euripides", "Sofocles", "Esquilo"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Un mundo feliz?"
            Reponses := array{"George Orwell", "Ray Bradbury", "H.G. Wells", "Aldous Huxley"}
            BonneReponse := 3
        question:
            Enonce := "Que poeta italiano del Renacimiento escribio el Cancionero dedicado a Laura?"
            Reponses := array{"Petrarca", "Ariosto", "Boccaccio", "Dante"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio la novela Sin novedad en el frente?"
            Reponses := array{"Erich Maria Remarque", "Stefan Zweig", "Ernst Junger", "Thomas Mann"}
            BonneReponse := 0
        question:
            Enonce := "Que autor escribio El jardin de los cerezos y numerosos relatos?"
            Reponses := array{"Anton Chejov", "Kafka", "Hasek", "Kundera"}
            BonneReponse := 0
        question:
            Enonce := "Que novelista frances contemporaneo escribio Las particulas elementales?"
            Reponses := array{"Marc Levy", "Michel Houellebecq", "Patrick Modiano", "Amelie Nothomb"}
            BonneReponse := 1
        question:
            Enonce := "Que poeta escribio la coleccion Las contemplaciones?"
            Reponses := array{"Leconte de Lisle", "Victor Hugo", "Lamartine", "Vigny"}
            BonneReponse := 1
        question:
            Enonce := "Que autor escribio Viaje al fin de la noche?"
            Reponses := array{"Louis-Ferdinand Celine", "Andre Malraux", "Marcel Proust", "Georges Bernanos"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor italiano escribio la opera La Traviata?"
            Reponses := array{"Rossini", "Giuseppe Verdi", "Puccini", "Donizetti"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor escribio La consagracion de la primavera, que provoco un escandalo en 1913?"
            Reponses := array{"Debussy", "Igor Stravinski", "Bartok", "Ravel"}
            BonneReponse := 1
        question:
            Enonce := "Como se llama un conjunto de ocho musicos?"
            Reponses := array{"un noneto", "un quinteto", "un sexteto", "Un octeto"}
            BonneReponse := 3
        question:
            Enonce := "Que compositor checo escribio la Sinfonia del Nuevo Mundo?"
            Reponses := array{"Smetana", "Mahler", "Antonin Dvorak", "Janacek"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas teclas negras tiene una octava en el piano?"
            Reponses := array{"8", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Que compositor barroco veneciano era apodado el Cura Rojo?"
            Reponses := array{"Monteverdi", "Antonio Vivaldi", "Corelli", "Albinoni"}
            BonneReponse := 1
        question:
            Enonce := "Que gran instrumento de doble lengueta toca en el registro grave de las maderas?"
            Reponses := array{"el clarinete", "El fagot", "la flauta", "la trompa"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor frances escribio Claro de luna (Suite bergamasque)?"
            Reponses := array{"Claude Debussy", "Faure", "Satie", "Ravel"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor ruso escribio el ballet El Cascanueces?"
            Reponses := array{"Chaikovski", "Prokofiev", "Stravinski", "Rimski-Korsakov"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor austriaco, muerto joven, escribio el lied La trucha?"
            Reponses := array{"Mozart", "Haydn", "Franz Schubert", "Bruckner"}
            BonneReponse := 2
        question:
            Enonce := "Que genero lirico ligero, con dialogos hablados, se asocia con Offenbach?"
            Reponses := array{"el oratorio", "La opereta", "el requiem", "la cantata"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor hungaro escribio las Rapsodias hungaras?"
            Reponses := array{"Franz Liszt", "Bartok", "Kodaly", "Brahms"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor escribio la opera Madama Butterfly?"
            Reponses := array{"Verdi", "Bizet", "Giacomo Puccini", "Wagner"}
            BonneReponse := 2
        question:
            Enonce := "Que trompetista de jazz es apodado Satchmo?"
            Reponses := array{"Dizzy Gillespie", "Miles Davis", "Chet Baker", "Louis Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Que compositor aleman escribio La cabalgata de las valquirias?"
            Reponses := array{"Beethoven", "Strauss", "Brahms", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Que compositor frances escribio El carnaval de los animales?"
            Reponses := array{"Bizet", "Gounod", "Camille Saint-Saens", "Berlioz"}
            BonneReponse := 2
        question:
            Enonce := "Que termino musical significa muy fuerte?"
            Reponses := array{"crescendo", "Fortissimo", "mezzo forte", "pianissimo"}
            BonneReponse := 1
        question:
            Enonce := "Que trompetista marco el jazz modal con el album Kind of Blue?"
            Reponses := array{"Louis Armstrong", "Miles Davis", "John Coltrane", "Duke Ellington"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor ruso escribio Cuadros de una exposicion?"
            Reponses := array{"Modest Musorgski", "Borodin", "Glinka", "Chaikovski"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor escribio el cuento musical Pedro y el lobo?"
            Reponses := array{"Stravinski", "Serguei Prokofiev", "Shostakovich", "Rajmaninov"}
            BonneReponse := 1
        question:
            Enonce := "Que voz femenina se situa en el registro grave?"
            Reponses := array{"la soprano", "la coloratura", "La contralto", "el mezzo agudo"}
            BonneReponse := 2
        question:
            Enonce := "Que banda de rock britanica tiene como cantante a Mick Jagger?"
            Reponses := array{"The Who", "The Rolling Stones", "Led Zeppelin", "The Kinks"}
            BonneReponse := 1
        question:
            Enonce := "Cuantas cuerdas tiene aproximadamente un arpa de concierto?"
            Reponses := array{"47", "12", "88", "24"}
            BonneReponse := 0
        question:
            Enonce := "Que compositor barroco aleman es el autor del oratorio El Mesias?"
            Reponses := array{"Telemann", "Georg Friedrich Handel", "Bach", "Pachelbel"}
            BonneReponse := 1
        question:
            Enonce := "Que compositor aleman compuso la tetralogia El anillo del nibelungo?"
            Reponses := array{"Bruckner", "Mahler", "Richard Strauss", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Que director italiano rodo La Dolce Vita?"
            Reponses := array{"Vittorio De Sica", "Federico Fellini", "Roberto Rossellini", "Luchino Visconti"}
            BonneReponse := 1
        question:
            Enonce := "Que pelicula de 1941 de Orson Welles se cita a menudo como una de las mejores de la historia?"
            Reponses := array{"Lo que el viento se llevo", "Ciudadano Kane", "Casablanca", "El halcon maltes"}
            BonneReponse := 1
        question:
            Enonce := "Que cineasta sueco dirigio El septimo sello?"
            Reponses := array{"Bo Widerberg", "Ingmar Bergman", "Roy Andersson", "Lars von Trier"}
            BonneReponse := 1
        question:
            Enonce := "Que cineasta japones dirigio Los siete samurais?"
            Reponses := array{"Yasujiro Ozu", "Akira Kurosawa", "Hayao Miyazaki", "Takeshi Kitano"}
            BonneReponse := 1
        question:
            Enonce := "Que pelicula de Coppola sobre la guerra de Vietnam contiene la frase sobre el olor a napalm?"
            Reponses := array{"La chaqueta metalica", "Apocalypse Now", "El cazador", "Platoon"}
            BonneReponse := 1
        question:
            Enonce := "Que cineasta espanol codirigio Un perro andaluz con Dali?"
            Reponses := array{"Victor Erice", "Carlos Saura", "Luis Bunuel", "Pedro Almodovar"}
            BonneReponse := 2
        question:
            Enonce := "Que actriz ostenta el record de Oscars de interpretacion (cuatro)?"
            Reponses := array{"Meryl Streep", "Bette Davis", "Ingrid Bergman", "Katharine Hepburn"}
            BonneReponse := 3
        question:
            Enonce := "Que pelicula muda expresionista alemana de 1920 presenta a un sonambulo?"
            Reponses := array{"M, el vampiro de Dusseldorf", "Nosferatu", "El gabinete del doctor Caligari", "Metropolis"}
            BonneReponse := 2
        question:
            Enonce := "Que primer largometraje de animacion de los estudios Disney se estreno en 1937?"
            Reponses := array{"Bambi", "Blancanieves y los siete enanitos", "Fantasia", "Pinocho"}
            BonneReponse := 1
        question:
            Enonce := "Que pelicula sovietica de 1925 de Eisenstein muestra la famosa escalinata de Odesa?"
            Reponses := array{"El acorazado Potemkin", "La huelga", "Octubre", "Alexander Nevski"}
            BonneReponse := 0
        question:
            Enonce := "Que actriz sueca interpreta el papel protagonista femenino de Casablanca?"
            Reponses := array{"Greta Garbo", "Rita Hayworth", "Lauren Bacall", "Ingrid Bergman"}
            BonneReponse := 3
        question:
            Enonce := "Que cineasta de la Nouvelle Vague dirigio Al final de la escapada?"
            Reponses := array{"Eric Rohmer", "Claude Chabrol", "Francois Truffaut", "Jean-Luc Godard"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos Oscars gano la pelicula Titanic?"
            Reponses := array{"5", "14", "11", "7"}
            BonneReponse := 2
        question:
            Enonce := "Que actor interpreta a Don Vito Corleone en El Padrino?"
            Reponses := array{"Al Pacino", "Robert De Niro", "Marlon Brando", "James Caan"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula de Ridley Scott (1979) presenta a una criatura hostil en una nave espacial?"
            Reponses := array{"Depredador", "Blade Runner", "Alien", "La cosa"}
            BonneReponse := 2
        question:
            Enonce := "Que actor estadounidense es el icono de los spaghetti westerns de Sergio Leone?"
            Reponses := array{"Clint Eastwood", "Charles Bronson", "John Wayne", "Lee Van Cleef"}
            BonneReponse := 0
        question:
            Enonce := "Que directora gano el Oscar a la mejor direccion por En tierra hostil?"
            Reponses := array{"Kathryn Bigelow", "Greta Gerwig", "Sofia Coppola", "Jane Campion"}
            BonneReponse := 0
        question:
            Enonce := "Que pelicula de animacion de Miyazaki presenta un castillo que se desplaza?"
            Reponses := array{"El castillo ambulante", "El viaje de Chihiro", "El castillo en el cielo", "La princesa Mononoke"}
            BonneReponse := 0
        question:
            Enonce := "Que pelicula de Jean Renoir (1937) trata de la cautividad durante la Gran Guerra?"
            Reponses := array{"La gran ilusion", "La bestia humana", "La regla del juego", "French Cancan"}
            BonneReponse := 0
        question:
            Enonce := "Que actor gano el Oscar al mejor actor por Joker (2019)?"
            Reponses := array{"Heath Ledger", "Joaquin Phoenix", "Jared Leto", "Christian Bale"}
            BonneReponse := 1
        question:
            Enonce := "Que pelicula de 1994 transcurre en la prision de Shawshank?"
            Reponses := array{"La milla verde", "Cadena perpetua", "El hombre de Alcatraz", "El expreso de medianoche"}
            BonneReponse := 1
        question:
            Enonce := "Que cineasta danes cofundo el movimiento Dogma 95?"
            Reponses := array{"Carl Dreyer", "Nicolas Winding Refn", "Thomas Vinterberg", "Lars von Trier"}
            BonneReponse := 3
        question:
            Enonce := "Que pelicula de Stanley Kubrick presenta a la computadora HAL 9000?"
            Reponses := array{"Barry Lyndon", "2001: Una odisea del espacio", "El resplandor", "Telefono rojo? Volamos hacia Moscu"}
            BonneReponse := 1
        question:
            Enonce := "Que director rodo Uno de los nuestros y Taxi Driver?"
            Reponses := array{"Sidney Lumet", "Francis Ford Coppola", "Martin Scorsese", "Brian De Palma"}
            BonneReponse := 2
        question:
            Enonce := "Que pelicula francesa de 1962 dirigida por Chris Marker esta compuesta de fotografias fijas?"
            Reponses := array{"Cleo de 5 a 7", "Los 400 golpes", "La Jetee", "Hiroshima mon amour"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos jugadores de un equipo de waterpolo estan en el agua?"
            Reponses := array{"5", "11", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "Que pais gano la primera Copa del Mundo de futbol, en 1930?"
            Reponses := array{"Brasil", "Italia", "Uruguay", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "En que ano se celebraron los primeros Juegos Olimpicos de la era moderna?"
            Reponses := array{"1900", "1888", "1896", "1924"}
            BonneReponse := 2
        question:
            Enonce := "Que piloto aleman mantuvo durante mucho tiempo el record de 7 titulos de campeon del mundo de F1?"
            Reponses := array{"Alain Prost", "Niki Lauda", "Ayrton Senna", "Michael Schumacher"}
            BonneReponse := 3
        question:
            Enonce := "Cuantas casillas tiene un tablero de ajedrez?"
            Reponses := array{"100", "64", "49", "81"}
            BonneReponse := 1
        question:
            Enonce := "Que ciclista 'gano' 7 Tours de Francia antes de ser despojado de ellos por dopaje?"
            Reponses := array{"Eddy Merckx", "Miguel Indurain", "Bernard Hinault", "Lance Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "En que deporte se otorga la 'Copa Stanley'?"
            Reponses := array{"el beisbol", "el futbol americano", "El hockey sobre hielo", "el baloncesto"}
            BonneReponse := 2
        question:
            Enonce := "De cuantos jugadores se compone un equipo de balonmano en la cancha?"
            Reponses := array{"6", "7", "5", "11"}
            BonneReponse := 1
        question:
            Enonce := "Que futbolista marco el llamado gol de 'la mano de Dios' en 1986?"
            Reponses := array{"Zidane", "Diego Maradona", "Pele", "Romario"}
            BonneReponse := 1
        question:
            Enonce := "Que distancia exacta recorre un maraton oficial?"
            Reponses := array{"26 km", "50 km", "42,195 km", "40 km"}
            BonneReponse := 2
        question:
            Enonce := "Que boxeador termino su carrera con un record de 50 victorias y 0 derrotas?"
            Reponses := array{"Floyd Mayweather", "Rocky Marciano", "Mike Tyson", "Muhammad Ali"}
            BonneReponse := 0
        question:
            Enonce := "Que jugador de baloncesto anoto 100 puntos en un solo partido de la NBA?"
            Reponses := array{"LeBron James", "Kobe Bryant", "Michael Jordan", "Wilt Chamberlain"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte de raqueta se juega en una cancha cerrada rodeada de muros?"
            Reponses := array{"el badminton", "El squash", "el tenis", "el padel"}
            BonneReponse := 1
        question:
            Enonce := "Cuanto dura un cuarto en la NBA?"
            Reponses := array{"15 minutos", "10 minutos", "20 minutos", "12 minutos"}
            BonneReponse := 3
        question:
            Enonce := "Que jugador logro el ultimo 'Grand Slam' masculino en un ano natural en tenis (1969)?"
            Reponses := array{"Bjorn Borg", "Jimmy Connors", "John McEnroe", "Rod Laver"}
            BonneReponse := 3
        question:
            Enonce := "Que judoca frances es multiple campeon del mundo y olimpico de los pesos pesados?"
            Reponses := array{"Lucie Decosse", "Teddy Riner", "David Douillet", "Djamel Bouras"}
            BonneReponse := 1
        question:
            Enonce := "Que pais ha ganado el mayor numero total de medallas olimpicas de la historia?"
            Reponses := array{"la URSS", "Los Estados Unidos", "China", "Alemania"}
            BonneReponse := 1
        question:
            Enonce := "Que trofeo individual premia al mejor futbolista del ano?"
            Reponses := array{"la Bota de Plata", "la Copa de Europa", "El Balon de Oro", "el Trofeo Kopa"}
            BonneReponse := 2
        question:
            Enonce := "Que mitica escuderia italiana es la mas laureada de la historia de la F1?"
            Reponses := array{"Ferrari", "Lotus", "McLaren", "Williams"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte olimpico se practica con florete, espada o sable?"
            Reponses := array{"La esgrima", "el tiro deportivo", "el tiro con arco", "el pentatlon"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas pruebas incluye el decatlon en atletismo?"
            Reponses := array{"7", "5", "10", "12"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad francesa acoge la carrera automovilistica de las 24 Horas?"
            Reponses := array{"Magny-Cours", "Reims", "Monaco", "Le Mans"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos jugadores de un equipo de hockey sobre hielo estan sobre el hielo (portero incluido)?"
            Reponses := array{"5", "6", "11", "7"}
            BonneReponse := 1
        question:
            Enonce := "Que atleta jamaicano posee el record mundial de los 100 m (9,58 s)?"
            Reponses := array{"Usain Bolt", "Carl Lewis", "Yohan Blake", "Tyson Gay"}
            BonneReponse := 0
        question:
            Enonce := "En que ciudad de la antigua Grecia se celebraban los Juegos Olimpicos originales?"
            Reponses := array{"Esparta", "Delfos", "Atenas", "Olimpia"}
            BonneReponse := 3
        question:
            Enonce := "Que dios griego primordial personifica el Cielo, esposo de Gea?"
            Reponses := array{"Caos", "Crono", "Urano", "Erebo"}
            BonneReponse := 2
        question:
            Enonce := "Que diosa romana vela por el hogar (equivalente a Hestia)?"
            Reponses := array{"Vesta", "Minerva", "Juno", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Que heroe nordico mato al dragon Fafnir?"
            Reponses := array{"Tyr", "Sigurd", "Beowulf", "Thor"}
            BonneReponse := 1
        question:
            Enonce := "Que dios egipcio fue asesinado por su hermano Seth?"
            Reponses := array{"Thot", "Anubis", "Osiris", "Horus"}
            BonneReponse := 2
        question:
            Enonce := "Que personaje esta condenado a empujar eternamente una roca que vuelve a caer?"
            Reponses := array{"Tantalo", "Prometeo", "Sisifo", "Atlas"}
            BonneReponse := 2
        question:
            Enonce := "Que gigante de cien ojos vigila a Io en la mitologia griega?"
            Reponses := array{"Tifon", "el ciclope", "Argos", "Gerion"}
            BonneReponse := 2
        question:
            Enonce := "Que diosa griega personifica la victoria e inspira a una marca deportiva?"
            Reponses := array{"Iris", "Hera", "Nike", "Tique"}
            BonneReponse := 2
        question:
            Enonce := "Que rey de Creta mando construir el Laberinto a Dedalo?"
            Reponses := array{"Agamenon", "Minos", "Egeo", "Priamo"}
            BonneReponse := 1
        question:
            Enonce := "Que hechicera transformo en cerdos a los companeros de Ulises?"
            Reponses := array{"Medea", "Circe", "Calipso", "Penelope"}
            BonneReponse := 1
        question:
            Enonce := "Que dios destructor forma parte de la Trimurti hindu?"
            Reponses := array{"Shiva", "Ganesha", "Indra", "Krishna"}
            BonneReponse := 0
        question:
            Enonce := "Como se llama el arbol cosmico que une los nueve mundos nordicos?"
            Reponses := array{"el Bifrost", "el Valhalla", "el Ragnarok", "Yggdrasil"}
            BonneReponse := 3
        question:
            Enonce := "Que diosa griega de las cosechas es la madre de Persefone?"
            Reponses := array{"Hera", "Hestia", "Demeter", "Artemisa"}
            BonneReponse := 2
        question:
            Enonce := "Quien ayudo a Teseo a salir del Laberinto con un hilo?"
            Reponses := array{"Medea", "Ariadna", "Andromeda", "Antigona"}
            BonneReponse := 1
        question:
            Enonce := "Que personaje volo demasiado cerca del sol con alas de cera?"
            Reponses := array{"Dedalo", "Belerofonte", "Faeton", "Icaro"}
            BonneReponse := 3
        question:
            Enonce := "Que criatura escupe fuego, con cabeza de leon, cuerpo de cabra y cola de serpiente?"
            Reponses := array{"el basilisco", "La Quimera", "la Hidra", "el grifo"}
            BonneReponse := 1
        question:
            Enonce := "Que dios nordico custodia el puente arcoiris Bifrost?"
            Reponses := array{"Baldr", "Heimdall", "Frey", "Tyr"}
            BonneReponse := 1
        question:
            Enonce := "Que deidad azteca se representa como una serpiente emplumada?"
            Reponses := array{"Quetzalcoatl", "Huitzilopochtli", "Tezcatlipoca", "Tlaloc"}
            BonneReponse := 0
        question:
            Enonce := "Que rey esta condenado a hambre y sed eternas en el Inframundo (la fruta y el agua lo eluden)?"
            Reponses := array{"Sisifo", "Ixion", "Tantalo", "Midas"}
            BonneReponse := 2
        question:
            Enonce := "Que dios romano de dos caras preside los comienzos y las puertas?"
            Reponses := array{"Vulcano", "Saturno", "Marte", "Jano"}
            BonneReponse := 3
        question:
            Enonce := "Que serpiente gigante rodea el mundo en la mitologia nordica?"
            Reponses := array{"Jormungandr", "Fenrir", "Nidhoggr", "el Kraken"}
            BonneReponse := 0
        question:
            Enonce := "Que astuto heroe griego ideo la estratagema del caballo de Troya?"
            Reponses := array{"Menelao", "Ulises", "Ayax", "Aquiles"}
            BonneReponse := 1
        question:
            Enonce := "Que personaje biblico sobrevivio al Diluvio a bordo de un arca?"
            Reponses := array{"Moises", "Jonas", "Abraham", "Noe"}
            BonneReponse := 3
        question:
            Enonce := "Que semidios griego ascendio al Olimpo tras realizar sus famosos trabajos?"
            Reponses := array{"Heracles", "Belerofonte", "Teseo", "Perseo"}
            BonneReponse := 0
        question:
            Enonce := "Que dios griego del vino y la embriaguez es tambien el del teatro?"
            Reponses := array{"Dioniso", "Pan", "Hermes", "Apolo"}
            BonneReponse := 0
        question:
            Enonce := "Que rio del Inframundo griego procura el olvido a las almas que beben de el?"
            Reponses := array{"El Leteo", "la Estigia", "el Aqueronte", "el Cocito"}
            BonneReponse := 0

MakeCultureQuestionsDE() : []question =
    array:
        question:
            Enonce := "In welchem Jahr begann der Erste Weltkrieg?"
            Reponses := array{"1914", "1939", "1905", "1918"}
            BonneReponse := 0
        question:
            Enonce := "Welches Ereignis kennzeichnet den 14. Juli 1789?"
            Reponses := array{"Die Kroenung Napoleons", "Der Sturm auf die Bastille", "Die Schlacht von Waterloo", "Der amerikanische Unabhaengigkeitstag"}
            BonneReponse := 1
        question:
            Enonce := "Wer war der erste Kaiser der Franzosen?"
            Reponses := array{"Karl der Grosse", "Julius Caesar", "Ludwig XIV.", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr fiel die Berliner Mauer?"
            Reponses := array{"1989", "1975", "1961", "1991"}
            BonneReponse := 0
        question:
            Enonce := "Wer erreichte 1492 Amerika?"
            Reponses := array{"Magellan", "Vasco da Gama", "Christoph Kolumbus", "Marco Polo"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr endete der Zweite Weltkrieg in Europa?"
            Reponses := array{"1950", "1939", "1918", "1945"}
            BonneReponse := 3
        question:
            Enonce := "Welches Volk erbaute die Pyramiden von Gizeh?"
            Reponses := array{"Die Roemer", "Die Aegypter", "Die Azteken", "Die Griechen"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Nazi-Deutschland an?"
            Reponses := array{"Adolf Hitler", "Winston Churchill", "Benito Mussolini", "Josef Stalin"}
            BonneReponse := 0
        question:
            Enonce := "Welche Koenigin regierte das Vereinigte Koenigreich von 1952 bis 2022?"
            Reponses := array{"Victoria", "Elisabeth II.", "Elisabeth I.", "Maria Stuart"}
            BonneReponse := 1
        question:
            Enonce := "Im Hundertjaehrigen Krieg kaempfte Frankreich gegen welches Land?"
            Reponses := array{"Deutschland", "Spanien", "England", "Italien"}
            BonneReponse := 2
        question:
            Enonce := "Welcher roemische Feldherr eroberte Gallien?"
            Reponses := array{"Augustus", "Julius Caesar", "Nero", "Hannibal"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr fanden die Anschlaege vom 11. September statt?"
            Reponses := array{"2005", "1999", "2001", "1998"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Praesident schaffte waehrend des Sezessionskriegs die Sklaverei ab?"
            Reponses := array{"Abraham Lincoln", "Franklin Roosevelt", "George Washington", "John Kennedy"}
            BonneReponse := 0
        question:
            Enonce := "Welche roemische Stadt wurde im Jahr 79 vom Vesuv verschuettet?"
            Reponses := array{"Karthago", "Rom", "Pompeji", "Athen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Koenig von Frankreich wird der Sonnenkoenig genannt?"
            Reponses := array{"Franz I.", "Heinrich IV.", "Ludwig XIV.", "Ludwig XVI."}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte den gewaltlosen Kampf fuer die Unabhaengigkeit Indiens an?"
            Reponses := array{"Mao Zedong", "Churchill", "Nelson Mandela", "Gandhi"}
            BonneReponse := 3
        question:
            Enonce := "Welches gigantische Verteidigungsbauwerk schuetzt den Norden Chinas?"
            Reponses := array{"Die Mauer von Babylon", "Die Chinesische Mauer", "Die Maginot-Linie", "Der Hadrianswall"}
            BonneReponse := 1
        question:
            Enonce := "Wer war der erste Praesident der Vereinigten Staaten?"
            Reponses := array{"Benjamin Franklin", "George Washington", "Thomas Jefferson", "Abraham Lincoln"}
            BonneReponse := 1
        question:
            Enonce := "Welche japanische Stadt erlitt 1945 die erste Atombombe?"
            Reponses := array{"Kyoto", "Tokio", "Hiroshima", "Nagasaki"}
            BonneReponse := 2
        question:
            Enonce := "Welche Schlacht von 1815 besiegelte Napoleons endgueltige Niederlage?"
            Reponses := array{"Verdun", "Austerlitz", "Waterloo", "Marignano"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Praesident wurde 1963 in Dallas ermordet?"
            Reponses := array{"Ronald Reagan", "Abraham Lincoln", "John F. Kennedy", "Richard Nixon"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Seefahrer leitete die erste Expedition zur Weltumsegelung?"
            Reponses := array{"Magellan", "Christoph Kolumbus", "James Cook", "Vasco da Gama"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr schaffte Frankreich die Todesstrafe ab?"
            Reponses := array{"1945", "1981", "1968", "1995"}
            BonneReponse := 1
        question:
            Enonce := "Welcher franzoesische Kaiser verkaufte Louisiana an die Vereinigten Staaten?"
            Reponses := array{"Napoleon III.", "Ludwig XVI.", "Karl X.", "Napoleon Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "Welche Regierungschefin wurde im Vereinigten Koenigreich die Eiserne Lady genannt?"
            Reponses := array{"Angela Merkel", "Theresa May", "Elisabeth II.", "Margaret Thatcher"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Hauptstadt Italiens?"
            Reponses := array{"Mailand", "Rom", "Neapel", "Venedig"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss fliesst durch Paris?"
            Reponses := array{"Die Loire", "Die Rhone", "Die Garonne", "Die Seine"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der hoechste Berg der Welt?"
            Reponses := array{"Der Kilimandscharo", "Der K2", "Der Mont Blanc", "Der Everest"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Ozean grenzt an die Westkueste Frankreichs?"
            Reponses := array{"Die Arktis", "Der Indische Ozean", "Der Pazifik", "Der Atlantik"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die groesste heisse Wueste der Welt?"
            Reponses := array{"Die Sahara", "Die Gobi", "Die Atacama-Wueste", "Die Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Hauptstadt Japans?"
            Reponses := array{"Peking", "Seoul", "Tokio", "Osaka"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die Form eines Stiefels?"
            Reponses := array{"Spanien", "Griechenland", "Italien", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Was ist das flaechenmaessig groesste Land der Welt?"
            Reponses := array{"Die Vereinigten Staaten", "Kanada", "China", "Russland"}
            BonneReponse := 3
        question:
            Enonce := "Auf welchem Kontinent liegt Aegypten?"
            Reponses := array{"Europa", "Asien", "Afrika", "Ozeanien"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt Spaniens?"
            Reponses := array{"Valencia", "Madrid", "Barcelona", "Sevilla"}
            BonneReponse := 1
        question:
            Enonce := "Welches Meer grenzt an die Cote d'Azur?"
            Reponses := array{"Das Mittelmeer", "Die Nordsee", "Die Ostsee", "Der Aermelkanal"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der groesste Ozean der Welt?"
            Reponses := array{"Der Indische Ozean", "Der Atlantik", "Der Pazifik", "Der Arktische Ozean"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt der Vereinigten Staaten?"
            Reponses := array{"Los Angeles", "Chicago", "Washington", "New York"}
            BonneReponse := 2
        question:
            Enonce := "Welches Gebirge trennt Frankreich von Spanien?"
            Reponses := array{"Die Vogesen", "Die Pyrenaeen", "Die Alpen", "Der Jura"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt Deutschlands?"
            Reponses := array{"Muenchen", "Berlin", "Frankfurt", "Hamburg"}
            BonneReponse := 1
        question:
            Enonce := "Welche Meerenge trennt Frankreich vom Vereinigten Koenigreich?"
            Reponses := array{"Die Aegaeis", "Der Aermelkanal", "Das Schwarze Meer", "Der Golf von Biskaya"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt des Vereinigten Koenigreichs?"
            Reponses := array{"London", "Manchester", "Liverpool", "Edinburgh"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Fluss fliesst durch Aegypten?"
            Reponses := array{"Der Nil", "Der Kongo", "Der Tigris", "Der Amazonas"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Hauptstadt Belgiens?"
            Reponses := array{"Luettich", "Bruessel", "Bruegge", "Antwerpen"}
            BonneReponse := 1
        question:
            Enonce := "Auf welchem Kontinent leben wilde Kaengurus?"
            Reponses := array{"Afrika", "Asien", "Australien", "Suedamerika"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt Portugals?"
            Reponses := array{"Madrid", "Porto", "Lissabon", "Sevilla"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der hoechste Berg Frankreichs und der Alpen?"
            Reponses := array{"Der Mont Blanc", "Der Pic du Midi", "Der Mont Ventoux", "Der Puy de Dome"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land wird das Land der aufgehenden Sonne genannt?"
            Reponses := array{"Thailand", "China", "Japan", "Suedkorea"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt Russlands?"
            Reponses := array{"Warschau", "Moskau", "Kiew", "Sankt Petersburg"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die meisten Einwohner der Welt (seit 2023)?"
            Reponses := array{"China", "Indonesien", "Indien", "Die Vereinigten Staaten"}
            BonneReponse := 2
        question:
            Enonce := "Wie lautet die chemische Formel von Wasser?"
            Reponses := array{"O2", "H2O", "CO2", "H2O2"}
            BonneReponse := 1
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Gold?"
            Reponses := array{"Or", "Go", "Ag", "Au"}
            BonneReponse := 3
        question:
            Enonce := "Welches Gas ist fuer die menschliche Atmung unverzichtbar?"
            Reponses := array{"Kohlendioxid", "Helium", "Sauerstoff", "Stickstoff"}
            BonneReponse := 2
        question:
            Enonce := "Bei welcher Temperatur kocht Wasser auf Meereshoehe?"
            Reponses := array{"90 C", "100 C", "50 C", "0 C"}
            BonneReponse := 1
        question:
            Enonce := "Bei welcher Temperatur gefriert Wasser?"
            Reponses := array{"-10 C", "4 C", "0 C", "32 C"}
            BonneReponse := 2
        question:
            Enonce := "Welches Metall ist bei Raumtemperatur fluessig?"
            Reponses := array{"Quecksilber", "Kupfer", "Eisen", "Blei"}
            BonneReponse := 0
        question:
            Enonce := "Welche Kraft zieht uns zum Boden?"
            Reponses := array{"Die Schwerkraft", "Die Elektrizitaet", "Der Magnetismus", "Die Reibung"}
            BonneReponse := 0
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Eisen?"
            Reponses := array{"F", "Fr", "Ir", "Fe"}
            BonneReponse := 3
        question:
            Enonce := "Welches Gas nehmen Pflanzen fuer die Photosynthese auf?"
            Reponses := array{"Wasserstoff", "Sauerstoff", "Stickstoff", "Kohlendioxid"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Wissenschaftler formulierte die beruehmte Gleichung E = mc^2?"
            Reponses := array{"Nikola Tesla", "Isaac Newton", "Albert Einstein", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Welches Instrument misst die Temperatur?"
            Reponses := array{"Der Kompass", "Das Barometer", "Die Stoppuhr", "Das Thermometer"}
            BonneReponse := 3
        question:
            Enonce := "Welches Gas, leichter als Luft, laesst Ballons schweben?"
            Reponses := array{"Kohlendioxid", "Sauerstoff", "Helium", "Methan"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Gelehrte formulierte das Gesetz der universellen Gravitation?"
            Reponses := array{"Isaac Newton", "Einstein", "Pasteur", "Kopernikus"}
            BonneReponse := 0
        question:
            Enonce := "Welches Gas ist am haeufigsten in der Erdatmosphaere?"
            Reponses := array{"Argon", "Stickstoff", "Sauerstoff", "Kohlendioxid"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Zustand ist Wasser, wenn es gefroren ist?"
            Reponses := array{"Fest", "Plasma", "Fluessig", "Gasfoermig"}
            BonneReponse := 0
        question:
            Enonce := "Welches Teilchen des Atoms traegt eine negative Ladung?"
            Reponses := array{"Das Elektron", "Das Proton", "Das Neutron", "Das Photon"}
            BonneReponse := 0
        question:
            Enonce := "Mit welchem Instrument kann man sehr kleine Objekte beobachten?"
            Reponses := array{"Das Mikroskop", "Das Teleskop", "Das Fernglas", "Die Riesenlupe"}
            BonneReponse := 0
        question:
            Enonce := "Welches Leichtmetall wird fuer Dosen und Flugzeuge verwendet?"
            Reponses := array{"Aluminium", "Quecksilber", "Gold", "Blei"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Farben unterscheidet man klassisch in einem Regenbogen?"
            Reponses := array{"5", "10", "3", "7"}
            BonneReponse := 3
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Natrium?"
            Reponses := array{"So", "Sd", "S", "Na"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Himmelskoerper ist fuer die Gezeiten auf der Erde verantwortlich?"
            Reponses := array{"Venus", "Der Mond", "Mars", "Der Wind"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Masseinheit fuer die Staerke des elektrischen Stroms?"
            Reponses := array{"Das Joule", "Das Watt", "Das Ampere", "Das Meter"}
            BonneReponse := 2
        question:
            Enonce := "Was misst man in Grad Celsius?"
            Reponses := array{"Die Zeit", "Die Entfernung", "Die Temperatur", "Das Gewicht"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Grundeinheit der Materie?"
            Reponses := array{"Das Korn", "Das Molekuel", "Die Zelle", "Das Atom"}
            BonneReponse := 3
        question:
            Enonce := "Welches Gas entsteht beim Verbrennen von Kohlenstoff?"
            Reponses := array{"Sauerstoff", "Helium", "Wasserstoff", "Kohlendioxid"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Lungen hat der Mensch?"
            Reponses := array{"3", "1", "4", "2"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ pumpt das Blut durch den Koerper?"
            Reponses := array{"Die Lunge", "Der Magen", "Das Herz", "Die Leber"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Zaehne hat ein Erwachsener (einschliesslich Weisheitszaehne)?"
            Reponses := array{"20", "28", "36", "32"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ verdaut hauptsaechlich die Nahrung?"
            Reponses := array{"Die Lunge", "Der Magen", "Das Gehirn", "Das Herz"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ ist das Zentrum des Nervensystems?"
            Reponses := array{"Die Niere", "Die Leber", "Das Herz", "Das Gehirn"}
            BonneReponse := 3
        question:
            Enonce := "Wie heisst der Oberschenkelknochen?"
            Reponses := array{"Der Oberarmknochen", "Der Oberschenkelknochen", "Das Schienbein", "Das Schluesselbein"}
            BonneReponse := 1
        question:
            Enonce := "Welche Tiergruppe saeugt ihre Jungen?"
            Reponses := array{"Die Voegel", "Die Fische", "Die Saeugetiere", "Die Reptilien"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Beine hat eine Spinne?"
            Reponses := array{"4", "8", "10", "6"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Beine hat ein Insekt?"
            Reponses := array{"6", "2", "4", "8"}
            BonneReponse := 0
        question:
            Enonce := "Was produzieren Bienen?"
            Reponses := array{"Milch", "Seide", "Honig", "Ohrenschmalz"}
            BonneReponse := 2
        question:
            Enonce := "Was ist das groesste Tier der Welt?"
            Reponses := array{"Der Elefant", "Der Weisse Hai", "Der Blauwal", "Der Diplodocus"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Kammern hat das menschliche Herz?"
            Reponses := array{"2", "4", "3", "1"}
            BonneReponse := 1
        question:
            Enonce := "Welches Vitamin wird mithilfe der Sonne gebildet?"
            Reponses := array{"Vitamin A", "Vitamin B12", "Vitamin C", "Vitamin D"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ filtert das Blut und produziert den Urin?"
            Reponses := array{"Die Leber", "Die Nieren", "Das Herz", "Die Lunge"}
            BonneReponse := 1
        question:
            Enonce := "Was ist das groesste Organ des menschlichen Koerpers?"
            Reponses := array{"Die Lunge", "Der Darm", "Die Leber", "Die Haut"}
            BonneReponse := 3
        question:
            Enonce := "Welche Blutzelle transportiert den Sauerstoff?"
            Reponses := array{"Das rote Blutkoerperchen", "Das weisse Blutkoerperchen", "Das Neuron", "Das Blutplaettchen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Reptil kann seine Farbe wechseln?"
            Reponses := array{"Das Chamaeleon", "Die Schildkroete", "Das Krokodil", "Die Kobra"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Sinne hat der Mensch klassischerweise?"
            Reponses := array{"6", "7", "5", "3"}
            BonneReponse := 2
        question:
            Enonce := "Welches Gas atmen wir hauptsaechlich aus?"
            Reponses := array{"Wasserstoff", "Sauerstoff", "Helium", "Kohlendioxid"}
            BonneReponse := 3
        question:
            Enonce := "Welches Organ ermoeglicht das Atmen?"
            Reponses := array{"Die Lunge", "Die Nieren", "Die Leber", "Das Herz"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Finger hat eine menschliche Hand?"
            Reponses := array{"10", "6", "5", "4"}
            BonneReponse := 2
        question:
            Enonce := "Welche rote Fluessigkeit fliesst durch unsere Gefaesse?"
            Reponses := array{"Die Galle", "Das Blut", "Die Lymphe", "Der Speichel"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Sinn wird mit den Augen verbunden?"
            Reponses := array{"Das Schmecken", "Das Hoeren", "Das Sehen", "Das Riechen"}
            BonneReponse := 2
        question:
            Enonce := "Wovon ernaehrt sich ein pflanzenfressendes Tier?"
            Reponses := array{"Nur von Insekten", "Von Fischen", "Von Pflanzen", "Von Fleisch"}
            BonneReponse := 2
        question:
            Enonce := "Welches menschliche Organ kann sich weitgehend regenerieren?"
            Reponses := array{"Das Herz", "Das Gehirn", "Die Leber", "Das Auge"}
            BonneReponse := 2
        question:
            Enonce := "Welches ist das schnellste Landtier?"
            Reponses := array{"Der Gepard", "Das Pferd", "Der Windhund", "Der Loewe"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tier wird der Koenig der Tiere genannt?"
            Reponses := array{"Der Elefant", "Der Adler", "Der Loewe", "Der Tiger"}
            BonneReponse := 2
        question:
            Enonce := "Welcher grosse afrikanische Vogel kann nicht fliegen, laeuft aber sehr schnell?"
            Reponses := array{"Der Strauss", "Der Flamingo", "Der Tukan", "Der Adler"}
            BonneReponse := 0
        question:
            Enonce := "Welches ist das groesste Landtier?"
            Reponses := array{"Der Elefant", "Die Giraffe", "Das Nilpferd", "Das Nashorn"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Baum produziert Eicheln?"
            Reponses := array{"Die Kiefer", "Der Ahorn", "Die Eiche", "Die Birke"}
            BonneReponse := 2
        question:
            Enonce := "Welches Tier hat einen Ruessel?"
            Reponses := array{"Das Nashorn", "Der Tapir", "Der Elefant", "Der Bueffel"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Vogel symbolisiert den Frieden?"
            Reponses := array{"Die Kraehe", "Der Spatz", "Die Taube", "Der Falke"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Hoecker hat ein Dromedar?"
            Reponses := array{"0", "2", "3", "1"}
            BonneReponse := 3
        question:
            Enonce := "Welches Tier haelt im Winter Winterschlaf und ist dafuer bekannt?"
            Reponses := array{"Der Wolf", "Der Hirsch", "Der Baer", "Der Fuchs"}
            BonneReponse := 2
        question:
            Enonce := "Welche Blume dreht ihren Kopf zur Sonne?"
            Reponses := array{"Die Sonnenblume", "Die Rose", "Der Mohn", "Die Tulpe"}
            BonneReponse := 0
        question:
            Enonce := "Welcher schwarz-weisse Vogel lebt in der Antarktis und kann nicht fliegen?"
            Reponses := array{"Der Pinguin", "Der Tukan", "Die Eule", "Die Moewe"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der groesste tropische Regenwald der Welt?"
            Reponses := array{"Der Schwarzwald", "Das Kongobecken", "Der sibirische Wald", "Der Amazonas"}
            BonneReponse := 3
        question:
            Enonce := "Welches Reptil hat einen Panzer?"
            Reponses := array{"Das Krokodil", "Die Schlange", "Die Schildkroete", "Die Eidechse"}
            BonneReponse := 2
        question:
            Enonce := "Welches Saeugetier kann fliegen?"
            Reponses := array{"Die Eule", "Das Eichhoernchen", "Die Fledermaus", "Der Kolibri"}
            BonneReponse := 2
        question:
            Enonce := "Welches Tier webt ein Netz, um seine Beute zu fangen?"
            Reponses := array{"Die Spinne", "Die Biene", "Die Ameise", "Die Wespe"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Menschenaffe teilt die meisten Gene mit dem Menschen?"
            Reponses := array{"Der Orang-Utan", "Der Schimpanse", "Der Pavian", "Der Gorilla"}
            BonneReponse := 1
        question:
            Enonce := "Welcher nachtaktive Vogel ruft Uhu?"
            Reponses := array{"Das Rotkehlchen", "Die Ente", "Die Taube", "Die Eule"}
            BonneReponse := 3
        question:
            Enonce := "Die Giraffe ist ein..."
            Reponses := array{"Insektenfresser", "Pflanzenfresser", "Fleischfresser", "Allesfresser"}
            BonneReponse := 1
        question:
            Enonce := "Welches Insekt produziert Seide?"
            Reponses := array{"Die Seidenraupe", "Die Ameise", "Der Schmetterling", "Die Biene"}
            BonneReponse := 0
        question:
            Enonce := "Welches ist die groesste Raubkatze der Welt?"
            Reponses := array{"Der Loewe", "Der Jaguar", "Der Tiger", "Der Leopard"}
            BonneReponse := 2
        question:
            Enonce := "Welches sehr intelligente Meeressaeugetier springt aus dem Wasser?"
            Reponses := array{"Der Delfin", "Der Hai", "Die Robbe", "Die Qualle"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Baum behaelt seine Nadeln das ganze Jahr ueber gruen?"
            Reponses := array{"Die Tanne", "Die Eiche", "Die Platane", "Die Weide"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tier gilt als der beste Freund des Menschen?"
            Reponses := array{"Die Katze", "Das Pferd", "Der Hund", "Der Papagei"}
            BonneReponse := 2
        question:
            Enonce := "Welche Amphibie lebt in der Naehe von Tuempeln und quakt?"
            Reponses := array{"Die Schnecke", "Die Libelle", "Der Frosch", "Die Eidechse"}
            BonneReponse := 2
        question:
            Enonce := "Welche Farbe nimmt ein welkes Blatt im Herbst oft an?"
            Reponses := array{"Braun/rotbraun", "Violett", "Blau", "Schwarz"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Himmelskoerper befindet sich im Zentrum unseres Sonnensystems?"
            Reponses := array{"Jupiter", "Die Erde", "Die Sonne", "Der Mond"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Planet wird als der rote Planet bezeichnet?"
            Reponses := array{"Saturn", "Merkur", "Mars", "Venus"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der natuerliche Satellit der Erde?"
            Reponses := array{"Die Sonne", "Venus", "Der Mond", "Mars"}
            BonneReponse := 2
        question:
            Enonce := "Wer war der erste Mensch, der auf dem Mond ging?"
            Reponses := array{"Buzz Aldrin", "Neil Armstrong", "Juri Gagarin", "Thomas Pesquet"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der groesste Planet im Sonnensystem?"
            Reponses := array{"Jupiter", "Neptun", "Die Erde", "Saturn"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Planeten hat das Sonnensystem?"
            Reponses := array{"8", "7", "10", "9"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Planet ist fuer seine Ringe bekannt?"
            Reponses := array{"Mars", "Saturn", "Merkur", "Venus"}
            BonneReponse := 1
        question:
            Enonce := "Wie heisst die Galaxie, die unser Sonnensystem enthaelt?"
            Reponses := array{"Die Strudelgalaxie", "Andromeda", "Der Grosse Wagen", "Die Milchstrasse"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Planet ist der Sonne am naechsten?"
            Reponses := array{"Venus", "Mars", "Die Erde", "Merkur"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr betrat der Mensch zum ersten Mal den Mond?"
            Reponses := array{"1969", "1961", "1975", "1958"}
            BonneReponse := 0
        question:
            Enonce := "Welche Raumfahrtbehoerde ist amerikanisch?"
            Reponses := array{"Die NASA", "Das CNES", "Roskosmos", "Die ESA"}
            BonneReponse := 0
        question:
            Enonce := "Auf welchem Planeten leben wir?"
            Reponses := array{"Die Erde", "Venus", "Mars", "Der Mond"}
            BonneReponse := 0
        question:
            Enonce := "Wie nennt man das Phaenomen, bei dem der Mond die Sonne verdeckt?"
            Reponses := array{"Ein Polarlicht", "Eine Sonnenfinsternis", "Eine Supernova", "Ein Komet"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Planet wird als Abendstern bezeichnet?"
            Reponses := array{"Venus", "Saturn", "Mars", "Jupiter"}
            BonneReponse := 0
        question:
            Enonce := "Welches Fahrzeug befoerdert Astronauten ins All?"
            Reponses := array{"Ein Flugzeug", "Eine Rakete", "Ein U-Boot", "Ein Heissluftballon"}
            BonneReponse := 1
        question:
            Enonce := "Welches beruehmte Weltraumteleskop wurde 1990 gestartet?"
            Reponses := array{"Kepler", "Voyager", "Galileo", "Hubble"}
            BonneReponse := 3
        question:
            Enonce := "Wie lange braucht die Erde, um die Sonne zu umrunden?"
            Reponses := array{"Ein Monat", "Zehn Jahre", "Etwa ein Jahr", "Ein Tag"}
            BonneReponse := 2
        question:
            Enonce := "Welche Form hat die Erde?"
            Reponses := array{"Ein Wuerfel", "Eine Kugel", "Ein Kegel", "Eine flache Scheibe"}
            BonneReponse := 1
        question:
            Enonce := "Was verursacht den Wechsel von Tag und Nacht?"
            Reponses := array{"Die Gezeiten", "Die Erdrotation", "Der Mond", "Die Wolken"}
            BonneReponse := 1
        question:
            Enonce := "Wie nennt man die Wissenschaft von den Gestirnen und dem Universum?"
            Reponses := array{"Die Meteorologie", "Die Astronomie", "Die Biologie", "Die Geologie"}
            BonneReponse := 1
        question:
            Enonce := "Welcher beruehmte franzoesische Astronaut hielt sich auf der Internationalen Raumstation auf?"
            Reponses := array{"Thomas Pesquet", "Neil Armstrong", "Buzz Aldrin", "Juri Gagarin"}
            BonneReponse := 0
        question:
            Enonce := "Welcher erste Mensch flog 1961 ins All?"
            Reponses := array{"Alan Shepard", "John Glenn", "Neil Armstrong", "Juri Gagarin"}
            BonneReponse := 3
        question:
            Enonce := "Welches Himmelsobjekt hat einen langen leuchtenden Schweif und kehrt periodisch wieder?"
            Reponses := array{"Der Nebel", "Der Komet", "Der Planet", "Das Schwarze Loch"}
            BonneReponse := 1
        question:
            Enonce := "Welche Kraft haelt die Planeten in ihrer Umlaufbahn um die Sonne?"
            Reponses := array{"Die Schwerkraft", "Der Sonnenwind", "Das Erdmagnetfeld", "Das Licht"}
            BonneReponse := 0
        question:
            Enonce := "Welches Kleidungsstueck schuetzt den Astronauten im Weltall?"
            Reponses := array{"Die Schwimmweste", "Der Regenmantel", "Der Raumanzug", "Das Kettenhemd"}
            BonneReponse := 2
        question:
            Enonce := "Wer hat die Mona Lisa gemalt?"
            Reponses := array{"Monet", "Leonardo da Vinci", "Van Gogh", "Picasso"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Museum wird die Mona Lisa ausgestellt?"
            Reponses := array{"Das British Museum", "Der Louvre", "Der Prado", "Das Musee d'Orsay"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Maler schnitt sich das Ohr ab und malte Sternennacht?"
            Reponses := array{"Claude Monet", "Salvador Dali", "Vincent van Gogh", "Rembrandt"}
            BonneReponse := 2
        question:
            Enonce := "Welcher spanische Kuenstler ist Mitbegruender des Kubismus?"
            Reponses := array{"Miro", "Pablo Picasso", "Goya", "Velazquez"}
            BonneReponse := 1
        question:
            Enonce := "Welche Statue, ein Geschenk Frankreichs, steht in New York?"
            Reponses := array{"Der David", "Die Freiheitsstatue", "Der Denker", "Die Venus von Milo"}
            BonneReponse := 1
        question:
            Enonce := "Wer hat Der Denker geschaffen?"
            Reponses := array{"Michelangelo", "Camille Claudel", "Donatello", "Auguste Rodin"}
            BonneReponse := 3
        question:
            Enonce := "Welche beruehmte Decke malte Michelangelo im Vatikan?"
            Reponses := array{"Die Sixtinische Kapelle", "Das Pantheon", "Markusdom", "Notre-Dame"}
            BonneReponse := 0
        question:
            Enonce := "Welches antike roemische Bauwerk ist ein grosses Amphitheater?"
            Reponses := array{"Die Akropolis", "Der Schiefe Turm von Pisa", "Das Kolosseum", "Der Parthenon"}
            BonneReponse := 2
        question:
            Enonce := "Zu welcher Bewegung gehoert Claude Monet?"
            Reponses := array{"Der Kubismus", "Der Surrealismus", "Der Barock", "Der Impressionismus"}
            BonneReponse := 3
        question:
            Enonce := "Welches Grabmal aus weissem Marmor befindet sich in Indien?"
            Reponses := array{"Machu Picchu", "Das Taj Mahal", "Angkor Wat", "Die Chinesische Mauer"}
            BonneReponse := 1
        question:
            Enonce := "Welches Werk von Edvard Munch zeigt eine schreiende Figur?"
            Reponses := array{"Die Sonnenblumen", "Der Schrei", "Die Mona Lisa", "Die Freiheit fuehrt das Volk"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Renaissance-Maler schuf Die Erschaffung Adams?"
            Reponses := array{"Raffael", "Michelangelo", "Tizian", "Botticelli"}
            BonneReponse := 1
        question:
            Enonce := "Welche gotische Kathedrale in Paris brannte 2019?"
            Reponses := array{"Die Sainte-Chapelle", "Sacre-Coeur", "Notre-Dame de Paris", "Die Kathedrale von Reims"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Kuenstler malte Guernica?"
            Reponses := array{"Matisse", "Dali", "Van Gogh", "Pablo Picasso"}
            BonneReponse := 3
        question:
            Enonce := "Welches sind die drei Grundfarben?"
            Reponses := array{"Gruen, Orange, Violett", "Rosa, Braun, Beige", "Schwarz, Weiss, Grau", "Rot, Blau, Gelb"}
            BonneReponse := 3
        question:
            Enonce := "Welche Glaspyramide steht vor dem Louvre?"
            Reponses := array{"Die Cheops-Pyramide", "Die Sonnenpyramide", "Die Louvre-Pyramide", "Peis Pyramide in Peking"}
            BonneReponse := 2
        question:
            Enonce := "Welches praehistorische Monument aus grossen aufrechten Steinen steht in England?"
            Reponses := array{"Das Kolosseum", "Der Parthenon", "Carnac", "Stonehenge"}
            BonneReponse := 3
        question:
            Enonce := "Welche darstellende Kunst verwendet klassischen Spitzentanz?"
            Reponses := array{"Das Theater", "Die Oper", "Das Ballett", "Der Zirkus"}
            BonneReponse := 2
        question:
            Enonce := "Welches Hauptwerkzeug benutzt ein Maler?"
            Reponses := array{"Der Pinsel", "Der Hammer", "Der Meissel", "Die Kelle"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land erfand Origami, die Kunst des Papierfaltens?"
            Reponses := array{"Frankreich", "Indien", "Japan", "China"}
            BonneReponse := 2
        question:
            Enonce := "Welches Pariser Museum, ein ehemaliger Bahnhof, beherbergt impressionistische Kunst?"
            Reponses := array{"Der Louvre", "Das Grand Palais", "Das Centre Pompidou", "Das Musee d'Orsay"}
            BonneReponse := 3
        question:
            Enonce := "Welcher beruehmte Eisenturm wurde 1889 in Paris gebaut?"
            Reponses := array{"Der Tower of London", "Big Ben", "Der Eiffelturm", "Der Schiefe Turm von Pisa"}
            BonneReponse := 2
        question:
            Enonce := "Welches weisse Material, das in Carrara abgebaut wird, dient oft zum Bildhauen?"
            Reponses := array{"Das Holz", "Das Glas", "Die Bronze", "Der Marmor"}
            BonneReponse := 3
        question:
            Enonce := "Welche beruehmte griechische Frauenskulptur hat keine Arme?"
            Reponses := array{"Der David", "Der Denker", "Die Mona Lisa", "Die Venus von Milo"}
            BonneReponse := 3
        question:
            Enonce := "Welche Farbe haben Van Goghs beruehmte Sonnenblumen?"
            Reponses := array{"Gruen", "Rot", "Blau", "Gelb"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Die Elenden?"
            Reponses := array{"Victor Hugo", "Emile Zola", "Balzac", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Romeo und Julia?"
            Reponses := array{"Dante", "Cervantes", "Moliere", "William Shakespeare"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der kleine Prinz?"
            Reponses := array{"Camus", "Antoine de Saint-Exupery", "La Fontaine", "Jules Verne"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb die Harry Potter-Saga?"
            Reponses := array{"Tolkien", "J.K. Rowling", "Stephen King", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Welcher beruehmte Detektiv wurde von Arthur Conan Doyle erschaffen?"
            Reponses := array{"Maigret", "Hercule Poirot", "Arsene Lupin", "Sherlock Holmes"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Fabeln wie Der Rabe und der Fuchs?"
            Reponses := array{"Andersen", "Jean de La Fontaine", "Charles Perrault", "Victor Hugo"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Die drei Musketiere?"
            Reponses := array{"Alexandre Dumas", "Jules Verne", "Stendhal", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Welcher vertraeumte Ritter ist der Held von Cervantes' Roman?"
            Reponses := array{"Robin Hood", "Ivanhoe", "Don Quijote", "Lancelot"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb 20.000 Meilen unter dem Meer?"
            Reponses := array{"Hemingway", "H.G. Wells", "Jules Verne", "Daniel Defoe"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der Herr der Ringe?"
            Reponses := array{"J.R.R. Tolkien", "George R.R. Martin", "C.S. Lewis", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Welcher franzoesische Dichter schrieb Die Blumen des Boesen?"
            Reponses := array{"Charles Baudelaire", "Verlaine", "Rimbaud", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Welcher beruehmte Satz stammt aus dem Stueck Hamlet?"
            Reponses := array{"Sein oder Nichtsein", "Zu den Waffen, Buerger", "Veni, vidi, vici", "Ich denke, also bin ich"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Maerchen wie Aschenputtel und Rotkaeppchen?"
            Reponses := array{"Victor Hugo", "Moliere", "Charles Perrault", "La Fontaine"}
            BonneReponse := 2
        question:
            Enonce := "Welcher daenische Autor schrieb Die kleine Meerjungfrau?"
            Reponses := array{"Hans Christian Andersen", "Lewis Carroll", "Charles Perrault", "Collodi"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb den Roman 1984?"
            Reponses := array{"Jules Verne", "Ray Bradbury", "George Orwell", "Aldous Huxley"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Roman von Daniel Defoe erzaehlt von einem Schiffbruechigen auf einer einsamen Insel?"
            Reponses := array{"Moby Dick", "Die Schatzinsel", "Freitag", "Robinson Crusoe"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der Gloeckner von Notre-Dame?"
            Reponses := array{"Flaubert", "Victor Hugo", "Zola", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Welcher grosse weisse Pottwal wird in Melvilles Roman gejagt?"
            Reponses := array{"Nemo", "Moby Dick", "Leviathan", "Willy"}
            BonneReponse := 1
        question:
            Enonce := "In welcher Sprache schrieb Shakespeare seine Stuecke?"
            Reponses := array{"Latein", "Franzoesisch", "Italienisch", "Englisch"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Musketiere stehen im Titel von Dumas' Roman?"
            Reponses := array{"Drei", "Vier", "Fuenf", "Zwei"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Autor schrieb Germinal?"
            Reponses := array{"Maupassant", "Proust", "Emile Zola", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Gentleman-Dieb wurde von Maurice Leblanc erschaffen?"
            Reponses := array{"Robin Hood", "Fantomas", "Sherlock Holmes", "Arsene Lupin"}
            BonneReponse := 3
        question:
            Enonce := "Welches junge Maedchen folgt einem weissen Kaninchen in einen Bau (Lewis Carroll)?"
            Reponses := array{"Wendy", "Alice", "Dorothy", "Heidi"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Autor schrieb Der Graf von Monte Christo?"
            Reponses := array{"Jules Verne", "Balzac", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Welcher franzoesische Philosoph schrieb Candide?"
            Reponses := array{"Voltaire", "Montesquieu", "Diderot", "Rousseau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Instrument hat schwarze und weisse Tasten?"
            Reponses := array{"Das Klavier", "Die Geige", "Die Gitarre", "Die Trompete"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Saiten hat eine klassische Gitarre?"
            Reponses := array{"12", "6", "8", "4"}
            BonneReponse := 1
        question:
            Enonce := "Wer komponierte die 9. Sinfonie und ihre Ode an die Freude?"
            Reponses := array{"Beethoven", "Bach", "Chopin", "Mozart"}
            BonneReponse := 0
        question:
            Enonce := "Welche britische Band vereinte John, Paul, George und Ringo?"
            Reponses := array{"Die Beatles", "Queen", "The Rolling Stones", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Saenger wird der King of Pop genannt?"
            Reponses := array{"Elvis Presley", "Freddie Mercury", "Prince", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Welcher amerikanische Saenger wird der King of Rock genannt?"
            Reponses := array{"Johnny Hallyday", "Elvis Presley", "Chuck Berry", "Bob Dylan"}
            BonneReponse := 1
        question:
            Enonce := "Welcher oesterreichische Komponist war ein Wunderkind und schrieb ein Requiem?"
            Reponses := array{"Mozart", "Beethoven", "Vivaldi", "Haydn"}
            BonneReponse := 0
        question:
            Enonce := "Mit welchem Gegenstand spielt man Geige?"
            Reponses := array{"Einem Bogen", "Einem Hammer", "Einem Taktstock", "Einem Plektrum"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Noten umfasst die Tonleiter (do, re, mi...)?"
            Reponses := array{"7", "8", "5", "12"}
            BonneReponse := 0
        question:
            Enonce := "Welches Blechblasinstrument hat einen Zug?"
            Reponses := array{"Die Klarinette", "Das Saxophon", "Die Posaune", "Die Floete"}
            BonneReponse := 2
        question:
            Enonce := "Welches grosse Pfeifeninstrument findet man in Kirchen?"
            Reponses := array{"Das Cembalo", "Die Orgel", "Das Klavier", "Die Harfe"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Wiener Tanz wird im Dreivierteltakt gespielt?"
            Reponses := array{"Der Walzer", "Die Salsa", "Der Tango", "Der Rock"}
            BonneReponse := 0
        question:
            Enonce := "Wer leitet ein Orchester mit einem Taktstock?"
            Reponses := array{"Der Komponist", "Der Solist", "Der Dirigent", "Der Inspizient"}
            BonneReponse := 2
        question:
            Enonce := "Aus welchem Land stammt der Reggae (Bob Marley)?"
            Reponses := array{"Brasilien", "Senegal", "Jamaika", "Kuba"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Saiten hat eine Geige?"
            Reponses := array{"6", "3", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Welche amerikanische Stadt gilt als Geburtsort des Jazz?"
            Reponses := array{"New York", "Detroit", "New Orleans", "Chicago"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Musiker spielen in einem Quartett?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Welcher deutsche Barockkomponist schrieb die Toccata und Fuge in d-Moll?"
            Reponses := array{"Mozart", "Wagner", "Johann Sebastian Bach", "Beethoven"}
            BonneReponse := 2
        question:
            Enonce := "Welches Streichinstrument ist das tiefste im Orchester?"
            Reponses := array{"Der Kontrabass", "Die Geige", "Die Harfe", "Das Cello"}
            BonneReponse := 0
        question:
            Enonce := "Welches Instrument hat 88 Tasten?"
            Reponses := array{"Das Akkordeon", "Das Klavier", "Das Xylophon", "Die Orgel"}
            BonneReponse := 1
        question:
            Enonce := "Aus welchem Land kommt der Flamenco?"
            Reponses := array{"Portugal", "Spanien", "Italien", "Mexiko"}
            BonneReponse := 1
        question:
            Enonce := "Welche Frauenstimme ist die hoechste?"
            Reponses := array{"Sopran", "Tenor", "Bass", "Alt"}
            BonneReponse := 0
        question:
            Enonce := "Welches Holzblasinstrument mit Rohrblatt ist typisch fuer den Jazz?"
            Reponses := array{"Das Saxophon", "Die Geige", "Die Harfe", "Das Schlagzeug"}
            BonneReponse := 0
        question:
            Enonce := "Auf welchem analogen Medium hoerte man Musik vor der CD?"
            Reponses := array{"Die Schallplatte", "Die Speicherkarte", "Der USB-Stick", "Die DVD"}
            BonneReponse := 0
        question:
            Enonce := "Welche Instrumentenfamilie umfasst Schlagzeug und Trommel?"
            Reponses := array{"Die Holzblaeser", "Das Schlagwerk", "Die Blechblaeser", "Die Streicher"}
            BonneReponse := 1
        question:
            Enonce := "Welche Maus ist das Maskottchen der Disney-Studios?"
            Reponses := array{"Stuart", "Mickey", "Jerry", "Speedy"}
            BonneReponse := 1
        question:
            Enonce := "Welche Figur aus 'Star Wars' sagt 'Ich bin dein Vater'?"
            Reponses := array{"Han Solo", "Luke", "Darth Vader", "Yoda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Studio hat 'Toy Story' produziert?"
            Reponses := array{"Warner", "Universal", "Pixar", "DreamWorks"}
            BonneReponse := 2
        question:
            Enonce := "Welcher gruene Oger ist der Held eines DreamWorks-Films?"
            Reponses := array{"Gollum", "Yoda", "Shrek", "Hulk"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Archaeologe traegt im Kino eine Peitsche und einen Hut?"
            Reponses := array{"Indiana Jones", "Tim", "James Bond", "Lara Croft"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Steven-Spielberg-Film kommt ein riesiger Hai vor?"
            Reponses := array{"Titanic", "Der weisse Hai", "Findet Nemo", "Jurassic Park"}
            BonneReponse := 1
        question:
            Enonce := "Welche goldene Auszeichnung wird im amerikanischen Kino vergeben?"
            Reponses := array{"Die Goldene Palme", "Der Cesar", "Der Golden Buzzer", "Der Oscar"}
            BonneReponse := 3
        question:
            Enonce := "Welches grosse Filmfestival findet in Frankreich statt und vergibt die Goldene Palme?"
            Reponses := array{"Cannes", "Berlin", "Venedig", "Sundance"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Superheld beschuetzt die Stadt Gotham?"
            Reponses := array{"Superman", "Batman", "Iron Man", "Spider-Man"}
            BonneReponse := 1
        question:
            Enonce := "Wie heissen die beiden Hauptfiguren im Film 'Titanic'?"
            Reponses := array{"Romeo und Julia", "Leo und Kate", "Tom und Jerry", "Jack und Rose"}
            BonneReponse := 3
        question:
            Enonce := "Welcher kleine Ausserirdische will 'nach Hause telefonieren'?"
            Reponses := array{"Alf", "Yoda", "E.T.", "Stitch"}
            BonneReponse := 2
        question:
            Enonce := "Welche gelbe Familie steht im Mittelpunkt einer beruehmten Zeichentrickserie?"
            Reponses := array{"Familie Feuerstein", "South Park", "Family Guy", "Die Simpsons"}
            BonneReponse := 3
        question:
            Enonce := "Welcher britische Geheimagent traegt die Nummer 007?"
            Reponses := array{"Ethan Hunt", "Jason Bourne", "Austin Powers", "James Bond"}
            BonneReponse := 3
        question:
            Enonce := "Welche Disney-Prinzessin verliert einen glaesernen Schuh?"
            Reponses := array{"Cinderella", "Schneewittchen", "Rapunzel", "Belle"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Marvel-Superheld verschiesst Spinnennetze?"
            Reponses := array{"Spider-Man", "Thor", "Captain America", "Hulk"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Disney-Zeichentrickfilm handelt von einem jungen Loewen namens Simba?"
            Reponses := array{"Madagascar", "Der Koenig der Loewen", "Bambi", "Tarzan"}
            BonneReponse := 1
        question:
            Enonce := "Welcher kleine, weise gruene Jedi-Meister erscheint in 'Star Wars'?"
            Reponses := array{"Yoda", "Chewbacca", "R2-D2", "Jabba"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Clownfisch wird in einem Pixar-Film von seinem Vater gesucht?"
            Reponses := array{"Willy", "Nemo", "Dory", "Flipper"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Cowboy ist eine Spielzeug-Hauptfigur in 'Toy Story'?"
            Reponses := array{"Jessie", "Woody", "Buzz", "Lucky Luke"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Stummfilmschauspieler trug eine Melone, einen Spazierstock und einen kleinen Schnurrbart?"
            Reponses := array{"Mr. Bean", "Louis de Funes", "Buster Keaton", "Charlie Chaplin"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Cyborg sagt 'I'll be back' in einem Science-Fiction-Film?"
            Reponses := array{"Iron Man", "RoboCop", "Der Terminator", "Wall-E"}
            BonneReponse := 2
        question:
            Enonce := "Welchen Boxer aus Philadelphia spielt Sylvester Stallone?"
            Reponses := array{"Rambo", "Rocky", "Creed", "Tyson"}
            BonneReponse := 1
        question:
            Enonce := "Welche Saga handelt von Frodo und einem Ring, der zerstoert werden muss?"
            Reponses := array{"Der Herr der Ringe", "Narnia", "Nur Der Hobbit", "Harry Potter"}
            BonneReponse := 0
        question:
            Enonce := "Welche rothaarige kleine Meerjungfrau ist eine Disney-Heldin?"
            Reponses := array{"Elsa", "Vaiana", "Arielle", "Jasmin"}
            BonneReponse := 2
        question:
            Enonce := "Welche Disney-Figur ist eine Holzpuppe, deren Nase waechst, wenn sie luegt?"
            Reponses := array{"Pinpin", "Pinocchio", "Peter Pan", "Aladdin"}
            BonneReponse := 1
        question:
            Enonce := "Aus wie vielen Spielern besteht eine Fussballmannschaft auf dem Spielfeld?"
            Reponses := array{"11", "7", "15", "9"}
            BonneReponse := 0
        question:
            Enonce := "Alle wie viele Jahre finden die Olympischen Sommerspiele statt?"
            Reponses := array{"Alle 4 Jahre", "Alle 5 Jahre", "Alle 3 Jahre", "Alle 2 Jahre"}
            BonneReponse := 0
        question:
            Enonce := "Welche Sportart wird bei Roland-Garros gespielt?"
            Reponses := array{"Handball", "Golf", "Rugby", "Tennis"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Ringe sind auf der olympischen Flagge?"
            Reponses := array{"3", "4", "6", "5"}
            BonneReponse := 3
        question:
            Enonce := "Welche Sportart wird mit einem orangefarbenen Ball und Koerben gespielt?"
            Reponses := array{"Fussball", "Handball", "Basketball", "Volleyball"}
            BonneReponse := 2
        question:
            Enonce := "Welche Sportart betreibt der Sprinter Usain Bolt?"
            Reponses := array{"Radsport", "Leichtathletik", "Schwimmen", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Welche Fussball-Weltmeisterschaftstrophaee wird alle vier Jahre vergeben?"
            Reponses := array{"Die Europameisterschaft", "Die Champions League", "Die Weltmeisterschaft", "Der franzoesische Pokal"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Spieler einer Basketballmannschaft sind auf dem Feld?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Welche Sportart wird die kleine Koenigin genannt?"
            Reponses := array{"Reiten", "Rudern", "Radsport", "Boxen"}
            BonneReponse := 2
        question:
            Enonce := "In welcher Sportart erzielt man einen Versuch (Try)?"
            Reponses := array{"Rugby", "Tennis", "Basketball", "Fussball"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Loecher hat ein klassischer Golfplatz?"
            Reponses := array{"24", "9", "18", "12"}
            BonneReponse := 2
        question:
            Enonce := "Die Tour de France ist ein Rennen welcher Sportart?"
            Reponses := array{"Autosport", "Motorradsport", "Radsport", "Laufen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher japanische Kampfsport wird im Kimono mit Griffen und Guerteln ausgeuebt?"
            Reponses := array{"Griechisch-roemisches Ringen", "Fechten", "Judo", "Boxen"}
            BonneReponse := 2
        question:
            Enonce := "Aus wie vielen Spielern besteht eine Volleyballmannschaft auf dem Feld?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 0
        question:
            Enonce := "Welche Sportart wird mit einem Schlaeger und einem Federball gespielt?"
            Reponses := array{"Tischtennis", "Squash", "Tennis", "Badminton"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Boxer wird The Greatest genannt?"
            Reponses := array{"Floyd Mayweather", "Mike Tyson", "Muhammad Ali", "Rocky Marciano"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Spieler huetet das Tor im Fussball?"
            Reponses := array{"Der Torwart", "Der Schiedsrichter", "Der Stuermer", "Der Verteidiger"}
            BonneReponse := 0
        question:
            Enonce := "Welche legendaere Sportart wird auf dem Rasen von Wimbledon gespielt?"
            Reponses := array{"Cricket", "Golf", "Tennis", "Polo"}
            BonneReponse := 2
        question:
            Enonce := "Wie lang ist ungefaehr ein Marathon?"
            Reponses := array{"21 km", "10 km", "100 km", "42 km"}
            BonneReponse := 3
        question:
            Enonce := "Welche Sportart wird im Wasser mit Brustschwimmen und Kraul ausgeuebt?"
            Reponses := array{"Schwimmen", "Segeln", "Turmspringen", "Rudern"}
            BonneReponse := 0
        question:
            Enonce := "Welche Wintersportart besteht darin, eine verschneite Piste hinabzufahren?"
            Reponses := array{"Skifahren", "Curling", "Surfen", "Eiskunstlauf"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Punkte zaehlt ein normaler Korb im Basketball (ausserhalb der 3-Punkte-Zone)?"
            Reponses := array{"1", "2", "5", "3"}
            BonneReponse := 1
        question:
            Enonce := "Welche Sportart betreibt der amerikanische Star Michael Jordan?"
            Reponses := array{"Basketball", "Golf", "American Football", "Baseball"}
            BonneReponse := 0
        question:
            Enonce := "Welche Sportart wird mit einem Schlaeger und einem Puck auf dem Eis gespielt?"
            Reponses := array{"Curling", "Eishockey", "Bob", "Eislaufen"}
            BonneReponse := 1
        question:
            Enonce := "In welcher Stadt befindet sich der Sitz des Internationalen Olympischen Komitees?"
            Reponses := array{"Athen", "Genf", "Lausanne", "Paris"}
            BonneReponse := 2
        question:
            Enonce := "Wer ist der Koenig der griechischen Goetter, Herr des Blitzes?"
            Reponses := array{"Poseidon", "Zeus", "Hades", "Apollon"}
            BonneReponse := 1
        question:
            Enonce := "Welcher griechische Gott herrscht ueber die Meere?"
            Reponses := array{"Hermes", "Ares", "Poseidon", "Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Welcher griechische Held hat eine Ferse als einzige Schwachstelle?"
            Reponses := array{"Odysseus", "Theseus", "Perseus", "Achilles"}
            BonneReponse := 3
        question:
            Enonce := "Welcher griechische Held vollbrachte die zwoelf Aufgaben?"
            Reponses := array{"Odysseus", "Herkules", "Achilles", "Jason"}
            BonneReponse := 1
        question:
            Enonce := "Welches Wesen mit dem Koerper eines Pferdes und dem Oberkoerper eines Mannes gibt es in der griechischen Mythologie?"
            Reponses := array{"Die Meerjungfrau", "Der Zyklop", "Der Minotaurus", "Der Zentaur"}
            BonneReponse := 3
        question:
            Enonce := "Welches Wesen mit Stierkopf lebt im Labyrinth?"
            Reponses := array{"Der Zentaur", "Die Sphinx", "Die Medusa", "Der Minotaurus"}
            BonneReponse := 3
        question:
            Enonce := "Welcher nordische Donnergott schwingt einen Hammer?"
            Reponses := array{"Zeus", "Odin", "Thor", "Loki"}
            BonneReponse := 2
        question:
            Enonce := "Welcher legendaere Vogel wird aus seiner Asche wiedergeboren?"
            Reponses := array{"Der Drache", "Der Adler", "Der Phoenix", "Der Greif"}
            BonneReponse := 2
        question:
            Enonce := "Welcher aegyptische Gott hat einen Schakalkopf und herrscht ueber die Toten?"
            Reponses := array{"Osiris", "Horus", "Ra", "Anubis"}
            BonneReponse := 3
        question:
            Enonce := "Welches weibliche Wesen hat Schlangen statt Haare?"
            Reponses := array{"Pandora", "Aphrodite", "Athene", "Medusa"}
            BonneReponse := 3
        question:
            Enonce := "Was ist das heilige Buch des Islam?"
            Reponses := array{"Die Veden", "Die Bibel", "Die Tora", "Der Koran"}
            BonneReponse := 3
        question:
            Enonce := "Was ist das heilige Buch der Christen?"
            Reponses := array{"Der Talmud", "Die Bibel", "Der Koran", "Die Tora"}
            BonneReponse := 1
        question:
            Enonce := "Welche griechische Goettin der Weisheit gab Athen ihren Namen?"
            Reponses := array{"Artemis", "Athene", "Hera", "Aphrodite"}
            BonneReponse := 1
        question:
            Enonce := "Welcher roemische Kriegsgott gab einem Planeten seinen Namen?"
            Reponses := array{"Mars", "Merkur", "Jupiter", "Neptun"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Koepfe hat Zerberus, der Hund der Unterwelt?"
            Reponses := array{"1", "3", "2", "7"}
            BonneReponse := 1
        question:
            Enonce := "Welcher mythische Koenig verwandelte alles, was er beruehrte, in Gold?"
            Reponses := array{"Midas", "Minos", "Kroesus", "Tantalos"}
            BonneReponse := 0
        question:
            Enonce := "Welcher griechische Botengott traegt gefluegelte Sandalen?"
            Reponses := array{"Hermes", "Ares", "Dionysos", "Apollon"}
            BonneReponse := 0
        question:
            Enonce := "Welche griechische Goettin verkoerpert Liebe und Schoenheit?"
            Reponses := array{"Demeter", "Athene", "Hera", "Aphrodite"}
            BonneReponse := 3
        question:
            Enonce := "Welcher roemische Gott ist das Gegenstueck zu Zeus?"
            Reponses := array{"Mars", "Jupiter", "Neptun", "Pluto"}
            BonneReponse := 1
        question:
            Enonce := "Welches Wesen, halb Frau, halb Fisch, lockt Seeleute mit seinem Gesang an?"
            Reponses := array{"Die Gorgone", "Die Nymphe", "Die Harpyie", "Die Meerjungfrau"}
            BonneReponse := 3
        question:
            Enonce := "Welche Religion ist mit der Tora und dem juedischen Volk verbunden?"
            Reponses := array{"Der Buddhismus", "Der Hinduismus", "Der Islam", "Das Judentum"}
            BonneReponse := 3
        question:
            Enonce := "Welches mehrkoepfige Monster, dessen Koepfe nachwachsen, bekaempfte Herkules?"
            Reponses := array{"Der Kraken", "Die Chimaere", "Die Sphinx", "Die Hydra von Lerna"}
            BonneReponse := 3
        question:
            Enonce := "Welcher griechische Gott der Sonne und der Kuenste lenkt einen Wagen?"
            Reponses := array{"Kronos", "Hades", "Hephaistos", "Apollon"}
            BonneReponse := 3
        question:
            Enonce := "Wie heisst in der nordischen Mythologie das Reich der Goetter?"
            Reponses := array{"Midgard", "Asgard", "Walhalla", "Olymp"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Riese hat in der Odyssee nur ein Auge mitten auf der Stirn?"
            Reponses := array{"Der Troll", "Der Zyklop", "Der Golem", "Der Titan"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Vertrag von 1919 beendete offiziell den Ersten Weltkrieg?"
            Reponses := array{"Der Vertrag von Rom", "Der Vertrag von Tordesillas", "Der Vertrag von Versailles", "Der Vertrag von Wien"}
            BonneReponse := 2
        question:
            Enonce := "Welche chinesische Dynastie errichtete den Grossteil der heutigen Grossen Mauer?"
            Reponses := array{"Die Tang", "Die Ming", "Die Qing", "Die Han"}
            BonneReponse := 1
        question:
            Enonce := "Wer war der erste Praesident der Fuenften Franzoesischen Republik?"
            Reponses := array{"Georges Pompidou", "Vincent Auriol", "Francois Mitterrand", "Charles de Gaulle"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr fand die Schlacht von Hastings statt?"
            Reponses := array{"1066", "1215", "987", "1453"}
            BonneReponse := 0
        question:
            Enonce := "Welcher roemische Kaiser legalisierte das Christentum mit dem Mailaender Edikt (313)?"
            Reponses := array{"Trajan", "Konstantin", "Augustus", "Nero"}
            BonneReponse := 1
        question:
            Enonce := "Welche Koenigin Aegyptens verbuendete sich mit Julius Caesar und dann mit Marcus Antonius?"
            Reponses := array{"Nofretete", "Kleopatra", "Hatschepsut", "Theodora"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr fand die Oktoberrevolution in Russland statt?"
            Reponses := array{"1905", "1917", "1789", "1922"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Koenig von Frankreich wurde 1793 guillotiniert?"
            Reponses := array{"Ludwig XV.", "Ludwig XIV.", "Ludwig XVI.", "Karl X."}
            BonneReponse := 2
        question:
            Enonce := "Welche Stadt war die Hauptstadt des Byzantinischen Reiches?"
            Reponses := array{"Rom", "Alexandria", "Athen", "Konstantinopel"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Fuehrer stand waehrend des Zweiten Weltkriegs an der Spitze der UdSSR?"
            Reponses := array{"Chruschtschow", "Lenin", "Gorbatschow", "Josef Stalin"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr erhielten Frauen in Frankreich das Wahlrecht?"
            Reponses := array{"1968", "1944", "1900", "1918"}
            BonneReponse := 1
        question:
            Enonce := "Welcher portugiesische Entdecker erreichte 1498 Indien auf dem Seeweg?"
            Reponses := array{"Christoph Kolumbus", "Vasco da Gama", "Magellan", "Bartolomeu Dias"}
            BonneReponse := 1
        question:
            Enonce := "Welcher franzoesische Kaiser wurde 1870 bei Sedan besiegt und gefangen genommen?"
            Reponses := array{"Louis-Philippe", "Napoleon I.", "Karl X.", "Napoleon III."}
            BonneReponse := 3
        question:
            Enonce := "Welche praekolumbianische Zivilisation beherrschte Peru vor den Spaniern?"
            Reponses := array{"Die Maya", "Die Inka", "Die Olmeken", "Die Azteken"}
            BonneReponse := 1
        question:
            Enonce := "Welcher junge Pharao besitzt eine beruehmte goldene Totenmaske?"
            Reponses := array{"Echnaton", "Ramses II.", "Cheops", "Tutanchamun"}
            BonneReponse := 3
        question:
            Enonce := "Welche Seeschlacht von 1805 brachte Admiral Nelson den Sieg?"
            Reponses := array{"Salamis", "Actium", "Trafalgar", "Lepanto"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Held fuehrte den Zug der Tausend fuer die italienische Einheit an?"
            Reponses := array{"Mussolini", "Mazzini", "Cavour", "Garibaldi"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Sultan fuehrte das Osmanische Reich im 16. Jahrhundert zur Bluete?"
            Reponses := array{"Saladin", "Atatuerk", "Mehmed II.", "Sueleyman der Praechtige"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr erklaerten die Vereinigten Staaten ihre Unabhaengigkeit?"
            Reponses := array{"1776", "1789", "1620", "1812"}
            BonneReponse := 0
        question:
            Enonce := "Welcher englische Koenig gruendete die anglikanische Kirche, um sich scheiden zu lassen?"
            Reponses := array{"Johann Ohneland", "Heinrich VIII.", "Wilhelm der Eroberer", "Richard Loewenherz"}
            BonneReponse := 1
        question:
            Enonce := "Welche Epidemie dezimierte Europa Mitte des 14. Jahrhunderts?"
            Reponses := array{"Die Pocken", "Die Cholera", "Der Schwarze Tod", "Die Spanische Grippe"}
            BonneReponse := 2
        question:
            Enonce := "Welcher gallische Haeuptling leistete Caesar Widerstand, bevor er bei Alesia kapitulierte?"
            Reponses := array{"Brennus", "Asterix", "Ambiorix", "Vercingetorix"}
            BonneReponse := 3
        question:
            Enonce := "Welche Konferenz von 1945 brachte Churchill, Roosevelt und Stalin zusammen?"
            Reponses := array{"Teheran", "Jalta", "Muenchen", "Potsdam"}
            BonneReponse := 1
        question:
            Enonce := "Welche christliche Militaerexpedition zielte im Mittelalter auf die Rueckeroberung Jerusalems?"
            Reponses := array{"Die Reconquista", "Der Dreissigjaehrige Krieg", "Die Kreuzzuege", "Die Hanse"}
            BonneReponse := 2
        question:
            Enonce := "Welche Mauer wurde 1961 errichtet, um eine deutsche Stadt zu teilen?"
            Reponses := array{"Die Maginot-Linie", "Der Atlantikwall", "Die Berliner Mauer", "Der Hadrianswall"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der laengste Fluss Europas?"
            Reponses := array{"Die Donau", "Der Rhein", "Die Rhone", "Die Wolga"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Hauptstadt Australiens?"
            Reponses := array{"Melbourne", "Sydney", "Perth", "Canberra"}
            BonneReponse := 3
        question:
            Enonce := "Welche Meerenge trennt Europa von Afrika?"
            Reponses := array{"Der Bosporus", "Die Strasse von Dover", "Die Strasse von Gibraltar", "Die Beringstrasse"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt Kanadas?"
            Reponses := array{"Vancouver", "Montreal", "Ottawa", "Toronto"}
            BonneReponse := 2
        question:
            Enonce := "Welches kleine Koenigreich ist vollstaendig von Suedafrika umschlossen?"
            Reponses := array{"Botswana", "Swasiland", "Namibia", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Kanal verbindet das Mittelmeer mit dem Roten Meer?"
            Reponses := array{"Der Kanal von Korinth", "Der Sueskanal", "Der Panamakanal", "Der Nord-Ostsee-Kanal"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die groesste Insel der Welt?"
            Reponses := array{"Madagaskar", "Borneo", "Neuguinea", "Groenland"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Kanal verbindet den Atlantik mit dem Pazifik in Mittelamerika?"
            Reponses := array{"Der Canal du Midi", "Der Panamakanal", "Der Sueskanal", "Die Magellanstrasse"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt der Tuerkei?"
            Reponses := array{"Antalya", "Izmir", "Ankara", "Istanbul"}
            BonneReponse := 2
        question:
            Enonce := "Welche Stadt liegt sowohl in Europa als auch in Asien?"
            Reponses := array{"Istanbul", "Athen", "Kairo", "Moskau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat Brasilia als Hauptstadt?"
            Reponses := array{"Peru", "Brasilien", "Argentinien", "Kolumbien"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Gebirge liegt der Everest?"
            Reponses := array{"Der Himalaya", "Die Rocky Mountains", "Der Kaukasus", "Die Anden"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der kleinste Staat der Welt?"
            Reponses := array{"Der Vatikan", "Nauru", "Monaco", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die laengste kontinentale Gebirgskette der Welt?"
            Reponses := array{"Die Rocky Mountains", "Der Himalaya", "Die Anden", "Die Alpen"}
            BonneReponse := 2
        question:
            Enonce := "Welche grosse Kaeltewueste erstreckt sich ueber die Mongolei und China?"
            Reponses := array{"Die Sahara", "Die Atacama", "Die Wueste Gobi", "Die Kalahari"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Fluss fliesst durch London?"
            Reponses := array{"Der Severn", "Die Themse", "Der Mersey", "Der Clyde"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt Neuseelands?"
            Reponses := array{"Wellington", "Auckland", "Christchurch", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Welches suedamerikanische Land ist nach der gedachten Linie benannt, die es durchquert?"
            Reponses := array{"Bolivien", "Chile", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Hauptstadt Argentiniens?"
            Reponses := array{"Lima", "Buenos Aires", "Santiago", "Montevideo"}
            BonneReponse := 1
        question:
            Enonce := "Welcher hoechste Gipfel Afrikas befindet sich in Tansania?"
            Reponses := array{"Der Mount Kenya", "der Atlas", "Der Kilimandscharo", "der Kamerunberg"}
            BonneReponse := 2
        question:
            Enonce := "Welches Binnenmeer in Zentralasien ist stark ausgetrocknet?"
            Reponses := array{"Der Baikalsee", "Der Aralsee", "Das Kaspische Meer", "Das Tote Meer"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Hauptstaedte hat Suedafrika (Verwaltung, Gesetzgebung, Justiz)?"
            Reponses := array{"4", "2", "3", "1"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt Norwegens?"
            Reponses := array{"Kopenhagen", "Stockholm", "Helsinki", "Oslo"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der nach der Flaeche groesste Suesswassersee der Welt?"
            Reponses := array{"Der Obere See", "Der Genfersee", "Der Baikalsee", "Der Victoriasee"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die meisten Pyramiden der Welt?"
            Reponses := array{"Der Sudan", "Aegypten", "Mexiko", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Wie hoch ist ungefaehr die Lichtgeschwindigkeit im Vakuum?"
            Reponses := array{"30.000 km/s", "1.000 km/s", "3.000.000 km/s", "300.000 km/s"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Wissenschaftler entdeckte das Penicillin?"
            Reponses := array{"Alexander Fleming", "Robert Koch", "Louis Pasteur", "Jonas Salk"}
            BonneReponse := 0
        question:
            Enonce := "Welches ist das haeufigste Metall in der Erdkruste?"
            Reponses := array{"Kupfer", "Gold", "Aluminium", "Eisen"}
            BonneReponse := 2
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Kalium?"
            Reponses := array{"Pt", "K", "Po", "P"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Masseinheit der elektrischen Leistung?"
            Reponses := array{"Das Volt", "Das Ampere", "Das Joule", "Das Watt"}
            BonneReponse := 3
        question:
            Enonce := "Welches Edelgas laesst Leuchtreklamen rot leuchten?"
            Reponses := array{"Neon", "Argon", "Krypton", "Helium"}
            BonneReponse := 0
        question:
            Enonce := "Welches physikalische Prinzip erklaert das Schwimmen von Koerpern?"
            Reponses := array{"Der Doppler-Effekt", "Das Newtonsche Gesetz", "Das Archimedische Prinzip", "Das Ohmsche Gesetz"}
            BonneReponse := 2
        question:
            Enonce := "Welches ist das leichteste chemische Element?"
            Reponses := array{"Wasserstoff", "Kohlenstoff", "Helium", "Sauerstoff"}
            BonneReponse := 0
        question:
            Enonce := "Welche Saeure ist im menschlichen Magen vorhanden?"
            Reponses := array{"Essigsaeure", "Salzsaeure", "Zitronensaeure", "Schwefelsaeure"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Masseinheit der Frequenz?"
            Reponses := array{"Das Watt", "Das Newton", "Das Dezibel", "Das Hertz"}
            BonneReponse := 3
        question:
            Enonce := "Welche Wissenschaftlerin erhielt zwei Nobelpreise fuer ihre Arbeiten zur Radioaktivitaet?"
            Reponses := array{"Rosalind Franklin", "Ada Lovelace", "Marie Curie", "Lise Meitner"}
            BonneReponse := 2
        question:
            Enonce := "Wie nennt man den direkten Uebergang vom festen in den gasfoermigen Zustand?"
            Reponses := array{"Die Sublimation", "Das Schmelzen", "Die Kondensation", "Die Verdunstung"}
            BonneReponse := 0
        question:
            Enonce := "Wie lautet die chemische Formel von Kochsalz?"
            Reponses := array{"H2SO4", "KCl", "NaCl", "CaCO3"}
            BonneReponse := 2
        question:
            Enonce := "Welche Sonnenstrahlung verursacht Sonnenbrand?"
            Reponses := array{"Die Mikrowellen", "Die ultraviolette Strahlung", "Die Infrarotstrahlung", "Die Roentgenstrahlung"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Masseinheit des elektrischen Widerstands?"
            Reponses := array{"Das Tesla", "Das Ohm", "Das Ampere", "Das Farad"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Elemente umfasst etwa das Periodensystem?"
            Reponses := array{"Etwa 118", "Etwa 80", "Etwa 200", "Etwa 50"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Hauptbestandteil dient der Herstellung von Glas?"
            Reponses := array{"Ton", "Blei", "Kieselsaeure (Sand)", "Reiner Kalkstein"}
            BonneReponse := 2
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Silber?"
            Reponses := array{"Au", "Ag", "Ar", "Si"}
            BonneReponse := 1
        question:
            Enonce := "Welches Teilchen des Atomkerns hat eine positive Ladung?"
            Reponses := array{"Das Proton", "Das Elektron", "Das Neutron", "Das Photon"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Gelehrte formulierte die drei grundlegenden Bewegungsgesetze?"
            Reponses := array{"Isaac Newton", "Einstein", "Kepler", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Glasgegenstand zerlegt weisses Licht in Farben?"
            Reponses := array{"Der Spiegel", "Die Linse", "Das Prisma", "Der Filter"}
            BonneReponse := 2
        question:
            Enonce := "Welche Reaktion setzt die Energie eines Kernkraftwerks frei?"
            Reponses := array{"Die Elektrolyse", "Die Gaerung", "Die Kernspaltung von Uran", "Die Verbrennung von Kohle"}
            BonneReponse := 2
        question:
            Enonce := "Welches Treibhausgas wird massenhaft von Benzinmotoren ausgestossen?"
            Reponses := array{"Sauerstoff", "Stickstoff", "Kohlendioxid", "Ozon"}
            BonneReponse := 2
        question:
            Enonce := "Welche Groesse wird in Pascal gemessen?"
            Reponses := array{"Die Temperatur", "Der Druck", "Die Geschwindigkeit", "Die Masse"}
            BonneReponse := 1
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Kohlenstoff?"
            Reponses := array{"C", "Ca", "Cr", "Co"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Knochen hat das Skelett eines erwachsenen Menschen?"
            Reponses := array{"206", "150", "250", "300"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Wissenschaftler formulierte die Evolutionstheorie durch natuerliche Selektion?"
            Reponses := array{"Gregor Mendel", "Louis Pasteur", "Charles Darwin", "Carl von Linne"}
            BonneReponse := 2
        question:
            Enonce := "Welches Molekuel traegt die genetische Information?"
            Reponses := array{"Die DNA", "Die Glukose", "Das Haemoglobin", "Das Kollagen"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Chromosomen hat eine menschliche Zelle?"
            Reponses := array{"46", "23", "64", "48"}
            BonneReponse := 0
        question:
            Enonce := "Welche Blutgruppe gilt als Universalspender?"
            Reponses := array{"AB positiv", "A positiv", "0 negativ", "B negativ"}
            BonneReponse := 2
        question:
            Enonce := "Welche Blutgruppe gilt als Universalempfaenger?"
            Reponses := array{"0 negativ", "A negativ", "B positiv", "AB positiv"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Teil des Auges enthaelt die lichtempfindlichen Zellen?"
            Reponses := array{"Die Hornhaut", "Die Netzhaut", "Die Linse", "Die Iris"}
            BonneReponse := 1
        question:
            Enonce := "Welches Organ produziert die Galle?"
            Reponses := array{"Der Magen", "Die Bauchspeicheldruese", "Die Leber", "Die Milz"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der kleinste Knochen des menschlichen Koerpers?"
            Reponses := array{"Das Steissbein", "Der Steigbuegel (Ohr)", "Die Kniescheibe", "Das Fingerglied"}
            BonneReponse := 1
        question:
            Enonce := "Welche im Hals gelegene Druese reguliert den Stoffwechsel?"
            Reponses := array{"Die Hypophyse", "Die Schilddruese", "Die Bauchspeicheldruese", "Die Milz"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Rippenpaare hat der Mensch?"
            Reponses := array{"10", "12", "14", "8"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Wissenschaftler entdeckte die Blutgruppen?"
            Reponses := array{"Edward Jenner", "Karl Landsteiner", "Alexander Fleming", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Saeugetier legt Eier und lebt in Australien?"
            Reponses := array{"Der Koala", "Der Wombat", "Das Kaenguru", "Das Schnabeltier"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Teil des Gehirns steuert Gleichgewicht und Koordination?"
            Reponses := array{"Der Hypothalamus", "Die Grosshirnrinde", "Das Kleinhirn", "Das verlaengerte Mark"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Prozess ermoeglicht es gruenen Pflanzen, ihre Energie zu erzeugen?"
            Reponses := array{"Die Atmung", "Die Photosynthese", "Die Gaerung", "Die Verdauung"}
            BonneReponse := 1
        question:
            Enonce := "Reptilien sind Tiere mit Blut, das..."
            Reponses := array{"lauwarm ist", "warm ist", "kalt ist", "nicht vorhanden ist"}
            BonneReponse := 2
        question:
            Enonce := "Welcher ist der Oberschenkelknochen, zugleich der laengste des Koerpers?"
            Reponses := array{"Das Schienbein", "Der Oberschenkelknochen", "Die Speiche", "Der Oberarmknochen"}
            BonneReponse := 1
        question:
            Enonce := "Welche Zelle uebertraegt den Nervenimpuls?"
            Reponses := array{"Das weisse Blutkoerperchen", "Der Osteozyt", "Das Neuron", "Das Blutplaettchen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Organ speichert den Urin vor der Ausscheidung?"
            Reponses := array{"Die Leber", "Die Blase", "Der Harnleiter", "Die Niere"}
            BonneReponse := 1
        question:
            Enonce := "Welches Blutvolumen zirkuliert ungefaehr bei einem Erwachsenen?"
            Reponses := array{"Etwa 1 Liter", "Etwa 10 Liter", "Etwa 5 Liter", "Etwa 20 Liter"}
            BonneReponse := 2
        question:
            Enonce := "Welches Vitamin beugt Skorbut vor?"
            Reponses := array{"Vitamin A", "Vitamin C", "Vitamin D", "Vitamin K"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ist der groesste Muskel des menschlichen Koerpers?"
            Reponses := array{"Die Wade", "Der Bizeps", "Das Herz", "Der grosse Gesaessmuskel"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Grundeinheit jedes Lebewesens?"
            Reponses := array{"Das Atom", "Das Organ", "Das Molekuel", "Die Zelle"}
            BonneReponse := 3
        question:
            Enonce := "Welcher gelehrte Moench entdeckte die Vererbungsgesetze mit Erbsen?"
            Reponses := array{"Darwin", "Gregor Mendel", "Lamarck", "Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Welches menschliche Organ kann sich nach teilweiser Entfernung weitgehend regenerieren?"
            Reponses := array{"Das Herz", "Die Leber", "Das Gehirn", "Die Niere"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Vogel erreicht im Sturzflug die hoechste Geschwindigkeit?"
            Reponses := array{"Der Strauss", "Der Steinadler", "Der Mauersegler", "Der Wanderfalke"}
            BonneReponse := 3
        question:
            Enonce := "Wie lange dauert ungefaehr die Tragzeit einer Elefantenkuh?"
            Reponses := array{"9 Monate", "22 Monate", "6 Monate", "12 Monate"}
            BonneReponse := 1
        question:
            Enonce := "Welches ist das groesste heute lebende Reptil?"
            Reponses := array{"Die Lederschildkroete", "Das Leistenkrokodil", "Die Anakonda", "Der Komodowaran"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Herzen hat ein Tintenfisch?"
            Reponses := array{"2", "3", "5", "1"}
            BonneReponse := 1
        question:
            Enonce := "Welcher grosse flugunfaehige australische Vogel aehnelt dem Strauss?"
            Reponses := array{"Der Kiwi", "Der Pinguin", "Der Kasuar", "Der Emu"}
            BonneReponse := 3
        question:
            Enonce := "Welcher ist der hoechste Baum der Welt?"
            Reponses := array{"Die Eiche", "Der Baobab", "Der Mammutbaum", "Der Eukalyptus"}
            BonneReponse := 2
        question:
            Enonce := "Welche Schlange aus dem Amazonas ist die massereichste der Welt?"
            Reponses := array{"Die Python", "Die Anakonda", "Die Schwarze Mamba", "Die Koenigskobra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Insekt baut einen Termitenbau?"
            Reponses := array{"Die Wespe", "Die Ameise", "Die Biene", "Die Termite"}
            BonneReponse := 3
        question:
            Enonce := "Welches maennliche Meeressaeugetier singt lange Gesaenge?"
            Reponses := array{"Das Walross", "Der Buckelwal", "Der Hai", "Der Otter"}
            BonneReponse := 1
        question:
            Enonce := "Welche fleischfressende Pflanze schnappt ihre Fallen ueber Insekten zu?"
            Reponses := array{"Die Venusfliegenfalle", "Der Kaktus", "Der Efeu", "Die Seerose"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Seevogel hat die groesste Fluegelspannweite?"
            Reponses := array{"Der Albatros", "Der Pelikan", "Der Kormoran", "Der Adler"}
            BonneReponse := 0
        question:
            Enonce := "Welcher rothaarige Menschenaffe lebt in den Waeldern Asiens?"
            Reponses := array{"Der Orang-Utan", "Der Schimpanse", "Der Gorilla", "Der Gibbon"}
            BonneReponse := 0
        question:
            Enonce := "Welcher begehrte unterirdische Pilz wird von Hunden gesucht?"
            Reponses := array{"Der Trueffel", "Der Pfifferling", "Der Champignon", "Der Steinpilz"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Vogel legt das groesste Ei der Welt?"
            Reponses := array{"Der Kondor", "Der Adler", "Der Strauss", "Der Kaiserpinguin"}
            BonneReponse := 2
        question:
            Enonce := "Welche australische Qualle gehoert zu den giftigsten Tieren?"
            Reponses := array{"Die Portugiesische Galeere", "Die Ohrenqualle", "Die Leuchtqualle", "Die Wuerfelqualle"}
            BonneReponse := 3
        question:
            Enonce := "Welches Tier orientiert sich nachts mithilfe der Echoortung?"
            Reponses := array{"Der Fuchs", "Die Eule", "Die Fledermaus", "Die Katze"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Baer lebt in den arktischen Regionen?"
            Reponses := array{"Der Braunbaer", "Der Schwarzbaer", "Der Eisbaer", "Der Panda"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Fisch wechselt im Laufe seines Lebens das Geschlecht?"
            Reponses := array{"Die Sardine", "Der Thunfisch", "Der Hai", "Der Clownfisch"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Baum ist auf der Flagge Kanadas zu sehen?"
            Reponses := array{"Die Eiche", "Der Ahorn", "Die Birke", "Die Kiefer"}
            BonneReponse := 1
        question:
            Enonce := "Welche Biene legt die Eier in einem Bienenstock?"
            Reponses := array{"Die Sammlerin", "Die Koenigin", "Die Drohne", "Die Arbeiterin"}
            BonneReponse := 1
        question:
            Enonce := "Welches Reptil riecht Gerueche mit seiner gespaltenen Zunge?"
            Reponses := array{"Die Schlange", "Die Schildkroete", "Der Gecko", "Das Krokodil"}
            BonneReponse := 0
        question:
            Enonce := "Wie hoch ist die Lebenserwartung einer Riesenschildkroete?"
            Reponses := array{"Etwa 20 Jahre", "Etwa 50 Jahre", "Mehr als 100 Jahre", "Etwa 10 Jahre"}
            BonneReponse := 2
        question:
            Enonce := "Welches Tier hat den laengsten Hals?"
            Reponses := array{"Das Lama", "Der Schwan", "Die Giraffe", "Der Strauss"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Vogel ist dafuer bekannt, die menschliche Sprache nachzuahmen?"
            Reponses := array{"Die Nachtigall", "Die Taube", "Der Papagei", "Der Spatz"}
            BonneReponse := 2
        question:
            Enonce := "Woher stammt das Elfenbein, das Material der Stosszaehne, hauptsaechlich?"
            Reponses := array{"Vom Wildschwein", "Vom Nashorn", "Vom Wal", "Vom Elefanten"}
            BonneReponse := 3
        question:
            Enonce := "Welcher ist der heisseste Planet im Sonnensystem?"
            Reponses := array{"Venus", "Jupiter", "Merkur", "Mars"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Monde hat der Planet Mars?"
            Reponses := array{"0", "2", "4", "1"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Stern ist unserer Sonne am naechsten?"
            Reponses := array{"Proxima Centauri", "der Polarstern", "Sirius", "Beteigeuze"}
            BonneReponse := 0
        question:
            Enonce := "Welche Mission brachte die ersten Menschen auf den Mond?"
            Reponses := array{"Gemini 4", "Apollo 11", "Apollo 13", "Sojus 1"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Planet rotiert praktisch auf der Seite liegend?"
            Reponses := array{"Uranus", "Saturn", "Venus", "Neptun"}
            BonneReponse := 0
        question:
            Enonce := "Welcher ist der groesste Mond im Sonnensystem?"
            Reponses := array{"Europa", "Ganymed", "Titan", "Der Mond"}
            BonneReponse := 1
        question:
            Enonce := "Wie nennt man die Explosion eines massereichen Sterns am Ende seines Lebens?"
            Reponses := array{"Ein Komet", "Eine Supernova", "Eine Finsternis", "Ein Nebel"}
            BonneReponse := 1
        question:
            Enonce := "Welches Objekt hat eine so starke Schwerkraft, dass nicht einmal Licht entkommen kann?"
            Reponses := array{"Ein kalter Quasar", "Ein Zwergplanet", "Ein schwarzes Loch", "Eine Sternschnuppe"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Planet beherbergt den Grossen Roten Fleck, einen riesigen Sturm?"
            Reponses := array{"Neptun", "Mars", "Jupiter", "Saturn"}
            BonneReponse := 2
        question:
            Enonce := "Welche 1977 gestartete Sonde hat das Sonnensystem verlassen?"
            Reponses := array{"Apollo 17", "Sputnik", "Voyager 1", "Cassini"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Astronom vertrat die These, dass sich die Erde um die Sonne dreht?"
            Reponses := array{"Aristoteles", "Newton", "Ptolemaeus", "Kopernikus"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Planet ist am weitesten von der Sonne entfernt?"
            Reponses := array{"Uranus", "Pluto", "Saturn", "Neptun"}
            BonneReponse := 3
        question:
            Enonce := "Wie lange braucht das Sonnenlicht, um die Erde zu erreichen?"
            Reponses := array{"Etwa 1 Stunde", "Etwa 8 Minuten", "Etwa 1 Sekunde", "Etwa 1 Tag"}
            BonneReponse := 1
        question:
            Enonce := "Welches Weltraumteleskop folgte 2021 auf Hubble?"
            Reponses := array{"James Webb", "Galileo", "Spitzer", "Kepler"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Himmelskoerper wurde 2006 zum Zwergplaneten herabgestuft?"
            Reponses := array{"Pluto", "Charon", "Titan", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Welche sowjetische Huendin war das erste Tier, das die Erde umkreiste?"
            Reponses := array{"Rex", "Belka", "Laika", "Strelka"}
            BonneReponse := 2
        question:
            Enonce := "Welche Atmosphaerenschicht schuetzt uns vor ultravioletter Strahlung?"
            Reponses := array{"Die Ozonschicht", "Die Mesosphaere", "Die Troposphaere", "Die Ionosphaere"}
            BonneReponse := 0
        question:
            Enonce := "Welcher ist der zweite Planet von der Sonne aus?"
            Reponses := array{"Merkur", "Mars", "die Erde", "Venus"}
            BonneReponse := 3
        question:
            Enonce := "Woraus bestehen Kometen hauptsaechlich?"
            Reponses := array{"Aus reinem Eisen", "Aus brennenden Gasen", "Aus Vulkangestein", "Aus Eis und Staub"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Gesteinsguertel liegt zwischen Mars und Jupiter?"
            Reponses := array{"Die Ringe des Saturn", "Die Oortsche Wolke", "Der Kuiperguertel", "Der Asteroidenguertel"}
            BonneReponse := 3
        question:
            Enonce := "Welches Lichtphaenomen faerbt den Himmel in der Naehe der Pole?"
            Reponses := array{"Die Blitze", "Die Polarlichter", "Die Luftspiegelungen", "Die Regenboegen"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Planet hat den laengsten Tag (Rotation)?"
            Reponses := array{"Merkur", "Jupiter", "Venus", "die Erde"}
            BonneReponse := 2
        question:
            Enonce := "Wie nennt man einen Gesteinsbrocken aus dem All, der auf die Erde gefallen ist?"
            Reponses := array{"Ein Komet", "Ein Meteorit", "Ein Asteroid", "Ein Nebel"}
            BonneReponse := 1
        question:
            Enonce := "Welcher erste kuenstliche Satellit wurde 1957 von der UdSSR gestartet?"
            Reponses := array{"Explorer 1", "Sputnik", "Wostok", "Telstar"}
            BonneReponse := 1
        question:
            Enonce := "Welche Nachbargalaxie ist von der Erde aus mit blossem Auge sichtbar?"
            Reponses := array{"der Sombrero", "das Dreieck", "Andromeda", "der Strudel"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Maler war neben Picasso Mitbegruender des Kubismus?"
            Reponses := array{"Henri Matisse", "Marc Chagall", "Paul Cezanne", "Georges Braque"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Architekt entwarf die Basilika Sagrada Familia in Barcelona?"
            Reponses := array{"Renzo Piano", "Antoni Gaudi", "Le Corbusier", "Gustave Eiffel"}
            BonneReponse := 1
        question:
            Enonce := "Welche Kunstrichtung, von Dali verkoerpert, erforscht Traum und Unterbewusstsein?"
            Reponses := array{"Der Surrealismus", "Der Realismus", "Der Impressionismus", "Der Kubismus"}
            BonneReponse := 0
        question:
            Enonce := "Wer malte Das Maedchen mit dem Perlenohrring?"
            Reponses := array{"Johannes Vermeer", "Rubens", "Rembrandt", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Pop-Art-Kuenstler malte die Campbell's-Suppendosen?"
            Reponses := array{"Jackson Pollock", "Andy Warhol", "Keith Haring", "Roy Lichtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Welcher niederlaendische Maler schuf Die Nachtwache?"
            Reponses := array{"Mondrian", "Vermeer", "Van Gogh", "Rembrandt"}
            BonneReponse := 3
        question:
            Enonce := "Welches Fresko von Leonardo da Vinci zeigt das letzte Mahl Christi?"
            Reponses := array{"Die Erschaffung Adams", "Die Schule von Athen", "Das Abendmahl", "Das Juengste Gericht"}
            BonneReponse := 2
        question:
            Enonce := "Welcher spanische Maler schuf Las Meninas?"
            Reponses := array{"Murillo", "Diego Velazquez", "El Greco", "Goya"}
            BonneReponse := 1
        question:
            Enonce := "Welches grosse Madrider Museum beherbergt Goya und Velazquez?"
            Reponses := array{"Die Uffizien", "Das Guggenheim", "Der Prado", "Das Reina Sofia"}
            BonneReponse := 2
        question:
            Enonce := "Wer malte Die Freiheit fuehrt das Volk?"
            Reponses := array{"Eugene Delacroix", "Courbet", "Jacques-Louis David", "Gericault"}
            BonneReponse := 0
        question:
            Enonce := "Welcher mittelalterliche Baustil ist an Strebeboegen und Buntglasfenstern erkennbar?"
            Reponses := array{"Die Romanik", "Der Barock", "Das Art deco", "Die Gotik"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Maler schuf zahlreiche Gemaelde von Seerosen in seinem Garten in Giverny?"
            Reponses := array{"Sisley", "Pissarro", "Renoir", "Claude Monet"}
            BonneReponse := 3
        question:
            Enonce := "Welche mexikanische Kuenstlerin ist fuer ihre intensiven Selbstportraets beruehmt?"
            Reponses := array{"Georgia O'Keeffe", "Niki de Saint Phalle", "Frida Kahlo", "Tamara de Lempicka"}
            BonneReponse := 2
        question:
            Enonce := "Welcher impressionistische Maler stellte oft Balletttaenzerinnen dar?"
            Reponses := array{"Edgar Degas", "Caillebotte", "Monet", "Manet"}
            BonneReponse := 0
        question:
            Enonce := "Welche gefluegelte griechische Statue, ohne Kopf und Arme, steht im Louvre?"
            Reponses := array{"Der Diskobol", "Die Venus von Milo", "Die Nike von Samothrake", "Die Pieta"}
            BonneReponse := 2
        question:
            Enonce := "Welche Kunstrichtung des fruehen 20. Jahrhunderts, angefuehrt von Matisse, nutzt grelle Farben?"
            Reponses := array{"Der Dadaismus", "Der Kubismus", "Der Fauvismus", "Der Pointillismus"}
            BonneReponse := 2
        question:
            Enonce := "Welche italienische Stadt gilt als Wiege der Renaissance?"
            Reponses := array{"Florenz", "Rom", "Mailand", "Venedig"}
            BonneReponse := 0
        question:
            Enonce := "Welche Legierung aus Kupfer und Zinn dient zum Giessen von Statuen?"
            Reponses := array{"Der Stahl", "Das Messing", "Die Bronze", "Das reine Zinn"}
            BonneReponse := 2
        question:
            Enonce := "Welcher sehr prunkvolle und theatralische Stil praegt die Kunst des 17. Jahrhunderts?"
            Reponses := array{"Der Barock", "Der Minimalismus", "Die Gotik", "Der Kubismus"}
            BonneReponse := 0
        question:
            Enonce := "Welcher beruehmte Uhrturm steht in London?"
            Reponses := array{"Big Ben", "Der Kreml", "Der Schiefe Turm von Pisa", "Die Giralda"}
            BonneReponse := 0
        question:
            Enonce := "Wer malte die Decke der Sixtinischen Kapelle?"
            Reponses := array{"Raffael", "Caravaggio", "Michelangelo", "Leonardo da Vinci"}
            BonneReponse := 2
        question:
            Enonce := "Welcher niederlaendische postimpressionistische Maler schuf Die Kartoffelesser?"
            Reponses := array{"Vermeer", "Mondrian", "Rembrandt", "Vincent van Gogh"}
            BonneReponse := 3
        question:
            Enonce := "Welche geometrische Bewegung mit schwarzen Linien und Grundfarben ist mit Mondrian verbunden?"
            Reponses := array{"Der Barock", "Der Realismus", "Das Rokoko", "De Stijl"}
            BonneReponse := 3
        question:
            Enonce := "Welcher italienische Renaissance-Bildhauer schuf einen David aus Bronze?"
            Reponses := array{"Cellini", "Donatello", "Canova", "Bernini"}
            BonneReponse := 1
        question:
            Enonce := "Welcher moderne franzoesisch-schweizerische Architekt entwarf das Konzept der Strahlenden Stadt?"
            Reponses := array{"Gaudi", "Gustave Eiffel", "Frank Lloyd Wright", "Le Corbusier"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Schuld und Suehne?"
            Reponses := array{"Fjodor Dostojewski", "Tolstoi", "Tschechow", "Gogol"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Auf der Suche nach der verlorenen Zeit?"
            Reponses := array{"Marcel Proust", "Flaubert", "Gide", "Camus"}
            BonneReponse := 0
        question:
            Enonce := "Welche Autorin schuf den Detektiv Hercule Poirot?"
            Reponses := array{"Georges Simenon", "Agatha Christie", "Conan Doyle", "Patricia Highsmith"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Der Fremde?"
            Reponses := array{"Albert Camus", "Andre Malraux", "Jean-Paul Sartre", "Boris Vian"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Dichter schrieb Das trunkene Schiff?"
            Reponses := array{"Arthur Rimbaud", "Paul Verlaine", "Baudelaire", "Mallarme"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Krieg und Frieden?"
            Reponses := array{"Solschenizyn", "Leo Tolstoi", "Puschkin", "Dostojewski"}
            BonneReponse := 1
        question:
            Enonce := "Welcher franzoesische Dramatiker schrieb Der Menschenfeind?"
            Reponses := array{"Racine", "Moliere", "Corneille", "Beaumarchais"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Stolz und Vorurteil?"
            Reponses := array{"Jane Austen", "Virginia Woolf", "Mary Shelley", "Charlotte Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Autor schrieb Hundert Jahre Einsamkeit?"
            Reponses := array{"Mario Vargas Llosa", "Jorge Luis Borges", "Gabriel Garcia Marquez", "Pablo Neruda"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der alte Mann und das Meer?"
            Reponses := array{"Fitzgerald", "Steinbeck", "Faulkner", "Ernest Hemingway"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb das Stueck Warten auf Godot?"
            Reponses := array{"Sartre", "Samuel Beckett", "Brecht", "Ionesco"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Philosoph schrieb Vom Gesellschaftsvertrag?"
            Reponses := array{"Diderot", "Voltaire", "Montesquieu", "Jean-Jacques Rousseau"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Rot und Schwarz?"
            Reponses := array{"Zola", "Stendhal", "Flaubert", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Prager Schriftsteller schrieb Die Verwandlung und Der Prozess?"
            Reponses := array{"Thomas Mann", "Franz Kafka", "Hermann Hesse", "Robert Musil"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Dracula?"
            Reponses := array{"H.P. Lovecraft", "Mary Shelley", "Edgar Allan Poe", "Bram Stoker"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Autor schrieb Reise ans Ende der Nacht?"
            Reponses := array{"Marcel Ayme", "Georges Bernanos", "Romain Gary", "Louis-Ferdinand Celine"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb die Saga Das Lied von Eis und Feuer (Game of Thrones)?"
            Reponses := array{"Robert Jordan", "George R.R. Martin", "Patrick Rothfuss", "J.R.R. Tolkien"}
            BonneReponse := 1
        question:
            Enonce := "Welcher italienische Schriftsteller schrieb Der Name der Rose?"
            Reponses := array{"Umberto Eco", "Alberto Moravia", "Primo Levi", "Italo Calvino"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Madame Bovary?"
            Reponses := array{"Maupassant", "Balzac", "Gustave Flaubert", "Zola"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Dichter schrieb Morgen, beim Morgengrauen?"
            Reponses := array{"Victor Hugo", "Vigny", "Lamartine", "Musset"}
            BonneReponse := 0
        question:
            Enonce := "Welcher britische Autor schrieb die Original-James-Bond-Romane?"
            Reponses := array{"Ian Fleming", "Graham Greene", "John le Carre", "Frederick Forsyth"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Anna Karenina?"
            Reponses := array{"Leo Tolstoi", "Tschechow", "Dostojewski", "Turgenjew"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Autor schrieb Die Ameisen und Die Thanatonauten?"
            Reponses := array{"Guillaume Musso", "Michel Houellebecq", "Bernard Werber", "Marc Levy"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Aufklaerungsphilosoph schrieb die Erzaehlung Candide?"
            Reponses := array{"Kant", "Voltaire", "Rousseau", "Spinoza"}
            BonneReponse := 1
        question:
            Enonce := "Welche Shakespeare-Tragoedie zeigt einen schottischen Koenig und drei Hexen?"
            Reponses := array{"Othello", "Koenig Lear", "Macbeth", "Hamlet"}
            BonneReponse := 2
        question:
            Enonce := "Welcher italienische Komponist schrieb Die vier Jahreszeiten?"
            Reponses := array{"Puccini", "Verdi", "Rossini", "Antonio Vivaldi"}
            BonneReponse := 3
        question:
            Enonce := "Welche Band spielte Bohemian Rhapsody?"
            Reponses := array{"Led Zeppelin", "Deep Purple", "Queen", "The Who"}
            BonneReponse := 2
        question:
            Enonce := "Welcher grosse deutsche Komponist wurde am Ende seines Lebens taub?"
            Reponses := array{"Haendel", "Ludwig van Beethoven", "Schubert", "Brahms"}
            BonneReponse := 1
        question:
            Enonce := "Welches Instrument spielt der beruehmte Yo-Yo Ma?"
            Reponses := array{"Die Violine", "Das Klavier", "Die Floete", "Das Cello"}
            BonneReponse := 3
        question:
            Enonce := "Welcher franzoesische Komponist schrieb die Oper Carmen?"
            Reponses := array{"Georges Bizet", "Gounod", "Saint-Saens", "Berlioz"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Sinfonien komponierte Beethoven?"
            Reponses := array{"7", "9", "12", "5"}
            BonneReponse := 1
        question:
            Enonce := "Welche schwedische Gruppe sang Dancing Queen?"
            Reponses := array{"ABBA", "Roxette", "Europe", "Ace of Base"}
            BonneReponse := 0
        question:
            Enonce := "Welcher russische Komponist schrieb das Ballett Schwanensee?"
            Reponses := array{"Tschaikowski", "Rachmaninow", "Prokofjew", "Strawinski"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tasteninstrument ist der Vorlaeufer des Klaviers?"
            Reponses := array{"Die Orgel", "Das Akkordeon", "Das Cembalo", "Der Synthesizer"}
            BonneReponse := 2
        question:
            Enonce := "Welche amerikanische Saengerin traegt den Spitznamen Queen B?"
            Reponses := array{"Rihanna", "Lady Gaga", "Beyonce", "Madonna"}
            BonneReponse := 2
        question:
            Enonce := "Welche Mozart-Oper traegt den Titel Die Zauber...?"
            Reponses := array{"Die Hochzeit des Figaro", "Cosi fan tutte", "Don Giovanni", "Die Zauberfloete"}
            BonneReponse := 3
        question:
            Enonce := "Welcher polnische Komponist ist fuer seine Klaviernotturni beruehmt?"
            Reponses := array{"Schumann", "Frederic Chopin", "Debussy", "Liszt"}
            BonneReponse := 1
        question:
            Enonce := "Welcher italienische Begriff bezeichnet ein schnelles, lebhaftes Tempo?"
            Reponses := array{"Lento", "Allegro", "Largo", "Adagio"}
            BonneReponse := 1
        question:
            Enonce := "Welches schottische Instrument besteht aus einem Sack und Pfeifen?"
            Reponses := array{"Der Dudelsack", "Das Akkordeon", "Die Oboe", "Die Panfloete"}
            BonneReponse := 0
        question:
            Enonce := "Welche Instrumentenfamilie umfasst Floete, Oboe und Klarinette?"
            Reponses := array{"Das Schlagwerk", "Die Blechblaeser", "Die Streicher", "Die Holzblaeser"}
            BonneReponse := 3
        question:
            Enonce := "Welche britische Band veroeffentlichte das Album The Dark Side of the Moon?"
            Reponses := array{"Pink Floyd", "The Beatles", "Genesis", "The Rolling Stones"}
            BonneReponse := 0
        question:
            Enonce := "Welcher franzoesische Komponist schrieb den Bolero?"
            Reponses := array{"Erik Satie", "Claude Debussy", "Maurice Ravel", "Camille Saint-Saens"}
            BonneReponse := 2
        question:
            Enonce := "Welche Maennerstimme ist die tiefste?"
            Reponses := array{"Der Countertenor", "Der Bass", "Der Bariton", "Der Tenor"}
            BonneReponse := 1
        question:
            Enonce := "Welcher jamaikanische Saenger machte den Reggae weltweit bekannt?"
            Reponses := array{"Shaggy", "Jimmy Cliff", "Peter Tosh", "Bob Marley"}
            BonneReponse := 3
        question:
            Enonce := "Welche Musikrichtung aus Blues und Country machte Elvis Presley populaer?"
            Reponses := array{"Der Jazz", "Der Rock'n'Roll", "Der Funk", "Der Soul"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Komponist schrieb das Stueck Tuerkischer Marsch?"
            Reponses := array{"Mozart", "Liszt", "Beethoven", "Schubert"}
            BonneReponse := 0
        question:
            Enonce := "Auf welche Frequenz wird das Referenz-A ueblicherweise gestimmt?"
            Reponses := array{"440 Hz", "100 Hz", "880 Hz", "220 Hz"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Musikstil entstand in der New Yorker Bronx mit Rap und DJing?"
            Reponses := array{"Der Hip-Hop", "Der Disco", "Der Pop", "Der Techno"}
            BonneReponse := 0
        question:
            Enonce := "Welcher deutsche Barockkomponist schrieb den Messias und die Feuerwerksmusik?"
            Reponses := array{"Vivaldi", "Haendel", "Telemann", "Bach"}
            BonneReponse := 1
        question:
            Enonce := "Welches elektrische Instrument ist typisch fuer das Spiel von Jimi Hendrix?"
            Reponses := array{"Die E-Gitarre", "Das Schlagzeug", "Der Bass", "Der Synthesizer"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Regisseur drehte Pulp Fiction?"
            Reponses := array{"Coen", "Martin Scorsese", "David Lynch", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Welcher suedkoreanische Film gewann 2020 den Oscar als bester Film?"
            Reponses := array{"Old Boy", "Burning", "Train to Busan", "Parasite"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Regisseur wird als Meister des Suspense bezeichnet (Psycho)?"
            Reponses := array{"Stanley Kubrick", "Brian De Palma", "Alfred Hitchcock", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Welche Trilogie von Peter Jackson verfilmt Tolkiens Werk?"
            Reponses := array{"Harry Potter", "Der Herr der Ringe", "Game of Thrones", "Star Wars"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Schauspieler verkoerpert den Piraten Jack Sparrow?"
            Reponses := array{"Brad Pitt", "Orlando Bloom", "Johnny Depp", "Russell Crowe"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Science-Fiction-Film von 1999 bietet eine rote Pille?"
            Reponses := array{"Matrix", "Terminator", "Blade Runner", "Tron"}
            BonneReponse := 0
        question:
            Enonce := "Welches japanische Studio produzierte Chihiros Reise ins Zauberland?"
            Reponses := array{"Toei", "Pixar", "Das Studio Ghibli", "Madhouse"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Film von Francis Ford Coppola erzaehlt von einer italoamerikanischen Mafiafamilie?"
            Reponses := array{"Casino", "Scarface", "Der Pate", "GoodFellas"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Pixar-Animationsfilm zeigt die Emotionen im Kopf eines Maedchens?"
            Reponses := array{"Oben", "Coco", "Alles steht Kopf", "Ratatouille"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Regisseur drehte Inception und Interstellar?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Welche DC-Comics-Figur ist Batmans Clown-Gegner?"
            Reponses := array{"Bane", "Lex Luthor", "Der Joker", "Der Pinguin"}
            BonneReponse := 2
        question:
            Enonce := "Welcher franzoesische Stummfilm gewann 2012 den Oscar als bester Film?"
            Reponses := array{"Ziemlich beste Freunde", "Blau ist eine warme Farbe", "Die fabelhafte Welt der Amelie", "The Artist"}
            BonneReponse := 3
        question:
            Enonce := "Welche Schauspielerin verkoerpert Hermine in der Harry Potter-Saga?"
            Reponses := array{"Emma Watson", "Keira Knightley", "Emma Stone", "Anna Kendrick"}
            BonneReponse := 0
        question:
            Enonce := "Welcher oesterreichische Schauspieler, Actionfilmstar, wurde Gouverneur von Kalifornien?"
            Reponses := array{"Arnold Schwarzenegger", "Jean-Claude Van Damme", "Sylvester Stallone", "Dolph Lundgren"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Film von 1994 begleitet einen naiven Mann durch die amerikanische Geschichte?"
            Reponses := array{"Der Club der toten Dichter", "Big", "Rain Man", "Forrest Gump"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Kubrick-Film tritt der Computer HAL 9000 auf?"
            Reponses := array{"Solaris", "Shining", "Uhrwerk Orange", "2001: Odyssee im Weltraum"}
            BonneReponse := 3
        question:
            Enonce := "Welche franzoesische Schauspielerin gewann einen Oscar fuer ihre Rolle als Edith Piaf?"
            Reponses := array{"Juliette Binoche", "Marion Cotillard", "Isabelle Adjani", "Audrey Tautou"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Schauspieler verkoerpert Iron Man im Marvel Cinematic Universe?"
            Reponses := array{"Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Film von James Cameron aus dem Jahr 2009 spielt auf dem Planeten Pandora?"
            Reponses := array{"Dune", "Avatar", "Aliens", "Abyss"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Schauspieler verkoerperte James Bond lange in den 1970er- und 1980er-Jahren?"
            Reponses := array{"Timothy Dalton", "Roger Moore", "Sean Connery", "Pierce Brosnan"}
            BonneReponse := 1
        question:
            Enonce := "Welche Horror-Filmreihe zeigt den Killer Freddy Krueger?"
            Reponses := array{"Scream", "Freitag der 13.", "A Nightmare on Elm Street", "Halloween"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Schauspieler verkoerpert oft die Helden von Martin Scorsese (Taxi Driver)?"
            Reponses := array{"Dustin Hoffman", "Jack Nicholson", "Robert De Niro", "Al Pacino"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Katastrophenfilm von 1997 hielt lange den Kassenrekord?"
            Reponses := array{"Avatar", "Jurassic Park", "Twister", "Titanic"}
            BonneReponse := 3
        question:
            Enonce := "Welche Saga stellt die Jedi dem Imperium und den Sith gegenueber?"
            Reponses := array{"Dune", "Star Trek", "Star Wars", "Stargate"}
            BonneReponse := 2
        question:
            Enonce := "Welcher junge Zauberer mit Brille ist der Held einer Filmsaga?"
            Reponses := array{"Gandalf", "Harry Potter", "Merlin", "Dumbledore"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land gewann die Fussball-Weltmeisterschaft 2018?"
            Reponses := array{"Frankreich", "Deutschland", "Brasilien", "Kroatien"}
            BonneReponse := 0
        question:
            Enonce := "Aus wie vielen Spielern besteht eine Rugby-Union-Mannschaft auf dem Feld?"
            Reponses := array{"7", "13", "15", "11"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Schwimmer haelt den Rekord fuer olympische Medaillen?"
            Reponses := array{"Ryan Lochte", "Ian Thorpe", "Michael Phelps", "Mark Spitz"}
            BonneReponse := 2
        question:
            Enonce := "In welcher Stadt fanden die Olympischen Sommerspiele 2024 statt?"
            Reponses := array{"Paris", "Tokio", "Los Angeles", "London"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Tennisspieler haelt den Rekord fuer Siege bei den French Open?"
            Reponses := array{"Novak Djokovic", "Roger Federer", "Rafael Nadal", "Bjoern Borg"}
            BonneReponse := 2
        question:
            Enonce := "In welcher Motorsport-Disziplin faehrt Lewis Hamilton?"
            Reponses := array{"Die MotoGP", "Die Rallye", "Die 24 Stunden von Le Mans", "Die Formel 1"}
            BonneReponse := 3
        question:
            Enonce := "Welcher argentinische Kapitaen stemmte den WM-Pokal 2022 in die Hoehe?"
            Reponses := array{"Sergio Agueero", "Angel Di Maria", "Diego Maradona", "Lionel Messi"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Bases gibt es auf einem Baseballfeld?"
            Reponses := array{"2", "4", "3", "5"}
            BonneReponse := 1
        question:
            Enonce := "Wie oft gewann Eddy Merckx die Tour de France?"
            Reponses := array{"7", "3", "2", "5"}
            BonneReponse := 3
        question:
            Enonce := "Welche olympische Disziplin verbindet Skilanglauf und Gewehrschiessen?"
            Reponses := array{"Der Biathlon", "Das Skeleton", "Die Nordische Kombination", "Der Fuenfkampf"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Boxer biss Evander Holyfield bei einem Kampf ins Ohr?"
            Reponses := array{"Muhammad Ali", "George Foreman", "Lennox Lewis", "Mike Tyson"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Sport wird zu Pferd mit einem Schlaeger und einem Ball gespielt?"
            Reponses := array{"Das Horse-Ball", "Das Polo", "Das Krocket", "Das Cricket"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die meisten Fussball-Weltmeisterschaften gewonnen?"
            Reponses := array{"Argentinien", "Deutschland", "Brasilien", "Italien"}
            BonneReponse := 2
        question:
            Enonce := "Wie heisst der Tennisschlag, der kraeftig ueber dem Kopf geschlagen wird?"
            Reponses := array{"Der Schmetterball", "Der Lob", "Der Stoppball", "Der Volley"}
            BonneReponse := 0
        question:
            Enonce := "Welcher amerikanische Basketballspieler traegt den Spitznamen King James?"
            Reponses := array{"Shaquille O'Neal", "Kobe Bryant", "LeBron James", "Stephen Curry"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Madrider Fussballverein wird die Merengues genannt?"
            Reponses := array{"Atletico Madrid", "FC Sevilla", "FC Barcelona", "Real Madrid"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Punkte zaehlt ein Korb, der jenseits der Dreipunktelinie erzielt wird?"
            Reponses := array{"4", "2", "1", "3"}
            BonneReponse := 3
        question:
            Enonce := "Welche japanische Kampfkunst wird barfuss, mit Katas und Schlagtechniken ausgeuebt?"
            Reponses := array{"Das Karate", "Das Aikido", "Das Sumo", "Das Judo"}
            BonneReponse := 0
        question:
            Enonce := "Wie lange dauert ein Fussballspiel regulaer (ohne Verlaengerung)?"
            Reponses := array{"80 Minuten", "120 Minuten", "90 Minuten", "60 Minuten"}
            BonneReponse := 2
        question:
            Enonce := "Welche amerikanische Mannschaftssportart wird mit einem ovalen Ball und Touchdowns gespielt?"
            Reponses := array{"Der American Football", "Der Baseball", "Das Hockey", "Das Rugby"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tennisturnier wird auf dem Rasen von London gespielt?"
            Reponses := array{"die Australian Open", "die US Open", "die French Open", "Wimbledon"}
            BonneReponse := 3
        question:
            Enonce := "Welche Fussballnationalmannschaft wird die Mannschaft genannt?"
            Reponses := array{"Deutschland", "Belgien", "die Niederlande", "Italien"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Gleitsport wird stehend auf einem Board im Schnee ausgeuebt?"
            Reponses := array{"Das Rodeln", "Der Bobsport", "Das Snowboard", "Der Ski"}
            BonneReponse := 2
        question:
            Enonce := "Aus wie vielen Disziplinen besteht der Zehnkampf in der Leichtathletik?"
            Reponses := array{"10", "5", "7", "12"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land entstanden die antiken Olympischen Spiele?"
            Reponses := array{"Aegypten", "die Tuerkei", "Griechenland", "Italien"}
            BonneReponse := 2
        question:
            Enonce := "Welcher griechische Gott herrscht ueber das Reich der Toten (die Unterwelt)?"
            Reponses := array{"Hades", "Poseidon", "Zeus", "Ares"}
            BonneReponse := 0
        question:
            Enonce := "Welcher griechische Held schlug Medusa den Kopf ab?"
            Reponses := array{"Herakles", "Theseus", "Perseus", "Jason"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Titan stahl den Goettern das Feuer, um es den Menschen zu geben?"
            Reponses := array{"Prometheus", "Atlas", "Epimetheus", "Kronos"}
            BonneReponse := 0
        question:
            Enonce := "Welcher einaeugige nordische Gott ist der Herrscher der Goetter?"
            Reponses := array{"Loki", "Thor", "Odin", "Baldur"}
            BonneReponse := 2
        question:
            Enonce := "Welcher griechische Held zog aus, um das Goldene Vlies zu erringen?"
            Reponses := array{"Odysseus", "Achilles", "Jason", "Hektor"}
            BonneReponse := 2
        question:
            Enonce := "Welchen Fluss ueberqueren die Seelen, um in die griechische Unterwelt zu gelangen?"
            Reponses := array{"Der Styx", "Der Acheron", "Der Nil", "Die Lethe"}
            BonneReponse := 0
        question:
            Enonce := "Welcher aegyptische Gott mit Falkenkopf wird mit dem Pharao verbunden?"
            Reponses := array{"Seth", "Thot", "Anubis", "Horus"}
            BonneReponse := 3
        question:
            Enonce := "Welches Ungeheuer, halb Loewe, halb Frau, stellt toedliche Raetsel?"
            Reponses := array{"Die Harpyie", "Die Sphinx", "Die Chimaere", "Die Gorgone"}
            BonneReponse := 1
        question:
            Enonce := "Welcher griechische Gott der Schmiede bearbeitet das Metall fuer die Goetter?"
            Reponses := array{"Hephaistos", "Apollon", "Hermes", "Dionysos"}
            BonneReponse := 0
        question:
            Enonce := "Welche Religion folgt der Lehre von Siddhartha Gautama?"
            Reponses := array{"Der Buddhismus", "Der Shintoismus", "Der Hinduismus", "Der Daoismus"}
            BonneReponse := 0
        question:
            Enonce := "Welcher griechische Held toetete den Minotaurus im Labyrinth?"
            Reponses := array{"Theseus", "Herakles", "Perseus", "Ikarus"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Schelmengott der nordischen Mythologie stiftet Chaos?"
            Reponses := array{"Freyr", "Loki", "Tyr", "Heimdall"}
            BonneReponse := 1
        question:
            Enonce := "Welche griechische Goettin der Jagd ist die Zwillingsschwester von Apollon?"
            Reponses := array{"Hera", "Hestia", "Artemis", "Demeter"}
            BonneReponse := 2
        question:
            Enonce := "Welches Epos erzaehlt von Odysseus' langer Heimkehr nach Ithaka?"
            Reponses := array{"Die Aeneis", "Die Odyssee", "Die Ilias", "Die Theogonie"}
            BonneReponse := 1
        question:
            Enonce := "Welcher hinduistische Gott hat einen Elefantenkopf?"
            Reponses := array{"Ganesha", "Brahma", "Shiva", "Vishnu"}
            BonneReponse := 0
        question:
            Enonce := "Wie heisst das legendaere Schwert von Koenig Artus?"
            Reponses := array{"Tizona", "Joyeuse", "Durendal", "Excalibur"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Musen gibt es in der griechischen Mythologie?"
            Reponses := array{"9", "7", "12", "3"}
            BonneReponse := 0
        question:
            Enonce := "Welche Gestalt war dazu verdammt, das Himmelsgewoelbe auf den Schultern zu tragen?"
            Reponses := array{"Sisyphos", "Tantalos", "Prometheus", "Atlas"}
            BonneReponse := 3
        question:
            Enonce := "Welche aegyptische Goettin ist die Gemahlin von Osiris?"
            Reponses := array{"Nut", "Hathor", "Bastet", "Isis"}
            BonneReponse := 3
        question:
            Enonce := "Welche Religion hat die meisten Anhaenger der Welt?"
            Reponses := array{"Das Christentum", "Der Buddhismus", "Der Islam", "Der Hinduismus"}
            BonneReponse := 0
        question:
            Enonce := "Welche Buechse befreite im griechischen Mythos alle Uebel der Menschheit?"
            Reponses := array{"Die Vase des Midas", "Die Buechse der Pandora", "Die Urne des Achilles", "Die Truhe des Perseus"}
            BonneReponse := 1
        question:
            Enonce := "Welcher roemische Gott des Handels und der Reisenden entspricht Hermes?"
            Reponses := array{"Vulkan", "Mars", "Janus", "Merkur"}
            BonneReponse := 3
        question:
            Enonce := "Welches gefluegelte Wesen mit Loewenkoerper und Adlerkopf bewacht Schaetze?"
            Reponses := array{"Der Zyklop", "Der Zentaur", "Der Greif", "Der Basilisk"}
            BonneReponse := 2
        question:
            Enonce := "Welche himmlische Halle empfaengt die im Kampf gefallenen Krieger (nordische Mythologie)?"
            Reponses := array{"Walhalla", "Helheim", "Niflheim", "Midgard"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tier war der aegyptischen Goettin Bastet heilig?"
            Reponses := array{"Der Hund", "Die Katze", "Das Krokodil", "Der Falke"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Jahr fiel Konstantinopel an die Osmanen?"
            Reponses := array{"1071", "1453", "1204", "1492"}
            BonneReponse := 1
        question:
            Enonce := "Welche Vertraege von 1648 beendeten den Dreissigjaehrigen Krieg?"
            Reponses := array{"Der Versailler Vertrag", "Der Friede von Utrecht", "Der Westfaelische Friede", "Der Augsburger Religionsfriede"}
            BonneReponse := 2
        question:
            Enonce := "Welcher byzantinische Kaiser liess das roemische Recht kodifizieren?"
            Reponses := array{"Basileios II.", "Konstantin", "Herakleios", "Justinian"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr wurde die Magna Carta in England unterzeichnet?"
            Reponses := array{"1066", "1215", "1314", "1453"}
            BonneReponse := 1
        question:
            Enonce := "Welche Dynastie herrschte ab 987 mit Hugo Capet ueber Frankreich?"
            Reponses := array{"Die Karolinger", "Die Kapetinger", "Die Merowinger", "Die Valois"}
            BonneReponse := 1
        question:
            Enonce := "Welcher preussische Kanzler organisierte 1871 die deutsche Einheit?"
            Reponses := array{"Wilhelm II.", "Metternich", "Adenauer", "Otto von Bismarck"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Jahr brach der amerikanische Buergerkrieg aus?"
            Reponses := array{"1898", "1861", "1776", "1812"}
            BonneReponse := 1
        question:
            Enonce := "Unter welchem Kaiser der flavischen Dynastie wurde das Kolosseum eingeweiht?"
            Reponses := array{"Augustus", "Hadrian", "Nero", "Vespasian"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Gladiator fuehrte einen grossen Sklavenaufstand gegen Rom an?"
            Reponses := array{"Vercingetorix", "Crassus", "Spartacus", "Hannibal"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr wurde Jeanne d'Arc in Rouen verbrannt?"
            Reponses := array{"1415", "1453", "1429", "1431"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Vertrag von 1494 teilte die Neue Welt zwischen Spanien und Portugal auf?"
            Reponses := array{"Der Vertrag von Tordesillas", "Der Vertrag von Paris", "Der Vertrag von Madrid", "Der Vertrag von Saragossa"}
            BonneReponse := 0
        question:
            Enonce := "Welche mongolische Dynastie ging den Ming in China voraus?"
            Reponses := array{"Die Han", "Die Qing", "Die Yuan", "Die Song"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Zar modernisierte Russland und gruendete Sankt Petersburg?"
            Reponses := array{"Peter der Grosse", "Nikolaus II.", "Alexander I.", "Iwan der Schreckliche"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr wurde Hongkong an China zurueckgegeben?"
            Reponses := array{"1997", "1989", "1984", "2001"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Pharao liess die Tempel von Abu Simbel errichten?"
            Reponses := array{"Echnaton", "Ramses II.", "Tutanchamun", "Cheops"}
            BonneReponse := 1
        question:
            Enonce := "Welche Zivilisation hatte Tenochtitlan als Hauptstadt?"
            Reponses := array{"Die Tolteken", "Die Maya", "Die Azteken", "Die Inka"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte 1922 das Grab des Tutanchamun?"
            Reponses := array{"Auguste Mariette", "Howard Carter", "Heinrich Schliemann", "Jean-Francois Champollion"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Kanzler fuehrte 1990 die deutsche Wiedervereinigung an?"
            Reponses := array{"Konrad Adenauer", "Helmut Kohl", "Willy Brandt", "Gerhard Schroeder"}
            BonneReponse := 1
        question:
            Enonce := "Welchem Jahr entsprechen die 'Drei glorreichen Tage' der Pariser Revolution?"
            Reponses := array{"1848", "1830", "1789", "1871"}
            BonneReponse := 1
        question:
            Enonce := "Welcher makedonische Eroberer errichtete im 4. Jahrhundert v. Chr. ein riesiges Reich?"
            Reponses := array{"Alexander der Grosse", "Julius Caesar", "Perikles", "Dareios"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Jahr wurde die Leibeigenschaft im Russischen Reich abgeschafft?"
            Reponses := array{"1861", "1789", "1812", "1917"}
            BonneReponse := 0
        question:
            Enonce := "Welches geheime Abkommen von 1916 teilte den Nahen Osten zwischen Frankreich und dem Vereinigten Koenigreich auf?"
            Reponses := array{"Das Sykes-Picot-Abkommen", "Die Balfour-Deklaration", "Die Abkommen von Jalta", "Der Vertrag von Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Welche Dynastie herrschte am Vorabend der Revolution von 1789 ueber Frankreich?"
            Reponses := array{"Die Valois", "Die Bourbonen", "Das Haus Orleans", "Die direkten Kapetinger"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Kaiser verlegte 330 die roemische Hauptstadt nach Byzanz?"
            Reponses := array{"Theodosius", "Augustus", "Diokletian", "Konstantin"}
            BonneReponse := 3
        question:
            Enonce := "Welche Koenigin von England ist fuer ihre 'Aera' im 19. Jahrhundert und ein weltweites Reich beruehmt?"
            Reponses := array{"Maria Tudor", "Elisabeth I.", "Anne", "Victoria"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Hauptstadt von Kasachstan?"
            Reponses := array{"Astana", "Almaty", "Bischkek", "Taschkent"}
            BonneReponse := 0
        question:
            Enonce := "Welches ist das bevoelkerungsreichste Land Afrikas?"
            Reponses := array{"Nigeria", "Suedafrika", "Aethiopien", "Aegypten"}
            BonneReponse := 0
        question:
            Enonce := "Welche Meerenge trennt Russland von Alaska?"
            Reponses := array{"Die Beringstrasse", "Die Magellanstrasse", "Die Daenemarkstrasse", "Die Strasse von Hormus"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der tiefste Landpunkt der Erdoberflaeche?"
            Reponses := array{"Die Afar-Senke", "Das Nildelta", "Das Death Valley", "Die Ufer des Toten Meeres"}
            BonneReponse := 3
        question:
            Enonce := "Was ist die Hauptstadt der Mongolei?"
            Reponses := array{"Ulan-Bator", "Lhasa", "Astana", "Taschkent"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Hauptstadt von Finnland?"
            Reponses := array{"Stockholm", "Tallinn", "Oslo", "Helsinki"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der groesste See Afrikas?"
            Reponses := array{"Der Victoriasee", "Der Tschadsee", "Der Tanganjikasee", "Der Malawisee"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die trockenste Wueste der Welt?"
            Reponses := array{"Die Atacama-Wueste", "Die Wueste Gobi", "Die Sahara", "Die Mojave-Wueste"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die laengste Kueste der Welt?"
            Reponses := array{"Russland", "Kanada", "Indonesien", "Australien"}
            BonneReponse := 1
        question:
            Enonce := "Welches afrikanische Land wurde nie kolonisiert (abgesehen von einer kurzen Besetzung)?"
            Reponses := array{"Kenia", "Aethiopien", "Senegal", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt von Vietnam?"
            Reponses := array{"Bangkok", "Phnom Penh", "Ho-Chi-Minh-Stadt", "Hanoi"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Fluss fliesst durch die Stadt Bagdad?"
            Reponses := array{"Der Euphrat", "Der Jordan", "Der Nil", "Der Tigris"}
            BonneReponse := 3
        question:
            Enonce := "Welches Gebirge markiert die Grenze zwischen Europa und Asien in Russland?"
            Reponses := array{"Der Ural", "Der Kaukasus", "Die Karpaten", "Der Altai"}
            BonneReponse := 0
        question:
            Enonce := "Welcher asiatische Archipel hat die meisten aktiven Vulkane?"
            Reponses := array{"Neuseeland", "Indonesien", "Die Philippinen", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die Hauptstadt von Bulgarien?"
            Reponses := array{"Bukarest", "Zagreb", "Sofia", "Belgrad"}
            BonneReponse := 2
        question:
            Enonce := "Was ist die Hauptstadt von Chile?"
            Reponses := array{"Santiago", "Buenos Aires", "La Paz", "Lima"}
            BonneReponse := 0
        question:
            Enonce := "Welcher grosse Fluss muendet ins Kaspische Meer?"
            Reponses := array{"Der Ural", "Die Wolga", "Die Donau", "Der Dnjepr"}
            BonneReponse := 1
        question:
            Enonce := "Was ist die groesste Halbinsel der Welt?"
            Reponses := array{"Die Arabische Halbinsel", "Die Halbinsel Kamtschatka", "Die Iberische Halbinsel", "Die Indische Halbinsel"}
            BonneReponse := 0
        question:
            Enonce := "Welche Stadt ist der Regierungssitz der Niederlande, obwohl Amsterdam die Hauptstadt ist?"
            Reponses := array{"Eindhoven", "Den Haag", "Utrecht", "Rotterdam"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der tiefste See der Welt?"
            Reponses := array{"Der Baikalsee", "Der Obere See", "Der Tanganjikasee", "Das Kaspische Meer"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Hauptstadt von Nordkorea?"
            Reponses := array{"Hanoi", "Peking", "Seoul", "Pjoengjang"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der hoechste Gipfel der Anden?"
            Reponses := array{"Der Aconcagua", "Der Illimani", "Der Cotopaxi", "Der Chimborazo"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Hauptstadt von Marokko?"
            Reponses := array{"Marrakesch", "Fes", "Rabat", "Casablanca"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land grenzt an die meisten Laender (14, gleichauf mit Russland)?"
            Reponses := array{"Brasilien", "Indien", "China", "Deutschland"}
            BonneReponse := 2
        question:
            Enonce := "Welche Meerenge, ein wichtiger Oelknotenpunkt, verbindet den Persischen Golf mit dem Golf von Oman?"
            Reponses := array{"Die Strasse von Hormus", "Der Bosporus", "Die Strasse von Malakka", "Der Sueskanal"}
            BonneReponse := 0
        question:
            Enonce := "Wie lautet die Ordnungszahl von Wasserstoff?"
            Reponses := array{"0", "1", "2", "8"}
            BonneReponse := 1
        question:
            Enonce := "Welches Teilchen ist der Vermittler der elektromagnetischen Kraft?"
            Reponses := array{"das Higgs-Boson", "das Neutrino", "Das Photon", "das Gluon"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Physiker formulierte die Unschaerferelation?"
            Reponses := array{"Erwin Schroedinger", "Werner Heisenberg", "Niels Bohr", "Max Planck"}
            BonneReponse := 1
        question:
            Enonce := "Welches ist das haeufigste chemische Element im Universum?"
            Reponses := array{"Sauerstoff", "Helium", "Wasserstoff", "Kohlenstoff"}
            BonneReponse := 2
        question:
            Enonce := "Wie gross ist ungefaehr die Avogadro-Konstante?"
            Reponses := array{"1,6 x 10^1^9", "3,14 x 10^8", "9,81", "6,022 x 10^2^3"}
            BonneReponse := 3
        question:
            Enonce := "Wie lautet die SI-Einheit fuer die Stoffmenge?"
            Reponses := array{"das Kelvin", "Das Mol", "der Liter", "das Gramm"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Physiker entdeckte das Elektron?"
            Reponses := array{"Bohr", "J.J. Thomson", "Chadwick", "Rutherford"}
            BonneReponse := 1
        question:
            Enonce := "Welcher russische Wissenschaftler stellte das Periodensystem der Elemente auf?"
            Reponses := array{"Dalton", "Lavoisier", "Berzelius", "Dmitri Mendelejew"}
            BonneReponse := 3
        question:
            Enonce := "Wie hoch ist der pH-Wert einer neutralen Loesung bei 25 C?"
            Reponses := array{"14", "7", "0", "1"}
            BonneReponse := 1
        question:
            Enonce := "Welche ist die schwaechste der vier fundamentalen Wechselwirkungen?"
            Reponses := array{"die schwache Wechselwirkung", "Die Gravitation", "die elektromagnetische Kraft", "die starke Wechselwirkung"}
            BonneReponse := 1
        question:
            Enonce := "Wie lautet die chemische Formel von Methan?"
            Reponses := array{"NH3", "CH4", "C2H6", "CO2"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Physiker vereinte Elektrizitaet und Magnetismus durch seine Gleichungen?"
            Reponses := array{"James Clerk Maxwell", "Faraday", "Ampere", "Coulomb"}
            BonneReponse := 0
        question:
            Enonce := "Bei welcher Temperatur liegt der absolute Nullpunkt?"
            Reponses := array{"-100 C", "-459 C", "0 C", "-273,15 C"}
            BonneReponse := 3
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Wolfram?"
            Reponses := array{"Tu", "Tg", "W", "Tn"}
            BonneReponse := 2
        question:
            Enonce := "Welches Edelgas ist das haeufigste in der Erdatmosphaere (3. Gas)?"
            Reponses := array{"das Helium", "Das Argon", "das Krypton", "das Neon"}
            BonneReponse := 1
        question:
            Enonce := "Welches Gesetz verbindet Druck und Volumen eines Gases bei konstanter Temperatur?"
            Reponses := array{"das Hookesche Gesetz", "das Coulombsche Gesetz", "das Ohmsche Gesetz", "Das Gesetz von Boyle-Mariotte"}
            BonneReponse := 3
        question:
            Enonce := "Wie lautet die Masseinheit fuer die elektrische Ladung?"
            Reponses := array{"das Ampere", "das Watt", "das Volt", "Das Coulomb"}
            BonneReponse := 3
        question:
            Enonce := "Welche Art chemischer Bindung verbindet die Atome eines Wassermolekuels?"
            Reponses := array{"Die kovalente Bindung", "die metallische Bindung", "die Ionenbindung", "allein die Wasserstoffbrueckenbindung"}
            BonneReponse := 0
        question:
            Enonce := "Welche Strahlung entspricht einem bei einem Zerfall emittierten Heliumkern?"
            Reponses := array{"die Gammastrahlung", "Die Alphastrahlung", "die Roentgenstrahlung", "die Betastrahlung"}
            BonneReponse := 1
        question:
            Enonce := "Wie lautet das chemische Symbol fuer Blei?"
            Reponses := array{"Pm", "Pl", "Pb", "Po"}
            BonneReponse := 2
        question:
            Enonce := "Welche Kernreaktion laesst die Sonne leuchten?"
            Reponses := array{"die Verbrennung von Kohlenstoff", "die Beta-Radioaktivitaet", "die Spaltung von Uran", "Die Fusion von Wasserstoff"}
            BonneReponse := 3
        question:
            Enonce := "Wie lautet die SI-Einheit zur Messung der elektrischen Spannung?"
            Reponses := array{"Das Volt", "das Hertz", "das Ampere", "das Ohm"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Hauptbestandteil von Erdgas ist auch ein starkes Treibhausgas?"
            Reponses := array{"Das Methan", "das Ozon", "das Argon", "der Stickstoff"}
            BonneReponse := 0
        question:
            Enonce := "Welche Groesse misst die Kelvin-Skala?"
            Reponses := array{"die Masse", "den Druck", "die Energie", "Die Temperatur"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Wissenschaftler formulierte die allgemeine Relativitaetstheorie?"
            Reponses := array{"Newton", "Albert Einstein", "Planck", "Hawking"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Chromosomenpaare hat ein Mensch?"
            Reponses := array{"46", "23", "12", "24"}
            BonneReponse := 1
        question:
            Enonce := "Welches Bluteiweiss transportiert den Sauerstoff?"
            Reponses := array{"das Albumin", "das Insulin", "Das Haemoglobin", "das Kollagen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Forscher entdeckte zusammen mit Crick die Doppelhelixstruktur der DNA?"
            Reponses := array{"James Watson", "Louis Pasteur", "Gregor Mendel", "Charles Darwin"}
            BonneReponse := 0
        question:
            Enonce := "Wo werden beim Erwachsenen die roten Blutkoerperchen gebildet?"
            Reponses := array{"Im Knochenmark", "in der Leber", "in der Milz", "in den Nieren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Organell ist das Kraftwerk der Zelle?"
            Reponses := array{"der Golgi-Apparat", "Das Mitochondrium", "der Zellkern", "das Ribosom"}
            BonneReponse := 1
        question:
            Enonce := "Welches ist der laengste Nerv im menschlichen Koerper?"
            Reponses := array{"der Vagusnerv", "der Sehnerv", "Der Ischiasnerv", "der Gesichtsnerv"}
            BonneReponse := 2
        question:
            Enonce := "Welcher englische Arzt beschrieb im 17. Jahrhundert den Blutkreislauf?"
            Reponses := array{"William Harvey", "Joseph Lister", "Alexander Fleming", "Edward Jenner"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Teilungsprozess erzeugt die Geschlechtszellen (Gameten)?"
            Reponses := array{"die Befruchtung", "die Mitose", "die Mutation", "Die Meiose"}
            BonneReponse := 3
        question:
            Enonce := "Welches Vitamin ist fuer die Blutgerinnung unentbehrlich?"
            Reponses := array{"das Vitamin C", "Das Vitamin K", "das Vitamin D", "das Vitamin B12"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Milchzaehne hat ein kleines Kind?"
            Reponses := array{"28", "32", "20", "24"}
            BonneReponse := 2
        question:
            Enonce := "Welches gruene Pigment ermoeglicht die Photosynthese der Pflanzen?"
            Reponses := array{"das Haemoglobin", "das Melanin", "das Keratin", "Das Chlorophyll"}
            BonneReponse := 3
        question:
            Enonce := "Welche Druese an der Basis des Gehirns steuert die anderen Druesen?"
            Reponses := array{"die Schilddruese", "Die Hypophyse", "die Bauchspeicheldruese", "die Milz"}
            BonneReponse := 1
        question:
            Enonce := "Welche Tiergruppe umfasst Froesche und Salamander?"
            Reponses := array{"die Weichtiere", "die Fische", "Die Amphibien", "die Reptilien"}
            BonneReponse := 2
        question:
            Enonce := "Wie lange lebt ein rotes Blutkoerperchen durchschnittlich?"
            Reponses := array{"etwa 10 Jahre", "etwa 24 Stunden", "Etwa 120 Tage", "etwa 7 Tage"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Arzt entwickelte den ersten Impfstoff (gegen Pocken)?"
            Reponses := array{"Jonas Salk", "Edward Jenner", "Louis Pasteur", "Robert Koch"}
            BonneReponse := 1
        question:
            Enonce := "Welches faserige Eiweiss bildet Sehnen, Haut und Knorpel?"
            Reponses := array{"das Keratin", "das Elastin", "das Fibrin", "Das Kollagen"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Teil des Auges stellt durch Verformung scharf?"
            Reponses := array{"die Pupille", "die Hornhaut", "die Netzhaut", "Die Augenlinse"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Kammern hat das Herz eines Fisches?"
            Reponses := array{"1", "4", "2", "3"}
            BonneReponse := 2
        question:
            Enonce := "Welches Hormon senkt den Zuckerspiegel im Blut?"
            Reponses := array{"das Testosteron", "das Melatonin", "das Adrenalin", "Das Insulin"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Muskeln hat der menschliche Koerper ungefaehr?"
            Reponses := array{"etwa 50", "etwa 100", "etwa 2000", "Etwa 600"}
            BonneReponse := 3
        question:
            Enonce := "Wo befindet sich die DNA in einer menschlichen Zelle?"
            Reponses := array{"Im Zellkern", "in der Membran", "in den Ribosomen", "im Zytoplasma"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Forscher stellte anhand von Erbsenkreuzungen die Vererbungsgesetze auf?"
            Reponses := array{"Darwin", "Gregor Mendel", "Pasteur", "Lamarck"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Knochen schuetzt das Gehirn?"
            Reponses := array{"das Brustbein", "Der Schaedel", "die Wirbelsaeule", "der Unterkiefer"}
            BonneReponse := 1
        question:
            Enonce := "Wie gross ist die ungefaehre Gesamtlungenkapazitaet eines Erwachsenen?"
            Reponses := array{"etwa 15 Liter", "etwa 30 Liter", "Etwa 6 Liter", "etwa 1 Liter"}
            BonneReponse := 2
        question:
            Enonce := "Wie nennt man die maennlichen Fortpflanzungszellen?"
            Reponses := array{"die Eizellen", "Die Spermien", "die Neuronen", "die Blutplaettchen"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der kleinste Vogel der Welt?"
            Reponses := array{"das Wintergoldhaehnchen", "der Mauersegler", "der Spatz", "Der Kolibri"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Kammern hat der Magen einer Kuh?"
            Reponses := array{"6", "2", "1", "4"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Vogel wandert am weitesten, von einem Pol zum anderen?"
            Reponses := array{"die Wildgans", "der Storch", "die Schwalbe", "Die Kuestenseeschwalbe"}
            BonneReponse := 3
        question:
            Enonce := "Welches ist die groesste Raubkatze des amerikanischen Kontinents?"
            Reponses := array{"der Puma", "der Ozelot", "der Luchs", "Der Jaguar"}
            BonneReponse := 3
        question:
            Enonce := "Welcher arktische Wal traegt einen langen spiralfoermigen Stosszahn und wird Einhorn der Meere genannt?"
            Reponses := array{"der Beluga", "das Walross", "der Pottwal", "Der Narwal"}
            BonneReponse := 3
        question:
            Enonce := "Welche Landschlange gilt als die giftigste der Welt?"
            Reponses := array{"die Viper", "die Schwarze Mamba", "die Koenigskobra", "Der Inland-Taipan"}
            BonneReponse := 3
        question:
            Enonce := "Welche mexikanische Amphibie ist beruehmt dafuer, ihre Gliedmassen zu regenerieren?"
            Reponses := array{"Der Axolotl", "die Kroete", "der Salamander", "der Molch"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze haelt den Rekord fuer das schnellste Wachstum?"
            Reponses := array{"die Seerose", "die Brennnessel", "Der Bambus", "die Sonnenblume"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Vogel legt seine Eier in die Nester anderer Arten?"
            Reponses := array{"das Rotkehlchen", "Der Kuckuck", "der Specht", "die Elster"}
            BonneReponse := 1
        question:
            Enonce := "Welches Landtier gilt als das langsamste?"
            Reponses := array{"der Koala", "die Schnecke", "Das Faultier", "die Schildkroete"}
            BonneReponse := 2
        question:
            Enonce := "Welches ist die groesste Art von Meeresschildkroete?"
            Reponses := array{"Die Lederschildkroete", "die Suppenschildkroete", "die Unechte Karettschildkroete", "die Echte Karettschildkroete"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tier hat die groessten Augen im Tierreich?"
            Reponses := array{"Der Riesenkalmar", "die Eule", "das Pferd", "der Strauss"}
            BonneReponse := 0
        question:
            Enonce := "Welches Saeugetier unternimmt eine der laengsten jaehrlichen Wanderungen?"
            Reponses := array{"die Fledermaus", "das Rentier", "Der Grauwal", "das Gnu"}
            BonneReponse := 2
        question:
            Enonce := "Welches australische Saeugetier legt Eier und hat Stacheln?"
            Reponses := array{"der Koala", "Der Ameisenigel", "der Tasmanische Teufel", "der Wombat"}
            BonneReponse := 1
        question:
            Enonce := "Was ist das groesste Nagetier der Welt?"
            Reponses := array{"das Stachelschwein", "Das Wasserschwein", "der Biber", "die Nutria"}
            BonneReponse := 1
        question:
            Enonce := "Welcher grosse Hai ist der groesste Fisch der Welt?"
            Reponses := array{"der Tigerhai", "der Weisse Hai", "Der Walhai", "der Hammerhai"}
            BonneReponse := 2
        question:
            Enonce := "Welcher nordamerikanische Baum gehoert zu den aeltesten Lebewesen (Jahrtausende)?"
            Reponses := array{"die Zeder", "Die Bristlecone-Kiefer", "die Birke", "die Espe"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ist der einzige Pinguin, der natuerlich noerdlich des Aequators lebt?"
            Reponses := array{"Der Galapagos-Pinguin", "der Felsenpinguin", "der Koenigspinguin", "der Kaiserpinguin"}
            BonneReponse := 0
        question:
            Enonce := "Welches Reptil hat die staerkste Bisskraft?"
            Reponses := array{"der Leguan", "die Python", "die Kobra", "Das Krokodil"}
            BonneReponse := 3
        question:
            Enonce := "Welcher grosse afrikanische Pflanzenfresser ist fuer die meisten menschlichen Todesfaelle verantwortlich?"
            Reponses := array{"die Giraffe", "der Bueffel", "Das Nilpferd", "der Elefant"}
            BonneReponse := 2
        question:
            Enonce := "Wie lange lebt eine erwachsene Eintagsfliege im Durchschnitt?"
            Reponses := array{"etwa ein Jahr", "etwa einen Monat", "etwa zehn Jahre", "Etwa einen Tag"}
            BonneReponse := 3
        question:
            Enonce := "Welches ist das einzige Saeugetier, das durch einen Sporn giftig ist (das Maennchen)?"
            Reponses := array{"der Maulwurf", "der Igel", "Das Schnabeltier", "die Spitzmaus"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Menschenaffe ist der imposanteste und lebt in Zentralafrika?"
            Reponses := array{"der Schimpanse", "der Bonobo", "der Orang-Utan", "Der Gorilla"}
            BonneReponse := 3
        question:
            Enonce := "Welches Weichtier hat acht Arme und kann sofort die Farbe wechseln?"
            Reponses := array{"der Kalmar", "das Perlboot", "die Sepia", "Der Tintenfisch"}
            BonneReponse := 3
        question:
            Enonce := "Warum stirbt die Honigbiene, nachdem sie einen Menschen gestochen hat?"
            Reponses := array{"sie erschoepft sich", "Ihr Stachel bleibt stecken und reisst sie auf", "das Gift toetet sie", "sie ertrinkt im Honig"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ist der dichteste Planet im Sonnensystem?"
            Reponses := array{"Saturn", "Die Erde", "Jupiter", "Merkur"}
            BonneReponse := 1
        question:
            Enonce := "Wie nennt man die Grenze eines Schwarzen Lochs, aus der nichts entweicht?"
            Reponses := array{"die aeussere Singularitaet", "die Photosphaere", "die Magnetosphaere", "Der Ereignishorizont"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Astronom formulierte die Gesetze der elliptischen Planetenbewegung?"
            Reponses := array{"Johannes Kepler", "Newton", "Ptolemaeus", "Galilei"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele galileische Monde hat Jupiter?"
            Reponses := array{"2", "8", "4", "12"}
            BonneReponse := 2
        question:
            Enonce := "In welchen Sterntyp wird sich unsere Sonne am Ende ihres Lebens verwandeln?"
            Reponses := array{"ein Schwarzes Loch", "Einen Roten Riesen", "eine Supernova", "einen Pulsar"}
            BonneReponse := 1
        question:
            Enonce := "Welches ist der groesste Mond des Saturn?"
            Reponses := array{"Iapetus", "Titan", "Ganymed", "Enceladus"}
            BonneReponse := 1
        question:
            Enonce := "Welche Theorie beschreibt den Ursprung des Universums durch eine anfaengliche Expansion?"
            Reponses := array{"Der Urknall", "der stationaere Zustand", "die Relativitaet", "die Stringtheorie"}
            BonneReponse := 0
        question:
            Enonce := "Welcher ist der hellste Stern am Nachthimmel?"
            Reponses := array{"der Polarstern", "Beteigeuze", "Wega", "Sirius"}
            BonneReponse := 3
        question:
            Enonce := "Welche Sonde setzte 2014 den Lander Philae auf einem Kometen ab?"
            Reponses := array{"Cassini", "Juno", "New Horizons", "Rosetta"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Planet erlebt die heftigsten Winde im Sonnensystem?"
            Reponses := array{"Jupiter", "Neptun", "Venus", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "Wie nennt man einen schnell rotierenden Neutronenstern, der Impulse aussendet?"
            Reponses := array{"ein Quasar", "Ein Pulsar", "eine Nova", "ein Weisser Zwerg"}
            BonneReponse := 1
        question:
            Enonce := "Welche Apollo-Mission brachte 1972 die letzten Menschen auf den Mond?"
            Reponses := array{"Apollo 11", "Apollo 17", "Apollo 13", "Apollo 15"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ist der groesste bekannte Vulkan im Sonnensystem, auf dem Mars gelegen?"
            Reponses := array{"der Maxwell Montes", "der Vesuv", "der Mauna Kea", "Olympus Mons"}
            BonneReponse := 3
        question:
            Enonce := "Wie lange dauert ungefaehr ein Jahr auf dem Mars?"
            Reponses := array{"etwa 88 Tage", "etwa 365 Tage", "Etwa 687 Tage", "etwa 30 Tage"}
            BonneReponse := 2
        question:
            Enonce := "Welcher italienische Astronom beobachtete die Jupitermonde mit seinem Fernrohr?"
            Reponses := array{"Kepler", "Galilei", "Tycho Brahe", "Kopernikus"}
            BonneReponse := 1
        question:
            Enonce := "Aus welchen Gasen besteht die Sonne hauptsaechlich?"
            Reponses := array{"Kohlenstoff und Eisen", "Sauerstoff und Stickstoff", "Methan und Ammoniak", "Wasserstoff und Helium"}
            BonneReponse := 3
        question:
            Enonce := "Wie nennt man das riesige Kometenreservoir am Rand des Sonnensystems?"
            Reponses := array{"Die Oortsche Wolke", "der Orionnebel", "der Asteroidenguertel", "der Kuiperguertel"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die sichtbare aeussere Schicht der Sonne?"
            Reponses := array{"die tiefe Chromosphaere", "Die Photosphaere", "die Korona", "der Kern"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ist der kleinste Planet im Sonnensystem?"
            Reponses := array{"Venus", "Merkur", "Pluto", "Mars"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Sternbild befindet sich der Polarstern?"
            Reponses := array{"Orion", "Kassiopeia", "Kleiner Baer", "Grosser Baer"}
            BonneReponse := 2
        question:
            Enonce := "Wie nennt man die wissenschaftliche Erforschung von Ursprung und Entwicklung des Universums?"
            Reponses := array{"die Astrologie", "die Planetologie", "Die Kosmologie", "die Geodaesie"}
            BonneReponse := 2
        question:
            Enonce := "Wie gross ist ungefaehr die Entfernung Erde-Sonne (astronomische Einheit)?"
            Reponses := array{"30 Millionen km", "1 Milliarde km", "1 Million km", "150 Millionen km"}
            BonneReponse := 3
        question:
            Enonce := "Welches Phaenomen verschiebt das Licht ferner Galaxien ins Rote?"
            Reponses := array{"Die Ausdehnung des Universums", "die Brechung", "der Treibhauseffekt", "die Sonnenflecken"}
            BonneReponse := 0
        question:
            Enonce := "Welchen ersten kuenstlichen Satelliten startete die UdSSR 1957?"
            Reponses := array{"Wostok 1", "Explorer 1", "Sputnik 1", "Luna 1"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Planet hat die geringste Dichte im Sonnensystem (er wuerde auf Wasser schwimmen)?"
            Reponses := array{"Jupiter", "Saturn", "Neptun", "Uranus"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Maler begruendete mit Ein Sonntagnachmittag auf der Insel La Grande Jatte den Pointillismus?"
            Reponses := array{"Georges Seurat", "Camille Pissarro", "Henri Matisse", "Paul Signac"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Architekt entwarf die Glaspyramide des Louvre?"
            Reponses := array{"Ieoh Ming Pei", "Jean Nouvel", "Norman Foster", "Le Corbusier"}
            BonneReponse := 0
        question:
            Enonce := "Welcher flaemische Maler schuf Der Garten der Lueste?"
            Reponses := array{"Hieronymus Bosch", "Rubens", "Bruegel der Aeltere", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Welche franzoesische Bildhauerin war Schuelerin und Mitarbeiterin von Rodin?"
            Reponses := array{"Niki de Saint Phalle", "Camille Claudel", "Sophie Calle", "Louise Bourgeois"}
            BonneReponse := 1
        question:
            Enonce := "Welcher oesterreichische Maler schuf Der Kuss mit Blattgold?"
            Reponses := array{"Oskar Kokoschka", "Egon Schiele", "Hundertwasser", "Gustav Klimt"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Renaissance-Maler schuf Die Geburt der Venus?"
            Reponses := array{"Caravaggio", "Tizian", "Sandro Botticelli", "Raffael"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Maler machte das Dripping (Tropftechnik) populaer?"
            Reponses := array{"Jackson Pollock", "Willem de Kooning", "Mark Rothko", "Andy Warhol"}
            BonneReponse := 0
        question:
            Enonce := "Welche provokante Kunstbewegung entstand 1916 in Zuerich (Duchamp, Tzara)?"
            Reponses := array{"der Konstruktivismus", "der Futurismus", "der Surrealismus", "Der Dadaismus"}
            BonneReponse := 3
        question:
            Enonce := "Welches Werk von Salvador Dali zeigt zerfliessende Uhren?"
            Reponses := array{"Das Abendmahl", "Der Schrei", "Die Bestaendigkeit der Erinnerung", "Der grosse Masturbator"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Maler der Romantik schuf Das Floss der Medusa?"
            Reponses := array{"Eugene Delacroix", "Gustave Courbet", "Theodore Gericault", "Jacques-Louis David"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Architekt entwarf das Guggenheim-Museum in Bilbao?"
            Reponses := array{"Tadao Ando", "Frank Gehry", "Renzo Piano", "Zaha Hadid"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Maler schuf Les Demoiselles d'Avignon?"
            Reponses := array{"Pablo Picasso", "Juan Gris", "Fernand Leger", "Georges Braque"}
            BonneReponse := 0
        question:
            Enonce := "Welcher italienische Barockbildhauer schuf Die Verzueckung der heiligen Theresa?"
            Reponses := array{"Donatello", "Canova", "Bernini", "Michelangelo"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Maler malte Nighthawks, eine Bar bei Nacht?"
            Reponses := array{"Jackson Pollock", "Norman Rockwell", "Roy Lichtenstein", "Edward Hopper"}
            BonneReponse := 3
        question:
            Enonce := "Welcher antike griechische Bildhauer soll die chryselephantine Zeusstatue von Olympia geschaffen haben?"
            Reponses := array{"Myron", "Polyklet", "Praxiteles", "Phidias"}
            BonneReponse := 3
        question:
            Enonce := "Welche Kunst- und Designschule wurde 1919 in Deutschland gegruendet?"
            Reponses := array{"die Secession", "der Werkbund", "der Jugendstil", "Das Bauhaus"}
            BonneReponse := 3
        question:
            Enonce := "Welche Kathedrale in Moskau ist fuer ihre bunten Zwiebeltuerme beruehmt?"
            Reponses := array{"Basilius-Kathedrale", "Mariae-Entschlafens-Kathedrale", "die Christ-Erloeser-Kathedrale", "Hagia Sophia"}
            BonneReponse := 0
        question:
            Enonce := "In welcher Stadt starb Vincent van Gogh 1890?"
            Reponses := array{"Auvers-sur-Oise", "Paris", "Arles", "Amsterdam"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Kuenstler verhuellte den Pont-Neuf in Paris und (posthum) den Triumphbogen?"
            Reponses := array{"Daniel Buren", "Christo", "Jeff Koons", "Banksy"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Maler schuf Das Fruehstueck im Gruenen?"
            Reponses := array{"Edouard Manet", "Claude Monet", "Renoir", "Cezanne"}
            BonneReponse := 0
        question:
            Enonce := "Fuer welche chinesische Dynastie ist das Blau-Weiss-Porzellan kennzeichnend?"
            Reponses := array{"Die Ming", "die Qin", "die Han", "die Tang"}
            BonneReponse := 0
        question:
            Enonce := "Welcher venezianische Renaissance-Maler ist als Tizian bekannt?"
            Reponses := array{"Tiziano Vecellio", "Bellini", "Veronese", "Tintoretto"}
            BonneReponse := 0
        question:
            Enonce := "Welcher franzoesisch-schweizerische Architekt entwickelte die Theorie der Unite d'Habitation (Cite Radieuse)?"
            Reponses := array{"Niemeyer", "Gaudi", "Le Corbusier", "Mies van der Rohe"}
            BonneReponse := 2
        question:
            Enonce := "Welcher niederlaendische Maler schuf Die Kartoffelesser?"
            Reponses := array{"Vincent van Gogh", "Vermeer", "Mondrian", "Rembrandt"}
            BonneReponse := 0
        question:
            Enonce := "Welche geometrische Bewegung aus den Niederlanden mit Primaerfarben wird von Mondrian angefuehrt?"
            Reponses := array{"De Stijl", "der Futurismus", "das Bauhaus", "der Suprematismus"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb den Roman Ulysses (1922)?"
            Reponses := array{"T.S. Eliot", "D.H. Lawrence", "Virginia Woolf", "James Joyce"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Die Goettliche Komoedie?"
            Reponses := array{"Vergil", "Petrarca", "Dante Alighieri", "Boccaccio"}
            BonneReponse := 2
        question:
            Enonce := "Welcher lateinische Dichter verfasste die Aeneis?"
            Reponses := array{"Homer", "Horaz", "Vergil", "Ovid"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb das Drama Faust?"
            Reponses := array{"Goethe", "Heine", "Thomas Mann", "Schiller"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Brueder Karamasow?"
            Reponses := array{"Turgenjew", "Tolstoi", "Fjodor Dostojewski", "Gogol"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb den Roman Lolita?"
            Reponses := array{"Vladimir Nabokov", "Boris Pasternak", "Solschenizyn", "Tschechow"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Pest?"
            Reponses := array{"Jean-Paul Sartre", "Andre Gide", "Albert Camus", "Romain Rolland"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Mrs Dalloway?"
            Reponses := array{"Emily Bronte", "George Eliot", "Virginia Woolf", "Jane Austen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher norwegische Dramatiker schrieb Nora oder Ein Puppenheim?"
            Reponses := array{"Brecht", "Strindberg", "Tschechow", "Henrik Ibsen"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der Meister und Margarita?"
            Reponses := array{"Michail Bulgakow", "Pasternak", "Gorki", "Dostojewski"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb das Theaterstueck Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Beaumarchais", "Victor Hugo", "Alfred de Musset"}
            BonneReponse := 0
        question:
            Enonce := "Welche afroamerikanische Schriftstellerin und Nobelpreistraegerin schrieb Menschenkind (Beloved)?"
            Reponses := array{"Zora Neale Hurston", "Maya Angelou", "Alice Walker", "Toni Morrison"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Bel-Ami?"
            Reponses := array{"Flaubert", "Balzac", "Emile Zola", "Guy de Maupassant"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Das Paradies der Damen?"
            Reponses := array{"Balzac", "Maupassant", "Emile Zola", "Stendhal"}
            BonneReponse := 2
        question:
            Enonce := "Welcher argentinische Autor schrieb die Sammlung Fiktionen (Ficciones)?"
            Reponses := array{"Vargas Llosa", "Garcia Marquez", "Jorge Luis Borges", "Cortazar"}
            BonneReponse := 2
        question:
            Enonce := "Welcher deutsche Schriftsteller schrieb Siddhartha und Der Steppenwolf?"
            Reponses := array{"Thomas Mann", "Goethe", "Hermann Hesse", "Guenter Grass"}
            BonneReponse := 2
        question:
            Enonce := "Welcher deutsche Philosoph schrieb Also sprach Zarathustra?"
            Reponses := array{"Schopenhauer", "Kant", "Friedrich Nietzsche", "Hegel"}
            BonneReponse := 2
        question:
            Enonce := "Welcher antike griechische Dramatiker schrieb Koenig Oedipus?"
            Reponses := array{"Aristophanes", "Euripides", "Sophokles", "Aischylos"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Schoene neue Welt?"
            Reponses := array{"George Orwell", "Ray Bradbury", "H.G. Wells", "Aldous Huxley"}
            BonneReponse := 3
        question:
            Enonce := "Welcher italienische Renaissance-Dichter schrieb den Canzoniere, Laura gewidmet?"
            Reponses := array{"Petrarca", "Ariost", "Boccaccio", "Dante"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb den Roman Im Westen nichts Neues?"
            Reponses := array{"Erich Maria Remarque", "Stefan Zweig", "Ernst Juenger", "Thomas Mann"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Autor schrieb Der Kirschgarten und zahlreiche Erzaehlungen?"
            Reponses := array{"Anton Tschechow", "Kafka", "Hasek", "Kundera"}
            BonneReponse := 0
        question:
            Enonce := "Welcher zeitgenoessische franzoesische Romancier schrieb Elementarteilchen?"
            Reponses := array{"Marc Levy", "Michel Houellebecq", "Patrick Modiano", "Amelie Nothomb"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Dichter schrieb die Sammlung Die Kontemplationen (Les Contemplations)?"
            Reponses := array{"Leconte de Lisle", "Victor Hugo", "Lamartine", "Vigny"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Autor schrieb Reise ans Ende der Nacht?"
            Reponses := array{"Louis-Ferdinand Celine", "Andre Malraux", "Marcel Proust", "Georges Bernanos"}
            BonneReponse := 0
        question:
            Enonce := "Welcher italienische Komponist schrieb die Oper La Traviata?"
            Reponses := array{"Rossini", "Giuseppe Verdi", "Puccini", "Donizetti"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Komponist schrieb Le Sacre du printemps, das 1913 einen Skandal ausloeste?"
            Reponses := array{"Debussy", "Igor Strawinsky", "Bartok", "Ravel"}
            BonneReponse := 1
        question:
            Enonce := "Wie nennt man ein Ensemble aus acht Musikern?"
            Reponses := array{"ein Nonett", "ein Quintett", "ein Sextett", "Ein Oktett"}
            BonneReponse := 3
        question:
            Enonce := "Welcher tschechische Komponist schrieb die Sinfonie aus der Neuen Welt?"
            Reponses := array{"Smetana", "Mahler", "Antonin Dvorak", "Janacek"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele schwarze Tasten hat eine Oktave auf dem Klavier?"
            Reponses := array{"8", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Welcher venezianische Barockkomponist wurde der rote Priester genannt?"
            Reponses := array{"Monteverdi", "Antonio Vivaldi", "Corelli", "Albinoni"}
            BonneReponse := 1
        question:
            Enonce := "Welches grosse Doppelrohrblattinstrument spielt im tiefen Register der Holzblaeser?"
            Reponses := array{"die Klarinette", "Das Fagott", "die Floete", "das Horn"}
            BonneReponse := 1
        question:
            Enonce := "Welcher franzoesische Komponist schrieb Clair de lune (Suite bergamasque)?"
            Reponses := array{"Claude Debussy", "Faure", "Satie", "Ravel"}
            BonneReponse := 0
        question:
            Enonce := "Welcher russische Komponist schrieb das Ballett Der Nussknacker?"
            Reponses := array{"Tschaikowski", "Prokofjew", "Strawinsky", "Rimski-Korsakow"}
            BonneReponse := 0
        question:
            Enonce := "Welcher oesterreichische Komponist, jung gestorben, schrieb das Lied Die Forelle?"
            Reponses := array{"Mozart", "Haydn", "Franz Schubert", "Bruckner"}
            BonneReponse := 2
        question:
            Enonce := "Welches leichte Buehnengenre mit gesprochenen Dialogen wird mit Offenbach verbunden?"
            Reponses := array{"das Oratorium", "Die Operette", "das Requiem", "die Kantate"}
            BonneReponse := 1
        question:
            Enonce := "Welcher ungarische Komponist schrieb die Ungarischen Rhapsodien?"
            Reponses := array{"Franz Liszt", "Bartok", "Kodaly", "Brahms"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Komponist schrieb die Oper Madama Butterfly?"
            Reponses := array{"Verdi", "Bizet", "Giacomo Puccini", "Wagner"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Jazztrompeter traegt den Spitznamen Satchmo?"
            Reponses := array{"Dizzy Gillespie", "Miles Davis", "Chet Baker", "Louis Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Welcher deutsche Komponist schrieb Der Walkuerenritt?"
            Reponses := array{"Beethoven", "Strauss", "Brahms", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Welcher franzoesische Komponist schrieb Der Karneval der Tiere?"
            Reponses := array{"Bizet", "Gounod", "Camille Saint-Saens", "Berlioz"}
            BonneReponse := 2
        question:
            Enonce := "Welcher musikalische Begriff bedeutet sehr laut?"
            Reponses := array{"crescendo", "Fortissimo", "mezzo forte", "pianissimo"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Trompeter praegte den modalen Jazz mit dem Album Kind of Blue?"
            Reponses := array{"Louis Armstrong", "Miles Davis", "John Coltrane", "Duke Ellington"}
            BonneReponse := 1
        question:
            Enonce := "Welcher russische Komponist schrieb Bilder einer Ausstellung?"
            Reponses := array{"Modest Mussorgski", "Borodin", "Glinka", "Tschaikowski"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Komponist schrieb das musikalische Maerchen Peter und der Wolf?"
            Reponses := array{"Strawinsky", "Sergei Prokofjew", "Schostakowitsch", "Rachmaninow"}
            BonneReponse := 1
        question:
            Enonce := "Welche Frauenstimme liegt im tiefen Register?"
            Reponses := array{"der Sopran", "die Koloratur", "Der Alt (Kontraalt)", "der hohe Mezzo"}
            BonneReponse := 2
        question:
            Enonce := "Welche britische Rockband hat Mick Jagger als Saenger?"
            Reponses := array{"The Who", "The Rolling Stones", "Led Zeppelin", "The Kinks"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Saiten hat eine Konzertharfe ungefaehr?"
            Reponses := array{"47", "12", "88", "24"}
            BonneReponse := 0
        question:
            Enonce := "Welcher deutsche Barockkomponist ist der Schoepfer des Oratoriums Der Messias?"
            Reponses := array{"Telemann", "Georg Friedrich Haendel", "Bach", "Pachelbel"}
            BonneReponse := 1
        question:
            Enonce := "Welcher deutsche Komponist komponierte die Tetralogie Der Ring des Nibelungen?"
            Reponses := array{"Bruckner", "Mahler", "Richard Strauss", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Welcher italienische Regisseur drehte La Dolce Vita?"
            Reponses := array{"Vittorio De Sica", "Federico Fellini", "Roberto Rossellini", "Luchino Visconti"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Film von Orson Welles aus dem Jahr 1941 gilt oft als einer der groessten der Geschichte?"
            Reponses := array{"Vom Winde verweht", "Citizen Kane", "Casablanca", "Die Spur des Falken"}
            BonneReponse := 1
        question:
            Enonce := "Welcher schwedische Filmemacher inszenierte Das siebente Siegel?"
            Reponses := array{"Bo Widerberg", "Ingmar Bergman", "Roy Andersson", "Lars von Trier"}
            BonneReponse := 1
        question:
            Enonce := "Welcher japanische Filmemacher inszenierte Die sieben Samurai?"
            Reponses := array{"Yasujiro Ozu", "Akira Kurosawa", "Hayao Miyazaki", "Takeshi Kitano"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Coppola-Film ueber den Vietnamkrieg enthaelt den Satz ueber den Geruch von Napalm?"
            Reponses := array{"Full Metal Jacket", "Apocalypse Now", "Die durch die Hoelle gehen", "Platoon"}
            BonneReponse := 1
        question:
            Enonce := "Welcher spanische Filmemacher inszenierte Ein andalusischer Hund gemeinsam mit Dali?"
            Reponses := array{"Victor Erice", "Carlos Saura", "Luis Bunuel", "Pedro Almodovar"}
            BonneReponse := 2
        question:
            Enonce := "Welche Schauspielerin haelt den Rekord fuer Schauspiel-Oscars (vier)?"
            Reponses := array{"Meryl Streep", "Bette Davis", "Ingrid Bergman", "Katharine Hepburn"}
            BonneReponse := 3
        question:
            Enonce := "Welcher deutsche expressionistische Stummfilm von 1920 zeigt einen Schlafwandler?"
            Reponses := array{"M - Eine Stadt sucht einen Moerder", "Nosferatu", "Das Cabinet des Dr. Caligari", "Metropolis"}
            BonneReponse := 2
        question:
            Enonce := "Welcher erste Animationsfilm der Disney-Studios kam 1937 in die Kinos?"
            Reponses := array{"Bambi", "Schneewittchen und die sieben Zwerge", "Fantasia", "Pinocchio"}
            BonneReponse := 1
        question:
            Enonce := "Welcher sowjetische Film von 1925 von Eisenstein zeigt die beruehmte Treppe von Odessa?"
            Reponses := array{"Panzerkreuzer Potemkin", "Streik", "Oktober", "Alexander Newski"}
            BonneReponse := 0
        question:
            Enonce := "Welche schwedische Schauspielerin spielt die weibliche Hauptrolle in Casablanca?"
            Reponses := array{"Greta Garbo", "Rita Hayworth", "Lauren Bacall", "Ingrid Bergman"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Filmemacher der Nouvelle Vague inszenierte Ausser Atem?"
            Reponses := array{"Eric Rohmer", "Claude Chabrol", "Francois Truffaut", "Jean-Luc Godard"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Oscars gewann der Film Titanic?"
            Reponses := array{"5", "14", "11", "7"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Schauspieler verkoerpert Don Vito Corleone in Der Pate?"
            Reponses := array{"Al Pacino", "Robert De Niro", "Marlon Brando", "James Caan"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Film von Ridley Scott (1979) zeigt eine feindliche Kreatur in einem Raumschiff?"
            Reponses := array{"Predator", "Blade Runner", "Alien", "Das Ding aus einer anderen Welt"}
            BonneReponse := 2
        question:
            Enonce := "Welcher amerikanische Schauspieler ist die Ikone der Italowestern von Sergio Leone?"
            Reponses := array{"Clint Eastwood", "Charles Bronson", "John Wayne", "Lee Van Cleef"}
            BonneReponse := 0
        question:
            Enonce := "Welche Regisseurin gewann den Oscar fuer die beste Regie fuer Toedliches Kommando?"
            Reponses := array{"Kathryn Bigelow", "Greta Gerwig", "Sofia Coppola", "Jane Campion"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Animationsfilm von Miyazaki zeigt ein Schloss, das sich bewegt?"
            Reponses := array{"Das wandelnde Schloss", "Chihiros Reise ins Zauberland", "Das Schloss im Himmel", "Prinzessin Mononoke"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Film von Jean Renoir (1937) handelt von der Gefangenschaft waehrend des Ersten Weltkriegs?"
            Reponses := array{"Die grosse Illusion", "Bestie Mensch", "Die Spielregel", "French Cancan"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Schauspieler gewann den Oscar als bester Hauptdarsteller fuer Joker (2019)?"
            Reponses := array{"Heath Ledger", "Joaquin Phoenix", "Jared Leto", "Christian Bale"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Film von 1994 spielt im Gefaengnis von Shawshank?"
            Reponses := array{"The Green Mile", "Die Verurteilten", "Der Gefangene von Alcatraz", "12 Uhr nachts - Midnight Express"}
            BonneReponse := 1
        question:
            Enonce := "Welcher daenische Filmemacher war Mitbegruender der Dogma-95-Bewegung?"
            Reponses := array{"Carl Dreyer", "Nicolas Winding Refn", "Thomas Vinterberg", "Lars von Trier"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Film von Stanley Kubrick zeigt den Computer HAL 9000?"
            Reponses := array{"Barry Lyndon", "2001: Odyssee im Weltraum", "Shining", "Dr. Seltsam"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Regisseur drehte GoodFellas und Taxi Driver?"
            Reponses := array{"Sidney Lumet", "Francis Ford Coppola", "Martin Scorsese", "Brian De Palma"}
            BonneReponse := 2
        question:
            Enonce := "Welcher franzoesische Film von 1962 unter der Regie von Chris Marker besteht aus Standfotos?"
            Reponses := array{"Cleo - Mittwoch zwischen 5 und 7", "Sie kuessten und sie schlugen ihn", "Am Rande des Rollfelds", "Hiroshima, mon amour"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Spieler einer Wasserball-Mannschaft sind im Wasser?"
            Reponses := array{"5", "11", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land gewann die allererste Fussball-Weltmeisterschaft im Jahr 1930?"
            Reponses := array{"Brasilien", "Italien", "Uruguay", "Argentinien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Jahr fanden die ersten Olympischen Spiele der Neuzeit statt?"
            Reponses := array{"1900", "1888", "1896", "1924"}
            BonneReponse := 2
        question:
            Enonce := "Welcher deutsche Fahrer hielt lange den Rekord von 7 F1-Weltmeistertiteln?"
            Reponses := array{"Alain Prost", "Niki Lauda", "Ayrton Senna", "Michael Schumacher"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Felder hat ein Schachbrett?"
            Reponses := array{"100", "64", "49", "81"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Radfahrer 'gewann' 7 Tours de France, bevor sie ihm wegen Dopings aberkannt wurden?"
            Reponses := array{"Eddy Merckx", "Miguel Indurain", "Bernard Hinault", "Lance Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "In welcher Sportart wird der 'Stanley Cup' verliehen?"
            Reponses := array{"Baseball", "American Football", "Eishockey", "Basketball"}
            BonneReponse := 2
        question:
            Enonce := "Aus wie vielen Spielern besteht eine Handballmannschaft auf dem Feld?"
            Reponses := array{"6", "7", "5", "11"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fussballer erzielte 1986 das sogenannte Tor mit der 'Hand Gottes'?"
            Reponses := array{"Zidane", "Diego Maradona", "Pele", "Romario"}
            BonneReponse := 1
        question:
            Enonce := "Welche genaue Distanz umfasst ein offizieller Marathon?"
            Reponses := array{"26 km", "50 km", "42,195 km", "40 km"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Boxer beendete seine Karriere mit einer Bilanz von 50 Siegen und 0 Niederlagen?"
            Reponses := array{"Floyd Mayweather", "Rocky Marciano", "Mike Tyson", "Muhammad Ali"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Basketballspieler erzielte 100 Punkte in einem einzigen NBA-Spiel?"
            Reponses := array{"LeBron James", "Kobe Bryant", "Michael Jordan", "Wilt Chamberlain"}
            BonneReponse := 3
        question:
            Enonce := "Welche Schlaegersportart wird in einem geschlossenen, von Waenden umgebenen Court gespielt?"
            Reponses := array{"Badminton", "Squash", "Tennis", "Padel"}
            BonneReponse := 1
        question:
            Enonce := "Wie lange dauert ein Viertel in der NBA?"
            Reponses := array{"15 Minuten", "10 Minuten", "20 Minuten", "12 Minuten"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Spieler erreichte den letzten 'Grand Slam' der Herren in einem Kalenderjahr im Tennis (1969)?"
            Reponses := array{"Bjoern Borg", "Jimmy Connors", "John McEnroe", "Rod Laver"}
            BonneReponse := 3
        question:
            Enonce := "Welcher franzoesische Judoka ist mehrfacher Welt- und Olympiasieger im Schwergewicht?"
            Reponses := array{"Lucie Decosse", "Teddy Riner", "David Douillet", "Djamel Bouras"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Gesamtzahl an olympischen Medaillen der Geschichte gewonnen?"
            Reponses := array{"die UdSSR", "Die Vereinigten Staaten", "China", "Deutschland"}
            BonneReponse := 1
        question:
            Enonce := "Welche Einzelauszeichnung wuerdigt den besten Fussballer des Jahres?"
            Reponses := array{"der Silberne Schuh", "der Europapokal", "Der Ballon d'Or", "die Kopa-Trophaee"}
            BonneReponse := 2
        question:
            Enonce := "Welches legendaere italienische Team ist das erfolgreichste der F1-Geschichte?"
            Reponses := array{"Ferrari", "Lotus", "McLaren", "Williams"}
            BonneReponse := 0
        question:
            Enonce := "Welche olympische Sportart wird mit Florett, Degen oder Saebel ausgeuebt?"
            Reponses := array{"Das Fechten", "das Sportschiessen", "das Bogenschiessen", "der Fuenfkampf"}
            BonneReponse := 0
        question:
            Enonce := "Aus wie vielen Disziplinen besteht der Zehnkampf in der Leichtathletik?"
            Reponses := array{"7", "5", "10", "12"}
            BonneReponse := 2
        question:
            Enonce := "Welche franzoesische Stadt richtet das 24-Stunden-Autorennen aus?"
            Reponses := array{"Magny-Cours", "Reims", "Monaco", "Le Mans"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Spieler einer Eishockeymannschaft sind auf dem Eis (Torwart eingeschlossen)?"
            Reponses := array{"5", "6", "11", "7"}
            BonneReponse := 1
        question:
            Enonce := "Welcher jamaikanische Athlet haelt den Weltrekord ueber 100 m (9,58 s)?"
            Reponses := array{"Usain Bolt", "Carl Lewis", "Yohan Blake", "Tyson Gay"}
            BonneReponse := 0
        question:
            Enonce := "In welcher antiken griechischen Stadt fanden die urspruenglichen Olympischen Spiele statt?"
            Reponses := array{"Sparta", "Delphi", "Athen", "Olympia"}
            BonneReponse := 3
        question:
            Enonce := "Welcher urzeitliche griechische Gott verkoerpert den Himmel, Gemahl der Gaia?"
            Reponses := array{"Chaos", "Kronos", "Uranos", "Erebos"}
            BonneReponse := 2
        question:
            Enonce := "Welche roemische Goettin wacht ueber den Herd (Entsprechung der Hestia)?"
            Reponses := array{"Vesta", "Minerva", "Juno", "Ceres"}
            BonneReponse := 0
        question:
            Enonce := "Welcher nordische Held toetete den Drachen Fafnir?"
            Reponses := array{"Tyr", "Sigurd", "Beowulf", "Thor"}
            BonneReponse := 1
        question:
            Enonce := "Welcher aegyptische Gott wurde von seinem Bruder Seth ermordet?"
            Reponses := array{"Thot", "Anubis", "Osiris", "Horus"}
            BonneReponse := 2
        question:
            Enonce := "Welche Gestalt ist dazu verdammt, ewig einen Felsen hinaufzurollen, der wieder herabrollt?"
            Reponses := array{"Tantalos", "Prometheus", "Sisyphos", "Atlas"}
            BonneReponse := 2
        question:
            Enonce := "Welcher hundertaeugige Riese bewacht Io in der griechischen Mythologie?"
            Reponses := array{"Typhon", "der Zyklop", "Argos", "Geryon"}
            BonneReponse := 2
        question:
            Enonce := "Welche griechische Goettin verkoerpert den Sieg und inspiriert eine Sportmarke?"
            Reponses := array{"Iris", "Hera", "Nike", "Tyche"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Koenig von Kreta liess das Labyrinth von Daedalus errichten?"
            Reponses := array{"Agamemnon", "Minos", "Aegeus", "Priamos"}
            BonneReponse := 1
        question:
            Enonce := "Welche Zauberin verwandelte die Gefaehrten des Odysseus in Schweine?"
            Reponses := array{"Medea", "Kirke", "Kalypso", "Penelope"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Gott der Zerstoerung gehoert zur hinduistischen Trimurti?"
            Reponses := array{"Shiva", "Ganesha", "Indra", "Krishna"}
            BonneReponse := 0
        question:
            Enonce := "Wie heisst der Weltenbaum, der die neun nordischen Welten verbindet?"
            Reponses := array{"der Bifroest", "Walhall", "Ragnaroek", "Yggdrasil"}
            BonneReponse := 3
        question:
            Enonce := "Welche griechische Goettin der Ernte ist die Mutter der Persephone?"
            Reponses := array{"Hera", "Hestia", "Demeter", "Artemis"}
            BonneReponse := 2
        question:
            Enonce := "Wer half Theseus mit einem Faden aus dem Labyrinth?"
            Reponses := array{"Medea", "Ariadne", "Andromeda", "Antigone"}
            BonneReponse := 1
        question:
            Enonce := "Welche Gestalt flog mit Fluegeln aus Wachs zu nah an die Sonne?"
            Reponses := array{"Daedalus", "Bellerophon", "Phaethon", "Ikarus"}
            BonneReponse := 3
        question:
            Enonce := "Welche feuerspeiende Kreatur hat einen Loewenkopf, einen Ziegenleib und einen Schlangenschwanz?"
            Reponses := array{"der Basilisk", "Die Chimaera", "die Hydra", "der Greif"}
            BonneReponse := 1
        question:
            Enonce := "Welcher nordische Gott bewacht die Regenbogenbruecke Bifroest?"
            Reponses := array{"Baldur", "Heimdall", "Freyr", "Tyr"}
            BonneReponse := 1
        question:
            Enonce := "Welche aztekische Gottheit wird als gefiederte Schlange dargestellt?"
            Reponses := array{"Quetzalcoatl", "Huitzilopochtli", "Tezcatlipoca", "Tlaloc"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Koenig ist in der Unterwelt zu ewigem Hunger und Durst verdammt (Fruechte und Wasser entweichen ihm)?"
            Reponses := array{"Sisyphos", "Ixion", "Tantalos", "Midas"}
            BonneReponse := 2
        question:
            Enonce := "Welcher zweigesichtige roemische Gott herrscht ueber Anfaenge und Tueren?"
            Reponses := array{"Vulkan", "Saturn", "Mars", "Janus"}
            BonneReponse := 3
        question:
            Enonce := "Welche Riesenschlange umschlingt die Welt in der nordischen Mythologie?"
            Reponses := array{"Joermungand", "Fenrir", "Nidhoeggr", "der Kraken"}
            BonneReponse := 0
        question:
            Enonce := "Welcher listige griechische Held ersann die List des Trojanischen Pferdes?"
            Reponses := array{"Menelaos", "Odysseus", "Ajax", "Achilles"}
            BonneReponse := 1
        question:
            Enonce := "Welche biblische Gestalt ueberlebte die Sintflut an Bord einer Arche?"
            Reponses := array{"Moses", "Jona", "Abraham", "Noah"}
            BonneReponse := 3
        question:
            Enonce := "Welcher griechische Halbgott stieg nach Vollendung seiner beruehmten Arbeiten zum Olymp auf?"
            Reponses := array{"Herakles", "Bellerophon", "Theseus", "Perseus"}
            BonneReponse := 0
        question:
            Enonce := "Welcher griechische Gott des Weines und des Rausches ist auch der Gott des Theaters?"
            Reponses := array{"Dionysos", "Pan", "Hermes", "Apollon"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Fluss der griechischen Unterwelt schenkt den Seelen, die daraus trinken, das Vergessen?"
            Reponses := array{"Die Lethe", "der Styx", "der Acheron", "der Kokytos"}
            BonneReponse := 0

MakeCultureQuestionsIT() : []question =
    array:
        question:
            Enonce := "In quale anno inizio la Prima guerra mondiale?"
            Reponses := array{"1914", "1939", "1905", "1918"}
            BonneReponse := 0
        question:
            Enonce := "Quale evento segna il 14 luglio 1789?"
            Reponses := array{"L'incoronazione di Napoleone", "La presa della Bastiglia", "La battaglia di Waterloo", "La festa nazionale americana"}
            BonneReponse := 1
        question:
            Enonce := "Chi fu il primo imperatore dei francesi?"
            Reponses := array{"Carlo Magno", "Giulio Cesare", "Luigi XIV", "Napoleone Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno cadde il Muro di Berlino?"
            Reponses := array{"1989", "1975", "1961", "1991"}
            BonneReponse := 0
        question:
            Enonce := "Chi raggiunse l'America nel 1492?"
            Reponses := array{"Magellano", "Vasco da Gama", "Cristoforo Colombo", "Marco Polo"}
            BonneReponse := 2
        question:
            Enonce := "In quale anno fini la Seconda guerra mondiale in Europa?"
            Reponses := array{"1950", "1939", "1918", "1945"}
            BonneReponse := 3
        question:
            Enonce := "Quale popolo costrui le piramidi di Giza?"
            Reponses := array{"I Romani", "Gli Egizi", "Gli Aztechi", "I Greci"}
            BonneReponse := 1
        question:
            Enonce := "Chi guidava la Germania nazista?"
            Reponses := array{"Adolf Hitler", "Winston Churchill", "Benito Mussolini", "Iosif Stalin"}
            BonneReponse := 0
        question:
            Enonce := "Quale regina regno sul Regno Unito dal 1952 al 2022?"
            Reponses := array{"Vittoria", "Elisabetta II", "Elisabetta I", "Maria Stuarda"}
            BonneReponse := 1
        question:
            Enonce := "La guerra dei Cent'anni oppose la Francia a quale paese?"
            Reponses := array{"Germania", "Spagna", "Inghilterra", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Quale generale romano conquisto la Gallia?"
            Reponses := array{"Augusto", "Giulio Cesare", "Nerone", "Annibale"}
            BonneReponse := 1
        question:
            Enonce := "In quale anno avvennero gli attentati dell'11 settembre?"
            Reponses := array{"2005", "1999", "2001", "1998"}
            BonneReponse := 2
        question:
            Enonce := "Quale presidente americano aboli la schiavitu durante la guerra di secessione?"
            Reponses := array{"Abraham Lincoln", "Franklin Roosevelt", "George Washington", "John Kennedy"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta romana fu sepolta dal Vesuvio nel 79 d.C.?"
            Reponses := array{"Cartagine", "Roma", "Pompei", "Atene"}
            BonneReponse := 2
        question:
            Enonce := "Quale re di Francia e soprannominato il Re Sole?"
            Reponses := array{"Francesco I", "Enrico IV", "Luigi XIV", "Luigi XVI"}
            BonneReponse := 2
        question:
            Enonce := "Chi guido la lotta nonviolenta per l'indipendenza dell'India?"
            Reponses := array{"Mao Zedong", "Churchill", "Nelson Mandela", "Gandhi"}
            BonneReponse := 3
        question:
            Enonce := "Quale gigantesca opera difensiva protegge il nord della Cina?"
            Reponses := array{"Le mura di Babilonia", "La Grande Muraglia", "La linea Maginot", "Il vallo di Adriano"}
            BonneReponse := 1
        question:
            Enonce := "Chi fu il primo presidente degli Stati Uniti?"
            Reponses := array{"Benjamin Franklin", "George Washington", "Thomas Jefferson", "Abraham Lincoln"}
            BonneReponse := 1
        question:
            Enonce := "Quale citta giapponese subi la prima bomba atomica nel 1945?"
            Reponses := array{"Kyoto", "Tokyo", "Hiroshima", "Nagasaki"}
            BonneReponse := 2
        question:
            Enonce := "Quale battaglia del 1815 segno la sconfitta finale di Napoleone?"
            Reponses := array{"Verdun", "Austerlitz", "Waterloo", "Marignano"}
            BonneReponse := 2
        question:
            Enonce := "Quale presidente americano fu assassinato a Dallas nel 1963?"
            Reponses := array{"Ronald Reagan", "Abraham Lincoln", "John F. Kennedy", "Richard Nixon"}
            BonneReponse := 2
        question:
            Enonce := "Quale navigatore guido la prima spedizione a fare il giro del mondo?"
            Reponses := array{"Magellano", "Cristoforo Colombo", "James Cook", "Vasco da Gama"}
            BonneReponse := 0
        question:
            Enonce := "In quale anno la Francia aboli la pena di morte?"
            Reponses := array{"1945", "1981", "1968", "1995"}
            BonneReponse := 1
        question:
            Enonce := "Quale imperatore francese vendette la Louisiana agli Stati Uniti?"
            Reponses := array{"Napoleone III", "Luigi XVI", "Carlo X", "Napoleone Bonaparte"}
            BonneReponse := 3
        question:
            Enonce := "Quale leader fu soprannominata la Lady di ferro nel Regno Unito?"
            Reponses := array{"Angela Merkel", "Theresa May", "Elisabetta II", "Margaret Thatcher"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la capitale dell'Italia?"
            Reponses := array{"Milano", "Roma", "Napoli", "Venezia"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume attraversa Parigi?"
            Reponses := array{"La Loira", "Il Rodano", "La Garonna", "La Senna"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la montagna piu alta del mondo?"
            Reponses := array{"Il Kilimangiaro", "Il K2", "Il Monte Bianco", "L'Everest"}
            BonneReponse := 3
        question:
            Enonce := "Quale oceano bagna la costa ovest della Francia?"
            Reponses := array{"L'Artico", "L'oceano Indiano", "Il Pacifico", "L'Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il piu grande deserto caldo del mondo?"
            Reponses := array{"Il Sahara", "Il Gobi", "Il deserto di Atacama", "Il Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la capitale del Giappone?"
            Reponses := array{"Pechino", "Seul", "Tokyo", "Osaka"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la forma di uno stivale?"
            Reponses := array{"La Spagna", "La Grecia", "L'Italia", "Il Portogallo"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il paese piu grande del mondo per superficie?"
            Reponses := array{"Gli Stati Uniti", "Il Canada", "La Cina", "La Russia"}
            BonneReponse := 3
        question:
            Enonce := "In quale continente si trova l'Egitto?"
            Reponses := array{"L'Europa", "L'Asia", "L'Africa", "L'Oceania"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale della Spagna?"
            Reponses := array{"Valencia", "Madrid", "Barcellona", "Siviglia"}
            BonneReponse := 1
        question:
            Enonce := "Quale mare bagna la Costa Azzurra?"
            Reponses := array{"Il Mediterraneo", "Il mare del Nord", "Il mar Baltico", "La Manica"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'oceano piu grande del mondo?"
            Reponses := array{"L'oceano Indiano", "L'Atlantico", "Il Pacifico", "L'oceano Artico"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale degli Stati Uniti?"
            Reponses := array{"Los Angeles", "Chicago", "Washington", "New York"}
            BonneReponse := 2
        question:
            Enonce := "Quale catena montuosa separa la Francia dalla Spagna?"
            Reponses := array{"I Vosgi", "I Pirenei", "Le Alpi", "Il Giura"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale della Germania?"
            Reponses := array{"Monaco", "Berlino", "Francoforte", "Amburgo"}
            BonneReponse := 1
        question:
            Enonce := "Quale braccio di mare separa la Francia dal Regno Unito?"
            Reponses := array{"Il mar Egeo", "La Manica", "Il mar Nero", "Il golfo di Biscaglia"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale del Regno Unito?"
            Reponses := array{"Londra", "Manchester", "Liverpool", "Edimburgo"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume attraversa l'Egitto?"
            Reponses := array{"Il Nilo", "Il Congo", "Il Tigri", "Il Rio delle Amazzoni"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la capitale del Belgio?"
            Reponses := array{"Liegi", "Bruxelles", "Bruges", "Anversa"}
            BonneReponse := 1
        question:
            Enonce := "In quale continente vivono i canguri selvatici?"
            Reponses := array{"L'Africa", "L'Asia", "L'Australia", "L'America del Sud"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale del Portogallo?"
            Reponses := array{"Madrid", "Porto", "Lisbona", "Siviglia"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la montagna piu alta della Francia e delle Alpi?"
            Reponses := array{"Il Monte Bianco", "Il Pic du Midi", "Il Mont Ventoux", "Il Puy de Dome"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e soprannominato il paese del Sol Levante?"
            Reponses := array{"La Thailandia", "La Cina", "Il Giappone", "La Corea del Sud"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale della Russia?"
            Reponses := array{"Varsavia", "Mosca", "Kiev", "San Pietroburgo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha piu abitanti al mondo (dal 2023)?"
            Reponses := array{"La Cina", "L'Indonesia", "L'India", "Gli Stati Uniti"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la formula chimica dell'acqua?"
            Reponses := array{"O2", "H2O", "CO2", "H2O2"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il simbolo chimico dell'oro?"
            Reponses := array{"Or", "Go", "Ag", "Au"}
            BonneReponse := 3
        question:
            Enonce := "Quale gas e indispensabile per la respirazione umana?"
            Reponses := array{"L'anidride carbonica", "L'elio", "L'ossigeno", "L'azoto"}
            BonneReponse := 2
        question:
            Enonce := "A quale temperatura bolle l'acqua a livello del mare?"
            Reponses := array{"90 C", "100 C", "50 C", "0 C"}
            BonneReponse := 1
        question:
            Enonce := "A quale temperatura ghiaccia l'acqua?"
            Reponses := array{"-10 C", "4 C", "0 C", "32 C"}
            BonneReponse := 2
        question:
            Enonce := "Quale metallo e liquido a temperatura ambiente?"
            Reponses := array{"Il mercurio", "Il rame", "Il ferro", "Il piombo"}
            BonneReponse := 0
        question:
            Enonce := "Quale forza ci attira verso il suolo?"
            Reponses := array{"La gravita", "L'elettricita", "Il magnetismo", "L'attrito"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il simbolo chimico del ferro?"
            Reponses := array{"F", "Fr", "Ir", "Fe"}
            BonneReponse := 3
        question:
            Enonce := "Quale gas assorbono le piante per la fotosintesi?"
            Reponses := array{"L'idrogeno", "L'ossigeno", "L'azoto", "L'anidride carbonica"}
            BonneReponse := 3
        question:
            Enonce := "Quale scienziato formulo la famosa equazione E = mc^2?"
            Reponses := array{"Nikola Tesla", "Isaac Newton", "Albert Einstein", "Galileo"}
            BonneReponse := 2
        question:
            Enonce := "Quale strumento misura la temperatura?"
            Reponses := array{"La bussola", "Il barometro", "Il cronometro", "Il termometro"}
            BonneReponse := 3
        question:
            Enonce := "Quale gas, piu leggero dell'aria, fa volare i palloncini?"
            Reponses := array{"L'anidride carbonica", "L'ossigeno", "L'elio", "Il metano"}
            BonneReponse := 2
        question:
            Enonce := "Quale scienziato enuncio la legge della gravitazione universale?"
            Reponses := array{"Isaac Newton", "Einstein", "Pasteur", "Copernico"}
            BonneReponse := 0
        question:
            Enonce := "Quale gas e il piu abbondante nell'atmosfera terrestre?"
            Reponses := array{"L'argon", "L'azoto", "L'ossigeno", "L'anidride carbonica"}
            BonneReponse := 1
        question:
            Enonce := "In quale stato si trova l'acqua quando e ghiacciata?"
            Reponses := array{"Solido", "Plasma", "Liquido", "Gassoso"}
            BonneReponse := 0
        question:
            Enonce := "Quale particella dell'atomo ha carica negativa?"
            Reponses := array{"L'elettrone", "Il protone", "Il neutrone", "Il fotone"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento permette di osservare oggetti molto piccoli?"
            Reponses := array{"Il microscopio", "Il telescopio", "Il binocolo", "La lente d'ingrandimento gigante"}
            BonneReponse := 0
        question:
            Enonce := "Quale metallo leggero viene usato per lattine e aerei?"
            Reponses := array{"L'alluminio", "Il mercurio", "L'oro", "Il piombo"}
            BonneReponse := 0
        question:
            Enonce := "Quanti colori si distinguono classicamente in un arcobaleno?"
            Reponses := array{"5", "10", "3", "7"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il simbolo chimico del sodio?"
            Reponses := array{"So", "Sd", "S", "Na"}
            BonneReponse := 3
        question:
            Enonce := "Quale astro e responsabile delle maree sulla Terra?"
            Reponses := array{"Venere", "La Luna", "Marte", "Il vento"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'unita di misura dell'intensita della corrente elettrica?"
            Reponses := array{"Il joule", "Il watt", "L'ampere", "Il metro"}
            BonneReponse := 2
        question:
            Enonce := "Che cosa si misura in gradi Celsius?"
            Reponses := array{"Il tempo", "La distanza", "La temperatura", "Il peso"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'unita di base della materia?"
            Reponses := array{"Il granello", "La molecola", "La cellula", "L'atomo"}
            BonneReponse := 3
        question:
            Enonce := "Quale gas si produce bruciando il carbonio?"
            Reponses := array{"L'ossigeno", "L'elio", "L'idrogeno", "L'anidride carbonica"}
            BonneReponse := 3
        question:
            Enonce := "Quanti polmoni ha l'essere umano?"
            Reponses := array{"3", "1", "4", "2"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo pompa il sangue nel corpo?"
            Reponses := array{"I polmoni", "Lo stomaco", "Il cuore", "Il fegato"}
            BonneReponse := 2
        question:
            Enonce := "Quanti denti ha un adulto (compresi i denti del giudizio)?"
            Reponses := array{"20", "28", "36", "32"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo digerisce principalmente il cibo?"
            Reponses := array{"Il polmone", "Lo stomaco", "Il cervello", "Il cuore"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo e il centro del sistema nervoso?"
            Reponses := array{"Il rene", "Il fegato", "Il cuore", "Il cervello"}
            BonneReponse := 3
        question:
            Enonce := "Come si chiama l'osso della coscia?"
            Reponses := array{"L'omero", "Il femore", "La tibia", "La clavicola"}
            BonneReponse := 1
        question:
            Enonce := "Quale gruppo di animali allatta i propri piccoli?"
            Reponses := array{"Gli uccelli", "I pesci", "I mammiferi", "I rettili"}
            BonneReponse := 2
        question:
            Enonce := "Quante zampe ha un ragno?"
            Reponses := array{"4", "8", "10", "6"}
            BonneReponse := 1
        question:
            Enonce := "Quante zampe ha un insetto?"
            Reponses := array{"6", "2", "4", "8"}
            BonneReponse := 0
        question:
            Enonce := "Che cosa producono le api?"
            Reponses := array{"Il latte", "La seta", "Il miele", "Il cerume"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'animale piu grande del mondo?"
            Reponses := array{"L'elefante", "Lo squalo bianco", "La balenottera azzurra", "Il diplodoco"}
            BonneReponse := 2
        question:
            Enonce := "Quante cavita ha il cuore umano?"
            Reponses := array{"2", "4", "3", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quale vitamina viene prodotta grazie al sole?"
            Reponses := array{"La vitamina A", "La vitamina B12", "La vitamina C", "La vitamina D"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo filtra il sangue e produce l'urina?"
            Reponses := array{"Il fegato", "I reni", "Il cuore", "I polmoni"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'organo piu grande del corpo umano?"
            Reponses := array{"I polmoni", "L'intestino", "Il fegato", "La pelle"}
            BonneReponse := 3
        question:
            Enonce := "Quale cellula del sangue trasporta l'ossigeno?"
            Reponses := array{"Il globulo rosso", "Il globulo bianco", "Il neurone", "La piastrina"}
            BonneReponse := 0
        question:
            Enonce := "Quale rettile puo cambiare colore?"
            Reponses := array{"Il camaleonte", "La tartaruga", "Il coccodrillo", "Il cobra"}
            BonneReponse := 0
        question:
            Enonce := "Quanti sensi ha classicamente l'essere umano?"
            Reponses := array{"6", "7", "5", "3"}
            BonneReponse := 2
        question:
            Enonce := "Quale gas espiriamo principalmente?"
            Reponses := array{"L'idrogeno", "L'ossigeno", "L'elio", "L'anidride carbonica"}
            BonneReponse := 3
        question:
            Enonce := "Quale organo permette di respirare?"
            Reponses := array{"I polmoni", "I reni", "Il fegato", "Il cuore"}
            BonneReponse := 0
        question:
            Enonce := "Quante dita ha una mano umana?"
            Reponses := array{"10", "6", "5", "4"}
            BonneReponse := 2
        question:
            Enonce := "Quale liquido rosso scorre nei nostri vasi?"
            Reponses := array{"La bile", "Il sangue", "La linfa", "La saliva"}
            BonneReponse := 1
        question:
            Enonce := "Quale senso e associato agli occhi?"
            Reponses := array{"Il gusto", "L'udito", "La vista", "L'olfatto"}
            BonneReponse := 2
        question:
            Enonce := "Di cosa si nutre un animale erbivoro?"
            Reponses := array{"Solo di insetti", "Di pesci", "Di piante", "Di carne"}
            BonneReponse := 2
        question:
            Enonce := "Quale organo umano puo rigenerarsi in gran parte?"
            Reponses := array{"Il cuore", "Il cervello", "Il fegato", "L'occhio"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'animale terrestre piu veloce?"
            Reponses := array{"Il ghepardo", "Il cavallo", "Il levriero", "Il leone"}
            BonneReponse := 0
        question:
            Enonce := "Quale animale e soprannominato il re degli animali?"
            Reponses := array{"L'elefante", "L'aquila", "Il leone", "La tigre"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande uccello africano non vola ma corre molto veloce?"
            Reponses := array{"Lo struzzo", "Il fenicottero", "Il tucano", "L'aquila"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'animale terrestre piu grande?"
            Reponses := array{"L'elefante", "La giraffa", "L'ippopotamo", "Il rinoceronte"}
            BonneReponse := 0
        question:
            Enonce := "Quale albero produce le ghiande?"
            Reponses := array{"Il pino", "L'acero", "La quercia", "La betulla"}
            BonneReponse := 2
        question:
            Enonce := "Quale animale ha una proboscide?"
            Reponses := array{"Il rinoceronte", "Il tapiro", "L'elefante", "Il bufalo"}
            BonneReponse := 2
        question:
            Enonce := "Quale uccello simboleggia la pace?"
            Reponses := array{"Il corvo", "Il passero", "La colomba", "Il falco"}
            BonneReponse := 2
        question:
            Enonce := "Quante gobbe ha un dromedario?"
            Reponses := array{"0", "2", "3", "1"}
            BonneReponse := 3
        question:
            Enonce := "Quale animale va in letargo durante l'inverno ed e noto per questo?"
            Reponses := array{"Il lupo", "Il cervo", "L'orso", "La volpe"}
            BonneReponse := 2
        question:
            Enonce := "Quale fiore gira la testa verso il sole?"
            Reponses := array{"Il girasole", "La rosa", "Il papavero", "Il tulipano"}
            BonneReponse := 0
        question:
            Enonce := "Quale uccello bianco e nero vive in Antartide e non vola?"
            Reponses := array{"Il pinguino", "Il tucano", "Il gufo", "Il gabbiano"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu grande foresta pluviale tropicale del mondo?"
            Reponses := array{"La Foresta Nera", "Il bacino del Congo", "La foresta della Siberia", "L'Amazzonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale rettile ha un guscio?"
            Reponses := array{"Il coccodrillo", "Il serpente", "La tartaruga", "La lucertola"}
            BonneReponse := 2
        question:
            Enonce := "Quale mammifero e in grado di volare?"
            Reponses := array{"Il gufo", "Lo scoiattolo", "Il pipistrello", "Il colibri"}
            BonneReponse := 2
        question:
            Enonce := "Quale animale tesse una tela per catturare le sue prede?"
            Reponses := array{"Il ragno", "L'ape", "La formica", "La vespa"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande scimmia condivide piu geni con l'essere umano?"
            Reponses := array{"L'orango", "Lo scimpanze", "Il babbuino", "Il gorilla"}
            BonneReponse := 1
        question:
            Enonce := "Quale uccello notturno bubola?"
            Reponses := array{"Il pettirosso", "L'anatra", "Il piccione", "La civetta"}
            BonneReponse := 3
        question:
            Enonce := "La giraffa e un animale..."
            Reponses := array{"insettivoro", "erbivoro", "carnivoro", "onnivoro"}
            BonneReponse := 1
        question:
            Enonce := "Quale insetto produce la seta?"
            Reponses := array{"Il baco da seta", "La formica", "La farfalla", "L'ape"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il felino piu grande del mondo?"
            Reponses := array{"Il leone", "Il giaguaro", "La tigre", "Il leopardo"}
            BonneReponse := 2
        question:
            Enonce := "Quale mammifero marino molto intelligente salta fuori dall'acqua?"
            Reponses := array{"Il delfino", "Lo squalo", "La foca", "La medusa"}
            BonneReponse := 0
        question:
            Enonce := "Quale albero mantiene i suoi aghi verdi tutto l'anno?"
            Reponses := array{"L'abete", "La quercia", "Il platano", "Il salice"}
            BonneReponse := 0
        question:
            Enonce := "Quale animale e considerato il migliore amico dell'uomo?"
            Reponses := array{"Il gatto", "Il cavallo", "Il cane", "Il pappagallo"}
            BonneReponse := 2
        question:
            Enonce := "Quale anfibio vive vicino agli stagni e gracida?"
            Reponses := array{"La lumaca", "La libellula", "La rana", "La lucertola"}
            BonneReponse := 2
        question:
            Enonce := "Di che colore diventa spesso una foglia secca in autunno?"
            Reponses := array{"Marrone/rossiccia", "Viola", "Blu", "Nera"}
            BonneReponse := 0
        question:
            Enonce := "Quale astro si trova al centro del nostro sistema solare?"
            Reponses := array{"Giove", "La Terra", "Il Sole", "La Luna"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianeta e soprannominato il pianeta rosso?"
            Reponses := array{"Saturno", "Mercurio", "Marte", "Venere"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il satellite naturale della Terra?"
            Reponses := array{"Il Sole", "Venere", "La Luna", "Marte"}
            BonneReponse := 2
        question:
            Enonce := "Chi fu il primo uomo a camminare sulla Luna?"
            Reponses := array{"Buzz Aldrin", "Neil Armstrong", "Yuri Gagarin", "Thomas Pesquet"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il pianeta piu grande del sistema solare?"
            Reponses := array{"Giove", "Nettuno", "La Terra", "Saturno"}
            BonneReponse := 0
        question:
            Enonce := "Quanti pianeti ha il sistema solare?"
            Reponses := array{"8", "7", "10", "9"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianeta e famoso per i suoi anelli?"
            Reponses := array{"Marte", "Saturno", "Mercurio", "Venere"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama la galassia che contiene il nostro sistema solare?"
            Reponses := array{"La galassia Vortice", "Andromeda", "Il Grande Carro", "La Via Lattea"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianeta e il piu vicino al Sole?"
            Reponses := array{"Venere", "Marte", "La Terra", "Mercurio"}
            BonneReponse := 3
        question:
            Enonce := "In che anno l'uomo cammino sulla Luna per la prima volta?"
            Reponses := array{"1969", "1961", "1975", "1958"}
            BonneReponse := 0
        question:
            Enonce := "Quale agenzia spaziale e americana?"
            Reponses := array{"La NASA", "Il CNES", "Roscosmos", "L'ESA"}
            BonneReponse := 0
        question:
            Enonce := "Su quale pianeta viviamo?"
            Reponses := array{"La Terra", "Venere", "Marte", "La Luna"}
            BonneReponse := 0
        question:
            Enonce := "Come si chiama il fenomeno in cui la Luna nasconde il Sole?"
            Reponses := array{"Un'aurora boreale", "Un'eclissi solare", "Una supernova", "Una cometa"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianeta e soprannominato la stella della sera?"
            Reponses := array{"Venere", "Saturno", "Marte", "Giove"}
            BonneReponse := 0
        question:
            Enonce := "Quale veicolo spinge gli astronauti nello spazio?"
            Reponses := array{"Un aereo", "Un razzo", "Un sottomarino", "Una mongolfiera"}
            BonneReponse := 1
        question:
            Enonce := "Quale famoso telescopio spaziale fu lanciato nel 1990?"
            Reponses := array{"Kepler", "Voyager", "Galileo", "Hubble"}
            BonneReponse := 3
        question:
            Enonce := "Quanto tempo impiega la Terra a girare intorno al Sole?"
            Reponses := array{"Un mese", "Dieci anni", "Circa un anno", "Un giorno"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la forma della Terra?"
            Reponses := array{"Un cubo", "Una sfera", "Un cono", "Un disco piatto"}
            BonneReponse := 1
        question:
            Enonce := "Che cosa provoca l'alternanza del giorno e della notte?"
            Reponses := array{"Le maree", "La rotazione della Terra", "La Luna", "Le nuvole"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama lo studio degli astri e dell'universo?"
            Reponses := array{"La meteorologia", "L'astronomia", "La biologia", "La geologia"}
            BonneReponse := 1
        question:
            Enonce := "Quale famoso astronauta francese ha soggiornato sulla Stazione Spaziale Internazionale?"
            Reponses := array{"Thomas Pesquet", "Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin"}
            BonneReponse := 0
        question:
            Enonce := "Quale primo essere umano ando nello spazio nel 1961?"
            Reponses := array{"Alan Shepard", "John Glenn", "Neil Armstrong", "Yuri Gagarin"}
            BonneReponse := 3
        question:
            Enonce := "Quale oggetto celeste ha una lunga scia luminosa e torna periodicamente?"
            Reponses := array{"La nebulosa", "La cometa", "Il pianeta", "Il buco nero"}
            BonneReponse := 1
        question:
            Enonce := "Quale forza mantiene i pianeti in orbita intorno al Sole?"
            Reponses := array{"La gravita", "Il vento solare", "Il magnetismo terrestre", "La luce"}
            BonneReponse := 0
        question:
            Enonce := "Quale indumento protegge l'astronauta nello spazio?"
            Reponses := array{"Il giubbotto di salvataggio", "L'impermeabile", "La tuta spaziale", "La cotta di maglia"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha dipinto la Gioconda?"
            Reponses := array{"Monet", "Leonardo da Vinci", "Van Gogh", "Picasso"}
            BonneReponse := 1
        question:
            Enonce := "In quale museo e esposta la Gioconda?"
            Reponses := array{"Il British Museum", "Il Louvre", "Il Prado", "Il Musee d'Orsay"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore si taglio l'orecchio e dipinse Notte stellata?"
            Reponses := array{"Claude Monet", "Salvador Dali", "Vincent van Gogh", "Rembrandt"}
            BonneReponse := 2
        question:
            Enonce := "Quale artista spagnolo e cofondatore del cubismo?"
            Reponses := array{"Miro", "Pablo Picasso", "Goya", "Velazquez"}
            BonneReponse := 1
        question:
            Enonce := "Quale statua, dono della Francia, si erge a New York?"
            Reponses := array{"Il David", "La Statua della Liberta", "Il Pensatore", "La Venere di Milo"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scolpito Il Pensatore?"
            Reponses := array{"Michelangelo", "Camille Claudel", "Donatello", "Auguste Rodin"}
            BonneReponse := 3
        question:
            Enonce := "Quale famoso soffitto dipinse Michelangelo in Vaticano?"
            Reponses := array{"La Cappella Sistina", "Il Pantheon", "San Marco", "Notre-Dame"}
            BonneReponse := 0
        question:
            Enonce := "Quale monumento dell'antica Roma e un grande anfiteatro?"
            Reponses := array{"L'Acropoli", "La Torre di Pisa", "Il Colosseo", "Il Partenone"}
            BonneReponse := 2
        question:
            Enonce := "A quale movimento appartiene Claude Monet?"
            Reponses := array{"Il cubismo", "Il surrealismo", "Il barocco", "L'impressionismo"}
            BonneReponse := 3
        question:
            Enonce := "Quale monumento funerario in marmo bianco si trova in India?"
            Reponses := array{"Machu Picchu", "Il Taj Mahal", "Angkor Wat", "La Grande Muraglia"}
            BonneReponse := 1
        question:
            Enonce := "Quale opera di Edvard Munch raffigura una figura che urla?"
            Reponses := array{"I girasoli", "L'urlo", "La Gioconda", "La Liberta che guida il popolo"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore del Rinascimento realizzo La creazione di Adamo?"
            Reponses := array{"Raffaello", "Michelangelo", "Tiziano", "Botticelli"}
            BonneReponse := 1
        question:
            Enonce := "Quale cattedrale gotica di Parigi e andata a fuoco nel 2019?"
            Reponses := array{"La Sainte-Chapelle", "Il Sacre-Coeur", "Notre-Dame de Paris", "La cattedrale di Reims"}
            BonneReponse := 2
        question:
            Enonce := "Quale artista dipinse Guernica?"
            Reponses := array{"Matisse", "Dali", "Van Gogh", "Pablo Picasso"}
            BonneReponse := 3
        question:
            Enonce := "Quali sono i tre colori primari?"
            Reponses := array{"Verde, arancione, viola", "Rosa, marrone, beige", "Nero, bianco, grigio", "Rosso, blu, giallo"}
            BonneReponse := 3
        question:
            Enonce := "Quale piramide di vetro si erge davanti al Louvre?"
            Reponses := array{"La piramide di Cheope", "La piramide del Sole", "La Piramide del Louvre", "La piramide di Pei a Pechino"}
            BonneReponse := 2
        question:
            Enonce := "Quale monumento preistorico fatto di grandi pietre erette si trova in Inghilterra?"
            Reponses := array{"Il Colosseo", "Il Partenone", "Carnac", "Stonehenge"}
            BonneReponse := 3
        question:
            Enonce := "Quale arte dello spettacolo utilizza la danza classica sulle punte?"
            Reponses := array{"Il teatro", "L'opera", "Il balletto", "Il circo"}
            BonneReponse := 2
        question:
            Enonce := "Quale strumento principale usa un pittore?"
            Reponses := array{"Il pennello", "Il martello", "Lo scalpello", "La cazzuola"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha inventato l'origami, l'arte di piegare la carta?"
            Reponses := array{"La Francia", "L'India", "Il Giappone", "La Cina"}
            BonneReponse := 2
        question:
            Enonce := "Quale museo parigino, ex stazione ferroviaria, ospita l'arte impressionista?"
            Reponses := array{"Il Louvre", "Il Grand Palais", "Il Centre Pompidou", "Il Musee d'Orsay"}
            BonneReponse := 3
        question:
            Enonce := "Quale famosa torre di ferro fu costruita a Parigi nel 1889?"
            Reponses := array{"La Torre di Londra", "il Big Ben", "La Torre Eiffel", "La Torre di Pisa"}
            BonneReponse := 2
        question:
            Enonce := "Quale materiale bianco, estratto a Carrara, e spesso usato per scolpire?"
            Reponses := array{"Il legno", "Il vetro", "Il bronzo", "Il marmo"}
            BonneReponse := 3
        question:
            Enonce := "Quale famosa scultura greca di donna non ha le braccia?"
            Reponses := array{"Il David", "Il Pensatore", "La Gioconda", "La Venere di Milo"}
            BonneReponse := 3
        question:
            Enonce := "Di che colore sono i famosi Girasoli di Van Gogh?"
            Reponses := array{"Verde", "Rosso", "Blu", "Giallo"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto I Miserabili?"
            Reponses := array{"Victor Hugo", "Emile Zola", "Balzac", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Romeo e Giulietta?"
            Reponses := array{"Dante", "Cervantes", "Moliere", "William Shakespeare"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il Piccolo Principe?"
            Reponses := array{"Camus", "Antoine de Saint-Exupery", "La Fontaine", "Jules Verne"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto la saga di Harry Potter?"
            Reponses := array{"Tolkien", "J.K. Rowling", "Stephen King", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Quale famoso detective e stato creato da Arthur Conan Doyle?"
            Reponses := array{"Maigret", "Hercule Poirot", "Arsenio Lupin", "Sherlock Holmes"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto favole come Il corvo e la volpe?"
            Reponses := array{"Andersen", "Jean de La Fontaine", "Charles Perrault", "Victor Hugo"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto I tre moschettieri?"
            Reponses := array{"Alexandre Dumas", "Jules Verne", "Stendhal", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Quale cavaliere sognatore e il protagonista del romanzo di Cervantes?"
            Reponses := array{"Robin Hood", "Ivanhoe", "Don Chisciotte", "Lancillotto"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Ventimila leghe sotto i mari?"
            Reponses := array{"Hemingway", "H.G. Wells", "Jules Verne", "Daniel Defoe"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il Signore degli Anelli?"
            Reponses := array{"J.R.R. Tolkien", "George R.R. Martin", "C.S. Lewis", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Quale poeta francese ha scritto I fiori del male?"
            Reponses := array{"Charles Baudelaire", "Verlaine", "Rimbaud", "Victor Hugo"}
            BonneReponse := 0
        question:
            Enonce := "Quale celebre battuta proviene dall'opera Amleto?"
            Reponses := array{"Essere o non essere", "Alle armi, cittadini", "Veni, vidi, vici", "Penso, dunque sono"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto fiabe come Cenerentola e Cappuccetto Rosso?"
            Reponses := array{"Victor Hugo", "Moliere", "Charles Perrault", "La Fontaine"}
            BonneReponse := 2
        question:
            Enonce := "Quale autore danese ha scritto La Sirenetta?"
            Reponses := array{"Hans Christian Andersen", "Lewis Carroll", "Charles Perrault", "Collodi"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto il romanzo 1984?"
            Reponses := array{"Jules Verne", "Ray Bradbury", "George Orwell", "Aldous Huxley"}
            BonneReponse := 2
        question:
            Enonce := "Quale romanzo di Daniel Defoe racconta di un naufrago su un'isola deserta?"
            Reponses := array{"Moby Dick", "L'isola del tesoro", "Venerdi", "Robinson Crusoe"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Notre-Dame de Paris?"
            Reponses := array{"Flaubert", "Victor Hugo", "Zola", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande capodoglio bianco e cacciato nel romanzo di Melville?"
            Reponses := array{"Nemo", "Moby Dick", "Leviatano", "Willy"}
            BonneReponse := 1
        question:
            Enonce := "In quale lingua Shakespeare ha scritto le sue opere?"
            Reponses := array{"Latino", "Francese", "Italiano", "Inglese"}
            BonneReponse := 3
        question:
            Enonce := "Quanti moschettieri figurano nel titolo del romanzo di Dumas?"
            Reponses := array{"Tre", "Quattro", "Cinque", "Due"}
            BonneReponse := 0
        question:
            Enonce := "Quale autore ha scritto Germinal?"
            Reponses := array{"Maupassant", "Proust", "Emile Zola", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Quale ladro gentiluomo e stato creato da Maurice Leblanc?"
            Reponses := array{"Robin Hood", "Fantomas", "Sherlock Holmes", "Arsenio Lupin"}
            BonneReponse := 3
        question:
            Enonce := "Quale giovane ragazza segue un coniglio bianco in una tana (Lewis Carroll)?"
            Reponses := array{"Wendy", "Alice", "Dorothy", "Heidi"}
            BonneReponse := 1
        question:
            Enonce := "Quale autore ha scritto Il conte di Montecristo?"
            Reponses := array{"Jules Verne", "Balzac", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Quale filosofo francese ha scritto Candido?"
            Reponses := array{"Voltaire", "Montesquieu", "Diderot", "Rousseau"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento ha tasti neri e bianchi?"
            Reponses := array{"Il pianoforte", "Il violino", "La chitarra", "La tromba"}
            BonneReponse := 0
        question:
            Enonce := "Quante corde ha una chitarra classica?"
            Reponses := array{"12", "6", "8", "4"}
            BonneReponse := 1
        question:
            Enonce := "Chi compose la 9a sinfonia e il suo Inno alla gioia?"
            Reponses := array{"Beethoven", "Bach", "Chopin", "Mozart"}
            BonneReponse := 0
        question:
            Enonce := "Quale gruppo britannico riuniva John, Paul, George e Ringo?"
            Reponses := array{"I Beatles", "Queen", "The Rolling Stones", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Quale cantante e soprannominato il re del pop?"
            Reponses := array{"Elvis Presley", "Freddie Mercury", "Prince", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Quale cantante americano e soprannominato il re del rock?"
            Reponses := array{"Johnny Hallyday", "Elvis Presley", "Chuck Berry", "Bob Dylan"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore austriaco fu un bambino prodigio e scrisse un Requiem?"
            Reponses := array{"Mozart", "Beethoven", "Vivaldi", "Haydn"}
            BonneReponse := 0
        question:
            Enonce := "Con quale oggetto si suona il violino?"
            Reponses := array{"Un archetto", "Un martello", "Una bacchetta", "Un plettro"}
            BonneReponse := 0
        question:
            Enonce := "Quante note ha la scala (do, re, mi...)?"
            Reponses := array{"7", "8", "5", "12"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento a fiato in ottone ha una coulisse?"
            Reponses := array{"Il clarinetto", "Il sassofono", "Il trombone", "Il flauto"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande strumento a canne si trova nelle chiese?"
            Reponses := array{"Il clavicembalo", "L'organo", "Il pianoforte", "L'arpa"}
            BonneReponse := 1
        question:
            Enonce := "Quale danza viennese si suona in tre tempi?"
            Reponses := array{"Il valzer", "La salsa", "Il tango", "Il rock"}
            BonneReponse := 0
        question:
            Enonce := "Chi dirige un'orchestra con una bacchetta?"
            Reponses := array{"Il compositore", "Il solista", "Il direttore d'orchestra", "Il direttore di scena"}
            BonneReponse := 2
        question:
            Enonce := "Da quale paese proviene il reggae (Bob Marley)?"
            Reponses := array{"Il Brasile", "Il Senegal", "La Giamaica", "Cuba"}
            BonneReponse := 2
        question:
            Enonce := "Quante corde ha un violino?"
            Reponses := array{"6", "3", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta americana e considerata la culla del jazz?"
            Reponses := array{"New York", "Detroit", "New Orleans", "Chicago"}
            BonneReponse := 2
        question:
            Enonce := "Quanti musicisti suonano in un quartetto?"
            Reponses := array{"3", "2", "4", "5"}
            BonneReponse := 2
        question:
            Enonce := "Quale compositore barocco tedesco scrisse la Toccata e fuga in re minore?"
            Reponses := array{"Mozart", "Wagner", "Johann Sebastian Bach", "Beethoven"}
            BonneReponse := 2
        question:
            Enonce := "Quale strumento a corde e il piu grave dell'orchestra?"
            Reponses := array{"Il contrabbasso", "Il violino", "L'arpa", "Il violoncello"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento ha 88 tasti?"
            Reponses := array{"La fisarmonica", "Il pianoforte", "Lo xilofono", "L'organo"}
            BonneReponse := 1
        question:
            Enonce := "Da quale paese proviene il flamenco?"
            Reponses := array{"Il Portogallo", "La Spagna", "L'Italia", "Il Messico"}
            BonneReponse := 1
        question:
            Enonce := "Quale voce femminile e la piu acuta?"
            Reponses := array{"Soprano", "Tenore", "Basso", "Contralto"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento a fiato ad ancia e emblematico del jazz?"
            Reponses := array{"Il sassofono", "Il violino", "L'arpa", "La batteria"}
            BonneReponse := 0
        question:
            Enonce := "Su quale supporto analogico si ascoltava la musica prima del CD?"
            Reponses := array{"Il disco in vinile", "La scheda di memoria", "La chiavetta USB", "Il DVD"}
            BonneReponse := 0
        question:
            Enonce := "Quale famiglia di strumenti comprende la batteria e il tamburo?"
            Reponses := array{"I legni", "Le percussioni", "Gli ottoni", "Gli archi"}
            BonneReponse := 1
        question:
            Enonce := "Quale topo e la mascotte degli studi Disney?"
            Reponses := array{"Stuart", "Mickey", "Jerry", "Speedy"}
            BonneReponse := 1
        question:
            Enonce := "Quale personaggio di 'Star Wars' dice 'Io sono tuo padre'?"
            Reponses := array{"Han Solo", "Luke", "Darth Fener", "Yoda"}
            BonneReponse := 2
        question:
            Enonce := "Quale studio ha realizzato 'Toy Story'?"
            Reponses := array{"Warner", "Universal", "Pixar", "DreamWorks"}
            BonneReponse := 2
        question:
            Enonce := "Quale orco verde e il protagonista di un film DreamWorks?"
            Reponses := array{"Gollum", "Yoda", "Shrek", "Hulk"}
            BonneReponse := 2
        question:
            Enonce := "Quale archeologo porta una frusta e un cappello al cinema?"
            Reponses := array{"Indiana Jones", "Tintin", "James Bond", "Lara Croft"}
            BonneReponse := 0
        question:
            Enonce := "Quale film di Steven Spielberg presenta uno squalo gigante?"
            Reponses := array{"Titanic", "Lo squalo", "Alla ricerca di Nemo", "Jurassic Park"}
            BonneReponse := 1
        question:
            Enonce := "Quale premio dorato viene assegnato nel cinema americano?"
            Reponses := array{"La Palma d'Oro", "Il Cesar", "Il Golden Buzzer", "L'Oscar"}
            BonneReponse := 3
        question:
            Enonce := "Quale grande festival del cinema si tiene in Francia e assegna la Palma d'Oro?"
            Reponses := array{"Cannes", "Berlino", "Venezia", "Sundance"}
            BonneReponse := 0
        question:
            Enonce := "Quale supereroe protegge la citta di Gotham?"
            Reponses := array{"Superman", "Batman", "Iron Man", "Spider-Man"}
            BonneReponse := 1
        question:
            Enonce := "Nel film 'Titanic', come si chiamano i due protagonisti?"
            Reponses := array{"Romeo e Giulietta", "Leo e Kate", "Tom e Jerry", "Jack e Rose"}
            BonneReponse := 3
        question:
            Enonce := "Quale piccolo extraterrestre vuole 'telefonare a casa'?"
            Reponses := array{"Alf", "Yoda", "E.T.", "Stitch"}
            BonneReponse := 2
        question:
            Enonce := "Quale famiglia gialla e al centro di un famoso cartone animato?"
            Reponses := array{"Gli Antenati", "South Park", "I Griffin", "I Simpson"}
            BonneReponse := 3
        question:
            Enonce := "Quale agente segreto britannico ha la sigla 007?"
            Reponses := array{"Ethan Hunt", "Jason Bourne", "Austin Powers", "James Bond"}
            BonneReponse := 3
        question:
            Enonce := "Quale principessa Disney perde una scarpetta di cristallo?"
            Reponses := array{"Cenerentola", "Biancaneve", "Rapunzel", "Belle"}
            BonneReponse := 0
        question:
            Enonce := "Quale supereroe Marvel lancia ragnatele?"
            Reponses := array{"Spider-Man", "Thor", "Capitan America", "Hulk"}
            BonneReponse := 0
        question:
            Enonce := "Quale film d'animazione Disney segue un giovane leone di nome Simba?"
            Reponses := array{"Madagascar", "Il Re Leone", "Bambi", "Tarzan"}
            BonneReponse := 1
        question:
            Enonce := "Quale piccolo e saggio maestro Jedi verde appare in 'Star Wars'?"
            Reponses := array{"Yoda", "Chewbacca", "R2-D2", "Jabba"}
            BonneReponse := 0
        question:
            Enonce := "Quale pesce pagliaccio viene cercato da suo padre in un film Pixar?"
            Reponses := array{"Willy", "Nemo", "Dory", "Flipper"}
            BonneReponse := 1
        question:
            Enonce := "Quale cowboy e un giocattolo protagonista di 'Toy Story'?"
            Reponses := array{"Jessie", "Woody", "Buzz", "Lucky Luke"}
            BonneReponse := 1
        question:
            Enonce := "Quale attore del cinema muto indossava una bombetta, un bastone e dei piccoli baffi?"
            Reponses := array{"Mr. Bean", "Louis de Funes", "Buster Keaton", "Charlie Chaplin"}
            BonneReponse := 3
        question:
            Enonce := "Quale cyborg dice 'I'll be back' in un film di fantascienza?"
            Reponses := array{"Iron Man", "RoboCop", "Terminator", "Wall-E"}
            BonneReponse := 2
        question:
            Enonce := "Quale pugile di Filadelfia e interpretato da Sylvester Stallone?"
            Reponses := array{"Rambo", "Rocky", "Creed", "Tyson"}
            BonneReponse := 1
        question:
            Enonce := "Quale saga presenta Frodo e un anello da distruggere?"
            Reponses := array{"Il Signore degli Anelli", "Narnia", "Solo Lo Hobbit", "Harry Potter"}
            BonneReponse := 0
        question:
            Enonce := "Quale piccola sirenetta dai capelli rossi e un'eroina Disney?"
            Reponses := array{"Elsa", "Vaiana", "Ariel", "Jasmine"}
            BonneReponse := 2
        question:
            Enonce := "Quale personaggio Disney e un burattino di legno il cui naso si allunga quando mente?"
            Reponses := array{"Pinpin", "Pinocchio", "Peter Pan", "Aladdin"}
            BonneReponse := 1
        question:
            Enonce := "Da quanti giocatori e composta una squadra di calcio in campo?"
            Reponses := array{"11", "7", "15", "9"}
            BonneReponse := 0
        question:
            Enonce := "Ogni quanti anni si svolgono i Giochi olimpici estivi?"
            Reponses := array{"Ogni 4 anni", "Ogni 5 anni", "Ogni 3 anni", "Ogni 2 anni"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport si gioca al Roland-Garros?"
            Reponses := array{"La pallamano", "Il golf", "Il rugby", "Il tennis"}
            BonneReponse := 3
        question:
            Enonce := "Quanti cerchi ci sono sulla bandiera olimpica?"
            Reponses := array{"3", "4", "6", "5"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport si gioca con una palla arancione e dei canestri?"
            Reponses := array{"Il calcio", "La pallamano", "La pallacanestro", "La pallavolo"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport pratica il velocista Usain Bolt?"
            Reponses := array{"Il ciclismo", "L'atletica", "Il nuoto", "Il tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quale trofeo mondiale di calcio si svolge ogni quattro anni?"
            Reponses := array{"L'Europeo", "La Champions League", "La Coppa del Mondo", "La Coppa di Francia"}
            BonneReponse := 2
        question:
            Enonce := "Quanti giocatori di una squadra di pallacanestro sono in campo?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport e soprannominato la piccola regina?"
            Reponses := array{"L'equitazione", "Il canottaggio", "Il ciclismo", "Il pugilato"}
            BonneReponse := 2
        question:
            Enonce := "In quale sport si segna una meta?"
            Reponses := array{"Il rugby", "Il tennis", "La pallacanestro", "Il calcio"}
            BonneReponse := 0
        question:
            Enonce := "Quante buche ha un percorso di golf classico?"
            Reponses := array{"24", "9", "18", "12"}
            BonneReponse := 2
        question:
            Enonce := "Il Tour de France e una gara di quale sport?"
            Reponses := array{"L'automobilismo", "Il motociclismo", "Il ciclismo", "La corsa"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport da combattimento giapponese si pratica in kimono con prese e cinture?"
            Reponses := array{"La lotta greco-romana", "La scherma", "Il judo", "Il pugilato"}
            BonneReponse := 2
        question:
            Enonce := "Da quanti giocatori e composta una squadra di pallavolo in campo?"
            Reponses := array{"6", "11", "5", "7"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport si gioca con una racchetta e un volano?"
            Reponses := array{"Il ping-pong", "Lo squash", "Il tennis", "Il badminton"}
            BonneReponse := 3
        question:
            Enonce := "Quale pugile e soprannominato The Greatest?"
            Reponses := array{"Floyd Mayweather", "Mike Tyson", "Muhammad Ali", "Rocky Marciano"}
            BonneReponse := 2
        question:
            Enonce := "Quale giocatore difende la porta nel calcio?"
            Reponses := array{"Il portiere", "L'arbitro", "L'attaccante", "Il difensore"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport mitico si gioca sull'erba di Wimbledon?"
            Reponses := array{"Il cricket", "Il golf", "Il tennis", "Il polo"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la distanza approssimativa di una maratona?"
            Reponses := array{"21 km", "10 km", "100 km", "42 km"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport si pratica in acqua con la rana e lo stile libero?"
            Reponses := array{"Il nuoto", "La vela", "I tuffi", "Il canottaggio"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport invernale consiste nello scendere una pista innevata?"
            Reponses := array{"Lo sci", "Il curling", "Il surf", "Il pattinaggio artistico"}
            BonneReponse := 0
        question:
            Enonce := "Quanti punti vale un canestro normale nella pallacanestro (fuori dalla zona da 3 punti)?"
            Reponses := array{"1", "2", "5", "3"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport pratica la star americana Michael Jordan?"
            Reponses := array{"La pallacanestro", "Il golf", "Il football americano", "Il baseball"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport si gioca con un bastone e un disco sul ghiaccio?"
            Reponses := array{"Il curling", "L'hockey su ghiaccio", "Il bob", "Il pattinaggio"}
            BonneReponse := 1
        question:
            Enonce := "In quale citta si trova la sede del Comitato Olimpico Internazionale?"
            Reponses := array{"Atene", "Ginevra", "Losanna", "Parigi"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il re degli dei greci, signore del fulmine?"
            Reponses := array{"Poseidone", "Zeus", "Ade", "Apollo"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio greco regna sui mari?"
            Reponses := array{"Hermes", "Ares", "Poseidone", "Zeus"}
            BonneReponse := 2
        question:
            Enonce := "Quale eroe greco ha un tallone come unico punto debole?"
            Reponses := array{"Ulisse", "Teseo", "Perseo", "Achille"}
            BonneReponse := 3
        question:
            Enonce := "Quale eroe greco compi le dodici fatiche?"
            Reponses := array{"Ulisse", "Ercole", "Achille", "Giasone"}
            BonneReponse := 1
        question:
            Enonce := "Quale creatura con corpo di cavallo e busto d'uomo esiste nella mitologia greca?"
            Reponses := array{"La sirena", "Il ciclope", "Il minotauro", "Il centauro"}
            BonneReponse := 3
        question:
            Enonce := "Quale creatura con testa di toro vive nel labirinto?"
            Reponses := array{"Il centauro", "La sfinge", "La Medusa", "Il Minotauro"}
            BonneReponse := 3
        question:
            Enonce := "Quale dio nordico del tuono brandisce un martello?"
            Reponses := array{"Zeus", "Odino", "Thor", "Loki"}
            BonneReponse := 2
        question:
            Enonce := "Quale uccello leggendario rinasce dalle proprie ceneri?"
            Reponses := array{"Il drago", "L'aquila", "La fenice", "Il grifone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dio egizio ha la testa di sciacallo e presiede ai morti?"
            Reponses := array{"Osiride", "Horus", "Ra", "Anubi"}
            BonneReponse := 3
        question:
            Enonce := "Quale creatura femminile ha serpenti al posto dei capelli?"
            Reponses := array{"Pandora", "Afrodite", "Atena", "Medusa"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il libro sacro dell'islam?"
            Reponses := array{"I Veda", "La Bibbia", "La Torah", "Il Corano"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il libro sacro dei cristiani?"
            Reponses := array{"Il Talmud", "La Bibbia", "Il Corano", "La Torah"}
            BonneReponse := 1
        question:
            Enonce := "Quale dea greca della saggezza diede il nome ad Atene?"
            Reponses := array{"Artemide", "Atena", "Era", "Afrodite"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio romano della guerra diede il nome a un pianeta?"
            Reponses := array{"Marte", "Mercurio", "Giove", "Nettuno"}
            BonneReponse := 0
        question:
            Enonce := "Quante teste ha Cerbero, il cane degli Inferi?"
            Reponses := array{"1", "3", "2", "7"}
            BonneReponse := 1
        question:
            Enonce := "Quale re mitico trasformava in oro tutto cio che toccava?"
            Reponses := array{"Mida", "Minosse", "Creso", "Tantalo"}
            BonneReponse := 0
        question:
            Enonce := "Quale dio greco messaggero indossa sandali alati?"
            Reponses := array{"Hermes", "Ares", "Dioniso", "Apollo"}
            BonneReponse := 0
        question:
            Enonce := "Quale dea greca rappresenta l'amore e la bellezza?"
            Reponses := array{"Demetra", "Atena", "Era", "Afrodite"}
            BonneReponse := 3
        question:
            Enonce := "Quale dio romano e l'equivalente di Zeus?"
            Reponses := array{"Marte", "Giove", "Nettuno", "Plutone"}
            BonneReponse := 1
        question:
            Enonce := "Quale creatura meta donna e meta pesce attira i marinai con il suo canto?"
            Reponses := array{"La gorgone", "La ninfa", "L'arpia", "La sirena"}
            BonneReponse := 3
        question:
            Enonce := "Quale religione e associata alla Torah e al popolo ebraico?"
            Reponses := array{"Il buddismo", "L'induismo", "L'islam", "L'ebraismo"}
            BonneReponse := 3
        question:
            Enonce := "Quale mostro a piu teste che ricrescono affronto Ercole?"
            Reponses := array{"Il kraken", "La chimera", "La sfinge", "L'idra di Lerna"}
            BonneReponse := 3
        question:
            Enonce := "Quale dio greco del sole e delle arti guida un carro?"
            Reponses := array{"Crono", "Ade", "Efesto", "Apollo"}
            BonneReponse := 3
        question:
            Enonce := "Nella mitologia nordica, come si chiama il regno degli dei?"
            Reponses := array{"Midgard", "Asgard", "Valhalla", "Olimpo"}
            BonneReponse := 1
        question:
            Enonce := "Quale gigante ha un solo occhio in mezzo alla fronte nell'Odissea?"
            Reponses := array{"Il troll", "Il ciclope", "Il golem", "Il titano"}
            BonneReponse := 1
        question:
            Enonce := "Quale trattato del 1919 pose ufficialmente fine alla Prima guerra mondiale?"
            Reponses := array{"Il Trattato di Roma", "Il Trattato di Tordesillas", "Il Trattato di Versailles", "Il Trattato di Vienna"}
            BonneReponse := 2
        question:
            Enonce := "Quale dinastia cinese costrui gran parte dell'attuale Grande Muraglia?"
            Reponses := array{"I Tang", "I Ming", "I Qing", "Gli Han"}
            BonneReponse := 1
        question:
            Enonce := "Chi fu il primo presidente della Quinta Repubblica francese?"
            Reponses := array{"Georges Pompidou", "Vincent Auriol", "Francois Mitterrand", "Charles de Gaulle"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno ebbe luogo la battaglia di Hastings?"
            Reponses := array{"1066", "1215", "987", "1453"}
            BonneReponse := 0
        question:
            Enonce := "Quale imperatore romano legalizzo il cristianesimo con l'Editto di Milano (313)?"
            Reponses := array{"Traiano", "Costantino", "Augusto", "Nerone"}
            BonneReponse := 1
        question:
            Enonce := "Quale regina d'Egitto si alleo con Giulio Cesare e poi con Marco Antonio?"
            Reponses := array{"Nefertiti", "Cleopatra", "Hatshepsut", "Teodora"}
            BonneReponse := 1
        question:
            Enonce := "In quale anno ebbe luogo la Rivoluzione d'Ottobre in Russia?"
            Reponses := array{"1905", "1917", "1789", "1922"}
            BonneReponse := 1
        question:
            Enonce := "Quale re di Francia fu ghigliottinato nel 1793?"
            Reponses := array{"Luigi XV", "Luigi XIV", "Luigi XVI", "Carlo X"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta era la capitale dell'Impero bizantino?"
            Reponses := array{"Roma", "Alessandria", "Atene", "Costantinopoli"}
            BonneReponse := 3
        question:
            Enonce := "Quale leader era a capo dell'URSS durante la Seconda guerra mondiale?"
            Reponses := array{"Chruscev", "Lenin", "Gorbacev", "Iosif Stalin"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno le donne ottennero il diritto di voto in Francia?"
            Reponses := array{"1968", "1944", "1900", "1918"}
            BonneReponse := 1
        question:
            Enonce := "Quale esploratore portoghese raggiunse l'India via mare nel 1498?"
            Reponses := array{"Cristoforo Colombo", "Vasco da Gama", "Magellano", "Bartolomeu Dias"}
            BonneReponse := 1
        question:
            Enonce := "Quale imperatore francese fu sconfitto e catturato a Sedan nel 1870?"
            Reponses := array{"Luigi Filippo", "Napoleone I", "Carlo X", "Napoleone III"}
            BonneReponse := 3
        question:
            Enonce := "Quale civilta precolombiana dominava il Peru prima degli spagnoli?"
            Reponses := array{"I Maya", "Gli Inca", "Gli Olmechi", "Gli Aztechi"}
            BonneReponse := 1
        question:
            Enonce := "Quale giovane faraone possiede una famosa maschera funeraria d'oro?"
            Reponses := array{"Akhenaton", "Ramses II", "Cheope", "Tutankhamon"}
            BonneReponse := 3
        question:
            Enonce := "Quale battaglia navale del 1805 vide la vittoria dell'ammiraglio Nelson?"
            Reponses := array{"Salamina", "Azio", "Trafalgar", "Lepanto"}
            BonneReponse := 2
        question:
            Enonce := "Quale eroe guido la Spedizione dei Mille per l'unita italiana?"
            Reponses := array{"Mussolini", "Mazzini", "Cavour", "Garibaldi"}
            BonneReponse := 3
        question:
            Enonce := "Quale sultano porto l'Impero ottomano al suo apice nel XVI secolo?"
            Reponses := array{"Saladino", "Ataturk", "Maometto II", "Solimano il Magnifico"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno gli Stati Uniti dichiararono la propria indipendenza?"
            Reponses := array{"1776", "1789", "1620", "1812"}
            BonneReponse := 0
        question:
            Enonce := "Quale re inglese fondo la Chiesa anglicana per poter divorziare?"
            Reponses := array{"Giovanni Senzaterra", "Enrico VIII", "Guglielmo il Conquistatore", "Riccardo Cuor di Leone"}
            BonneReponse := 1
        question:
            Enonce := "Quale epidemia decimo l'Europa a meta del XIV secolo?"
            Reponses := array{"Il vaiolo", "Il colera", "La peste nera", "L'influenza spagnola"}
            BonneReponse := 2
        question:
            Enonce := "Quale capo gallico resistette a Cesare prima di capitolare ad Alesia?"
            Reponses := array{"Brenno", "Asterix", "Ambiorige", "Vercingetorige"}
            BonneReponse := 3
        question:
            Enonce := "Quale conferenza del 1945 riuni Churchill, Roosevelt e Stalin?"
            Reponses := array{"Teheran", "Yalta", "Monaco", "Potsdam"}
            BonneReponse := 1
        question:
            Enonce := "Quale spedizione militare cristiana mirava a riconquistare Gerusalemme nel Medioevo?"
            Reponses := array{"La Reconquista", "La guerra dei Trent'anni", "Le crociate", "La Lega anseatica"}
            BonneReponse := 2
        question:
            Enonce := "Quale muro fu eretto nel 1961 per dividere una citta tedesca?"
            Reponses := array{"La Linea Maginot", "Il Vallo Atlantico", "Il Muro di Berlino", "Il Vallo di Adriano"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il fiume piu lungo d'Europa?"
            Reponses := array{"Il Danubio", "Il Reno", "Il Rodano", "Il Volga"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la capitale dell'Australia?"
            Reponses := array{"Melbourne", "Sydney", "Perth", "Canberra"}
            BonneReponse := 3
        question:
            Enonce := "Quale stretto separa l'Europa dall'Africa?"
            Reponses := array{"Il Bosforo", "Il passo di Calais", "Lo stretto di Gibilterra", "Lo stretto di Bering"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale del Canada?"
            Reponses := array{"Vancouver", "Montreal", "Ottawa", "Toronto"}
            BonneReponse := 2
        question:
            Enonce := "Quale piccolo regno e interamente racchiuso all'interno del Sudafrica?"
            Reponses := array{"Il Botswana", "Lo Swaziland", "La Namibia", "Il Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Quale canale collega il Mediterraneo al mar Rosso?"
            Reponses := array{"Il canale di Corinto", "Il canale di Suez", "Il canale di Panama", "Il canale di Kiel"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'isola piu grande del mondo?"
            Reponses := array{"Il Madagascar", "Il Borneo", "La Nuova Guinea", "La Groenlandia"}
            BonneReponse := 3
        question:
            Enonce := "Quale canale collega l'oceano Atlantico all'oceano Pacifico in America Centrale?"
            Reponses := array{"Il Canal du Midi", "Il canale di Panama", "Il canale di Suez", "Lo stretto di Magellano"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale della Turchia?"
            Reponses := array{"Adalia", "Smirne", "Ankara", "Istanbul"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta si trova a cavallo tra Europa e Asia?"
            Reponses := array{"Istanbul", "Atene", "Il Cairo", "Mosca"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha come capitale Brasilia?"
            Reponses := array{"il Peru", "Il Brasile", "l'Argentina", "la Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Quale catena montuosa ospita l'Everest?"
            Reponses := array{"L'Himalaya", "Le Montagne Rocciose", "Il Caucaso", "Le Ande"}
            BonneReponse := 0
        question:
            Enonce := "Qual e lo Stato piu piccolo del mondo?"
            Reponses := array{"Il Vaticano", "Nauru", "Monaco", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu lunga catena montuosa continentale del mondo?"
            Reponses := array{"Le Montagne Rocciose", "L'Himalaya", "La cordigliera delle Ande", "Le Alpi"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande deserto freddo si estende tra la Mongolia e la Cina?"
            Reponses := array{"Il Sahara", "L'Atacama", "Il Gobi", "Il Kalahari"}
            BonneReponse := 2
        question:
            Enonce := "Quale fiume attraversa Londra?"
            Reponses := array{"Il Severn", "Il Tamigi", "Il Mersey", "Il Clyde"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale della Nuova Zelanda?"
            Reponses := array{"Wellington", "Auckland", "Christchurch", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese sudamericano prende il nome dalla linea immaginaria che lo attraversa?"
            Reponses := array{"La Bolivia", "Il Cile", "Il Peru", "L'Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la capitale dell'Argentina?"
            Reponses := array{"Lima", "Buenos Aires", "Santiago", "Montevideo"}
            BonneReponse := 1
        question:
            Enonce := "Quale vetta piu alta dell'Africa si trova in Tanzania?"
            Reponses := array{"Il monte Kenya", "l'Atlante", "Il Kilimangiaro", "il monte Camerun"}
            BonneReponse := 2
        question:
            Enonce := "Quale mare interno dell'Asia centrale si e fortemente prosciugato?"
            Reponses := array{"Il lago Bajkal", "Il lago d'Aral", "Il mar Caspio", "Il mar Morto"}
            BonneReponse := 1
        question:
            Enonce := "Quante capitali ha il Sudafrica (amministrativa, legislativa, giudiziaria)?"
            Reponses := array{"4", "2", "3", "1"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale della Norvegia?"
            Reponses := array{"Copenaghen", "Stoccolma", "Helsinki", "Oslo"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il piu grande lago d'acqua dolce del mondo per superficie?"
            Reponses := array{"Il lago Superiore", "Il lago di Ginevra", "Il lago Bajkal", "Il lago Vittoria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese possiede il maggior numero di piramidi al mondo?"
            Reponses := array{"Il Sudan", "l'Egitto", "il Messico", "il Peru"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la velocita approssimativa della luce nel vuoto?"
            Reponses := array{"30.000 km/s", "1.000 km/s", "3.000.000 km/s", "300.000 km/s"}
            BonneReponse := 3
        question:
            Enonce := "Quale scienziato scopri la penicillina?"
            Reponses := array{"Alexander Fleming", "Robert Koch", "Louis Pasteur", "Jonas Salk"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il metallo piu abbondante nella crosta terrestre?"
            Reponses := array{"Il rame", "L'oro", "L'alluminio", "Il ferro"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il simbolo chimico del potassio?"
            Reponses := array{"Pt", "K", "Po", "P"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'unita di misura della potenza elettrica?"
            Reponses := array{"Il volt", "L'ampere", "Il joule", "Il watt"}
            BonneReponse := 3
        question:
            Enonce := "Quale gas nobile fa brillare di rosso le insegne luminose?"
            Reponses := array{"Il neon", "L'argon", "Il cripto", "L'elio"}
            BonneReponse := 0
        question:
            Enonce := "Quale principio fisico spiega il galleggiamento dei corpi?"
            Reponses := array{"L'effetto Doppler", "La legge di Newton", "Il principio di Archimede", "La legge di Ohm"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'elemento chimico piu leggero?"
            Reponses := array{"L'idrogeno", "Il carbonio", "L'elio", "L'ossigeno"}
            BonneReponse := 0
        question:
            Enonce := "Quale acido e presente nello stomaco umano?"
            Reponses := array{"L'acido acetico", "L'acido cloridrico", "L'acido citrico", "L'acido solforico"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'unita di misura della frequenza?"
            Reponses := array{"Il watt", "Il newton", "Il decibel", "L'hertz"}
            BonneReponse := 3
        question:
            Enonce := "Quale scienziata ricevette due premi Nobel per i suoi studi sulla radioattivita?"
            Reponses := array{"Rosalind Franklin", "Ada Lovelace", "Marie Curie", "Lise Meitner"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama il passaggio diretto dallo stato solido a quello gassoso?"
            Reponses := array{"La sublimazione", "La fusione", "La condensazione", "L'evaporazione"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la formula chimica del sale da cucina?"
            Reponses := array{"H2SO4", "KCl", "NaCl", "CaCO3"}
            BonneReponse := 2
        question:
            Enonce := "Quale radiazione solare provoca le scottature?"
            Reponses := array{"Le microonde", "I raggi ultravioletti", "I raggi infrarossi", "I raggi X"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'unita di misura della resistenza elettrica?"
            Reponses := array{"Il tesla", "L'ohm", "L'ampere", "Il farad"}
            BonneReponse := 1
        question:
            Enonce := "Quanti elementi contiene circa la tavola periodica?"
            Reponses := array{"Circa 118", "Circa 80", "Circa 200", "Circa 50"}
            BonneReponse := 0
        question:
            Enonce := "Quale componente principale serve a fabbricare il vetro?"
            Reponses := array{"L'argilla", "Il piombo", "La silice (sabbia)", "Il calcare puro"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il simbolo chimico dell'argento?"
            Reponses := array{"Au", "Ag", "Ar", "Si"}
            BonneReponse := 1
        question:
            Enonce := "Quale particella del nucleo atomico ha carica positiva?"
            Reponses := array{"Il protone", "L'elettrone", "Il neutrone", "Il fotone"}
            BonneReponse := 0
        question:
            Enonce := "Quale scienziato enuncio le tre leggi fondamentali del movimento?"
            Reponses := array{"Isaac Newton", "Einstein", "Keplero", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Quale oggetto di vetro scompone la luce bianca in colori?"
            Reponses := array{"Lo specchio", "La lente", "Il prisma", "Il filtro"}
            BonneReponse := 2
        question:
            Enonce := "Quale reazione libera l'energia di una centrale nucleare?"
            Reponses := array{"L'elettrolisi", "La fermentazione", "La fissione dell'uranio", "La combustione del carbone"}
            BonneReponse := 2
        question:
            Enonce := "Quale gas serra e emesso in grandi quantita dai motori a benzina?"
            Reponses := array{"L'ossigeno", "L'azoto", "L'anidride carbonica", "L'ozono"}
            BonneReponse := 2
        question:
            Enonce := "Quale grandezza si misura in pascal?"
            Reponses := array{"La temperatura", "La pressione", "La velocita", "La massa"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il simbolo chimico del carbonio?"
            Reponses := array{"C", "Ca", "Cr", "Co"}
            BonneReponse := 0
        question:
            Enonce := "Quante ossa ha lo scheletro di un essere umano adulto?"
            Reponses := array{"206", "150", "250", "300"}
            BonneReponse := 0
        question:
            Enonce := "Quale scienziato formulo la teoria dell'evoluzione per selezione naturale?"
            Reponses := array{"Gregor Mendel", "Louis Pasteur", "Charles Darwin", "Carlo Linneo"}
            BonneReponse := 2
        question:
            Enonce := "Quale molecola porta l'informazione genetica?"
            Reponses := array{"Il DNA", "Il glucosio", "L'emoglobina", "Il collagene"}
            BonneReponse := 0
        question:
            Enonce := "Quanti cromosomi ha una cellula umana?"
            Reponses := array{"46", "23", "64", "48"}
            BonneReponse := 0
        question:
            Enonce := "Quale gruppo sanguigno e detto donatore universale?"
            Reponses := array{"AB positivo", "A positivo", "0 negativo", "B negativo"}
            BonneReponse := 2
        question:
            Enonce := "Quale gruppo sanguigno e detto ricevente universale?"
            Reponses := array{"0 negativo", "A negativo", "B positivo", "AB positivo"}
            BonneReponse := 3
        question:
            Enonce := "Quale parte dell'occhio contiene le cellule sensibili alla luce?"
            Reponses := array{"La cornea", "La retina", "Il cristallino", "L'iride"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo produce la bile?"
            Reponses := array{"Lo stomaco", "Il pancreas", "Il fegato", "La milza"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'osso piu piccolo del corpo umano?"
            Reponses := array{"Il coccige", "La staffa (orecchio)", "La rotula", "La falange"}
            BonneReponse := 1
        question:
            Enonce := "Quale ghiandola situata nel collo regola il metabolismo?"
            Reponses := array{"L'ipofisi", "La tiroide", "Il pancreas", "La milza"}
            BonneReponse := 1
        question:
            Enonce := "Quante paia di costole ha l'essere umano?"
            Reponses := array{"10", "12", "14", "8"}
            BonneReponse := 1
        question:
            Enonce := "Quale scienziato scopri i gruppi sanguigni?"
            Reponses := array{"Edward Jenner", "Karl Landsteiner", "Alexander Fleming", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quale mammifero depone uova e vive in Australia?"
            Reponses := array{"Il koala", "Il vombato", "Il canguro", "L'ornitorinco"}
            BonneReponse := 3
        question:
            Enonce := "Quale parte del cervello gestisce l'equilibrio e la coordinazione?"
            Reponses := array{"L'ipotalamo", "La corteccia", "Il cervelletto", "Il bulbo"}
            BonneReponse := 2
        question:
            Enonce := "Quale processo permette alle piante verdi di produrre la propria energia?"
            Reponses := array{"La respirazione", "La fotosintesi", "La fermentazione", "La digestione"}
            BonneReponse := 1
        question:
            Enonce := "I rettili sono animali a sangue..."
            Reponses := array{"tiepido", "caldo", "freddo", "inesistente"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'osso della coscia, anche il piu lungo del corpo?"
            Reponses := array{"La tibia", "Il femore", "Il radio", "L'omero"}
            BonneReponse := 1
        question:
            Enonce := "Quale cellula trasmette l'impulso nervoso?"
            Reponses := array{"Il globulo bianco", "L'osteocita", "Il neurone", "La piastrina"}
            BonneReponse := 2
        question:
            Enonce := "Quale organo immagazzina l'urina prima dell'evacuazione?"
            Reponses := array{"Il fegato", "La vescica", "L'uretere", "Il rene"}
            BonneReponse := 1
        question:
            Enonce := "Quale volume di sangue circola circa in un adulto?"
            Reponses := array{"Circa 1 litro", "Circa 10 litri", "Circa 5 litri", "Circa 20 litri"}
            BonneReponse := 2
        question:
            Enonce := "Quale vitamina previene lo scorbuto?"
            Reponses := array{"La vitamina A", "La vitamina C", "La vitamina D", "La vitamina K"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il muscolo piu voluminoso del corpo umano?"
            Reponses := array{"Il polpaccio", "Il bicipite", "Il cuore", "Il grande gluteo"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'unita di base di ogni essere vivente?"
            Reponses := array{"L'atomo", "L'organo", "La molecola", "La cellula"}
            BonneReponse := 3
        question:
            Enonce := "Quale sapiente monaco scopri le leggi dell'ereditarieta con i piselli?"
            Reponses := array{"Darwin", "Gregor Mendel", "Lamarck", "Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quale organo umano puo rigenerarsi in gran parte dopo un'asportazione parziale?"
            Reponses := array{"Il cuore", "Il fegato", "Il cervello", "Il rene"}
            BonneReponse := 1
        question:
            Enonce := "Quale uccello raggiunge la velocita piu alta in picchiata?"
            Reponses := array{"Lo struzzo", "L'aquila reale", "Il rondone", "Il falco pellegrino"}
            BonneReponse := 3
        question:
            Enonce := "Quanto dura circa la gestazione di un'elefantessa?"
            Reponses := array{"9 mesi", "22 mesi", "6 mesi", "12 mesi"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il piu grande rettile vivente attuale?"
            Reponses := array{"La tartaruga liuto", "Il coccodrillo marino", "L'anaconda", "Il drago di Komodo"}
            BonneReponse := 1
        question:
            Enonce := "Quanti cuori ha un polpo?"
            Reponses := array{"2", "3", "5", "1"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande uccello australiano, incapace di volare, somiglia allo struzzo?"
            Reponses := array{"Il kiwi", "Il pinguino", "Il casuario", "L'emu"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'albero piu alto del mondo?"
            Reponses := array{"La quercia", "Il baobab", "La sequoia", "L'eucalipto"}
            BonneReponse := 2
        question:
            Enonce := "Quale serpente amazzonico e il piu massiccio del mondo?"
            Reponses := array{"Il pitone", "L'anaconda", "Il mamba nero", "Il cobra reale"}
            BonneReponse := 1
        question:
            Enonce := "Quale insetto costruisce un termitaio?"
            Reponses := array{"La vespa", "La formica", "L'ape", "La termite"}
            BonneReponse := 3
        question:
            Enonce := "Quale mammifero marino maschio canta lunghi canti?"
            Reponses := array{"Il tricheco", "La megattera", "Lo squalo", "La lontra"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta carnivora chiude le sue trappole sugli insetti?"
            Reponses := array{"La dionea (acchiappamosche)", "Il cactus", "L'edera", "La ninfea"}
            BonneReponse := 0
        question:
            Enonce := "Quale uccello marino ha la maggiore apertura alare?"
            Reponses := array{"L'albatro", "Il pellicano", "Il cormorano", "L'aquila"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande scimmia dal pelo rosso vive nelle foreste dell'Asia?"
            Reponses := array{"L'orango", "Lo scimpanze", "Il gorilla", "Il gibbone"}
            BonneReponse := 0
        question:
            Enonce := "Quale fungo sotterraneo molto pregiato viene cercato dai cani?"
            Reponses := array{"Il tartufo", "Il gallinaccio", "Il champignon", "Il porcino"}
            BonneReponse := 0
        question:
            Enonce := "Quale uccello depone l'uovo piu grande del mondo?"
            Reponses := array{"Il condor", "L'aquila", "Lo struzzo", "Il pinguino imperatore"}
            BonneReponse := 2
        question:
            Enonce := "Quale medusa australiana e uno degli animali piu velenosi?"
            Reponses := array{"La caravella portoghese", "La medusa luna", "La pelagia", "La medusa scatola"}
            BonneReponse := 3
        question:
            Enonce := "Quale animale si orienta di notte grazie all'ecolocalizzazione?"
            Reponses := array{"La volpe", "Il gufo", "Il pipistrello", "Il gatto"}
            BonneReponse := 2
        question:
            Enonce := "Quale orso vive nelle regioni artiche?"
            Reponses := array{"L'orso bruno", "L'orso nero", "L'orso polare", "Il panda"}
            BonneReponse := 2
        question:
            Enonce := "Quale pesce cambia sesso nel corso della sua vita?"
            Reponses := array{"La sardina", "Il tonno", "Lo squalo", "Il pesce pagliaccio"}
            BonneReponse := 3
        question:
            Enonce := "Quale albero compare sulla bandiera del Canada?"
            Reponses := array{"La quercia", "L'acero", "La betulla", "Il pino"}
            BonneReponse := 1
        question:
            Enonce := "Quale ape depone le uova in un alveare?"
            Reponses := array{"La bottinatrice", "La regina", "Il fuco", "L'operaia"}
            BonneReponse := 1
        question:
            Enonce := "Quale rettile annusa gli odori grazie alla sua lingua biforcuta?"
            Reponses := array{"Il serpente", "La tartaruga", "Il geco", "Il coccodrillo"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'aspettativa di vita di una tartaruga gigante?"
            Reponses := array{"Circa 20 anni", "Circa 50 anni", "Piu di 100 anni", "Circa 10 anni"}
            BonneReponse := 2
        question:
            Enonce := "Quale animale ha il collo piu lungo?"
            Reponses := array{"Il lama", "Il cigno", "La giraffa", "Lo struzzo"}
            BonneReponse := 2
        question:
            Enonce := "Quale uccello e noto per imitare il linguaggio umano?"
            Reponses := array{"L'usignolo", "Il piccione", "Il pappagallo", "Il passero"}
            BonneReponse := 2
        question:
            Enonce := "Da dove proviene principalmente l'avorio, materia delle zanne?"
            Reponses := array{"Dal cinghiale", "Dal rinoceronte", "Dalla balena", "Dall'elefante"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il pianeta piu caldo del sistema solare?"
            Reponses := array{"Venere", "Giove", "Mercurio", "Marte"}
            BonneReponse := 0
        question:
            Enonce := "Quante lune ha il pianeta Marte?"
            Reponses := array{"0", "2", "4", "1"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la stella piu vicina al nostro Sole?"
            Reponses := array{"Proxima Centauri", "la stella Polare", "Sirio", "Betelgeuse"}
            BonneReponse := 0
        question:
            Enonce := "Quale missione porto i primi uomini sulla Luna?"
            Reponses := array{"Gemini 4", "Apollo 11", "Apollo 13", "Soyuz 1"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianeta ruota praticamente sdraiato su un fianco?"
            Reponses := array{"Urano", "Saturno", "Venere", "Nettuno"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la luna piu grande del sistema solare?"
            Reponses := array{"Europa", "Ganimede", "Titano", "La Luna"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama l'esplosione di una stella massiccia alla fine della sua vita?"
            Reponses := array{"Una cometa", "Una supernova", "Un'eclissi", "Una nebulosa"}
            BonneReponse := 1
        question:
            Enonce := "Quale oggetto ha una gravita cosi forte che nemmeno la luce puo sfuggirne?"
            Reponses := array{"Un quasar freddo", "Un pianeta nano", "Un buco nero", "Una stella cadente"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianeta ospita la Grande Macchia Rossa, una tempesta gigante?"
            Reponses := array{"Nettuno", "Marte", "Giove", "Saturno"}
            BonneReponse := 2
        question:
            Enonce := "Quale sonda lanciata nel 1977 ha lasciato il sistema solare?"
            Reponses := array{"Apollo 17", "Sputnik", "Voyager 1", "Cassini"}
            BonneReponse := 2
        question:
            Enonce := "Quale astronomo sostenne che la Terra gira attorno al Sole?"
            Reponses := array{"Aristotele", "Newton", "Tolomeo", "Copernico"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il pianeta piu lontano dal Sole?"
            Reponses := array{"Urano", "Plutone", "Saturno", "Nettuno"}
            BonneReponse := 3
        question:
            Enonce := "Quanto tempo impiega la luce del Sole a raggiungere la Terra?"
            Reponses := array{"Circa 1 ora", "Circa 8 minuti", "Circa 1 secondo", "Circa 1 giorno"}
            BonneReponse := 1
        question:
            Enonce := "Quale telescopio spaziale ha preso il posto di Hubble nel 2021?"
            Reponses := array{"James Webb", "Galileo", "Spitzer", "Kepler"}
            BonneReponse := 0
        question:
            Enonce := "Quale corpo celeste e stato riclassificato come pianeta nano nel 2006?"
            Reponses := array{"Plutone", "Caronte", "Titano", "Cerere"}
            BonneReponse := 0
        question:
            Enonce := "Quale cagnolina sovietica fu il primo animale a orbitare attorno alla Terra?"
            Reponses := array{"Rex", "Belka", "Laika", "Strelka"}
            BonneReponse := 2
        question:
            Enonce := "Quale strato dell'atmosfera ci protegge dai raggi ultravioletti?"
            Reponses := array{"Lo strato di ozono", "La mesosfera", "La troposfera", "La ionosfera"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il secondo pianeta a partire dal Sole?"
            Reponses := array{"Mercurio", "Marte", "la Terra", "Venere"}
            BonneReponse := 3
        question:
            Enonce := "Di cosa sono composte principalmente le comete?"
            Reponses := array{"Di ferro puro", "Di gas ardenti", "Di roccia vulcanica", "Di ghiaccio e polvere"}
            BonneReponse := 3
        question:
            Enonce := "Quale cintura rocciosa si trova tra Marte e Giove?"
            Reponses := array{"Gli anelli di Saturno", "La nube di Oort", "La fascia di Kuiper", "La fascia degli asteroidi"}
            BonneReponse := 3
        question:
            Enonce := "Quale fenomeno luminoso colora il cielo vicino ai poli?"
            Reponses := array{"I fulmini", "Le aurore polari", "I miraggi", "Gli arcobaleni"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianeta ha il giorno (rotazione) piu lungo?"
            Reponses := array{"Mercurio", "Giove", "Venere", "la Terra"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama una roccia proveniente dallo spazio caduta sulla Terra?"
            Reponses := array{"Una cometa", "Un meteorite", "Un asteroide", "Una nebulosa"}
            BonneReponse := 1
        question:
            Enonce := "Quale primo satellite artificiale fu lanciato dall'URSS nel 1957?"
            Reponses := array{"Explorer 1", "Sputnik", "Vostok", "Telstar"}
            BonneReponse := 1
        question:
            Enonce := "Quale galassia vicina e visibile a occhio nudo dalla Terra?"
            Reponses := array{"il Sombrero", "il Triangolo", "Andromeda", "il Mulinello"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore cofondo il cubismo insieme a Picasso?"
            Reponses := array{"Henri Matisse", "Marc Chagall", "Paul Cezanne", "Georges Braque"}
            BonneReponse := 3
        question:
            Enonce := "Quale architetto progetto la basilica della Sagrada Familia a Barcellona?"
            Reponses := array{"Renzo Piano", "Antoni Gaudi", "Le Corbusier", "Gustave Eiffel"}
            BonneReponse := 1
        question:
            Enonce := "Quale movimento artistico, rappresentato da Dali, esplora il sogno e l'inconscio?"
            Reponses := array{"Il surrealismo", "Il realismo", "L'impressionismo", "Il cubismo"}
            BonneReponse := 0
        question:
            Enonce := "Chi dipinse La ragazza con l'orecchino di perla?"
            Reponses := array{"Johannes Vermeer", "Rubens", "Rembrandt", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Quale artista pop dipinse le lattine di zuppa Campbell?"
            Reponses := array{"Jackson Pollock", "Andy Warhol", "Keith Haring", "Roy Lichtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore olandese realizzo La ronda di notte?"
            Reponses := array{"Mondrian", "Vermeer", "Van Gogh", "Rembrandt"}
            BonneReponse := 3
        question:
            Enonce := "Quale affresco di Leonardo da Vinci rappresenta l'ultima cena di Cristo?"
            Reponses := array{"La creazione di Adamo", "La scuola di Atene", "L'Ultima Cena", "Il Giudizio universale"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore spagnolo realizzo Las Meninas?"
            Reponses := array{"Murillo", "Diego Velazquez", "El Greco", "Goya"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande museo di Madrid ospita Goya e Velazquez?"
            Reponses := array{"Gli Uffizi", "Il Guggenheim", "Il Prado", "Il Reina Sofia"}
            BonneReponse := 2
        question:
            Enonce := "Chi dipinse La Liberta che guida il popolo?"
            Reponses := array{"Eugene Delacroix", "Courbet", "Jacques-Louis David", "Gericault"}
            BonneReponse := 0
        question:
            Enonce := "Quale stile architettonico medievale si riconosce per gli archi rampanti e le vetrate?"
            Reponses := array{"Il romanico", "Il barocco", "L'art deco", "Il gotico"}
            BonneReponse := 3
        question:
            Enonce := "Quale pittore realizzo numerose tele di ninfee nel suo giardino di Giverny?"
            Reponses := array{"Sisley", "Pissarro", "Renoir", "Claude Monet"}
            BonneReponse := 3
        question:
            Enonce := "Quale artista messicana e celebre per i suoi intensi autoritratti?"
            Reponses := array{"Georgia O'Keeffe", "Niki de Saint Phalle", "Frida Kahlo", "Tamara de Lempicka"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore impressionista raffiguro spesso ballerine di danza classica?"
            Reponses := array{"Edgar Degas", "Caillebotte", "Monet", "Manet"}
            BonneReponse := 0
        question:
            Enonce := "Quale statua greca alata, senza testa ne braccia, troneggia al Louvre?"
            Reponses := array{"Il Discobolo", "La Venere di Milo", "La Nike di Samotracia", "La Pieta"}
            BonneReponse := 2
        question:
            Enonce := "Quale corrente artistica del primo Novecento, guidata da Matisse, usa colori vivaci?"
            Reponses := array{"Il dadaismo", "Il cubismo", "Il fauvismo", "Il puntinismo"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta italiana e considerata la culla del Rinascimento?"
            Reponses := array{"Firenze", "Roma", "Milano", "Venezia"}
            BonneReponse := 0
        question:
            Enonce := "Quale lega di rame e stagno serve a fondere le statue?"
            Reponses := array{"L'acciaio", "L'ottone", "Il bronzo", "Lo stagno puro"}
            BonneReponse := 2
        question:
            Enonce := "Quale stile molto ornato e teatrale domina l'arte del XVII secolo?"
            Reponses := array{"Il barocco", "Il minimalismo", "Il gotico", "Il cubismo"}
            BonneReponse := 0
        question:
            Enonce := "Quale celebre torre dell'orologio sorge a Londra?"
            Reponses := array{"Big Ben", "Il Cremlino", "La Torre di Pisa", "La Giralda"}
            BonneReponse := 0
        question:
            Enonce := "Chi dipinse il soffitto della Cappella Sistina?"
            Reponses := array{"Raffaello", "Caravaggio", "Michelangelo", "Leonardo da Vinci"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore olandese postimpressionista dipinse I mangiatori di patate?"
            Reponses := array{"Vermeer", "Mondrian", "Rembrandt", "Vincent van Gogh"}
            BonneReponse := 3
        question:
            Enonce := "Quale movimento geometrico fatto di linee nere e colori primari e legato a Mondrian?"
            Reponses := array{"Il barocco", "Il realismo", "Il rococo", "De Stijl"}
            BonneReponse := 3
        question:
            Enonce := "Quale scultore italiano del Rinascimento realizzo un David in bronzo?"
            Reponses := array{"Cellini", "Donatello", "Canova", "Bernini"}
            BonneReponse := 1
        question:
            Enonce := "Quale architetto moderno franco-svizzero teorizzo la Citta radiosa?"
            Reponses := array{"Gaudi", "Gustave Eiffel", "Frank Lloyd Wright", "Le Corbusier"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Delitto e castigo?"
            Reponses := array{"Fedor Dostoevskij", "Tolstoj", "Cechov", "Gogol'"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Alla ricerca del tempo perduto?"
            Reponses := array{"Marcel Proust", "Flaubert", "Gide", "Camus"}
            BonneReponse := 0
        question:
            Enonce := "Quale autrice ha creato il detective Hercule Poirot?"
            Reponses := array{"Georges Simenon", "Agatha Christie", "Conan Doyle", "Patricia Highsmith"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Lo straniero?"
            Reponses := array{"Albert Camus", "Andre Malraux", "Jean-Paul Sartre", "Boris Vian"}
            BonneReponse := 0
        question:
            Enonce := "Quale poeta ha scritto Il battello ebbro?"
            Reponses := array{"Arthur Rimbaud", "Paul Verlaine", "Baudelaire", "Mallarme"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Guerra e pace?"
            Reponses := array{"Solzenicyn", "Lev Tolstoj", "Puskin", "Dostoevskij"}
            BonneReponse := 1
        question:
            Enonce := "Quale drammaturgo francese ha scritto Il misantropo?"
            Reponses := array{"Racine", "Moliere", "Corneille", "Beaumarchais"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Orgoglio e pregiudizio?"
            Reponses := array{"Jane Austen", "Virginia Woolf", "Mary Shelley", "Charlotte Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Quale autore ha scritto Cent'anni di solitudine?"
            Reponses := array{"Mario Vargas Llosa", "Jorge Luis Borges", "Gabriel Garcia Marquez", "Pablo Neruda"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il vecchio e il mare?"
            Reponses := array{"Fitzgerald", "Steinbeck", "Faulkner", "Ernest Hemingway"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto l'opera Aspettando Godot?"
            Reponses := array{"Sartre", "Samuel Beckett", "Brecht", "Ionesco"}
            BonneReponse := 1
        question:
            Enonce := "Quale filosofo ha scritto Il contratto sociale?"
            Reponses := array{"Diderot", "Voltaire", "Montesquieu", "Jean-Jacques Rousseau"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il rosso e il nero?"
            Reponses := array{"Zola", "Stendhal", "Flaubert", "Balzac"}
            BonneReponse := 1
        question:
            Enonce := "Quale scrittore praghese ha scritto La metamorfosi e Il processo?"
            Reponses := array{"Thomas Mann", "Franz Kafka", "Hermann Hesse", "Robert Musil"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Dracula?"
            Reponses := array{"H.P. Lovecraft", "Mary Shelley", "Edgar Allan Poe", "Bram Stoker"}
            BonneReponse := 3
        question:
            Enonce := "Quale autore ha scritto Viaggio al termine della notte?"
            Reponses := array{"Marcel Ayme", "Georges Bernanos", "Romain Gary", "Louis-Ferdinand Celine"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto la saga Le cronache del ghiaccio e del fuoco (Il Trono di Spade)?"
            Reponses := array{"Robert Jordan", "George R.R. Martin", "Patrick Rothfuss", "J.R.R. Tolkien"}
            BonneReponse := 1
        question:
            Enonce := "Quale scrittore italiano ha scritto Il nome della rosa?"
            Reponses := array{"Umberto Eco", "Alberto Moravia", "Primo Levi", "Italo Calvino"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Madame Bovary?"
            Reponses := array{"Maupassant", "Balzac", "Gustave Flaubert", "Zola"}
            BonneReponse := 2
        question:
            Enonce := "Quale poeta ha scritto Domani, all'alba?"
            Reponses := array{"Victor Hugo", "Vigny", "Lamartine", "Musset"}
            BonneReponse := 0
        question:
            Enonce := "Quale autore britannico ha scritto i romanzi originali di James Bond?"
            Reponses := array{"Ian Fleming", "Graham Greene", "John le Carre", "Frederick Forsyth"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Anna Karenina?"
            Reponses := array{"Lev Tolstoj", "Cechov", "Dostoevskij", "Turgenev"}
            BonneReponse := 0
        question:
            Enonce := "Quale autore ha scritto Le formiche e I tanatonauti?"
            Reponses := array{"Guillaume Musso", "Michel Houellebecq", "Bernard Werber", "Marc Levy"}
            BonneReponse := 2
        question:
            Enonce := "Quale filosofo illuminista ha scritto il racconto Candido?"
            Reponses := array{"Kant", "Voltaire", "Rousseau", "Spinoza"}
            BonneReponse := 1
        question:
            Enonce := "Quale tragedia di Shakespeare presenta un re scozzese e tre streghe?"
            Reponses := array{"Otello", "Re Lear", "Macbeth", "Amleto"}
            BonneReponse := 2
        question:
            Enonce := "Quale compositore italiano scrisse Le quattro stagioni?"
            Reponses := array{"Puccini", "Verdi", "Rossini", "Antonio Vivaldi"}
            BonneReponse := 3
        question:
            Enonce := "Quale gruppo esegui Bohemian Rhapsody?"
            Reponses := array{"Led Zeppelin", "Deep Purple", "Queen", "The Who"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande compositore tedesco divenne sordo alla fine della sua vita?"
            Reponses := array{"Handel", "Ludwig van Beethoven", "Schubert", "Brahms"}
            BonneReponse := 1
        question:
            Enonce := "Quale strumento suona il celebre Yo-Yo Ma?"
            Reponses := array{"Il violino", "Il pianoforte", "Il flauto", "Il violoncello"}
            BonneReponse := 3
        question:
            Enonce := "Quale compositore francese scrisse l'opera Carmen?"
            Reponses := array{"Georges Bizet", "Gounod", "Saint-Saens", "Berlioz"}
            BonneReponse := 0
        question:
            Enonce := "Quante sinfonie compose Beethoven?"
            Reponses := array{"7", "9", "12", "5"}
            BonneReponse := 1
        question:
            Enonce := "Quale gruppo svedese canto Dancing Queen?"
            Reponses := array{"ABBA", "Roxette", "Europe", "Ace of Base"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore russo scrisse il balletto Il lago dei cigni?"
            Reponses := array{"Cajkovskij", "Rachmaninov", "Prokof'ev", "Stravinskij"}
            BonneReponse := 0
        question:
            Enonce := "Quale strumento a tastiera e l'antenato del pianoforte?"
            Reponses := array{"L'organo", "La fisarmonica", "Il clavicembalo", "Il sintetizzatore"}
            BonneReponse := 2
        question:
            Enonce := "Quale cantante americana e soprannominata Queen B?"
            Reponses := array{"Rihanna", "Lady Gaga", "Beyonce", "Madonna"}
            BonneReponse := 2
        question:
            Enonce := "Quale opera di Mozart si intitola Il flauto...?"
            Reponses := array{"Le nozze di Figaro", "Cosi fan tutte", "Don Giovanni", "Il flauto magico"}
            BonneReponse := 3
        question:
            Enonce := "Quale compositore polacco e celebre per i suoi notturni per pianoforte?"
            Reponses := array{"Schumann", "Fryderyk Chopin", "Debussy", "Liszt"}
            BonneReponse := 1
        question:
            Enonce := "Quale termine italiano indica un tempo rapido e vivace?"
            Reponses := array{"Lento", "Allegro", "Largo", "Adagio"}
            BonneReponse := 1
        question:
            Enonce := "Quale strumento scozzese ha un sacco e delle canne?"
            Reponses := array{"La cornamusa", "La fisarmonica", "L'oboe", "Il flauto di Pan"}
            BonneReponse := 0
        question:
            Enonce := "Quale famiglia di strumenti comprende il flauto, l'oboe e il clarinetto?"
            Reponses := array{"Le percussioni", "Gli ottoni", "Gli archi", "I legni"}
            BonneReponse := 3
        question:
            Enonce := "Quale gruppo britannico pubblico l'album The Dark Side of the Moon?"
            Reponses := array{"Pink Floyd", "The Beatles", "Genesis", "The Rolling Stones"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore francese scrisse il Bolero?"
            Reponses := array{"Erik Satie", "Claude Debussy", "Maurice Ravel", "Camille Saint-Saens"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la voce maschile piu grave?"
            Reponses := array{"Il controtenore", "Il basso", "Il baritono", "Il tenore"}
            BonneReponse := 1
        question:
            Enonce := "Quale cantante giamaicano rese popolare il reggae nel mondo?"
            Reponses := array{"Shaggy", "Jimmy Cliff", "Peter Tosh", "Bob Marley"}
            BonneReponse := 3
        question:
            Enonce := "Quale genere musicale che fonde blues e country fu reso popolare da Elvis Presley?"
            Reponses := array{"Il jazz", "Il rock'n'roll", "Il funk", "Il soul"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore scrisse il brano Marcia turca?"
            Reponses := array{"Mozart", "Liszt", "Beethoven", "Schubert"}
            BonneReponse := 0
        question:
            Enonce := "A quale frequenza viene solitamente accordato il la di riferimento?"
            Reponses := array{"440 Hz", "100 Hz", "880 Hz", "220 Hz"}
            BonneReponse := 0
        question:
            Enonce := "Quale stile musicale nacque nel Bronx di New York con il rap e il DJing?"
            Reponses := array{"L'hip-hop", "La disco music", "Il pop", "La techno"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore barocco tedesco e autore del Messia e della Musica per i reali fuochi d'artificio?"
            Reponses := array{"Vivaldi", "Handel", "Telemann", "Bach"}
            BonneReponse := 1
        question:
            Enonce := "Quale strumento elettrico e emblematico del modo di suonare di Jimi Hendrix?"
            Reponses := array{"La chitarra elettrica", "La batteria", "Il basso", "Il sintetizzatore"}
            BonneReponse := 0
        question:
            Enonce := "Quale regista ha girato Pulp Fiction?"
            Reponses := array{"Coen", "Martin Scorsese", "David Lynch", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Quale film sudcoreano ha vinto l'Oscar come miglior film nel 2020?"
            Reponses := array{"Old Boy", "Burning", "Train to Busan", "Parasite"}
            BonneReponse := 3
        question:
            Enonce := "Quale regista e soprannominato il maestro della suspense (Psyco)?"
            Reponses := array{"Stanley Kubrick", "Brian De Palma", "Alfred Hitchcock", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Quale trilogia di Peter Jackson adatta l'opera di Tolkien?"
            Reponses := array{"Harry Potter", "Il Signore degli Anelli", "Il Trono di Spade", "Star Wars"}
            BonneReponse := 1
        question:
            Enonce := "Quale attore interpreta il pirata Jack Sparrow?"
            Reponses := array{"Brad Pitt", "Orlando Bloom", "Johnny Depp", "Russell Crowe"}
            BonneReponse := 2
        question:
            Enonce := "Quale film di fantascienza del 1999 propone una pillola rossa?"
            Reponses := array{"Matrix", "Terminator", "Blade Runner", "Tron"}
            BonneReponse := 0
        question:
            Enonce := "Quale studio giapponese ha realizzato La citta incantata?"
            Reponses := array{"Toei", "Pixar", "Lo Studio Ghibli", "Madhouse"}
            BonneReponse := 2
        question:
            Enonce := "Quale film di Francis Ford Coppola racconta una famiglia mafiosa italoamericana?"
            Reponses := array{"Casino", "Scarface", "Il Padrino", "Quei bravi ragazzi"}
            BonneReponse := 2
        question:
            Enonce := "Quale film d'animazione Pixar mette in scena le emozioni nella testa di una bambina?"
            Reponses := array{"Up", "Coco", "Inside Out", "Ratatouille"}
            BonneReponse := 2
        question:
            Enonce := "Quale regista ha girato Inception e Interstellar?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quale personaggio della DC Comics e il nemico clown di Batman?"
            Reponses := array{"Bane", "Lex Luthor", "Il Joker", "Il Pinguino"}
            BonneReponse := 2
        question:
            Enonce := "Quale film muto francese ha vinto l'Oscar come miglior film nel 2012?"
            Reponses := array{"Quasi amici", "La vita di Adele", "Il favoloso mondo di Amelie", "The Artist"}
            BonneReponse := 3
        question:
            Enonce := "Quale attrice interpreta Hermione nella saga di Harry Potter?"
            Reponses := array{"Emma Watson", "Keira Knightley", "Emma Stone", "Anna Kendrick"}
            BonneReponse := 0
        question:
            Enonce := "Quale attore austriaco, star dei film d'azione, e diventato governatore della California?"
            Reponses := array{"Arnold Schwarzenegger", "Jean-Claude Van Damme", "Sylvester Stallone", "Dolph Lundgren"}
            BonneReponse := 0
        question:
            Enonce := "Quale film del 1994 segue un uomo ingenuo attraverso la storia americana?"
            Reponses := array{"L'attimo fuggente", "Big", "Rain Man", "Forrest Gump"}
            BonneReponse := 3
        question:
            Enonce := "Quale film di Kubrick mette in scena il computer HAL 9000?"
            Reponses := array{"Solaris", "Shining", "Arancia meccanica", "2001: Odissea nello spazio"}
            BonneReponse := 3
        question:
            Enonce := "Quale attrice francese ha vinto un Oscar per il suo ruolo di Edith Piaf?"
            Reponses := array{"Juliette Binoche", "Marion Cotillard", "Isabelle Adjani", "Audrey Tautou"}
            BonneReponse := 1
        question:
            Enonce := "Quale attore interpreta Iron Man nell'universo cinematografico Marvel?"
            Reponses := array{"Chris Evans", "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"}
            BonneReponse := 2
        question:
            Enonce := "Quale film di James Cameron del 2009 si svolge sul pianeta Pandora?"
            Reponses := array{"Dune", "Avatar", "Aliens", "Abyss"}
            BonneReponse := 1
        question:
            Enonce := "Quale attore ha interpretato a lungo James Bond negli anni 1970-1980?"
            Reponses := array{"Timothy Dalton", "Roger Moore", "Sean Connery", "Pierce Brosnan"}
            BonneReponse := 1
        question:
            Enonce := "Quale saga horror mette in scena l'assassino Freddy Krueger?"
            Reponses := array{"Scream", "Venerdi 13", "Nightmare - Dal profondo della notte", "Halloween"}
            BonneReponse := 2
        question:
            Enonce := "Quale attore interpreta spesso gli eroi di Martin Scorsese (Taxi Driver)?"
            Reponses := array{"Dustin Hoffman", "Jack Nicholson", "Robert De Niro", "Al Pacino"}
            BonneReponse := 2
        question:
            Enonce := "Quale film catastrofico del 1997 ha a lungo detenuto il record d'incassi?"
            Reponses := array{"Avatar", "Jurassic Park", "Twister", "Titanic"}
            BonneReponse := 3
        question:
            Enonce := "Quale saga vede contrapposti i Jedi all'Impero e ai Sith?"
            Reponses := array{"Dune", "Star Trek", "Star Wars", "Stargate"}
            BonneReponse := 2
        question:
            Enonce := "Quale giovane mago con gli occhiali e l'eroe di una saga cinematografica?"
            Reponses := array{"Gandalf", "Harry Potter", "Merlino", "Silente"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha vinto la Coppa del Mondo di calcio 2018?"
            Reponses := array{"La Francia", "La Germania", "Il Brasile", "La Croazia"}
            BonneReponse := 0
        question:
            Enonce := "Da quanti giocatori e composta una squadra di rugby a 15 in campo?"
            Reponses := array{"7", "13", "15", "11"}
            BonneReponse := 2
        question:
            Enonce := "Quale nuotatore americano detiene il record di medaglie olimpiche?"
            Reponses := array{"Ryan Lochte", "Ian Thorpe", "Michael Phelps", "Mark Spitz"}
            BonneReponse := 2
        question:
            Enonce := "In quale citta si sono tenuti i Giochi Olimpici estivi del 2024?"
            Reponses := array{"Parigi", "Tokyo", "Los Angeles", "Londra"}
            BonneReponse := 0
        question:
            Enonce := "Quale tennista detiene il record di vittorie al Roland Garros?"
            Reponses := array{"Novak Djokovic", "Roger Federer", "Rafael Nadal", "Bjorn Borg"}
            BonneReponse := 2
        question:
            Enonce := "In quale disciplina automobilistica corre Lewis Hamilton?"
            Reponses := array{"La MotoGP", "Il rally", "La 24 Ore di Le Mans", "La Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Quale capitano argentino ha alzato la Coppa del Mondo 2022?"
            Reponses := array{"Sergio Aguero", "Angel Di Maria", "Diego Maradona", "Lionel Messi"}
            BonneReponse := 3
        question:
            Enonce := "Quante basi ci sono in un campo da baseball?"
            Reponses := array{"2", "4", "3", "5"}
            BonneReponse := 1
        question:
            Enonce := "Quante volte Eddy Merckx ha vinto il Tour de France?"
            Reponses := array{"7", "3", "2", "5"}
            BonneReponse := 3
        question:
            Enonce := "Quale disciplina olimpica combina sci di fondo e tiro con la carabina?"
            Reponses := array{"Il biathlon", "Lo skeleton", "La combinata nordica", "Il pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "Quale pugile ha morso l'orecchio di Evander Holyfield durante un incontro?"
            Reponses := array{"Muhammad Ali", "George Foreman", "Lennox Lewis", "Mike Tyson"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport si pratica a cavallo con una mazza e una palla?"
            Reponses := array{"L'horse-ball", "Il polo", "Il croquet", "Il cricket"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha vinto piu Coppe del Mondo di calcio?"
            Reponses := array{"L'Argentina", "La Germania", "Il Brasile", "L'Italia"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama il colpo di tennis battuto con forza sopra la testa?"
            Reponses := array{"Lo smash", "Il pallonetto", "La smorzata", "La volee"}
            BonneReponse := 0
        question:
            Enonce := "Quale cestista americano e soprannominato King James?"
            Reponses := array{"Shaquille O'Neal", "Kobe Bryant", "LeBron James", "Stephen Curry"}
            BonneReponse := 2
        question:
            Enonce := "Quale club di calcio madrileno e soprannominato i Merengues?"
            Reponses := array{"L'Atletico Madrid", "Il Siviglia FC", "Il FC Barcellona", "Il Real Madrid"}
            BonneReponse := 3
        question:
            Enonce := "Quanti punti vale un canestro segnato oltre la linea dei tre punti?"
            Reponses := array{"4", "2", "1", "3"}
            BonneReponse := 3
        question:
            Enonce := "Quale arte marziale giapponese si pratica a piedi nudi, con kata e colpi?"
            Reponses := array{"Il karate", "L'aikido", "Il sumo", "Il judo"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la durata regolamentare di una partita di calcio (senza i supplementari)?"
            Reponses := array{"80 minuti", "120 minuti", "90 minuti", "60 minuti"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport di squadra americano si gioca con una palla ovale e i touchdown?"
            Reponses := array{"Il football americano", "Il baseball", "L'hockey", "Il rugby"}
            BonneReponse := 0
        question:
            Enonce := "Quale torneo di tennis si gioca sull'erba di Londra?"
            Reponses := array{"gli Australian Open", "gli US Open", "il Roland Garros", "Wimbledon"}
            BonneReponse := 3
        question:
            Enonce := "Quale nazionale di calcio e soprannominata la Mannschaft?"
            Reponses := array{"La Germania", "Il Belgio", "I Paesi Bassi", "L'Italia"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport di scivolamento si pratica in piedi su una tavola, sulla neve?"
            Reponses := array{"Lo slittino", "Il bob", "Lo snowboard", "Lo sci"}
            BonneReponse := 2
        question:
            Enonce := "Da quante prove e composto il decathlon nell'atletica?"
            Reponses := array{"10", "5", "7", "12"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese sono nati i Giochi Olimpici antichi?"
            Reponses := array{"L'Egitto", "La Turchia", "La Grecia", "L'Italia"}
            BonneReponse := 2
        question:
            Enonce := "Quale dio greco regna sul regno dei morti (gli Inferi)?"
            Reponses := array{"Ade", "Poseidone", "Zeus", "Ares"}
            BonneReponse := 0
        question:
            Enonce := "Quale eroe greco taglio la testa di Medusa?"
            Reponses := array{"Eracle", "Teseo", "Perseo", "Giasone"}
            BonneReponse := 2
        question:
            Enonce := "Quale titano rubo il fuoco agli dei per donarlo agli uomini?"
            Reponses := array{"Prometeo", "Atlante", "Epimeteo", "Crono"}
            BonneReponse := 0
        question:
            Enonce := "Quale dio nordico guercio e il sovrano degli dei?"
            Reponses := array{"Loki", "Thor", "Odino", "Baldr"}
            BonneReponse := 2
        question:
            Enonce := "Quale eroe greco parti alla conquista del Vello d'oro?"
            Reponses := array{"Ulisse", "Achille", "Giasone", "Ettore"}
            BonneReponse := 2
        question:
            Enonce := "Quale fiume attraversano le anime per raggiungere gli Inferi greci?"
            Reponses := array{"Lo Stige", "L'Acheronte", "Il Nilo", "Il Lete"}
            BonneReponse := 0
        question:
            Enonce := "Quale dio egizio con testa di falco e associato al faraone?"
            Reponses := array{"Seth", "Thot", "Anubi", "Horus"}
            BonneReponse := 3
        question:
            Enonce := "Quale mostro, meta leone e meta donna, pone enigmi mortali?"
            Reponses := array{"L'arpia", "La sfinge", "La chimera", "La gorgone"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio greco della fucina lavora il metallo per gli dei?"
            Reponses := array{"Efesto", "Apollo", "Ermes", "Dioniso"}
            BonneReponse := 0
        question:
            Enonce := "Quale religione segue l'insegnamento di Siddhartha Gautama?"
            Reponses := array{"Il buddismo", "Lo shintoismo", "L'induismo", "Il taoismo"}
            BonneReponse := 0
        question:
            Enonce := "Quale eroe greco uccise il Minotauro nel labirinto?"
            Reponses := array{"Teseo", "Eracle", "Perseo", "Icaro"}
            BonneReponse := 0
        question:
            Enonce := "Quale dio burlone della mitologia nordica provoca il caos?"
            Reponses := array{"Freyr", "Loki", "Tyr", "Heimdall"}
            BonneReponse := 1
        question:
            Enonce := "Quale dea greca della caccia e la sorella gemella di Apollo?"
            Reponses := array{"Era", "Estia", "Artemide", "Demetra"}
            BonneReponse := 2
        question:
            Enonce := "Quale poema epico racconta il lungo ritorno di Ulisse a Itaca?"
            Reponses := array{"L'Eneide", "L'Odissea", "L'Iliade", "La Teogonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio induista ha la testa di elefante?"
            Reponses := array{"Ganesha", "Brahma", "Shiva", "Vishnu"}
            BonneReponse := 0
        question:
            Enonce := "Come si chiama la spada leggendaria di re Artu?"
            Reponses := array{"Tizona", "Joyeuse", "Durendal", "Excalibur"}
            BonneReponse := 3
        question:
            Enonce := "Quante Muse ci sono nella mitologia greca?"
            Reponses := array{"9", "7", "12", "3"}
            BonneReponse := 0
        question:
            Enonce := "Quale personaggio fu condannato a reggere la volta celeste sulle spalle?"
            Reponses := array{"Sisifo", "Tantalo", "Prometeo", "Atlante"}
            BonneReponse := 3
        question:
            Enonce := "Quale dea egizia e la sposa di Osiride?"
            Reponses := array{"Nut", "Hathor", "Bastet", "Iside"}
            BonneReponse := 3
        question:
            Enonce := "Quale religione conta il maggior numero di fedeli al mondo?"
            Reponses := array{"Il cristianesimo", "Il buddismo", "L'islam", "L'induismo"}
            BonneReponse := 0
        question:
            Enonce := "Quale scatola, nel mito greco, libero tutti i mali dell'umanita?"
            Reponses := array{"Il vaso di Mida", "Il vaso di Pandora", "L'urna di Achille", "Il forziere di Perseo"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio romano del commercio e dei viaggiatori corrisponde a Ermes?"
            Reponses := array{"Vulcano", "Marte", "Giano", "Mercurio"}
            BonneReponse := 3
        question:
            Enonce := "Quale creatura alata con corpo di leone e testa d'aquila custodisce i tesori?"
            Reponses := array{"Il ciclope", "Il centauro", "Il grifone", "Il basilisco"}
            BonneReponse := 2
        question:
            Enonce := "Quale dimora celeste accoglie i guerrieri morti in battaglia (mitologia nordica)?"
            Reponses := array{"Il Valhalla", "Il Helheim", "Il Niflheim", "Il Midgard"}
            BonneReponse := 0
        question:
            Enonce := "Quale animale era sacro alla dea egizia Bastet?"
            Reponses := array{"Il cane", "Il gatto", "Il coccodrillo", "Il falco"}
            BonneReponse := 1
        question:
            Enonce := "In quale anno Costantinopoli cadde nelle mani degli Ottomani?"
            Reponses := array{"1071", "1453", "1204", "1492"}
            BonneReponse := 1
        question:
            Enonce := "Quali trattati del 1648 posero fine alla guerra dei Trent'anni?"
            Reponses := array{"Il trattato di Versailles", "Il trattato di Utrecht", "La pace di Vestfalia", "La pace di Augusta"}
            BonneReponse := 2
        question:
            Enonce := "Quale imperatore bizantino fece codificare il diritto romano?"
            Reponses := array{"Basilio II", "Costantino", "Eraclio", "Giustiniano"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno fu firmata la Magna Carta in Inghilterra?"
            Reponses := array{"1066", "1215", "1314", "1453"}
            BonneReponse := 1
        question:
            Enonce := "Quale dinastia regno in Francia a partire dal 987 con Ugo Capeto?"
            Reponses := array{"I Carolingi", "I Capetingi", "I Merovingi", "I Valois"}
            BonneReponse := 1
        question:
            Enonce := "Quale cancelliere prussiano orchestro l'unita tedesca nel 1871?"
            Reponses := array{"Guglielmo II", "Metternich", "Adenauer", "Otto von Bismarck"}
            BonneReponse := 3
        question:
            Enonce := "In quale anno scoppio la guerra di secessione americana?"
            Reponses := array{"1898", "1861", "1776", "1812"}
            BonneReponse := 1
        question:
            Enonce := "Sotto quale imperatore della dinastia flavia fu inaugurato il Colosseo?"
            Reponses := array{"Augusto", "Adriano", "Nerone", "Vespasiano"}
            BonneReponse := 3
        question:
            Enonce := "Quale gladiatore guido una grande rivolta di schiavi contro Roma?"
            Reponses := array{"Vercingetorige", "Crasso", "Spartaco", "Annibale"}
            BonneReponse := 2
        question:
            Enonce := "In quale anno Giovanna d'Arco fu bruciata a Rouen?"
            Reponses := array{"1415", "1453", "1429", "1431"}
            BonneReponse := 3
        question:
            Enonce := "Quale trattato del 1494 divise il Nuovo Mondo tra Spagna e Portogallo?"
            Reponses := array{"Il trattato di Tordesillas", "Il trattato di Parigi", "Il trattato di Madrid", "Il trattato di Saragozza"}
            BonneReponse := 0
        question:
            Enonce := "Quale dinastia mongola precedette i Ming in Cina?"
            Reponses := array{"Gli Han", "I Qing", "Gli Yuan", "I Song"}
            BonneReponse := 2
        question:
            Enonce := "Quale zar modernizzo la Russia e fondo San Pietroburgo?"
            Reponses := array{"Pietro il Grande", "Nicola II", "Alessandro I", "Ivan il Terribile"}
            BonneReponse := 0
        question:
            Enonce := "In quale anno Hong Kong fu restituita alla Cina?"
            Reponses := array{"1997", "1989", "1984", "2001"}
            BonneReponse := 0
        question:
            Enonce := "Quale faraone fece edificare i templi di Abu Simbel?"
            Reponses := array{"Akhenaton", "Ramses II", "Tutankhamon", "Cheope"}
            BonneReponse := 1
        question:
            Enonce := "Quale civilta aveva Tenochtitlan come capitale?"
            Reponses := array{"I Toltechi", "I Maya", "Gli Aztechi", "Gli Incas"}
            BonneReponse := 2
        question:
            Enonce := "Chi scopri la tomba di Tutankhamon nel 1922?"
            Reponses := array{"Auguste Mariette", "Howard Carter", "Heinrich Schliemann", "Jean-Francois Champollion"}
            BonneReponse := 1
        question:
            Enonce := "Quale cancelliere guido la riunificazione tedesca nel 1990?"
            Reponses := array{"Konrad Adenauer", "Helmut Kohl", "Willy Brandt", "Gerhard Schroder"}
            BonneReponse := 1
        question:
            Enonce := "A quale anno corrispondono le 'Tre Gloriose' della rivoluzione parigina?"
            Reponses := array{"1848", "1830", "1789", "1871"}
            BonneReponse := 1
        question:
            Enonce := "Quale conquistatore macedone costrui un immenso impero nel IV secolo a.C.?"
            Reponses := array{"Alessandro Magno", "Giulio Cesare", "Pericle", "Dario"}
            BonneReponse := 0
        question:
            Enonce := "In quale anno fu abolita la servitu della gleba nell'Impero russo?"
            Reponses := array{"1861", "1789", "1812", "1917"}
            BonneReponse := 0
        question:
            Enonce := "Quale accordo segreto del 1916 divise il Vicino Oriente tra Francia e Regno Unito?"
            Reponses := array{"Gli accordi Sykes-Picot", "La dichiarazione Balfour", "Gli accordi di Yalta", "Il trattato di Sevres"}
            BonneReponse := 0
        question:
            Enonce := "Quale dinastia regnava in Francia alla vigilia della Rivoluzione del 1789?"
            Reponses := array{"I Valois", "I Borboni", "Gli Orleans", "I Capetingi diretti"}
            BonneReponse := 1
        question:
            Enonce := "Quale imperatore trasferi la capitale romana a Bisanzio nel 330?"
            Reponses := array{"Teodosio", "Augusto", "Diocleziano", "Costantino"}
            BonneReponse := 3
        question:
            Enonce := "Quale regina d'Inghilterra e celebre per la sua 'era' nel XIX secolo e un impero mondiale?"
            Reponses := array{"Maria Tudor", "Elisabetta I", "Anna", "Vittoria"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la capitale del Kazakistan?"
            Reponses := array{"Astana", "Almaty", "Bishkek", "Tashkent"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il paese piu popoloso dell'Africa?"
            Reponses := array{"La Nigeria", "il Sudafrica", "l'Etiopia", "l'Egitto"}
            BonneReponse := 0
        question:
            Enonce := "Quale stretto separa la Russia dall'Alaska?"
            Reponses := array{"Lo stretto di Bering", "Lo stretto di Magellano", "Lo stretto di Danimarca", "Lo stretto di Hormuz"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il punto emerso piu basso della superficie terrestre?"
            Reponses := array{"La depressione dell'Afar", "Il delta del Nilo", "La Valle della Morte", "Le rive del mar Morto"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la capitale della Mongolia?"
            Reponses := array{"Ulan Bator", "Lhasa", "Astana", "Tashkent"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la capitale della Finlandia?"
            Reponses := array{"Stoccolma", "Tallinn", "Oslo", "Helsinki"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il lago piu grande dell'Africa?"
            Reponses := array{"Il lago Vittoria", "Il lago Ciad", "Il lago Tanganica", "Il lago Malawi"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il deserto piu arido del mondo?"
            Reponses := array{"Il deserto di Atacama", "Il deserto del Gobi", "Il Sahara", "Il deserto del Mojave"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese possiede la costa piu lunga del mondo?"
            Reponses := array{"la Russia", "Il Canada", "l'Indonesia", "l'Australia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese africano non e mai stato colonizzato (a parte una breve occupazione)?"
            Reponses := array{"il Kenya", "L'Etiopia", "il Senegal", "il Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale del Vietnam?"
            Reponses := array{"Bangkok", "Phnom Penh", "Ho Chi Minh", "Hanoi"}
            BonneReponse := 3
        question:
            Enonce := "Quale fiume attraversa la citta di Baghdad?"
            Reponses := array{"l'Eufrate", "il Giordano", "il Nilo", "Il Tigri"}
            BonneReponse := 3
        question:
            Enonce := "Quale catena montuosa segna il confine Europa-Asia in Russia?"
            Reponses := array{"Gli Urali", "il Caucaso", "i Carpazi", "l'Altaj"}
            BonneReponse := 0
        question:
            Enonce := "Quale arcipelago asiatico conta il maggior numero di vulcani attivi?"
            Reponses := array{"la Nuova Zelanda", "L'Indonesia", "le Filippine", "il Giappone"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capitale della Bulgaria?"
            Reponses := array{"Bucarest", "Zagabria", "Sofia", "Belgrado"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la capitale del Cile?"
            Reponses := array{"Santiago", "Buenos Aires", "La Paz", "Lima"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande fiume sfocia nel mar Caspio?"
            Reponses := array{"l'Ural", "Il Volga", "il Danubio", "il Dnepr"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la penisola piu grande del mondo?"
            Reponses := array{"La penisola arabica", "la penisola della Kamchatka", "la penisola iberica", "la penisola indiana"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta e la sede del governo dei Paesi Bassi, anche se Amsterdam e la capitale?"
            Reponses := array{"Eindhoven", "L'Aia", "Utrecht", "Rotterdam"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il lago piu profondo del mondo?"
            Reponses := array{"Il lago Bajkal", "il lago Superiore", "il lago Tanganica", "il mar Caspio"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la capitale della Corea del Nord?"
            Reponses := array{"Hanoi", "Pechino", "Seul", "Pyongyang"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la vetta piu alta della cordigliera delle Ande?"
            Reponses := array{"L'Aconcagua", "l'Illimani", "il Cotopaxi", "il Chimborazo"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la capitale del Marocco?"
            Reponses := array{"Marrakech", "Fez", "Rabat", "Casablanca"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese confina con il maggior numero di paesi (14, a pari merito con la Russia)?"
            Reponses := array{"il Brasile", "l'India", "La Cina", "la Germania"}
            BonneReponse := 2
        question:
            Enonce := "Quale stretto, punto nevralgico del petrolio, collega il golfo Persico al golfo dell'Oman?"
            Reponses := array{"Lo stretto di Hormuz", "il Bosforo", "lo stretto di Malacca", "il canale di Suez"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il numero atomico dell'idrogeno?"
            Reponses := array{"0", "1", "2", "8"}
            BonneReponse := 1
        question:
            Enonce := "Quale particella e il mediatore della forza elettromagnetica?"
            Reponses := array{"il bosone di Higgs", "il neutrino", "Il fotone", "il gluone"}
            BonneReponse := 2
        question:
            Enonce := "Quale fisico enuncio il principio di indeterminazione?"
            Reponses := array{"Erwin Schrodinger", "Werner Heisenberg", "Niels Bohr", "Max Planck"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'elemento chimico piu abbondante dell'universo?"
            Reponses := array{"l'ossigeno", "l'elio", "L'idrogeno", "il carbonio"}
            BonneReponse := 2
        question:
            Enonce := "Quanto vale approssimativamente il numero di Avogadro?"
            Reponses := array{"1,6 x 10^1^9", "3,14 x 10^8", "9,81", "6,022 x 10^2^3"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'unita del Sistema Internazionale per la quantita di sostanza?"
            Reponses := array{"il kelvin", "La mole", "il litro", "il grammo"}
            BonneReponse := 1
        question:
            Enonce := "Quale fisico scopri l'elettrone?"
            Reponses := array{"Bohr", "J.J. Thomson", "Chadwick", "Rutherford"}
            BonneReponse := 1
        question:
            Enonce := "Quale scienziato russo stabili la classificazione periodica degli elementi?"
            Reponses := array{"Dalton", "Lavoisier", "Berzelius", "Dmitrij Mendeleev"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il pH di una soluzione neutra a 25 C?"
            Reponses := array{"14", "7", "0", "1"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la piu debole delle quattro interazioni fondamentali?"
            Reponses := array{"l'interazione debole", "La gravitazione", "la forza elettromagnetica", "l'interazione forte"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la formula chimica del metano?"
            Reponses := array{"NH3", "CH4", "C2H6", "CO2"}
            BonneReponse := 1
        question:
            Enonce := "Quale fisico unifico l'elettricita e il magnetismo con le sue equazioni?"
            Reponses := array{"James Clerk Maxwell", "Faraday", "Ampere", "Coulomb"}
            BonneReponse := 0
        question:
            Enonce := "A quale temperatura si trova lo zero assoluto?"
            Reponses := array{"-100 C", "-459 C", "0 C", "-273,15 C"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il simbolo chimico del tungsteno?"
            Reponses := array{"Tu", "Tg", "W", "Tn"}
            BonneReponse := 2
        question:
            Enonce := "Quale gas inerte e il piu abbondante nell'atmosfera terrestre (3 gas)?"
            Reponses := array{"l'elio", "L'argon", "il kripton", "il neon"}
            BonneReponse := 1
        question:
            Enonce := "Quale legge collega la pressione e il volume di un gas a temperatura costante?"
            Reponses := array{"la legge di Hooke", "la legge di Coulomb", "la legge di Ohm", "La legge di Boyle-Mariotte"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'unita di misura della carica elettrica?"
            Reponses := array{"l'ampere", "il watt", "il volt", "Il coulomb"}
            BonneReponse := 3
        question:
            Enonce := "Quale tipo di legame chimico unisce gli atomi di una molecola d'acqua?"
            Reponses := array{"Il legame covalente", "il legame metallico", "il legame ionico", "il solo legame a idrogeno"}
            BonneReponse := 0
        question:
            Enonce := "Quale radiazione corrisponde a un nucleo di elio emesso durante un decadimento?"
            Reponses := array{"la radiazione gamma", "La radiazione alfa", "i raggi X", "la radiazione beta"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il simbolo chimico del piombo?"
            Reponses := array{"Pm", "Pl", "Pb", "Po"}
            BonneReponse := 2
        question:
            Enonce := "Quale reazione nucleare fa brillare il Sole?"
            Reponses := array{"la combustione del carbonio", "la radioattivita beta", "la fissione dell'uranio", "La fusione dell'idrogeno"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'unita SI per misurare la tensione elettrica?"
            Reponses := array{"Il volt", "l'hertz", "l'ampere", "l'ohm"}
            BonneReponse := 0
        question:
            Enonce := "Quale componente principale del gas naturale e anche un potente gas serra?"
            Reponses := array{"Il metano", "l'ozono", "l'argon", "l'azoto"}
            BonneReponse := 0
        question:
            Enonce := "Quale grandezza misura la scala Kelvin?"
            Reponses := array{"la massa", "la pressione", "l'energia", "La temperatura"}
            BonneReponse := 3
        question:
            Enonce := "Quale scienziato formulo la teoria della relativita generale?"
            Reponses := array{"Newton", "Albert Einstein", "Planck", "Hawking"}
            BonneReponse := 1
        question:
            Enonce := "Quante coppie di cromosomi ha un essere umano?"
            Reponses := array{"46", "23", "12", "24"}
            BonneReponse := 1
        question:
            Enonce := "Quale proteina del sangue trasporta l'ossigeno?"
            Reponses := array{"l'albumina", "l'insulina", "L'emoglobina", "il collagene"}
            BonneReponse := 2
        question:
            Enonce := "Quale ricercatore scopri insieme a Crick la struttura a doppia elica del DNA?"
            Reponses := array{"James Watson", "Louis Pasteur", "Gregor Mendel", "Charles Darwin"}
            BonneReponse := 0
        question:
            Enonce := "Dove si formano i globuli rossi nell'adulto?"
            Reponses := array{"Nel midollo osseo", "nel fegato", "nella milza", "nei reni"}
            BonneReponse := 0
        question:
            Enonce := "Quale organello e la centrale energetica della cellula?"
            Reponses := array{"l'apparato di Golgi", "Il mitocondrio", "il nucleo", "il ribosoma"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il nervo piu lungo del corpo umano?"
            Reponses := array{"il nervo vago", "il nervo ottico", "Il nervo sciatico", "il nervo facciale"}
            BonneReponse := 2
        question:
            Enonce := "Quale medico inglese descrisse la circolazione del sangue nel XVII secolo?"
            Reponses := array{"William Harvey", "Joseph Lister", "Alexander Fleming", "Edward Jenner"}
            BonneReponse := 0
        question:
            Enonce := "Quale processo di divisione produce le cellule sessuali (gameti)?"
            Reponses := array{"la fecondazione", "la mitosi", "la mutazione", "La meiosi"}
            BonneReponse := 3
        question:
            Enonce := "Quale vitamina e indispensabile per la coagulazione del sangue?"
            Reponses := array{"la vitamina C", "La vitamina K", "la vitamina D", "la vitamina B12"}
            BonneReponse := 1
        question:
            Enonce := "Quanti denti da latte ha un bambino piccolo?"
            Reponses := array{"28", "32", "20", "24"}
            BonneReponse := 2
        question:
            Enonce := "Quale pigmento verde permette la fotosintesi delle piante?"
            Reponses := array{"l'emoglobina", "la melanina", "la cheratina", "La clorofilla"}
            BonneReponse := 3
        question:
            Enonce := "Quale ghiandola, alla base del cervello, comanda le altre ghiandole?"
            Reponses := array{"la tiroide", "L'ipofisi", "il pancreas", "la milza"}
            BonneReponse := 1
        question:
            Enonce := "Quale gruppo di animali comprende le rane e le salamandre?"
            Reponses := array{"i molluschi", "i pesci", "Gli anfibi", "i rettili"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la durata media di vita di un globulo rosso?"
            Reponses := array{"circa 10 anni", "circa 24 ore", "Circa 120 giorni", "circa 7 giorni"}
            BonneReponse := 2
        question:
            Enonce := "Quale medico mise a punto il primo vaccino (contro il vaiolo)?"
            Reponses := array{"Jonas Salk", "Edward Jenner", "Louis Pasteur", "Robert Koch"}
            BonneReponse := 1
        question:
            Enonce := "Quale proteina fibrosa compone tendini, pelle e cartilagini?"
            Reponses := array{"la cheratina", "l'elastina", "la fibrina", "Il collagene"}
            BonneReponse := 3
        question:
            Enonce := "Quale parte dell'occhio mette a fuoco deformandosi?"
            Reponses := array{"la pupilla", "la cornea", "la retina", "Il cristallino"}
            BonneReponse := 3
        question:
            Enonce := "Quante cavita ha il cuore di un pesce?"
            Reponses := array{"1", "4", "2", "3"}
            BonneReponse := 2
        question:
            Enonce := "Quale ormone abbassa il livello di zucchero nel sangue?"
            Reponses := array{"il testosterone", "la melatonina", "l'adrenalina", "L'insulina"}
            BonneReponse := 3
        question:
            Enonce := "Quanti muscoli ha all'incirca il corpo umano?"
            Reponses := array{"circa 50", "circa 100", "circa 2000", "Circa 600"}
            BonneReponse := 3
        question:
            Enonce := "Dove si trova il DNA in una cellula umana?"
            Reponses := array{"Nel nucleo", "nella membrana", "nei ribosomi", "nel citoplasma"}
            BonneReponse := 0
        question:
            Enonce := "Quale scienziato stabili le leggi dell'ereditarieta partendo da incroci di piselli?"
            Reponses := array{"Darwin", "Gregor Mendel", "Pasteur", "Lamarck"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'osso che protegge l'encefalo?"
            Reponses := array{"lo sterno", "Il cranio", "la colonna vertebrale", "la mandibola"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la capacita polmonare totale approssimativa di un adulto?"
            Reponses := array{"circa 15 litri", "circa 30 litri", "Circa 6 litri", "circa 1 litro"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiamano le cellule riproduttive maschili?"
            Reponses := array{"gli ovuli", "Gli spermatozoi", "i neuroni", "le piastrine"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'uccello piu piccolo del mondo?"
            Reponses := array{"il regolo", "il rondone", "il passero", "Il colibri"}
            BonneReponse := 3
        question:
            Enonce := "Quanti compartimenti ha lo stomaco di una mucca?"
            Reponses := array{"6", "2", "1", "4"}
            BonneReponse := 3
        question:
            Enonce := "Quale uccello migra piu lontano, da un polo all'altro?"
            Reponses := array{"l'oca selvatica", "la cicogna", "la rondine", "La sterna artica"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il felino piu grande del continente americano?"
            Reponses := array{"il puma", "l'ocelot", "la lince", "Il giaguaro"}
            BonneReponse := 3
        question:
            Enonce := "Quale cetaceo artico ha una lunga zanna a spirale, soprannominato unicorno dei mari?"
            Reponses := array{"il beluga", "il tricheco", "il capodoglio", "Il narvalo"}
            BonneReponse := 3
        question:
            Enonce := "Quale serpente terrestre e considerato il piu velenoso del mondo?"
            Reponses := array{"la vipera", "il mamba nero", "il cobra reale", "Il taipan dell'interno"}
            BonneReponse := 3
        question:
            Enonce := "Quale anfibio messicano e famoso per rigenerare i propri arti?"
            Reponses := array{"L'axolotl", "il rospo", "la salamandra", "il tritone"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta detiene il record di crescita piu rapida?"
            Reponses := array{"la ninfea", "l'ortica", "Il bambu", "il girasole"}
            BonneReponse := 2
        question:
            Enonce := "Quale uccello depone le uova nel nido di altre specie?"
            Reponses := array{"il pettirosso", "Il cuculo", "il picchio", "la gazza"}
            BonneReponse := 1
        question:
            Enonce := "Quale animale terrestre e considerato il piu lento?"
            Reponses := array{"il koala", "la lumaca", "Il bradipo", "la tartaruga"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la piu grande specie di tartaruga marina?"
            Reponses := array{"La tartaruga liuto", "la tartaruga verde", "la caretta", "la tartaruga embricata"}
            BonneReponse := 0
        question:
            Enonce := "Quale animale ha gli occhi piu grandi del regno animale?"
            Reponses := array{"Il calamaro gigante", "il gufo", "il cavallo", "lo struzzo"}
            BonneReponse := 0
        question:
            Enonce := "Quale mammifero compie una delle piu lunghe migrazioni annuali?"
            Reponses := array{"il pipistrello", "la renna", "La balena grigia", "lo gnu"}
            BonneReponse := 2
        question:
            Enonce := "Quale mammifero australiano depone uova e ha aculei?"
            Reponses := array{"il koala", "L'echidna", "il diavolo della Tasmania", "il vombato"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il piu grande roditore del mondo?"
            Reponses := array{"l'istrice", "Il capibara", "il castoro", "la nutria"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande squalo e il pesce piu grande del mondo?"
            Reponses := array{"lo squalo tigre", "il grande squalo bianco", "Lo squalo balena", "lo squalo martello"}
            BonneReponse := 2
        question:
            Enonce := "Quale albero nordamericano e tra gli esseri viventi piu antichi (millenni)?"
            Reponses := array{"il cedro", "Il pino Bristlecone", "la betulla", "il pioppo tremulo"}
            BonneReponse := 1
        question:
            Enonce := "Qual e l'unico pinguino che vive naturalmente a nord dell'equatore?"
            Reponses := array{"Il pinguino delle Galapagos", "il pinguino saltarocce", "il pinguino reale", "il pinguino imperatore"}
            BonneReponse := 0
        question:
            Enonce := "Quale rettile ha la forza del morso piu potente?"
            Reponses := array{"l'iguana", "il pitone", "il cobra", "Il coccodrillo"}
            BonneReponse := 3
        question:
            Enonce := "Quale grande erbivoro africano e responsabile del maggior numero di morti umane?"
            Reponses := array{"la giraffa", "il bufalo", "L'ippopotamo", "l'elefante"}
            BonneReponse := 2
        question:
            Enonce := "Quanto vive in media un'effimera adulta?"
            Reponses := array{"circa un anno", "circa un mese", "circa dieci anni", "Circa un giorno"}
            BonneReponse := 3
        question:
            Enonce := "Qual e l'unico mammifero velenoso tramite uno sperone (il maschio)?"
            Reponses := array{"la talpa", "il riccio", "L'ornitorinco", "il toporagno"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande scimmia e la piu imponente e vive nell'Africa centrale?"
            Reponses := array{"lo scimpanze", "il bonobo", "l'orango", "Il gorilla"}
            BonneReponse := 3
        question:
            Enonce := "Quale mollusco ha otto braccia e puo cambiare colore all'istante?"
            Reponses := array{"il calamaro", "il nautilo", "la seppia", "Il polpo"}
            BonneReponse := 3
        question:
            Enonce := "Perche l'ape mellifera muore dopo aver punto un essere umano?"
            Reponses := array{"si sfinisce", "Il suo pungiglione resta conficcato e la sventra", "il veleno la uccide", "annega nel miele"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il pianeta piu denso del sistema solare?"
            Reponses := array{"Saturno", "La Terra", "Giove", "Mercurio"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama il confine di un buco nero da cui nulla puo sfuggire?"
            Reponses := array{"la singolarita esterna", "la fotosfera", "la magnetosfera", "L'orizzonte degli eventi"}
            BonneReponse := 3
        question:
            Enonce := "Quale astronomo formulo le leggi del moto ellittico dei pianeti?"
            Reponses := array{"Johannes Kepler", "Newton", "Tolomeo", "Galileo"}
            BonneReponse := 0
        question:
            Enonce := "Quante lune galileiane ha Giove?"
            Reponses := array{"2", "8", "4", "12"}
            BonneReponse := 2
        question:
            Enonce := "In quale tipo di stella si trasformera il nostro Sole alla fine della sua vita?"
            Reponses := array{"un buco nero", "Una gigante rossa", "una supernova", "una pulsar"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la luna piu grande di Saturno?"
            Reponses := array{"Giapeto", "Titano", "Ganimede", "Encelado"}
            BonneReponse := 1
        question:
            Enonce := "Quale teoria descrive l'origine dell'universo tramite un'espansione iniziale?"
            Reponses := array{"Il Big Bang", "lo stato stazionario", "la relativita", "la teoria delle stringhe"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la stella piu luminosa del cielo notturno?"
            Reponses := array{"la Stella Polare", "Betelgeuse", "Vega", "Sirio"}
            BonneReponse := 3
        question:
            Enonce := "Quale sonda rilascio il lander Philae su una cometa nel 2014?"
            Reponses := array{"Cassini", "Juno", "New Horizons", "Rosetta"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianeta subisce i venti piu violenti del sistema solare?"
            Reponses := array{"Giove", "Nettuno", "Venere", "Marte"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama una stella di neutroni in rapida rotazione che emette impulsi?"
            Reponses := array{"un quasar", "Una pulsar", "una nova", "una nana bianca"}
            BonneReponse := 1
        question:
            Enonce := "Quale missione Apollo porto gli ultimi uomini sulla Luna nel 1972?"
            Reponses := array{"Apollo 11", "Apollo 17", "Apollo 13", "Apollo 15"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il piu grande vulcano conosciuto del sistema solare, situato su Marte?"
            Reponses := array{"il monte Maxwell", "il Vesuvio", "il Mauna Kea", "Olympus Mons"}
            BonneReponse := 3
        question:
            Enonce := "Quanto dura approssimativamente un anno su Marte?"
            Reponses := array{"circa 88 giorni", "circa 365 giorni", "Circa 687 giorni", "circa 30 giorni"}
            BonneReponse := 2
        question:
            Enonce := "Quale astronomo italiano osservo le lune di Giove con il suo cannocchiale?"
            Reponses := array{"Kepler", "Galileo", "Tycho Brahe", "Copernico"}
            BonneReponse := 1
        question:
            Enonce := "Di quali gas e composto principalmente il Sole?"
            Reponses := array{"carbonio e ferro", "ossigeno e azoto", "metano e ammoniaca", "Idrogeno ed elio"}
            BonneReponse := 3
        question:
            Enonce := "Come si chiama il vasto serbatoio di comete ai confini del sistema solare?"
            Reponses := array{"La nube di Oort", "la nebulosa di Orione", "la fascia degli asteroidi", "la fascia di Kuiper"}
            BonneReponse := 0
        question:
            Enonce := "Qual e lo strato esterno visibile del Sole?"
            Reponses := array{"la cromosfera profonda", "La fotosfera", "la corona", "il nucleo"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il pianeta piu piccolo del sistema solare?"
            Reponses := array{"Venere", "Mercurio", "Plutone", "Marte"}
            BonneReponse := 1
        question:
            Enonce := "In quale costellazione si trova la Stella Polare?"
            Reponses := array{"Orione", "Cassiopea", "L'Orsa Minore", "l'Orsa Maggiore"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama lo studio scientifico dell'origine e dell'evoluzione dell'universo?"
            Reponses := array{"l'astrologia", "la planetologia", "La cosmologia", "la geodesia"}
            BonneReponse := 2
        question:
            Enonce := "Qual e all'incirca la distanza Terra-Sole (unita astronomica)?"
            Reponses := array{"30 milioni di km", "1 miliardo di km", "1 milione di km", "150 milioni di km"}
            BonneReponse := 3
        question:
            Enonce := "Quale fenomeno sposta verso il rosso la luce delle galassie lontane?"
            Reponses := array{"L'espansione dell'universo", "la rifrazione", "l'effetto serra", "le macchie solari"}
            BonneReponse := 0
        question:
            Enonce := "Quale primo satellite artificiale lancio l'URSS nel 1957?"
            Reponses := array{"Vostok 1", "Explorer 1", "Sputnik 1", "Luna 1"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianeta ha la densita piu bassa del sistema solare (galleggerebbe sull'acqua)?"
            Reponses := array{"Giove", "Saturno", "Nettuno", "Urano"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore fondo il puntinismo con Una domenica pomeriggio all'isola della Grande Jatte?"
            Reponses := array{"Georges Seurat", "Camille Pissarro", "Henri Matisse", "Paul Signac"}
            BonneReponse := 0
        question:
            Enonce := "Quale architetto progetto la piramide di vetro del Louvre?"
            Reponses := array{"Ieoh Ming Pei", "Jean Nouvel", "Norman Foster", "Le Corbusier"}
            BonneReponse := 0
        question:
            Enonce := "Quale pittore fiammingo realizzo Il giardino delle delizie?"
            Reponses := array{"Hieronymus Bosch", "Rubens", "Bruegel il Vecchio", "Van Eyck"}
            BonneReponse := 0
        question:
            Enonce := "Quale scultrice francese fu allieva e collaboratrice di Rodin?"
            Reponses := array{"Niki de Saint Phalle", "Camille Claudel", "Sophie Calle", "Louise Bourgeois"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore austriaco realizzo Il bacio con foglia d'oro?"
            Reponses := array{"Oskar Kokoschka", "Egon Schiele", "Hundertwasser", "Gustav Klimt"}
            BonneReponse := 3
        question:
            Enonce := "Quale pittore del Rinascimento realizzo La nascita di Venere?"
            Reponses := array{"Caravaggio", "Tiziano", "Sandro Botticelli", "Raffaello"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore americano rese popolare il dripping (pittura sgocciolata)?"
            Reponses := array{"Jackson Pollock", "Willem de Kooning", "Mark Rothko", "Andy Warhol"}
            BonneReponse := 0
        question:
            Enonce := "Quale provocatorio movimento artistico nacque a Zurigo nel 1916 (Duchamp, Tzara)?"
            Reponses := array{"il costruttivismo", "il futurismo", "il surrealismo", "Il dadaismo"}
            BonneReponse := 3
        question:
            Enonce := "Quale opera di Salvador Dali raffigura orologi molli?"
            Reponses := array{"L'ultima cena", "L'urlo", "La persistenza della memoria", "Il grande masturbatore"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore romantico realizzo La zattera della Medusa?"
            Reponses := array{"Eugene Delacroix", "Gustave Courbet", "Theodore Gericault", "Jacques-Louis David"}
            BonneReponse := 2
        question:
            Enonce := "Quale architetto progetto il Museo Guggenheim di Bilbao?"
            Reponses := array{"Tadao Ando", "Frank Gehry", "Renzo Piano", "Zaha Hadid"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore realizzo Les Demoiselles d'Avignon?"
            Reponses := array{"Pablo Picasso", "Juan Gris", "Fernand Leger", "Georges Braque"}
            BonneReponse := 0
        question:
            Enonce := "Quale scultore barocco italiano realizzo L'estasi di santa Teresa?"
            Reponses := array{"Donatello", "Canova", "Bernini", "Michelangelo"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore americano dipinse Nighthawks, un bar di notte?"
            Reponses := array{"Jackson Pollock", "Norman Rockwell", "Roy Lichtenstein", "Edward Hopper"}
            BonneReponse := 3
        question:
            Enonce := "Quale scultore dell'antica Grecia avrebbe realizzato la statua criselefantina di Zeus a Olimpia?"
            Reponses := array{"Mirone", "Policleto", "Prassitele", "Fidia"}
            BonneReponse := 3
        question:
            Enonce := "Quale scuola d'arte e design fu fondata in Germania nel 1919?"
            Reponses := array{"la Secessione", "il Werkbund", "l'Art Nouveau", "Il Bauhaus"}
            BonneReponse := 3
        question:
            Enonce := "Quale cattedrale di Mosca e famosa per le sue colorate cupole a bulbo?"
            Reponses := array{"San Basilio", "la Dormizione", "la cattedrale di Cristo Salvatore", "Santa Sofia"}
            BonneReponse := 0
        question:
            Enonce := "In quale cittadina mori Vincent van Gogh nel 1890?"
            Reponses := array{"Auvers-sur-Oise", "Parigi", "Arles", "Amsterdam"}
            BonneReponse := 0
        question:
            Enonce := "Quale artista impacchetto il Pont-Neuf di Parigi e (postumo) l'Arco di Trionfo?"
            Reponses := array{"Daniel Buren", "Christo", "Jeff Koons", "Banksy"}
            BonneReponse := 1
        question:
            Enonce := "Quale pittore realizzo La colazione sull'erba?"
            Reponses := array{"Edouard Manet", "Claude Monet", "Renoir", "Cezanne"}
            BonneReponse := 0
        question:
            Enonce := "Di quale dinastia cinese e emblematica la porcellana bianca e blu?"
            Reponses := array{"I Ming", "i Qin", "gli Han", "i Tang"}
            BonneReponse := 0
        question:
            Enonce := "Quale pittore veneziano del Rinascimento e noto come Tiziano?"
            Reponses := array{"Tiziano Vecellio", "Bellini", "Veronese", "Tintoretto"}
            BonneReponse := 0
        question:
            Enonce := "Quale architetto franco-svizzero teorizzo l'unita di abitazione (Cite Radieuse)?"
            Reponses := array{"Niemeyer", "Gaudi", "Le Corbusier", "Mies van der Rohe"}
            BonneReponse := 2
        question:
            Enonce := "Quale pittore olandese realizzo I mangiatori di patate?"
            Reponses := array{"Vincent van Gogh", "Vermeer", "Mondrian", "Rembrandt"}
            BonneReponse := 0
        question:
            Enonce := "Quale movimento geometrico dei Paesi Bassi, dai colori primari, e guidato da Mondrian?"
            Reponses := array{"De Stijl", "il futurismo", "il Bauhaus", "il suprematismo"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto il romanzo Ulisse (1922)?"
            Reponses := array{"T.S. Eliot", "D.H. Lawrence", "Virginia Woolf", "James Joyce"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto La Divina Commedia?"
            Reponses := array{"Virgilio", "Petrarca", "Dante Alighieri", "Boccaccio"}
            BonneReponse := 2
        question:
            Enonce := "Quale poeta latino compose l'Eneide?"
            Reponses := array{"Omero", "Orazio", "Virgilio", "Ovidio"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto il dramma Faust?"
            Reponses := array{"Goethe", "Heine", "Thomas Mann", "Schiller"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto I fratelli Karamazov?"
            Reponses := array{"Turgenev", "Tolstoj", "Fedor Dostoevskij", "Gogol'"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto il romanzo Lolita?"
            Reponses := array{"Vladimir Nabokov", "Boris Pasternak", "Solzenicyn", "Cechov"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto La peste?"
            Reponses := array{"Jean-Paul Sartre", "Andre Gide", "Albert Camus", "Romain Rolland"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto La signora Dalloway?"
            Reponses := array{"Emily Bronte", "George Eliot", "Virginia Woolf", "Jane Austen"}
            BonneReponse := 2
        question:
            Enonce := "Quale drammaturgo norvegese scrisse Casa di bambola?"
            Reponses := array{"Brecht", "Strindberg", "Cechov", "Henrik Ibsen"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il Maestro e Margherita?"
            Reponses := array{"Michail Bulgakov", "Pasternak", "Gor'kij", "Dostoevskij"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto la commedia Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Beaumarchais", "Victor Hugo", "Alfred de Musset"}
            BonneReponse := 0
        question:
            Enonce := "Quale romanziera afroamericana, premio Nobel, scrisse Amatissima (Beloved)?"
            Reponses := array{"Zora Neale Hurston", "Maya Angelou", "Alice Walker", "Toni Morrison"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Bel-Ami?"
            Reponses := array{"Flaubert", "Balzac", "Emile Zola", "Guy de Maupassant"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Al paradiso delle signore?"
            Reponses := array{"Balzac", "Maupassant", "Emile Zola", "Stendhal"}
            BonneReponse := 2
        question:
            Enonce := "Quale autore argentino scrisse la raccolta Finzioni?"
            Reponses := array{"Vargas Llosa", "Garcia Marquez", "Jorge Luis Borges", "Cortazar"}
            BonneReponse := 2
        question:
            Enonce := "Quale scrittore tedesco scrisse Siddharta e Il lupo della steppa?"
            Reponses := array{"Thomas Mann", "Goethe", "Hermann Hesse", "Gunter Grass"}
            BonneReponse := 2
        question:
            Enonce := "Quale filosofo tedesco scrisse Cosi parlo Zarathustra?"
            Reponses := array{"Schopenhauer", "Kant", "Friedrich Nietzsche", "Hegel"}
            BonneReponse := 2
        question:
            Enonce := "Quale drammaturgo dell'antica Grecia scrisse Edipo re?"
            Reponses := array{"Aristofane", "Euripide", "Sofocle", "Eschilo"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il mondo nuovo?"
            Reponses := array{"George Orwell", "Ray Bradbury", "H.G. Wells", "Aldous Huxley"}
            BonneReponse := 3
        question:
            Enonce := "Quale poeta italiano del Rinascimento scrisse il Canzoniere dedicato a Laura?"
            Reponses := array{"Petrarca", "l'Ariosto", "Boccaccio", "Dante"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto il romanzo Niente di nuovo sul fronte occidentale?"
            Reponses := array{"Erich Maria Remarque", "Stefan Zweig", "Ernst Junger", "Thomas Mann"}
            BonneReponse := 0
        question:
            Enonce := "Quale autore scrisse Il giardino dei ciliegi e numerosi racconti?"
            Reponses := array{"Anton Cechov", "Kafka", "Hasek", "Kundera"}
            BonneReponse := 0
        question:
            Enonce := "Quale romanziere francese contemporaneo scrisse Le particelle elementari?"
            Reponses := array{"Marc Levy", "Michel Houellebecq", "Patrick Modiano", "Amelie Nothomb"}
            BonneReponse := 1
        question:
            Enonce := "Quale poeta scrisse la raccolta Le contemplazioni?"
            Reponses := array{"Leconte de Lisle", "Victor Hugo", "Lamartine", "Vigny"}
            BonneReponse := 1
        question:
            Enonce := "Quale autore scrisse Viaggio al termine della notte?"
            Reponses := array{"Louis-Ferdinand Celine", "Andre Malraux", "Marcel Proust", "Georges Bernanos"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore italiano scrisse l'opera La Traviata?"
            Reponses := array{"Rossini", "Giuseppe Verdi", "Puccini", "Donizetti"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore scrisse La sagra della primavera, all'origine di uno scandalo nel 1913?"
            Reponses := array{"Debussy", "Igor Stravinskij", "Bartok", "Ravel"}
            BonneReponse := 1
        question:
            Enonce := "Come si chiama un insieme di otto musicisti?"
            Reponses := array{"un nonetto", "un quintetto", "un sestetto", "Un ottetto"}
            BonneReponse := 3
        question:
            Enonce := "Quale compositore ceco scrisse la Sinfonia dal Nuovo Mondo?"
            Reponses := array{"Smetana", "Mahler", "Antonin Dvorak", "Janacek"}
            BonneReponse := 2
        question:
            Enonce := "Quanti tasti neri ha un'ottava al pianoforte?"
            Reponses := array{"8", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quale compositore barocco veneziano era soprannominato il Prete Rosso?"
            Reponses := array{"Monteverdi", "Antonio Vivaldi", "Corelli", "Albinoni"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande strumento ad ancia doppia suona nel registro grave dei legni?"
            Reponses := array{"il clarinetto", "Il fagotto", "il flauto", "il corno"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore francese scrisse Clair de lune (Suite bergamasque)?"
            Reponses := array{"Claude Debussy", "Faure", "Satie", "Ravel"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore russo scrisse il balletto Lo Schiaccianoci?"
            Reponses := array{"Cajkovskij", "Prokof'ev", "Stravinskij", "Rimskij-Korsakov"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore austriaco, morto giovane, scrisse il lied La trota?"
            Reponses := array{"Mozart", "Haydn", "Franz Schubert", "Bruckner"}
            BonneReponse := 2
        question:
            Enonce := "Quale genere lirico leggero, con dialoghi parlati, e associato a Offenbach?"
            Reponses := array{"l'oratorio", "L'operetta", "il requiem", "la cantata"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore ungherese scrisse le Rapsodie ungheresi?"
            Reponses := array{"Franz Liszt", "Bartok", "Kodaly", "Brahms"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore scrisse l'opera Madama Butterfly?"
            Reponses := array{"Verdi", "Bizet", "Giacomo Puccini", "Wagner"}
            BonneReponse := 2
        question:
            Enonce := "Quale trombettista jazz e soprannominato Satchmo?"
            Reponses := array{"Dizzy Gillespie", "Miles Davis", "Chet Baker", "Louis Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "Quale compositore tedesco scrisse La cavalcata delle Valchirie?"
            Reponses := array{"Beethoven", "Strauss", "Brahms", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Quale compositore francese scrisse Il carnevale degli animali?"
            Reponses := array{"Bizet", "Gounod", "Camille Saint-Saens", "Berlioz"}
            BonneReponse := 2
        question:
            Enonce := "Quale termine musicale significa molto forte?"
            Reponses := array{"crescendo", "Fortissimo", "mezzo forte", "pianissimo"}
            BonneReponse := 1
        question:
            Enonce := "Quale trombettista ha segnato il jazz modale con l'album Kind of Blue?"
            Reponses := array{"Louis Armstrong", "Miles Davis", "John Coltrane", "Duke Ellington"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore russo scrisse Quadri di un'esposizione?"
            Reponses := array{"Modest Musorgskij", "Borodin", "Glinka", "Cajkovskij"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore scrisse la fiaba musicale Pierino e il lupo?"
            Reponses := array{"Stravinskij", "Sergej Prokof'ev", "Sostakovic", "Rachmaninov"}
            BonneReponse := 1
        question:
            Enonce := "Quale voce femminile si colloca nel registro grave?"
            Reponses := array{"il soprano", "il soprano di coloratura", "Il contralto", "il mezzo acuto"}
            BonneReponse := 2
        question:
            Enonce := "Quale gruppo rock britannico ha come cantante Mick Jagger?"
            Reponses := array{"The Who", "The Rolling Stones", "Led Zeppelin", "The Kinks"}
            BonneReponse := 1
        question:
            Enonce := "Quante corde ha all'incirca un'arpa da concerto?"
            Reponses := array{"47", "12", "88", "24"}
            BonneReponse := 0
        question:
            Enonce := "Quale compositore barocco tedesco e l'autore dell'oratorio Il Messia?"
            Reponses := array{"Telemann", "Georg Friedrich Handel", "Bach", "Pachelbel"}
            BonneReponse := 1
        question:
            Enonce := "Quale compositore tedesco compose la tetralogia L'anello del Nibelungo?"
            Reponses := array{"Bruckner", "Mahler", "Richard Strauss", "Richard Wagner"}
            BonneReponse := 3
        question:
            Enonce := "Quale regista italiano ha girato La Dolce Vita?"
            Reponses := array{"Vittorio De Sica", "Federico Fellini", "Roberto Rossellini", "Luchino Visconti"}
            BonneReponse := 1
        question:
            Enonce := "Quale film del 1941 di Orson Welles e spesso citato come uno dei piu grandi della storia?"
            Reponses := array{"Via col vento", "Quarto potere", "Casablanca", "Il mistero del falco"}
            BonneReponse := 1
        question:
            Enonce := "Quale cineasta svedese ha diretto Il settimo sigillo?"
            Reponses := array{"Bo Widerberg", "Ingmar Bergman", "Roy Andersson", "Lars von Trier"}
            BonneReponse := 1
        question:
            Enonce := "Quale cineasta giapponese ha diretto I sette samurai?"
            Reponses := array{"Yasujiro Ozu", "Akira Kurosawa", "Hayao Miyazaki", "Takeshi Kitano"}
            BonneReponse := 1
        question:
            Enonce := "Quale film di Coppola sulla guerra del Vietnam contiene la battuta sull'odore del napalm?"
            Reponses := array{"Full Metal Jacket", "Apocalypse Now", "Il cacciatore", "Platoon"}
            BonneReponse := 1
        question:
            Enonce := "Quale cineasta spagnolo ha co-diretto Un cane andaluso con Dali?"
            Reponses := array{"Victor Erice", "Carlos Saura", "Luis Bunuel", "Pedro Almodovar"}
            BonneReponse := 2
        question:
            Enonce := "Quale attrice detiene il record di Oscar per l'interpretazione (quattro)?"
            Reponses := array{"Meryl Streep", "Bette Davis", "Ingrid Bergman", "Katharine Hepburn"}
            BonneReponse := 3
        question:
            Enonce := "Quale film muto espressionista tedesco del 1920 mette in scena un sonnambulo?"
            Reponses := array{"M - Il mostro di Dusseldorf", "Nosferatu", "Il gabinetto del dottor Caligari", "Metropolis"}
            BonneReponse := 2
        question:
            Enonce := "Quale primo lungometraggio d'animazione degli studi Disney usci nel 1937?"
            Reponses := array{"Bambi", "Biancaneve e i sette nani", "Fantasia", "Pinocchio"}
            BonneReponse := 1
        question:
            Enonce := "Quale film sovietico del 1925 di Eisenstein mostra la celebre scalinata di Odessa?"
            Reponses := array{"La corazzata Potemkin", "Sciopero", "Ottobre", "Aleksandr Nevskij"}
            BonneReponse := 0
        question:
            Enonce := "Quale attrice svedese interpreta la protagonista femminile di Casablanca?"
            Reponses := array{"Greta Garbo", "Rita Hayworth", "Lauren Bacall", "Ingrid Bergman"}
            BonneReponse := 3
        question:
            Enonce := "Quale cineasta della Nouvelle Vague ha diretto Fino all'ultimo respiro?"
            Reponses := array{"Eric Rohmer", "Claude Chabrol", "Francois Truffaut", "Jean-Luc Godard"}
            BonneReponse := 3
        question:
            Enonce := "Quanti Oscar ha vinto il film Titanic?"
            Reponses := array{"5", "14", "11", "7"}
            BonneReponse := 2
        question:
            Enonce := "Quale attore interpreta Don Vito Corleone ne Il Padrino?"
            Reponses := array{"Al Pacino", "Robert De Niro", "Marlon Brando", "James Caan"}
            BonneReponse := 2
        question:
            Enonce := "Quale film di Ridley Scott (1979) mette in scena una creatura ostile in un'astronave?"
            Reponses := array{"Predator", "Blade Runner", "Alien", "La cosa"}
            BonneReponse := 2
        question:
            Enonce := "Quale attore americano e l'icona degli spaghetti western di Sergio Leone?"
            Reponses := array{"Clint Eastwood", "Charles Bronson", "John Wayne", "Lee Van Cleef"}
            BonneReponse := 0
        question:
            Enonce := "Quale regista ha vinto l'Oscar per la migliore regia per The Hurt Locker?"
            Reponses := array{"Kathryn Bigelow", "Greta Gerwig", "Sofia Coppola", "Jane Campion"}
            BonneReponse := 0
        question:
            Enonce := "Quale film d'animazione di Miyazaki mette in scena un castello che si sposta?"
            Reponses := array{"Il castello errante di Howl", "La citta incantata", "Il castello nel cielo", "Principessa Mononoke"}
            BonneReponse := 0
        question:
            Enonce := "Quale film di Jean Renoir (1937) tratta della prigionia durante la Grande Guerra?"
            Reponses := array{"La grande illusione", "L'angelo del male", "La regola del gioco", "French Cancan"}
            BonneReponse := 0
        question:
            Enonce := "Quale attore ha vinto l'Oscar come miglior attore per Joker (2019)?"
            Reponses := array{"Heath Ledger", "Joaquin Phoenix", "Jared Leto", "Christian Bale"}
            BonneReponse := 1
        question:
            Enonce := "Quale film del 1994 e ambientato nel carcere di Shawshank?"
            Reponses := array{"Il miglio verde", "Le ali della liberta", "L'uomo di Alcatraz", "Fuga di mezzanotte"}
            BonneReponse := 1
        question:
            Enonce := "Quale cineasta danese ha co-fondato il movimento Dogma 95?"
            Reponses := array{"Carl Dreyer", "Nicolas Winding Refn", "Thomas Vinterberg", "Lars von Trier"}
            BonneReponse := 3
        question:
            Enonce := "Quale film di Stanley Kubrick mette in scena il computer HAL 9000?"
            Reponses := array{"Barry Lyndon", "2001: Odissea nello spazio", "Shining", "Il dottor Stranamore"}
            BonneReponse := 1
        question:
            Enonce := "Quale regista ha girato Quei bravi ragazzi e Taxi Driver?"
            Reponses := array{"Sidney Lumet", "Francis Ford Coppola", "Martin Scorsese", "Brian De Palma"}
            BonneReponse := 2
        question:
            Enonce := "Quale film francese del 1962 diretto da Chris Marker e composto da fotografie fisse?"
            Reponses := array{"Cleo dalle 5 alle 7", "I 400 colpi", "La Jetee", "Hiroshima mon amour"}
            BonneReponse := 2
        question:
            Enonce := "Quanti giocatori di una squadra di pallanuoto sono in acqua?"
            Reponses := array{"5", "11", "7", "6"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese vinse la primissima Coppa del Mondo di calcio, nel 1930?"
            Reponses := array{"il Brasile", "l'Italia", "L'Uruguay", "l'Argentina"}
            BonneReponse := 2
        question:
            Enonce := "In quale anno si tennero i primi Giochi olimpici dell'era moderna?"
            Reponses := array{"1900", "1888", "1896", "1924"}
            BonneReponse := 2
        question:
            Enonce := "Quale pilota tedesco ha a lungo detenuto il record di 7 titoli di campione del mondo di F1?"
            Reponses := array{"Alain Prost", "Niki Lauda", "Ayrton Senna", "Michael Schumacher"}
            BonneReponse := 3
        question:
            Enonce := "Quante caselle ha una scacchiera?"
            Reponses := array{"100", "64", "49", "81"}
            BonneReponse := 1
        question:
            Enonce := "Quale ciclista 'vinse' 7 Tour de France prima di esserne privato per doping?"
            Reponses := array{"Eddy Merckx", "Miguel Indurain", "Bernard Hinault", "Lance Armstrong"}
            BonneReponse := 3
        question:
            Enonce := "In quale sport viene assegnata la 'Stanley Cup'?"
            Reponses := array{"il baseball", "il football americano", "L'hockey su ghiaccio", "la pallacanestro"}
            BonneReponse := 2
        question:
            Enonce := "Da quanti giocatori e composta una squadra di pallamano in campo?"
            Reponses := array{"6", "7", "5", "11"}
            BonneReponse := 1
        question:
            Enonce := "Quale calciatore segno il cosiddetto gol della 'mano de Dios' nel 1986?"
            Reponses := array{"Zidane", "Diego Maradona", "Pele", "Romario"}
            BonneReponse := 1
        question:
            Enonce := "Quale distanza esatta copre una maratona ufficiale?"
            Reponses := array{"26 km", "50 km", "42,195 km", "40 km"}
            BonneReponse := 2
        question:
            Enonce := "Quale pugile concluse la carriera con un record di 50 vittorie e 0 sconfitte?"
            Reponses := array{"Floyd Mayweather", "Rocky Marciano", "Mike Tyson", "Muhammad Ali"}
            BonneReponse := 0
        question:
            Enonce := "Quale cestista segno 100 punti in una sola partita NBA?"
            Reponses := array{"LeBron James", "Kobe Bryant", "Michael Jordan", "Wilt Chamberlain"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport con la racchetta si gioca in un campo chiuso circondato da pareti?"
            Reponses := array{"il badminton", "Lo squash", "il tennis", "il padel"}
            BonneReponse := 1
        question:
            Enonce := "Quanto dura un quarto nella NBA?"
            Reponses := array{"15 minuti", "10 minuti", "20 minuti", "12 minuti"}
            BonneReponse := 3
        question:
            Enonce := "Quale giocatore realizzo l'ultimo 'Grande Slam' maschile in un anno solare nel tennis (1969)?"
            Reponses := array{"Bjorn Borg", "Jimmy Connors", "John McEnroe", "Rod Laver"}
            BonneReponse := 3
        question:
            Enonce := "Quale judoka francese e piu volte campione del mondo e olimpico dei pesi massimi?"
            Reponses := array{"Lucie Decosse", "Teddy Riner", "David Douillet", "Djamel Bouras"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha vinto il maggior numero totale di medaglie olimpiche della storia?"
            Reponses := array{"l'URSS", "Gli Stati Uniti", "la Cina", "la Germania"}
            BonneReponse := 1
        question:
            Enonce := "Quale trofeo individuale premia il miglior calciatore dell'anno?"
            Reponses := array{"la Scarpa d'argento", "la Coppa d'Europa", "Il Pallone d'oro", "il Trofeo Kopa"}
            BonneReponse := 2
        question:
            Enonce := "Quale mitica scuderia italiana e la piu titolata della storia della F1?"
            Reponses := array{"Ferrari", "Lotus", "McLaren", "Williams"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport olimpico si pratica con il fioretto, la spada o la sciabola?"
            Reponses := array{"La scherma", "il tiro a segno", "il tiro con l'arco", "il pentathlon"}
            BonneReponse := 0
        question:
            Enonce := "Da quante prove e composto il decathlon nell'atletica?"
            Reponses := array{"7", "5", "10", "12"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta francese ospita la corsa automobilistica della 24 Ore?"
            Reponses := array{"Magny-Cours", "Reims", "Monaco", "Le Mans"}
            BonneReponse := 3
        question:
            Enonce := "Quanti giocatori di una squadra di hockey su ghiaccio sono sul ghiaccio (portiere compreso)?"
            Reponses := array{"5", "6", "11", "7"}
            BonneReponse := 1
        question:
            Enonce := "Quale atleta giamaicano detiene il record del mondo dei 100 m (9,58 s)?"
            Reponses := array{"Usain Bolt", "Carl Lewis", "Yohan Blake", "Tyson Gay"}
            BonneReponse := 0
        question:
            Enonce := "In quale antica citta greca si svolgevano i Giochi olimpici originari?"
            Reponses := array{"Sparta", "Delfi", "Atene", "Olimpia"}
            BonneReponse := 3
        question:
            Enonce := "Quale dio greco primordiale personifica il Cielo, sposo di Gea?"
            Reponses := array{"Caos", "Crono", "Urano", "Erebo"}
            BonneReponse := 2
        question:
            Enonce := "Quale dea romana veglia sul focolare (equivalente di Estia)?"
            Reponses := array{"Vesta", "Minerva", "Giunone", "Cerere"}
            BonneReponse := 0
        question:
            Enonce := "Quale eroe nordico uccise il drago Fafnir?"
            Reponses := array{"Tyr", "Sigurd", "Beowulf", "Thor"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio egizio fu assassinato dal fratello Seth?"
            Reponses := array{"Thot", "Anubi", "Osiride", "Horus"}
            BonneReponse := 2
        question:
            Enonce := "Quale personaggio e condannato a spingere eternamente un masso che ricade?"
            Reponses := array{"Tantalo", "Prometeo", "Sisifo", "Atlante"}
            BonneReponse := 2
        question:
            Enonce := "Quale gigante dai cento occhi custodisce Io nella mitologia greca?"
            Reponses := array{"Tifone", "il ciclope", "Argo", "Gerione"}
            BonneReponse := 2
        question:
            Enonce := "Quale dea greca personifica la vittoria e ispira un marchio sportivo?"
            Reponses := array{"Iride", "Era", "Nike", "Tyche"}
            BonneReponse := 2
        question:
            Enonce := "Quale re di Creta fece costruire il Labirinto da Dedalo?"
            Reponses := array{"Agamennone", "Minosse", "Egeo", "Priamo"}
            BonneReponse := 1
        question:
            Enonce := "Quale maga trasformo i compagni di Ulisse in porci?"
            Reponses := array{"Medea", "Circe", "Calipso", "Penelope"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio distruttore fa parte della Trimurti indu?"
            Reponses := array{"Shiva", "Ganesha", "Indra", "Krishna"}
            BonneReponse := 0
        question:
            Enonce := "Come si chiama l'albero cosmico che unisce i nove mondi nordici?"
            Reponses := array{"il Bifrost", "il Valhalla", "il Ragnarok", "Yggdrasil"}
            BonneReponse := 3
        question:
            Enonce := "Quale dea greca delle messi e la madre di Persefone?"
            Reponses := array{"Era", "Estia", "Demetra", "Artemide"}
            BonneReponse := 2
        question:
            Enonce := "Chi aiuto Teseo a uscire dal Labirinto grazie a un filo?"
            Reponses := array{"Medea", "Arianna", "Andromeda", "Antigone"}
            BonneReponse := 1
        question:
            Enonce := "Quale personaggio volo troppo vicino al sole con ali di cera?"
            Reponses := array{"Dedalo", "Bellerofonte", "Fetonte", "Icaro"}
            BonneReponse := 3
        question:
            Enonce := "Quale creatura sputa fuoco, con testa di leone, corpo di capra e coda di serpente?"
            Reponses := array{"il basilisco", "La Chimera", "l'idra", "il grifone"}
            BonneReponse := 1
        question:
            Enonce := "Quale dio nordico custodisce il ponte arcobaleno Bifrost?"
            Reponses := array{"Baldr", "Heimdall", "Freyr", "Tyr"}
            BonneReponse := 1
        question:
            Enonce := "Quale divinita azteca e raffigurata come un serpente piumato?"
            Reponses := array{"Quetzalcoatl", "Huitzilopochtli", "Tezcatlipoca", "Tlaloc"}
            BonneReponse := 0
        question:
            Enonce := "Quale re e condannato a fame e sete eterne negli Inferi (frutti e acqua gli sfuggono)?"
            Reponses := array{"Sisifo", "Issione", "Tantalo", "Mida"}
            BonneReponse := 2
        question:
            Enonce := "Quale dio romano dai due volti presiede agli inizi e alle porte?"
            Reponses := array{"Vulcano", "Saturno", "Marte", "Giano"}
            BonneReponse := 3
        question:
            Enonce := "Quale serpente gigante circonda il mondo nella mitologia nordica?"
            Reponses := array{"Jormungandr", "Fenrir", "Nidhoggr", "il Kraken"}
            BonneReponse := 0
        question:
            Enonce := "Quale astuto eroe greco ideo lo stratagemma del cavallo di Troia?"
            Reponses := array{"Menelao", "Ulisse", "Aiace", "Achille"}
            BonneReponse := 1
        question:
            Enonce := "Quale personaggio biblico sopravvisse al Diluvio a bordo di un'arca?"
            Reponses := array{"Mose", "Giona", "Abramo", "Noe"}
            BonneReponse := 3
        question:
            Enonce := "Quale semidio greco sali all'Olimpo dopo aver compiuto le sue celebri fatiche?"
            Reponses := array{"Eracle", "Bellerofonte", "Teseo", "Perseo"}
            BonneReponse := 0
        question:
            Enonce := "Quale dio greco del vino e dell'ebbrezza e anche quello del teatro?"
            Reponses := array{"Dioniso", "Pan", "Ermes", "Apollo"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume degli Inferi greci dona l'oblio alle anime che ne bevono?"
            Reponses := array{"Il Lete", "lo Stige", "l'Acheronte", "il Cocito"}
            BonneReponse := 0
