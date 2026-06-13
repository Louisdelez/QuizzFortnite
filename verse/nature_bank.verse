using { /Verse.org/Assets }

# nature_bank.verse — Quizz RECORDS NATURELS (fleuves/monts/oceans...)
# GENERE — NE PAS EDITER A LA MAIN.

NatureDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 1, 1, 2, 2}

MakeNatureQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est le plus long fleuve du monde ?"
            Reponses := array{"Le Nil", "L'Amazone", "Le Yangtse", "Le Mississippi"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus haute montagne du monde ?"
            Reponses := array{"L'Everest", "Le K2", "Le Kilimandjaro", "Le Mont Blanc"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus grand desert chaud du monde ?"
            Reponses := array{"Le Kalahari", "Le Gobi", "Le Sahara", "L'Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus grand ocean du monde ?"
            Reponses := array{"L'ocean Pacifique", "L'ocean Atlantique", "L'ocean Indien", "L'ocean Arctique"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus haute montagne d'Afrique ?"
            Reponses := array{"Le Mont Blanc", "L'Everest", "Le Kilimandjaro", "L'Aconcagua"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la plus haute montagne des Alpes ?"
            Reponses := array{"Le Mont Blanc", "Le Cervin", "L'Everest", "Le mont Fuji"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve traverse Paris ?"
            Reponses := array{"La Volga", "Le Rhin", "Le Danube", "La Seine"}
            BonneReponse := 3
        question:
            Enonce := "Quel fleuve a le plus grand debit du monde ?"
            Reponses := array{"Le Nil", "L'Amazone", "Le Yangtse", "Le Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quelle mer borde le sud de la France ?"
            Reponses := array{"La Mediterranee", "L'ocean Atlantique", "La mer Rouge", "La mer Caspienne"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande foret tropicale ?"
            Reponses := array{"La foret amazonienne", "La Grande Barriere de corail", "Le Grand Canyon", "Le Sahara"}
            BonneReponse := 0
        question:
            Enonce := "Quel ocean separe l'Europe de l'Amerique ?"
            Reponses := array{"L'ocean Arctique", "L'ocean Pacifique", "L'ocean Indien", "L'ocean Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus haut sommet d'Amerique du Sud ?"
            Reponses := array{"Le Denali", "L'Everest", "L'Aconcagua", "Le Kilimandjaro"}
            BonneReponse := 2
        question:
            Enonce := "Quelles celebres chutes sont entre USA et Canada ?"
            Reponses := array{"La foret amazonienne", "Les chutes Angel", "Les chutes du Niagara", "Le Grand Canyon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le 2e plus haut sommet du monde ?"
            Reponses := array{"Le Denali", "L'Everest", "Le Kilimandjaro", "Le K2"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le lac le plus profond du monde ?"
            Reponses := array{"Le lac Titicaca", "Le lac Superieur", "Le lac Victoria", "Le lac Baikal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est le plus grand lac d'Afrique ?"
            Reponses := array{"Le lac Victoria", "Le lac Tanganyika", "Le lac Baikal", "Le lac Titicaca"}
            BonneReponse := 0
        question:
            Enonce := "Quel desert froid couvre la Mongolie ?"
            Reponses := array{"Le Kalahari", "Le Sahara", "Le Gobi", "L'Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Quel desert est le plus aride du monde ?"
            Reponses := array{"Le Sahara", "L'Atacama", "Le Gobi", "Le Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve est le plus long d'Europe ?"
            Reponses := array{"Le Danube", "La Volga", "Le Rhin", "La Seine"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve traverse 10 pays d'Europe ?"
            Reponses := array{"La Volga", "Le Rhin", "Le Danube", "La Seine"}
            BonneReponse := 2
        question:
            Enonce := "Quelle mer tres salee ne permet pas de couler ?"
            Reponses := array{"La mer Caspienne", "La mer Rouge", "La mer Morte", "La Mediterranee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est le plus grand lac (mer fermee) du monde ?"
            Reponses := array{"Le lac Baikal", "Le lac Superieur", "La mer Caspienne", "Le lac Victoria"}
            BonneReponse := 2
        question:
            Enonce := "Quel fleuve sacre coule en Inde ?"
            Reponses := array{"Le Yangtse", "Le Gange", "Le Nil", "Le Mississippi"}
            BonneReponse := 1
        question:
            Enonce := "Quel plus grand lac d'Amerique du Nord ?"
            Reponses := array{"Le lac Titicaca", "Le lac Victoria", "Le lac Baikal", "Le lac Superieur"}
            BonneReponse := 3
        question:
            Enonce := "Quel recif corallien geant borde l'Australie ?"
            Reponses := array{"Le Grand Canyon", "La foret amazonienne", "La Grande Barriere de corail", "Les chutes du Niagara"}
            BonneReponse := 2
        question:
            Enonce := "Quel sommet est le plus haut d'Amerique du Nord ?"
            Reponses := array{"Le Mont Blanc", "L'Aconcagua", "L'Everest", "Le Denali"}
            BonneReponse := 3
        question:
            Enonce := "Quel volcan est le symbole du Japon ?"
            Reponses := array{"Le mont Fuji", "Le Cervin", "Le Mont Blanc", "Le Kilimandjaro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus haut sommet d'Europe (Caucase) ?"
            Reponses := array{"Le Mont Blanc", "L'Elbrouz", "Le Cervin", "L'Everest"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est la plus haute cascade du monde ?"
            Reponses := array{"Le Grand Canyon", "Les chutes du Niagara", "La foret amazonienne", "Les chutes Angel"}
            BonneReponse := 3
        question:
            Enonce := "Quel lac d'Afrique est le plus long et profond ?"
            Reponses := array{"Le lac Tanganyika", "Le lac Victoria", "Le lac Baikal", "Le lac Superieur"}
            BonneReponse := 0
        question:
            Enonce := "Quel est le plus haut lac navigable du monde ?"
            Reponses := array{"Le lac Victoria", "Le lac Baikal", "Le lac Titicaca", "Le lac Superieur"}
            BonneReponse := 2
        question:
            Enonce := "Quel desert d'Afrique australe partage son nom avec un peuple ?"
            Reponses := array{"L'Atacama", "Le Sahara", "Le Gobi", "Le Kalahari"}
            BonneReponse := 3
        question:
            Enonce := "Quel ocean entoure le pole Nord ?"
            Reponses := array{"L'ocean Indien", "L'ocean Pacifique", "L'ocean Arctique", "L'ocean Atlantique"}
            BonneReponse := 2
        question:
            Enonce := "Quelle mer separe l'Afrique de l'Arabie ?"
            Reponses := array{"La mer Caspienne", "La mer Morte", "La Mediterranee", "La mer Rouge"}
            BonneReponse := 3
        question:
            Enonce := "Quel fleuve d'Asie est le plus long ?"
            Reponses := array{"Le Nil", "Le Gange", "La Volga", "Le Yangtse"}
            BonneReponse := 3
        question:
            Enonce := "Quel canyon geant est creuse par le Colorado ?"
            Reponses := array{"Le Grand Canyon", "La Grande Barriere de corail", "Les chutes du Niagara", "La foret amazonienne"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande ile du monde ?"
            Reponses := array{"La foret amazonienne", "Le Groenland", "La Grande Barriere de corail", "Le Sahara"}
            BonneReponse := 1
        question:
            Enonce := "Quel desert est en realite le plus grand (froid) ?"
            Reponses := array{"L'Antarctique", "Le Sahara", "Le Gobi", "Le desert d'Arabie"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand desert se trouve dans la peninsule arabique ?"
            Reponses := array{"Le Sahara", "Le desert d'Arabie", "Le Gobi", "Le Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve d'Afrique centrale traverse l'equateur 2 fois ?"
            Reponses := array{"Le Gange", "Le Nil", "Le Congo", "La Volga"}
            BonneReponse := 2
        question:
            Enonce := "Quel sommet alpin a une forme de pyramide celebre ?"
            Reponses := array{"Le Mont Blanc", "Le Cervin", "L'Everest", "Le mont Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand fleuve traverse Londres ?"
            Reponses := array{"La Seine", "La Tamise", "Le Rhin", "Le Tibre"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve traverse Rome ?"
            Reponses := array{"La Seine", "La Tamise", "Le Tibre", "Le Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel celebre volcan domine Naples ?"
            Reponses := array{"L'Etna", "Le Vesuve", "Le Krakatoa", "Le mont Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quel volcan est le plus actif de Sicile ?"
            Reponses := array{"L'Etna", "Le Vesuve", "Le Krakatoa", "Le Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand fleuve d'Asie du Sud-Est traverse 6 pays ?"
            Reponses := array{"Le Gange", "Le Mekong", "L'Indus", "Le Yangtse"}
            BonneReponse := 1
        question:
            Enonce := "Quelles chutes spectaculaires sont entre Bresil et Argentine ?"
            Reponses := array{"Les chutes Victoria", "Les chutes du Niagara", "Les chutes d'Iguazu", "Les chutes Angel"}
            BonneReponse := 2
        question:
            Enonce := "Quelle mer borde la Cote d'Azur et l'Italie ?"
            Reponses := array{"La Mediterranee", "La mer Noire", "La mer Baltique", "La mer des Caraibes"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve passe a Lyon ?"
            Reponses := array{"La Loire", "Le Rhone", "La Seine", "La Tamise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus long fleuve de France ?"
            Reponses := array{"Le Rhone", "La Seine", "La Loire", "Le Rhin"}
            BonneReponse := 2
        question:
            Enonce := "Quelle mer chaude borde les Antilles ?"
            Reponses := array{"La mer des Caraibes", "La mer Baltique", "La mer Noire", "La mer Rouge"}
            BonneReponse := 0
        question:
            Enonce := "Quelles chutes d'Afrique australe sont nommees comme une reine ?"
            Reponses := array{"Les chutes du Niagara", "Les chutes d'Iguazu", "Les chutes Victoria", "Les chutes Angel"}
            BonneReponse := 2
        question:
            Enonce := "Quel lac borde Geneve ?"
            Reponses := array{"Le lac de Garde", "Le lac Leman", "Le lac Michigan", "La mer d'Aral"}
            BonneReponse := 1
        question:
            Enonce := "Quel est le plus grand lac d'Italie ?"
            Reponses := array{"Le lac Leman", "Le lac de Garde", "Le lac Michigan", "Le lac Baikal"}
            BonneReponse := 1
        question:
            Enonce := "Quelle mer du nord de l'Europe est presque fermee ?"
            Reponses := array{"La mer Baltique", "La mer Noire", "La mer des Caraibes", "La mer Rouge"}
            BonneReponse := 0
        question:
            Enonce := "Quelle mer borde l'Ukraine et la Turquie ?"
            Reponses := array{"La mer Caspienne", "La mer Baltique", "La mer Noire", "La Mediterranee"}
            BonneReponse := 2
        question:
            Enonce := "Quel fleuve traverse l'Egypte... non, le Pakistan ?"
            Reponses := array{"L'Indus", "Le Gange", "Le Mekong", "Le Niger"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve d'Afrique de l'Ouest donne son nom a 2 pays ?"
            Reponses := array{"Le Zambeze", "Le Niger", "Le Mekong", "Le Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel fleuve a creuse le Grand Canyon ?"
            Reponses := array{"Le Mekong", "Le Mississippi", "Le Colorado", "Le Zambeze"}
            BonneReponse := 2
        question:
            Enonce := "Quel sommet de l'Himalaya depasse 8000 m (8e plus haut) ?"
            Reponses := array{"L'Annapurna", "L'Everest", "Le K2", "Le Denali"}
            BonneReponse := 0
        question:
            Enonce := "Quel volcan d'Hawai est la plus haute montagne (base sous-marine) ?"
            Reponses := array{"Le mont Fuji", "Le Mauna Kea", "L'Etna", "Le Vesuve"}
            BonneReponse := 1
        question:
            Enonce := "Quel desert cotier longe la Namibie ?"
            Reponses := array{"Le Kalahari", "Le Namib", "Le Sahara", "Le Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Quel grand lac americain touche Chicago ?"
            Reponses := array{"Le lac Michigan", "Le lac Superieur", "Le lac Leman", "Le lac de Garde"}
            BonneReponse := 0
        question:
            Enonce := "Quelle plus grande ile d'Asie du Sud-Est (partagee en 3) ?"
            Reponses := array{"Borneo", "Sumatra", "Honshu", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Quel desert indien borde le Pakistan ?"
            Reponses := array{"Le Gobi", "Le Thar", "Le Namib", "Le Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Quel desert americain abrite la Vallee de la Mort ?"
            Reponses := array{"Le Mojave", "Le Thar", "Le Namib", "Le Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Quelle mer interieure d'Asie a presque disparu ?"
            Reponses := array{"La mer Baltique", "La mer Caspienne", "La mer Noire", "La mer d'Aral"}
            BonneReponse := 3
        question:
            Enonce := "Quel lac africain a beaucoup retreci (Sahel) ?"
            Reponses := array{"Le lac Tchad", "Le lac Victoria", "Le lac Tanganyika", "La mer d'Aral"}
            BonneReponse := 0
        question:
            Enonce := "Quel fleuve d'Afrique australe alimente les chutes Victoria ?"
            Reponses := array{"Le Zambeze", "Le Niger", "Le Congo", "Le Nil"}
            BonneReponse := 0
        question:
            Enonce := "Quel est l'endroit le plus profond des oceans ?"
            Reponses := array{"La fosse des Mariannes", "Le lac Baikal", "La mer Caspienne", "La mer Morte"}
            BonneReponse := 0
        question:
            Enonce := "Quelle plus grande calotte glaciaire d'Europe (Islande) ?"
            Reponses := array{"Le Vatnajokull", "L'Everest", "Le Mont Blanc", "L'Elbrouz"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la plus grande ile de l'ocean Indien ?"
            Reponses := array{"Sumatra", "Borneo", "Madagascar", "L'ile de Baffin"}
            BonneReponse := 2
        question:
            Enonce := "Quelle grande ile arctique appartient au Canada ?"
            Reponses := array{"Le Groenland", "L'ile de Baffin", "Honshu", "Borneo"}
            BonneReponse := 1
        question:
            Enonce := "Sur quelle ile japonaise se trouve Tokyo ?"
            Reponses := array{"Borneo", "Honshu", "Sumatra", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Quelle ile indonesienne fut frappee par une eruption en 1883 ?"
            Reponses := array{"Le Krakatoa", "L'Etna", "Le Vesuve", "Le Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Quel grand fleuve des USA se jette dans le golfe du Mexique ?"
            Reponses := array{"Le Mississippi", "Le Colorado", "L'Amazone", "Le Mekong"}
            BonneReponse := 0
        question:
            Enonce := "Quel ocean borde l'ouest de l'Afrique ?"
            Reponses := array{"L'ocean Arctique", "L'ocean Indien", "L'ocean Pacifique", "L'ocean Atlantique"}
            BonneReponse := 3
        question:
            Enonce := "Quel grand fleuve allemand se jette dans la mer du Nord ?"
            Reponses := array{"Le Danube", "Le Rhin", "La Volga", "La Seine"}
            BonneReponse := 1
        question:
            Enonce := "Quel ocean borde l'est de l'Afrique et l'Inde ?"
            Reponses := array{"L'ocean Indien", "L'ocean Atlantique", "L'ocean Pacifique", "L'ocean Arctique"}
            BonneReponse := 0
        question:
            Enonce := "Quelle grande ile de la Mediterranee a un volcan actif ?"
            Reponses := array{"Le Vesuve", "L'Etna", "Le Krakatoa", "Le mont Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quel immense desert de sel se trouve en Bolivie ?"
            Reponses := array{"Le Sahara", "L'Atacama", "Le Gobi", "Le Namib"}
            BonneReponse := 1

MakeNatureQuestionsEN() : []question =
    array:
        question:
            Enonce := "What is the longest river?"
            Reponses := array{"The Nile", "The Amazon", "The Yangtze", "The Mississippi"}
            BonneReponse := 0
        question:
            Enonce := "What is the highest mountain?"
            Reponses := array{"Mount Everest", "K2", "Mount Kilimanjaro", "Mont Blanc"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest hot desert?"
            Reponses := array{"The Kalahari", "The Gobi", "The Sahara", "The Atacama"}
            BonneReponse := 2
        question:
            Enonce := "What is the largest ocean?"
            Reponses := array{"The Pacific Ocean", "The Atlantic Ocean", "The Indian Ocean", "The Arctic Ocean"}
            BonneReponse := 0
        question:
            Enonce := "What is the highest mountain in Africa?"
            Reponses := array{"Mont Blanc", "Mount Everest", "Mount Kilimanjaro", "Aconcagua"}
            BonneReponse := 2
        question:
            Enonce := "What is the highest mountain in the Alps?"
            Reponses := array{"Mont Blanc", "The Matterhorn", "Mount Everest", "Mount Fuji"}
            BonneReponse := 0
        question:
            Enonce := "Which river flows through Paris?"
            Reponses := array{"The Volga", "The Rhine", "The Danube", "The Seine"}
            BonneReponse := 3
        question:
            Enonce := "Which river has the greatest flow?"
            Reponses := array{"The Nile", "The Amazon", "The Yangtze", "The Congo River"}
            BonneReponse := 1
        question:
            Enonce := "Which sea borders southern France?"
            Reponses := array{"The Mediterranean", "The Atlantic Ocean", "The Red Sea", "The Caspian Sea"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest rainforest?"
            Reponses := array{"The Amazon rainforest", "The Great Barrier Reef", "The Grand Canyon", "The Sahara"}
            BonneReponse := 0
        question:
            Enonce := "Which ocean separates Europe from America?"
            Reponses := array{"The Arctic Ocean", "The Pacific Ocean", "The Indian Ocean", "The Atlantic Ocean"}
            BonneReponse := 3
        question:
            Enonce := "What is the highest peak in South America?"
            Reponses := array{"Denali", "Mount Everest", "Aconcagua", "Mount Kilimanjaro"}
            BonneReponse := 2
        question:
            Enonce := "Which famous falls lie between the US and Canada?"
            Reponses := array{"The Amazon rainforest", "Angel Falls", "Niagara Falls", "The Grand Canyon"}
            BonneReponse := 2
        question:
            Enonce := "What is the 2nd highest mountain?"
            Reponses := array{"Denali", "Mount Everest", "Mount Kilimanjaro", "K2"}
            BonneReponse := 3
        question:
            Enonce := "What is the deepest lake?"
            Reponses := array{"Lake Titicaca", "Lake Superior", "Lake Victoria", "Lake Baikal"}
            BonneReponse := 3
        question:
            Enonce := "What is the largest lake in Africa?"
            Reponses := array{"Lake Victoria", "Lake Tanganyika", "Lake Baikal", "Lake Titicaca"}
            BonneReponse := 0
        question:
            Enonce := "Which cold desert covers Mongolia?"
            Reponses := array{"The Kalahari", "The Sahara", "The Gobi", "The Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Which desert is the driest in the world?"
            Reponses := array{"The Sahara", "The Atacama", "The Gobi", "The Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Which is the longest river in Europe?"
            Reponses := array{"The Danube", "The Volga", "The Rhine", "The Seine"}
            BonneReponse := 1
        question:
            Enonce := "Which river crosses 10 European countries?"
            Reponses := array{"The Volga", "The Rhine", "The Danube", "The Seine"}
            BonneReponse := 2
        question:
            Enonce := "Which very salty sea makes you float?"
            Reponses := array{"The Caspian Sea", "The Red Sea", "The Dead Sea", "The Mediterranean"}
            BonneReponse := 2
        question:
            Enonce := "What is the world's largest lake (inland sea)?"
            Reponses := array{"Lake Baikal", "Lake Superior", "The Caspian Sea", "Lake Victoria"}
            BonneReponse := 2
        question:
            Enonce := "Which sacred river flows in India?"
            Reponses := array{"The Yangtze", "The Ganges", "The Nile", "The Mississippi"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest lake in North America?"
            Reponses := array{"Lake Titicaca", "Lake Victoria", "Lake Baikal", "Lake Superior"}
            BonneReponse := 3
        question:
            Enonce := "Which giant coral reef borders Australia?"
            Reponses := array{"The Grand Canyon", "The Amazon rainforest", "The Great Barrier Reef", "Niagara Falls"}
            BonneReponse := 2
        question:
            Enonce := "What is the highest peak in North America?"
            Reponses := array{"Mont Blanc", "Aconcagua", "Mount Everest", "Denali"}
            BonneReponse := 3
        question:
            Enonce := "Which volcano is Japan's symbol?"
            Reponses := array{"Mount Fuji", "The Matterhorn", "Mont Blanc", "Mount Kilimanjaro"}
            BonneReponse := 0
        question:
            Enonce := "What is Europe's highest peak (Caucasus)?"
            Reponses := array{"Mont Blanc", "Mount Elbrus", "The Matterhorn", "Mount Everest"}
            BonneReponse := 1
        question:
            Enonce := "What is the world's tallest waterfall?"
            Reponses := array{"The Grand Canyon", "Niagara Falls", "The Amazon rainforest", "Angel Falls"}
            BonneReponse := 3
        question:
            Enonce := "Which African lake is the longest and deepest?"
            Reponses := array{"Lake Tanganyika", "Lake Victoria", "Lake Baikal", "Lake Superior"}
            BonneReponse := 0
        question:
            Enonce := "What is the highest navigable lake?"
            Reponses := array{"Lake Victoria", "Lake Baikal", "Lake Titicaca", "Lake Superior"}
            BonneReponse := 2
        question:
            Enonce := "Which southern African desert shares its name with a people?"
            Reponses := array{"The Atacama", "The Sahara", "The Gobi", "The Kalahari"}
            BonneReponse := 3
        question:
            Enonce := "Which ocean surrounds the North Pole?"
            Reponses := array{"The Indian Ocean", "The Pacific Ocean", "The Arctic Ocean", "The Atlantic Ocean"}
            BonneReponse := 2
        question:
            Enonce := "Which sea separates Africa from Arabia?"
            Reponses := array{"The Caspian Sea", "The Dead Sea", "The Mediterranean", "The Red Sea"}
            BonneReponse := 3
        question:
            Enonce := "Which Asian river is the longest?"
            Reponses := array{"The Nile", "The Ganges", "The Volga", "The Yangtze"}
            BonneReponse := 3
        question:
            Enonce := "Which giant canyon was carved by the Colorado?"
            Reponses := array{"The Grand Canyon", "The Great Barrier Reef", "Niagara Falls", "The Amazon rainforest"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest island in the world?"
            Reponses := array{"The Amazon rainforest", "Greenland", "The Great Barrier Reef", "The Sahara"}
            BonneReponse := 1
        question:
            Enonce := "Which desert is actually the largest (cold)?"
            Reponses := array{"Antarctica", "The Sahara", "The Gobi", "The Arabian Desert"}
            BonneReponse := 0
        question:
            Enonce := "Which large desert lies in the Arabian Peninsula?"
            Reponses := array{"The Sahara", "The Arabian Desert", "The Gobi", "The Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Which Central African river crosses the equator twice?"
            Reponses := array{"The Ganges", "The Nile", "The Congo River", "The Volga"}
            BonneReponse := 2
        question:
            Enonce := "Which Alpine peak has a famous pyramid shape?"
            Reponses := array{"Mont Blanc", "The Matterhorn", "Mount Everest", "Mount Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Which river flows through London?"
            Reponses := array{"The Seine", "The Thames", "The Rhine", "The Tiber"}
            BonneReponse := 1
        question:
            Enonce := "Which river flows through Rome?"
            Reponses := array{"The Seine", "The Thames", "The Tiber", "The Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which famous volcano towers over Naples?"
            Reponses := array{"Mount Etna", "Mount Vesuvius", "Krakatoa", "Mount Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Which volcano is the most active in Sicily?"
            Reponses := array{"Mount Etna", "Mount Vesuvius", "Krakatoa", "Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Which SE Asian river crosses 6 countries?"
            Reponses := array{"The Ganges", "The Mekong", "The Indus", "The Yangtze"}
            BonneReponse := 1
        question:
            Enonce := "Which spectacular falls lie between Brazil and Argentina?"
            Reponses := array{"Victoria Falls", "Niagara Falls", "Iguazu Falls", "Angel Falls"}
            BonneReponse := 2
        question:
            Enonce := "Which sea borders the Riviera and Italy?"
            Reponses := array{"The Mediterranean", "The Black Sea", "The Baltic Sea", "The Caribbean Sea"}
            BonneReponse := 0
        question:
            Enonce := "Which river flows through Lyon?"
            Reponses := array{"The Loire", "The Rhone", "The Seine", "The Thames"}
            BonneReponse := 1
        question:
            Enonce := "What is the longest river in France?"
            Reponses := array{"The Rhone", "The Seine", "The Loire", "The Rhine"}
            BonneReponse := 2
        question:
            Enonce := "Which warm sea borders the Caribbean islands?"
            Reponses := array{"The Caribbean Sea", "The Baltic Sea", "The Black Sea", "The Red Sea"}
            BonneReponse := 0
        question:
            Enonce := "Which southern African falls are named after a queen?"
            Reponses := array{"Niagara Falls", "Iguazu Falls", "Victoria Falls", "Angel Falls"}
            BonneReponse := 2
        question:
            Enonce := "Which lake borders Geneva?"
            Reponses := array{"Lake Garda", "Lake Geneva", "Lake Michigan", "The Aral Sea"}
            BonneReponse := 1
        question:
            Enonce := "What is the largest lake in Italy?"
            Reponses := array{"Lake Geneva", "Lake Garda", "Lake Michigan", "Lake Baikal"}
            BonneReponse := 1
        question:
            Enonce := "Which northern European sea is almost enclosed?"
            Reponses := array{"The Baltic Sea", "The Black Sea", "The Caribbean Sea", "The Red Sea"}
            BonneReponse := 0
        question:
            Enonce := "Which sea borders Ukraine and Turkey?"
            Reponses := array{"The Caspian Sea", "The Baltic Sea", "The Black Sea", "The Mediterranean"}
            BonneReponse := 2
        question:
            Enonce := "Which river crosses Pakistan?"
            Reponses := array{"The Indus", "The Ganges", "The Mekong", "The Niger River"}
            BonneReponse := 0
        question:
            Enonce := "Which West African river names two countries?"
            Reponses := array{"The Zambezi", "The Niger River", "The Mekong", "The Congo River"}
            BonneReponse := 1
        question:
            Enonce := "Which river carved the Grand Canyon?"
            Reponses := array{"The Mekong", "The Mississippi", "The Colorado River", "The Zambezi"}
            BonneReponse := 2
        question:
            Enonce := "Which Himalayan peak tops 8000 m (8th highest)?"
            Reponses := array{"Annapurna", "Mount Everest", "K2", "Denali"}
            BonneReponse := 0
        question:
            Enonce := "Which Hawaiian volcano is the tallest from base?"
            Reponses := array{"Mount Fuji", "Mauna Kea", "Mount Etna", "Mount Vesuvius"}
            BonneReponse := 1
        question:
            Enonce := "Which coastal desert runs along Namibia?"
            Reponses := array{"The Kalahari", "The Namib", "The Sahara", "The Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Which Great Lake touches Chicago?"
            Reponses := array{"Lake Michigan", "Lake Superior", "Lake Geneva", "Lake Garda"}
            BonneReponse := 0
        question:
            Enonce := "Which is the largest SE Asian island (split in 3)?"
            Reponses := array{"Borneo", "Sumatra", "Honshu", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Which Indian desert borders Pakistan?"
            Reponses := array{"The Gobi", "The Thar", "The Namib", "The Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Which US desert holds Death Valley?"
            Reponses := array{"The Mojave", "The Thar", "The Namib", "The Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Which Asian inland sea nearly vanished?"
            Reponses := array{"The Baltic Sea", "The Caspian Sea", "The Black Sea", "The Aral Sea"}
            BonneReponse := 3
        question:
            Enonce := "Which African lake has shrunk greatly (Sahel)?"
            Reponses := array{"Lake Chad", "Lake Victoria", "Lake Tanganyika", "The Aral Sea"}
            BonneReponse := 0
        question:
            Enonce := "Which southern African river feeds Victoria Falls?"
            Reponses := array{"The Zambezi", "The Niger River", "The Congo River", "The Nile"}
            BonneReponse := 0
        question:
            Enonce := "What is the deepest point of the oceans?"
            Reponses := array{"The Mariana Trench", "Lake Baikal", "The Caspian Sea", "The Dead Sea"}
            BonneReponse := 0
        question:
            Enonce := "Which is Europe's largest ice cap (Iceland)?"
            Reponses := array{"Vatnajokull", "Mount Everest", "Mont Blanc", "Mount Elbrus"}
            BonneReponse := 0
        question:
            Enonce := "What is the largest island in the Indian Ocean?"
            Reponses := array{"Sumatra", "Borneo", "Madagascar", "Baffin Island"}
            BonneReponse := 2
        question:
            Enonce := "Which large Arctic island belongs to Canada?"
            Reponses := array{"Greenland", "Baffin Island", "Honshu", "Borneo"}
            BonneReponse := 1
        question:
            Enonce := "On which Japanese island is Tokyo?"
            Reponses := array{"Borneo", "Honshu", "Sumatra", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Which Indonesian island had an 1883 eruption?"
            Reponses := array{"Krakatoa", "Mount Etna", "Mount Vesuvius", "Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Which big US river flows into the Gulf of Mexico?"
            Reponses := array{"The Mississippi", "The Colorado River", "The Amazon", "The Mekong"}
            BonneReponse := 0
        question:
            Enonce := "Which ocean borders West Africa?"
            Reponses := array{"The Arctic Ocean", "The Indian Ocean", "The Pacific Ocean", "The Atlantic Ocean"}
            BonneReponse := 3
        question:
            Enonce := "Which big German river flows to the North Sea?"
            Reponses := array{"The Danube", "The Rhine", "The Volga", "The Seine"}
            BonneReponse := 1
        question:
            Enonce := "Which ocean borders East Africa and India?"
            Reponses := array{"The Indian Ocean", "The Atlantic Ocean", "The Pacific Ocean", "The Arctic Ocean"}
            BonneReponse := 0
        question:
            Enonce := "Which large Mediterranean island has an active volcano?"
            Reponses := array{"Mount Vesuvius", "Mount Etna", "Krakatoa", "Mount Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Which huge salt flat is in Bolivia?"
            Reponses := array{"The Sahara", "The Atacama", "The Gobi", "The Namib"}
            BonneReponse := 1

MakeNatureQuestionsES() : []question =
    array:
        question:
            Enonce := "Cual es el rio mas largo del mundo?"
            Reponses := array{"El Nilo", "El Amazonas", "El Yangtse", "El Misisipi"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la montana mas alta?"
            Reponses := array{"El Everest", "El K2", "El Kilimanjaro", "El Mont Blanc"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el mayor desierto calido?"
            Reponses := array{"El Kalahari", "El Gobi", "El Sahara", "El Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el oceano mas grande?"
            Reponses := array{"El oceano Pacifico", "El oceano Atlantico", "El oceano Indico", "El oceano Artico"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la montana mas alta de Africa?"
            Reponses := array{"El Mont Blanc", "El Everest", "El Kilimanjaro", "El Aconcagua"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la montana mas alta de los Alpes?"
            Reponses := array{"El Mont Blanc", "El Cervino", "El Everest", "El monte Fuji"}
            BonneReponse := 0
        question:
            Enonce := "Que rio cruza Paris?"
            Reponses := array{"El Volga", "El Rin", "El Danubio", "El Sena"}
            BonneReponse := 3
        question:
            Enonce := "Que rio tiene mayor caudal?"
            Reponses := array{"El Nilo", "El Amazonas", "El Yangtse", "El rio Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que mar bana el sur de Francia?"
            Reponses := array{"El Mediterraneo", "El oceano Atlantico", "El mar Rojo", "El mar Caspio"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la mayor selva tropical?"
            Reponses := array{"La selva amazonica", "La Gran Barrera de Coral", "El Gran Canon", "El Sahara"}
            BonneReponse := 0
        question:
            Enonce := "Que oceano separa Europa de America?"
            Reponses := array{"El oceano Artico", "El oceano Pacifico", "El oceano Indico", "El oceano Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el pico mas alto de Sudamerica?"
            Reponses := array{"El Denali", "El Everest", "El Aconcagua", "El Kilimanjaro"}
            BonneReponse := 2
        question:
            Enonce := "Que famosas cataratas estan entre EEUU y Canada?"
            Reponses := array{"La selva amazonica", "El Salto Angel", "Las cataratas del Niagara", "El Gran Canon"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la 2a montana mas alta?"
            Reponses := array{"El Denali", "El Everest", "El Kilimanjaro", "El K2"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el lago mas profundo?"
            Reponses := array{"El lago Titicaca", "El lago Superior", "El lago Victoria", "El lago Baikal"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el mayor lago de Africa?"
            Reponses := array{"El lago Victoria", "El lago Tanganica", "El lago Baikal", "El lago Titicaca"}
            BonneReponse := 0
        question:
            Enonce := "Que desierto frio cubre Mongolia?"
            Reponses := array{"El Kalahari", "El Sahara", "El Gobi", "El Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Que desierto es el mas arido del mundo?"
            Reponses := array{"El Sahara", "El Atacama", "El Gobi", "El Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el rio mas largo de Europa?"
            Reponses := array{"El Danubio", "El Volga", "El Rin", "El Sena"}
            BonneReponse := 1
        question:
            Enonce := "Que rio cruza 10 paises de Europa?"
            Reponses := array{"El Volga", "El Rin", "El Danubio", "El Sena"}
            BonneReponse := 2
        question:
            Enonce := "Que mar muy salado te hace flotar?"
            Reponses := array{"El mar Caspio", "El mar Rojo", "El mar Muerto", "El Mediterraneo"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el mayor lago (mar interior) del mundo?"
            Reponses := array{"El lago Baikal", "El lago Superior", "El mar Caspio", "El lago Victoria"}
            BonneReponse := 2
        question:
            Enonce := "Que rio sagrado fluye en India?"
            Reponses := array{"El Yangtse", "El Ganges", "El Nilo", "El Misisipi"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el mayor lago de Norteamerica?"
            Reponses := array{"El lago Titicaca", "El lago Victoria", "El lago Baikal", "El lago Superior"}
            BonneReponse := 3
        question:
            Enonce := "Que arrecife gigante bordea Australia?"
            Reponses := array{"El Gran Canon", "La selva amazonica", "La Gran Barrera de Coral", "Las cataratas del Niagara"}
            BonneReponse := 2
        question:
            Enonce := "Cual es el pico mas alto de Norteamerica?"
            Reponses := array{"El Mont Blanc", "El Aconcagua", "El Everest", "El Denali"}
            BonneReponse := 3
        question:
            Enonce := "Que volcan es simbolo de Japon?"
            Reponses := array{"El monte Fuji", "El Cervino", "El Mont Blanc", "El Kilimanjaro"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el pico mas alto de Europa (Caucaso)?"
            Reponses := array{"El Mont Blanc", "El Elbrus", "El Cervino", "El Everest"}
            BonneReponse := 1
        question:
            Enonce := "Cual es la cascada mas alta del mundo?"
            Reponses := array{"El Gran Canon", "Las cataratas del Niagara", "La selva amazonica", "El Salto Angel"}
            BonneReponse := 3
        question:
            Enonce := "Que lago africano es el mas largo y profundo?"
            Reponses := array{"El lago Tanganica", "El lago Victoria", "El lago Baikal", "El lago Superior"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el lago navegable mas alto?"
            Reponses := array{"El lago Victoria", "El lago Baikal", "El lago Titicaca", "El lago Superior"}
            BonneReponse := 2
        question:
            Enonce := "Que desierto del sur de Africa comparte nombre con un pueblo?"
            Reponses := array{"El Atacama", "El Sahara", "El Gobi", "El Kalahari"}
            BonneReponse := 3
        question:
            Enonce := "Que oceano rodea el Polo Norte?"
            Reponses := array{"El oceano Indico", "El oceano Pacifico", "El oceano Artico", "El oceano Atlantico"}
            BonneReponse := 2
        question:
            Enonce := "Que mar separa Africa de Arabia?"
            Reponses := array{"El mar Caspio", "El mar Muerto", "El Mediterraneo", "El mar Rojo"}
            BonneReponse := 3
        question:
            Enonce := "Cual es el rio mas largo de Asia?"
            Reponses := array{"El Nilo", "El Ganges", "El Volga", "El Yangtse"}
            BonneReponse := 3
        question:
            Enonce := "Que canon gigante excavo el Colorado?"
            Reponses := array{"El Gran Canon", "La Gran Barrera de Coral", "Las cataratas del Niagara", "La selva amazonica"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la isla mas grande del mundo?"
            Reponses := array{"La selva amazonica", "Groenlandia", "La Gran Barrera de Coral", "El Sahara"}
            BonneReponse := 1
        question:
            Enonce := "Que desierto es en realidad el mayor (frio)?"
            Reponses := array{"La Antartida", "El Sahara", "El Gobi", "El desierto de Arabia"}
            BonneReponse := 0
        question:
            Enonce := "Que gran desierto esta en la peninsula arabiga?"
            Reponses := array{"El Sahara", "El desierto de Arabia", "El Gobi", "El Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Que rio de Africa central cruza el ecuador 2 veces?"
            Reponses := array{"El Ganges", "El Nilo", "El rio Congo", "El Volga"}
            BonneReponse := 2
        question:
            Enonce := "Que pico alpino tiene forma de piramide famosa?"
            Reponses := array{"El Mont Blanc", "El Cervino", "El Everest", "El monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Que rio cruza Londres?"
            Reponses := array{"El Sena", "El Tamesis", "El Rin", "El Tiber"}
            BonneReponse := 1
        question:
            Enonce := "Que rio cruza Roma?"
            Reponses := array{"El Sena", "El Tamesis", "El Tiber", "El Rodano"}
            BonneReponse := 2
        question:
            Enonce := "Que famoso volcan domina Napoles?"
            Reponses := array{"El Etna", "El Vesubio", "El Krakatoa", "El monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Que volcan es el mas activo de Sicilia?"
            Reponses := array{"El Etna", "El Vesubio", "El Krakatoa", "El Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Que rio del sudeste asiatico cruza 6 paises?"
            Reponses := array{"El Ganges", "El Mekong", "El Indo", "El Yangtse"}
            BonneReponse := 1
        question:
            Enonce := "Que espectaculares cataratas estan entre Brasil y Argentina?"
            Reponses := array{"Las cataratas Victoria", "Las cataratas del Niagara", "Las cataratas del Iguazu", "El Salto Angel"}
            BonneReponse := 2
        question:
            Enonce := "Que mar bordea la Costa Azul e Italia?"
            Reponses := array{"El Mediterraneo", "El mar Negro", "El mar Baltico", "El mar Caribe"}
            BonneReponse := 0
        question:
            Enonce := "Que rio pasa por Lyon?"
            Reponses := array{"El Loira", "El Rodano", "El Sena", "El Tamesis"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el rio mas largo de Francia?"
            Reponses := array{"El Rodano", "El Sena", "El Loira", "El Rin"}
            BonneReponse := 2
        question:
            Enonce := "Que mar calido bordea las Antillas?"
            Reponses := array{"El mar Caribe", "El mar Baltico", "El mar Negro", "El mar Rojo"}
            BonneReponse := 0
        question:
            Enonce := "Que cataratas del sur de Africa llevan nombre de reina?"
            Reponses := array{"Las cataratas del Niagara", "Las cataratas del Iguazu", "Las cataratas Victoria", "El Salto Angel"}
            BonneReponse := 2
        question:
            Enonce := "Que lago bordea Ginebra?"
            Reponses := array{"El lago de Garda", "El lago Leman", "El lago Michigan", "El mar de Aral"}
            BonneReponse := 1
        question:
            Enonce := "Cual es el mayor lago de Italia?"
            Reponses := array{"El lago Leman", "El lago de Garda", "El lago Michigan", "El lago Baikal"}
            BonneReponse := 1
        question:
            Enonce := "Que mar del norte de Europa esta casi cerrado?"
            Reponses := array{"El mar Baltico", "El mar Negro", "El mar Caribe", "El mar Rojo"}
            BonneReponse := 0
        question:
            Enonce := "Que mar bordea Ucrania y Turquia?"
            Reponses := array{"El mar Caspio", "El mar Baltico", "El mar Negro", "El Mediterraneo"}
            BonneReponse := 2
        question:
            Enonce := "Que rio cruza Pakistan?"
            Reponses := array{"El Indo", "El Ganges", "El Mekong", "El rio Niger"}
            BonneReponse := 0
        question:
            Enonce := "Que rio de Africa occidental da nombre a 2 paises?"
            Reponses := array{"El Zambeze", "El rio Niger", "El Mekong", "El rio Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que rio excavo el Gran Canon?"
            Reponses := array{"El Mekong", "El Misisipi", "El rio Colorado", "El Zambeze"}
            BonneReponse := 2
        question:
            Enonce := "Que cumbre del Himalaya supera 8000 m (8a)?"
            Reponses := array{"El Annapurna", "El Everest", "El K2", "El Denali"}
            BonneReponse := 0
        question:
            Enonce := "Que volcan de Hawai es la montana mas alta desde la base?"
            Reponses := array{"El monte Fuji", "El Mauna Kea", "El Etna", "El Vesubio"}
            BonneReponse := 1
        question:
            Enonce := "Que desierto costero recorre Namibia?"
            Reponses := array{"El Kalahari", "El Namib", "El Sahara", "El Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Que gran lago americano toca Chicago?"
            Reponses := array{"El lago Michigan", "El lago Superior", "El lago Leman", "El lago de Garda"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la mayor isla del sudeste asiatico (en 3)?"
            Reponses := array{"Borneo", "Sumatra", "Honshu", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Que desierto indio bordea Pakistan?"
            Reponses := array{"El Gobi", "El Thar", "El Namib", "El Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Que desierto de EEUU alberga el Valle de la Muerte?"
            Reponses := array{"El Mojave", "El Thar", "El Namib", "El Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Que mar interior de Asia casi desaparecio?"
            Reponses := array{"El mar Baltico", "El mar Caspio", "El mar Negro", "El mar de Aral"}
            BonneReponse := 3
        question:
            Enonce := "Que lago africano se ha reducido mucho (Sahel)?"
            Reponses := array{"El lago Chad", "El lago Victoria", "El lago Tanganica", "El mar de Aral"}
            BonneReponse := 0
        question:
            Enonce := "Que rio del sur de Africa alimenta las cataratas Victoria?"
            Reponses := array{"El Zambeze", "El rio Niger", "El rio Congo", "El Nilo"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el punto mas profundo de los oceanos?"
            Reponses := array{"La fosa de las Marianas", "El lago Baikal", "El mar Caspio", "El mar Muerto"}
            BonneReponse := 0
        question:
            Enonce := "Cual es el mayor casquete glaciar de Europa (Islandia)?"
            Reponses := array{"El Vatnajokull", "El Everest", "El Mont Blanc", "El Elbrus"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la mayor isla del oceano Indico?"
            Reponses := array{"Sumatra", "Borneo", "Madagascar", "La isla de Baffin"}
            BonneReponse := 2
        question:
            Enonce := "Que gran isla artica pertenece a Canada?"
            Reponses := array{"Groenlandia", "La isla de Baffin", "Honshu", "Borneo"}
            BonneReponse := 1
        question:
            Enonce := "En que isla japonesa esta Tokio?"
            Reponses := array{"Borneo", "Honshu", "Sumatra", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Que isla indonesia sufrio una erupcion en 1883?"
            Reponses := array{"El Krakatoa", "El Etna", "El Vesubio", "El Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Que gran rio de EEUU desemboca en el golfo de Mexico?"
            Reponses := array{"El Misisipi", "El rio Colorado", "El Amazonas", "El Mekong"}
            BonneReponse := 0
        question:
            Enonce := "Que oceano bordea el oeste de Africa?"
            Reponses := array{"El oceano Artico", "El oceano Indico", "El oceano Pacifico", "El oceano Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Que gran rio aleman desemboca en el mar del Norte?"
            Reponses := array{"El Danubio", "El Rin", "El Volga", "El Sena"}
            BonneReponse := 1
        question:
            Enonce := "Que oceano bordea el este de Africa e India?"
            Reponses := array{"El oceano Indico", "El oceano Atlantico", "El oceano Pacifico", "El oceano Artico"}
            BonneReponse := 0
        question:
            Enonce := "Que gran isla del Mediterraneo tiene un volcan activo?"
            Reponses := array{"El Vesubio", "El Etna", "El Krakatoa", "El monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Que enorme salar esta en Bolivia?"
            Reponses := array{"El Sahara", "El Atacama", "El Gobi", "El Namib"}
            BonneReponse := 1

MakeNatureQuestionsDE() : []question =
    array:
        question:
            Enonce := "Was ist der laengste Fluss der Welt?"
            Reponses := array{"Der Nil", "Der Amazonas", "Der Jangtsekiang", "Der Mississippi"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der hoechste Berg der Welt?"
            Reponses := array{"Der Mount Everest", "Der K2", "Der Kilimandscharo", "Der Montblanc"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die groesste heisse Wueste?"
            Reponses := array{"Die Kalahari", "Die Gobi", "Die Sahara", "Die Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der groesste Ozean?"
            Reponses := array{"Der Pazifik", "Der Atlantik", "Der Indische Ozean", "Das Nordpolarmeer"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der hoechste Berg Afrikas?"
            Reponses := array{"Der Montblanc", "Der Mount Everest", "Der Kilimandscharo", "Der Aconcagua"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der hoechste Berg der Alpen?"
            Reponses := array{"Der Montblanc", "Das Matterhorn", "Der Mount Everest", "Der Fuji"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Fluss fliesst durch Paris?"
            Reponses := array{"Die Wolga", "Der Rhein", "Die Donau", "Die Seine"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Fluss hat die groesste Wassermenge?"
            Reponses := array{"Der Nil", "Der Amazonas", "Der Jangtsekiang", "Der Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Meer grenzt an Suedfrankreich?"
            Reponses := array{"Das Mittelmeer", "Der Atlantik", "Das Rote Meer", "Das Kaspische Meer"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der groesste Regenwald?"
            Reponses := array{"Der Amazonas-Regenwald", "Das Great Barrier Reef", "Der Grand Canyon", "Die Sahara"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Ozean trennt Europa von Amerika?"
            Reponses := array{"Das Nordpolarmeer", "Der Pazifik", "Der Indische Ozean", "Der Atlantik"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der hoechste Gipfel Suedamerikas?"
            Reponses := array{"Der Denali", "Der Mount Everest", "Der Aconcagua", "Der Kilimandscharo"}
            BonneReponse := 2
        question:
            Enonce := "Welche beruehmten Faelle liegen zwischen USA und Kanada?"
            Reponses := array{"Der Amazonas-Regenwald", "Der Angel-Wasserfall", "Die Niagarafaelle", "Der Grand Canyon"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der zweithoechste Berg?"
            Reponses := array{"Der Denali", "Der Mount Everest", "Der Kilimandscharo", "Der K2"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der tiefste See der Welt?"
            Reponses := array{"Der Titicacasee", "Der Obere See", "Der Victoriasee", "Der Baikalsee"}
            BonneReponse := 3
        question:
            Enonce := "Was ist der groesste See Afrikas?"
            Reponses := array{"Der Victoriasee", "Der Tanganjikasee", "Der Baikalsee", "Der Titicacasee"}
            BonneReponse := 0
        question:
            Enonce := "Welche kalte Wueste bedeckt die Mongolei?"
            Reponses := array{"Die Kalahari", "Die Sahara", "Die Gobi", "Die Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Welche Wueste ist die trockenste der Welt?"
            Reponses := array{"Die Sahara", "Die Atacama", "Die Gobi", "Die Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss ist der laengste Europas?"
            Reponses := array{"Die Donau", "Die Wolga", "Der Rhein", "Die Seine"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss durchquert 10 europaeische Laender?"
            Reponses := array{"Die Wolga", "Der Rhein", "Die Donau", "Die Seine"}
            BonneReponse := 2
        question:
            Enonce := "In welchem sehr salzigen Meer treibt man?"
            Reponses := array{"Das Kaspische Meer", "Das Rote Meer", "Das Tote Meer", "Das Mittelmeer"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der groesste See (Binnenmeer) der Welt?"
            Reponses := array{"Der Baikalsee", "Der Obere See", "Das Kaspische Meer", "Der Victoriasee"}
            BonneReponse := 2
        question:
            Enonce := "Welcher heilige Fluss fliesst in Indien?"
            Reponses := array{"Der Jangtsekiang", "Der Ganges", "Der Nil", "Der Mississippi"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der groesste See Nordamerikas?"
            Reponses := array{"Der Titicacasee", "Der Victoriasee", "Der Baikalsee", "Der Obere See"}
            BonneReponse := 3
        question:
            Enonce := "Welches riesige Korallenriff saeumt Australien?"
            Reponses := array{"Der Grand Canyon", "Der Amazonas-Regenwald", "Das Great Barrier Reef", "Die Niagarafaelle"}
            BonneReponse := 2
        question:
            Enonce := "Was ist der hoechste Gipfel Nordamerikas?"
            Reponses := array{"Der Montblanc", "Der Aconcagua", "Der Mount Everest", "Der Denali"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Vulkan ist Japans Wahrzeichen?"
            Reponses := array{"Der Fuji", "Das Matterhorn", "Der Montblanc", "Der Kilimandscharo"}
            BonneReponse := 0
        question:
            Enonce := "Was ist Europas hoechster Gipfel (Kaukasus)?"
            Reponses := array{"Der Montblanc", "Der Elbrus", "Das Matterhorn", "Der Mount Everest"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der hoechste Wasserfall der Welt?"
            Reponses := array{"Der Grand Canyon", "Die Niagarafaelle", "Der Amazonas-Regenwald", "Der Angel-Wasserfall"}
            BonneReponse := 3
        question:
            Enonce := "Welcher afrikanische See ist der laengste und tiefste?"
            Reponses := array{"Der Tanganjikasee", "Der Victoriasee", "Der Baikalsee", "Der Obere See"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der hoechste schiffbare See?"
            Reponses := array{"Der Victoriasee", "Der Baikalsee", "Der Titicacasee", "Der Obere See"}
            BonneReponse := 2
        question:
            Enonce := "Welche Wueste im suedlichen Afrika teilt ihren Namen mit einem Volk?"
            Reponses := array{"Die Atacama", "Die Sahara", "Die Gobi", "Die Kalahari"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Ozean umgibt den Nordpol?"
            Reponses := array{"Der Indische Ozean", "Der Pazifik", "Das Nordpolarmeer", "Der Atlantik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Meer trennt Afrika von Arabien?"
            Reponses := array{"Das Kaspische Meer", "Das Tote Meer", "Das Mittelmeer", "Das Rote Meer"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Fluss Asiens ist der laengste?"
            Reponses := array{"Der Nil", "Der Ganges", "Die Wolga", "Der Jangtsekiang"}
            BonneReponse := 3
        question:
            Enonce := "Welche riesige Schlucht schuf der Colorado?"
            Reponses := array{"Der Grand Canyon", "Das Great Barrier Reef", "Die Niagarafaelle", "Der Amazonas-Regenwald"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die groesste Insel der Welt?"
            Reponses := array{"Der Amazonas-Regenwald", "Groenland", "Das Great Barrier Reef", "Die Sahara"}
            BonneReponse := 1
        question:
            Enonce := "Welche Wueste ist tatsaechlich die groesste (kalt)?"
            Reponses := array{"Die Antarktis", "Die Sahara", "Die Gobi", "Die Arabische Wueste"}
            BonneReponse := 0
        question:
            Enonce := "Welche grosse Wueste liegt auf der Arabischen Halbinsel?"
            Reponses := array{"Die Sahara", "Die Arabische Wueste", "Die Gobi", "Die Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Welcher zentralafrikanische Fluss kreuzt den Aequator zweimal?"
            Reponses := array{"Der Ganges", "Der Nil", "Der Kongo", "Die Wolga"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Alpengipfel hat eine beruehmte Pyramidenform?"
            Reponses := array{"Der Montblanc", "Das Matterhorn", "Der Mount Everest", "Der Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss fliesst durch London?"
            Reponses := array{"Die Seine", "Die Themse", "Der Rhein", "Der Tiber"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss fliesst durch Rom?"
            Reponses := array{"Die Seine", "Die Themse", "Der Tiber", "Die Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Vulkan ueberragt Neapel?"
            Reponses := array{"Der Aetna", "Der Vesuv", "Der Krakatau", "Der Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Vulkan ist der aktivste Siziliens?"
            Reponses := array{"Der Aetna", "Der Vesuv", "Der Krakatau", "Der Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Welcher suedostasiatische Fluss durchquert 6 Laender?"
            Reponses := array{"Der Ganges", "Der Mekong", "Der Indus", "Der Jangtsekiang"}
            BonneReponse := 1
        question:
            Enonce := "Welche spektakulaeren Faelle liegen zwischen Brasilien und Argentinien?"
            Reponses := array{"Die Victoriafaelle", "Die Niagarafaelle", "Die Iguazu-Wasserfaelle", "Der Angel-Wasserfall"}
            BonneReponse := 2
        question:
            Enonce := "Welches Meer saeumt die Riviera und Italien?"
            Reponses := array{"Das Mittelmeer", "Das Schwarze Meer", "Die Ostsee", "Die Karibik"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Fluss fliesst durch Lyon?"
            Reponses := array{"Die Loire", "Die Rhone", "Die Seine", "Die Themse"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der laengste Fluss Frankreichs?"
            Reponses := array{"Die Rhone", "Die Seine", "Die Loire", "Der Rhein"}
            BonneReponse := 2
        question:
            Enonce := "Welches warme Meer saeumt die Antillen?"
            Reponses := array{"Die Karibik", "Die Ostsee", "Das Schwarze Meer", "Das Rote Meer"}
            BonneReponse := 0
        question:
            Enonce := "Welche Faelle im suedlichen Afrika tragen einen Koeniginnennamen?"
            Reponses := array{"Die Niagarafaelle", "Die Iguazu-Wasserfaelle", "Die Victoriafaelle", "Der Angel-Wasserfall"}
            BonneReponse := 2
        question:
            Enonce := "Welcher See grenzt an Genf?"
            Reponses := array{"Der Gardasee", "Der Genfersee", "Der Michigansee", "Der Aralsee"}
            BonneReponse := 1
        question:
            Enonce := "Was ist der groesste See Italiens?"
            Reponses := array{"Der Genfersee", "Der Gardasee", "Der Michigansee", "Der Baikalsee"}
            BonneReponse := 1
        question:
            Enonce := "Welches nordeuropaeische Meer ist fast geschlossen?"
            Reponses := array{"Die Ostsee", "Das Schwarze Meer", "Die Karibik", "Das Rote Meer"}
            BonneReponse := 0
        question:
            Enonce := "Welches Meer grenzt an die Ukraine und die Tuerkei?"
            Reponses := array{"Das Kaspische Meer", "Die Ostsee", "Das Schwarze Meer", "Das Mittelmeer"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Fluss durchquert Pakistan?"
            Reponses := array{"Der Indus", "Der Ganges", "Der Mekong", "Der Niger"}
            BonneReponse := 0
        question:
            Enonce := "Welcher westafrikanische Fluss benennt zwei Laender?"
            Reponses := array{"Der Sambesi", "Der Niger", "Der Mekong", "Der Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Fluss schuf den Grand Canyon?"
            Reponses := array{"Der Mekong", "Der Mississippi", "Der Colorado", "Der Sambesi"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Himalaya-Gipfel ueberschreitet 8000 m (8.)?"
            Reponses := array{"Der Annapurna", "Der Mount Everest", "Der K2", "Der Denali"}
            BonneReponse := 0
        question:
            Enonce := "Welcher hawaiianische Vulkan ist von der Basis der hoechste Berg?"
            Reponses := array{"Der Fuji", "Der Mauna Kea", "Der Aetna", "Der Vesuv"}
            BonneReponse := 1
        question:
            Enonce := "Welche Kuestenwueste saeumt Namibia?"
            Reponses := array{"Die Kalahari", "Die Namib", "Die Sahara", "Die Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Grosse See beruehrt Chicago?"
            Reponses := array{"Der Michigansee", "Der Obere See", "Der Genfersee", "Der Gardasee"}
            BonneReponse := 0
        question:
            Enonce := "Welche groesste suedostasiatische Insel (in 3 geteilt)?"
            Reponses := array{"Borneo", "Sumatra", "Honshu", "Madagaskar"}
            BonneReponse := 0
        question:
            Enonce := "Welche indische Wueste grenzt an Pakistan?"
            Reponses := array{"Die Gobi", "Die Thar", "Die Namib", "Die Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Welche US-Wueste birgt das Death Valley?"
            Reponses := array{"Die Mojave", "Die Thar", "Die Namib", "Die Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Welches asiatische Binnenmeer ist fast verschwunden?"
            Reponses := array{"Die Ostsee", "Das Kaspische Meer", "Das Schwarze Meer", "Der Aralsee"}
            BonneReponse := 3
        question:
            Enonce := "Welcher afrikanische See ist stark geschrumpft (Sahel)?"
            Reponses := array{"Der Tschadsee", "Der Victoriasee", "Der Tanganjikasee", "Der Aralsee"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Fluss speist die Victoriafaelle?"
            Reponses := array{"Der Sambesi", "Der Niger", "Der Kongo", "Der Nil"}
            BonneReponse := 0
        question:
            Enonce := "Was ist der tiefste Punkt der Ozeane?"
            Reponses := array{"Der Marianengraben", "Der Baikalsee", "Das Kaspische Meer", "Das Tote Meer"}
            BonneReponse := 0
        question:
            Enonce := "Welche ist Europas groesste Eiskappe (Island)?"
            Reponses := array{"Der Vatnajoekull", "Der Mount Everest", "Der Montblanc", "Der Elbrus"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die groesste Insel im Indischen Ozean?"
            Reponses := array{"Sumatra", "Borneo", "Madagaskar", "Die Baffininsel"}
            BonneReponse := 2
        question:
            Enonce := "Welche grosse arktische Insel gehoert zu Kanada?"
            Reponses := array{"Groenland", "Die Baffininsel", "Honshu", "Borneo"}
            BonneReponse := 1
        question:
            Enonce := "Auf welcher japanischen Insel liegt Tokio?"
            Reponses := array{"Borneo", "Honshu", "Sumatra", "Madagaskar"}
            BonneReponse := 1
        question:
            Enonce := "Welche indonesische Insel hatte 1883 einen Ausbruch?"
            Reponses := array{"Der Krakatau", "Der Aetna", "Der Vesuv", "Der Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Welcher grosse US-Fluss muendet in den Golf von Mexiko?"
            Reponses := array{"Der Mississippi", "Der Colorado", "Der Amazonas", "Der Mekong"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Ozean grenzt an Westafrika?"
            Reponses := array{"Das Nordpolarmeer", "Der Indische Ozean", "Der Pazifik", "Der Atlantik"}
            BonneReponse := 3
        question:
            Enonce := "Welcher grosse deutsche Fluss muendet in die Nordsee?"
            Reponses := array{"Die Donau", "Der Rhein", "Die Wolga", "Die Seine"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Ozean grenzt an Ostafrika und Indien?"
            Reponses := array{"Der Indische Ozean", "Der Atlantik", "Der Pazifik", "Das Nordpolarmeer"}
            BonneReponse := 0
        question:
            Enonce := "Welche grosse Mittelmeerinsel hat einen aktiven Vulkan?"
            Reponses := array{"Der Vesuv", "Der Aetna", "Der Krakatau", "Der Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Welche riesige Salzwueste liegt in Bolivien?"
            Reponses := array{"Die Sahara", "Die Atacama", "Die Gobi", "Die Namib"}
            BonneReponse := 1

MakeNatureQuestionsIT() : []question =
    array:
        question:
            Enonce := "Qual e il fiume piu lungo del mondo?"
            Reponses := array{"Il Nilo", "Il Rio delle Amazzoni", "Lo Yangtze", "Il Mississippi"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la montagna piu alta del mondo?"
            Reponses := array{"L'Everest", "Il K2", "Il Kilimangiaro", "Il Monte Bianco"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il piu grande deserto caldo?"
            Reponses := array{"Il Kalahari", "Il Gobi", "Il Sahara", "L'Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Qual e l'oceano piu grande?"
            Reponses := array{"L'oceano Pacifico", "L'oceano Atlantico", "L'oceano Indiano", "L'oceano Artico"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la montagna piu alta dell'Africa?"
            Reponses := array{"Il Monte Bianco", "L'Everest", "Il Kilimangiaro", "L'Aconcagua"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la montagna piu alta delle Alpi?"
            Reponses := array{"Il Monte Bianco", "Il Cervino", "L'Everest", "Il monte Fuji"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume attraversa Parigi?"
            Reponses := array{"Il Volga", "Il Reno", "Il Danubio", "La Senna"}
            BonneReponse := 3
        question:
            Enonce := "Quale fiume ha la portata maggiore?"
            Reponses := array{"Il Nilo", "Il Rio delle Amazzoni", "Lo Yangtze", "Il Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale mare bagna il sud della Francia?"
            Reponses := array{"Il Mediterraneo", "L'oceano Atlantico", "Il mar Rosso", "Il mar Caspio"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu grande foresta pluviale?"
            Reponses := array{"La foresta amazzonica", "La Grande Barriera Corallina", "Il Grand Canyon", "Il Sahara"}
            BonneReponse := 0
        question:
            Enonce := "Quale oceano separa l'Europa dall'America?"
            Reponses := array{"L'oceano Artico", "L'oceano Pacifico", "L'oceano Indiano", "L'oceano Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Qual e la vetta piu alta del Sud America?"
            Reponses := array{"Il Denali", "L'Everest", "L'Aconcagua", "Il Kilimangiaro"}
            BonneReponse := 2
        question:
            Enonce := "Quali famose cascate sono tra USA e Canada?"
            Reponses := array{"La foresta amazzonica", "Le cascate Angel", "Le cascate del Niagara", "Il Grand Canyon"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la 2a montagna piu alta?"
            Reponses := array{"Il Denali", "L'Everest", "Il Kilimangiaro", "Il K2"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il lago piu profondo del mondo?"
            Reponses := array{"Il lago Titicaca", "Il lago Superiore", "Il lago Vittoria", "Il lago Bajkal"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il piu grande lago dell'Africa?"
            Reponses := array{"Il lago Vittoria", "Il lago Tanganica", "Il lago Bajkal", "Il lago Titicaca"}
            BonneReponse := 0
        question:
            Enonce := "Quale deserto freddo copre la Mongolia?"
            Reponses := array{"Il Kalahari", "Il Sahara", "Il Gobi", "L'Atacama"}
            BonneReponse := 2
        question:
            Enonce := "Quale deserto e il piu arido del mondo?"
            Reponses := array{"Il Sahara", "L'Atacama", "Il Gobi", "Il Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il fiume piu lungo d'Europa?"
            Reponses := array{"Il Danubio", "Il Volga", "Il Reno", "La Senna"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume attraversa 10 paesi europei?"
            Reponses := array{"Il Volga", "Il Reno", "Il Danubio", "La Senna"}
            BonneReponse := 2
        question:
            Enonce := "In quale mare molto salato si galleggia?"
            Reponses := array{"Il mar Caspio", "Il mar Rosso", "Il mar Morto", "Il Mediterraneo"}
            BonneReponse := 2
        question:
            Enonce := "Qual e il piu grande lago (mare chiuso) del mondo?"
            Reponses := array{"Il lago Bajkal", "Il lago Superiore", "Il mar Caspio", "Il lago Vittoria"}
            BonneReponse := 2
        question:
            Enonce := "Quale fiume sacro scorre in India?"
            Reponses := array{"Lo Yangtze", "Il Gange", "Il Nilo", "Il Mississippi"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il piu grande lago del Nord America?"
            Reponses := array{"Il lago Titicaca", "Il lago Vittoria", "Il lago Bajkal", "Il lago Superiore"}
            BonneReponse := 3
        question:
            Enonce := "Quale gigantesca barriera corallina costeggia l'Australia?"
            Reponses := array{"Il Grand Canyon", "La foresta amazzonica", "La Grande Barriera Corallina", "Le cascate del Niagara"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la vetta piu alta del Nord America?"
            Reponses := array{"Il Monte Bianco", "L'Aconcagua", "L'Everest", "Il Denali"}
            BonneReponse := 3
        question:
            Enonce := "Quale vulcano e simbolo del Giappone?"
            Reponses := array{"Il monte Fuji", "Il Cervino", "Il Monte Bianco", "Il Kilimangiaro"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la vetta piu alta d'Europa (Caucaso)?"
            Reponses := array{"Il Monte Bianco", "L'Elbrus", "Il Cervino", "L'Everest"}
            BonneReponse := 1
        question:
            Enonce := "Qual e la cascata piu alta del mondo?"
            Reponses := array{"Il Grand Canyon", "Le cascate del Niagara", "La foresta amazzonica", "Le cascate Angel"}
            BonneReponse := 3
        question:
            Enonce := "Quale lago africano e il piu lungo e profondo?"
            Reponses := array{"Il lago Tanganica", "Il lago Vittoria", "Il lago Bajkal", "Il lago Superiore"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il lago navigabile piu alto?"
            Reponses := array{"Il lago Vittoria", "Il lago Bajkal", "Il lago Titicaca", "Il lago Superiore"}
            BonneReponse := 2
        question:
            Enonce := "Quale deserto dell'Africa australe condivide il nome con un popolo?"
            Reponses := array{"L'Atacama", "Il Sahara", "Il Gobi", "Il Kalahari"}
            BonneReponse := 3
        question:
            Enonce := "Quale oceano circonda il Polo Nord?"
            Reponses := array{"L'oceano Indiano", "L'oceano Pacifico", "L'oceano Artico", "L'oceano Atlantico"}
            BonneReponse := 2
        question:
            Enonce := "Quale mare separa l'Africa dall'Arabia?"
            Reponses := array{"Il mar Caspio", "Il mar Morto", "Il Mediterraneo", "Il mar Rosso"}
            BonneReponse := 3
        question:
            Enonce := "Qual e il fiume piu lungo dell'Asia?"
            Reponses := array{"Il Nilo", "Il Gange", "Il Volga", "Lo Yangtze"}
            BonneReponse := 3
        question:
            Enonce := "Quale gigantesco canyon ha scavato il Colorado?"
            Reponses := array{"Il Grand Canyon", "La Grande Barriera Corallina", "Le cascate del Niagara", "La foresta amazzonica"}
            BonneReponse := 0
        question:
            Enonce := "Qual e l'isola piu grande del mondo?"
            Reponses := array{"La foresta amazzonica", "La Groenlandia", "La Grande Barriera Corallina", "Il Sahara"}
            BonneReponse := 1
        question:
            Enonce := "Quale deserto e in realta il piu grande (freddo)?"
            Reponses := array{"L'Antartide", "Il Sahara", "Il Gobi", "Il deserto Arabico"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande deserto si trova nella penisola arabica?"
            Reponses := array{"Il Sahara", "Il deserto Arabico", "Il Gobi", "Il Kalahari"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume dell'Africa centrale attraversa l'equatore due volte?"
            Reponses := array{"Il Gange", "Il Nilo", "Il Congo", "Il Volga"}
            BonneReponse := 2
        question:
            Enonce := "Quale vetta alpina ha la famosa forma a piramide?"
            Reponses := array{"Il Monte Bianco", "Il Cervino", "L'Everest", "Il monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume attraversa Londra?"
            Reponses := array{"La Senna", "Il Tamigi", "Il Reno", "Il Tevere"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume attraversa Roma?"
            Reponses := array{"La Senna", "Il Tamigi", "Il Tevere", "Il Rodano"}
            BonneReponse := 2
        question:
            Enonce := "Quale famoso vulcano domina Napoli?"
            Reponses := array{"L'Etna", "Il Vesuvio", "Il Krakatoa", "Il monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quale vulcano e il piu attivo della Sicilia?"
            Reponses := array{"L'Etna", "Il Vesuvio", "Il Krakatoa", "Il Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume del sud-est asiatico attraversa 6 paesi?"
            Reponses := array{"Il Gange", "Il Mekong", "L'Indo", "Lo Yangtze"}
            BonneReponse := 1
        question:
            Enonce := "Quali spettacolari cascate sono tra Brasile e Argentina?"
            Reponses := array{"Le cascate Vittoria", "Le cascate del Niagara", "Le cascate dell'Iguazu", "Le cascate Angel"}
            BonneReponse := 2
        question:
            Enonce := "Quale mare bagna la Costa Azzurra e l'Italia?"
            Reponses := array{"Il Mediterraneo", "Il mar Nero", "Il mar Baltico", "Il mar dei Caraibi"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume passa per Lione?"
            Reponses := array{"La Loira", "Il Rodano", "La Senna", "Il Tamigi"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il fiume piu lungo della Francia?"
            Reponses := array{"Il Rodano", "La Senna", "La Loira", "Il Reno"}
            BonneReponse := 2
        question:
            Enonce := "Quale mare caldo bagna le Antille?"
            Reponses := array{"Il mar dei Caraibi", "Il mar Baltico", "Il mar Nero", "Il mar Rosso"}
            BonneReponse := 0
        question:
            Enonce := "Quali cascate dell'Africa australe portano il nome di una regina?"
            Reponses := array{"Le cascate del Niagara", "Le cascate dell'Iguazu", "Le cascate Vittoria", "Le cascate Angel"}
            BonneReponse := 2
        question:
            Enonce := "Quale lago costeggia Ginevra?"
            Reponses := array{"Il lago di Garda", "Il lago di Ginevra", "Il lago Michigan", "Il lago d'Aral"}
            BonneReponse := 1
        question:
            Enonce := "Qual e il piu grande lago d'Italia?"
            Reponses := array{"Il lago di Ginevra", "Il lago di Garda", "Il lago Michigan", "Il lago Bajkal"}
            BonneReponse := 1
        question:
            Enonce := "Quale mare del nord Europa e quasi chiuso?"
            Reponses := array{"Il mar Baltico", "Il mar Nero", "Il mar dei Caraibi", "Il mar Rosso"}
            BonneReponse := 0
        question:
            Enonce := "Quale mare bagna Ucraina e Turchia?"
            Reponses := array{"Il mar Caspio", "Il mar Baltico", "Il mar Nero", "Il Mediterraneo"}
            BonneReponse := 2
        question:
            Enonce := "Quale fiume attraversa il Pakistan?"
            Reponses := array{"L'Indo", "Il Gange", "Il Mekong", "Il Niger"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume dell'Africa occidentale da il nome a 2 paesi?"
            Reponses := array{"Lo Zambesi", "Il Niger", "Il Mekong", "Il Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale fiume ha scavato il Grand Canyon?"
            Reponses := array{"Il Mekong", "Il Mississippi", "Il Colorado", "Lo Zambesi"}
            BonneReponse := 2
        question:
            Enonce := "Quale vetta dell'Himalaya supera 8000 m (8a)?"
            Reponses := array{"L'Annapurna", "L'Everest", "Il K2", "Il Denali"}
            BonneReponse := 0
        question:
            Enonce := "Quale vulcano hawaiano e la montagna piu alta dalla base?"
            Reponses := array{"Il monte Fuji", "Il Mauna Kea", "L'Etna", "Il Vesuvio"}
            BonneReponse := 1
        question:
            Enonce := "Quale deserto costiero costeggia la Namibia?"
            Reponses := array{"Il Kalahari", "Il Namib", "Il Sahara", "Il Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Quale grande lago americano tocca Chicago?"
            Reponses := array{"Il lago Michigan", "Il lago Superiore", "Il lago di Ginevra", "Il lago di Garda"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu grande isola del sud-est asiatico (in 3)?"
            Reponses := array{"Borneo", "Sumatra", "Honshu", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Quale deserto indiano confina col Pakistan?"
            Reponses := array{"Il Gobi", "Il Thar", "Il Namib", "Il Mojave"}
            BonneReponse := 1
        question:
            Enonce := "Quale deserto USA ospita la Valle della Morte?"
            Reponses := array{"Il Mojave", "Il Thar", "Il Namib", "Il Kalahari"}
            BonneReponse := 0
        question:
            Enonce := "Quale mare interno asiatico e quasi scomparso?"
            Reponses := array{"Il mar Baltico", "Il mar Caspio", "Il mar Nero", "Il lago d'Aral"}
            BonneReponse := 3
        question:
            Enonce := "Quale lago africano si e molto ridotto (Sahel)?"
            Reponses := array{"Il lago Ciad", "Il lago Vittoria", "Il lago Tanganica", "Il lago d'Aral"}
            BonneReponse := 0
        question:
            Enonce := "Quale fiume alimenta le cascate Vittoria?"
            Reponses := array{"Lo Zambesi", "Il Niger", "Il Congo", "Il Nilo"}
            BonneReponse := 0
        question:
            Enonce := "Qual e il punto piu profondo degli oceani?"
            Reponses := array{"La fossa delle Marianne", "Il lago Bajkal", "Il mar Caspio", "Il mar Morto"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu grande calotta glaciale d'Europa (Islanda)?"
            Reponses := array{"Il Vatnajokull", "L'Everest", "Il Monte Bianco", "L'Elbrus"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la piu grande isola dell'oceano Indiano?"
            Reponses := array{"Sumatra", "Borneo", "Madagascar", "L'isola di Baffin"}
            BonneReponse := 2
        question:
            Enonce := "Quale grande isola artica appartiene al Canada?"
            Reponses := array{"La Groenlandia", "L'isola di Baffin", "Honshu", "Borneo"}
            BonneReponse := 1
        question:
            Enonce := "Su quale isola giapponese si trova Tokyo?"
            Reponses := array{"Borneo", "Honshu", "Sumatra", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Quale isola indonesiana ebbe un'eruzione nel 1883?"
            Reponses := array{"Il Krakatoa", "L'Etna", "Il Vesuvio", "Il Mauna Kea"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande fiume USA sfocia nel golfo del Messico?"
            Reponses := array{"Il Mississippi", "Il Colorado", "Il Rio delle Amazzoni", "Il Mekong"}
            BonneReponse := 0
        question:
            Enonce := "Quale oceano bagna l'Africa occidentale?"
            Reponses := array{"L'oceano Artico", "L'oceano Indiano", "L'oceano Pacifico", "L'oceano Atlantico"}
            BonneReponse := 3
        question:
            Enonce := "Quale grande fiume tedesco sfocia nel mare del Nord?"
            Reponses := array{"Il Danubio", "Il Reno", "Il Volga", "La Senna"}
            BonneReponse := 1
        question:
            Enonce := "Quale oceano bagna l'Africa orientale e l'India?"
            Reponses := array{"L'oceano Indiano", "L'oceano Atlantico", "L'oceano Pacifico", "L'oceano Artico"}
            BonneReponse := 0
        question:
            Enonce := "Quale grande isola del Mediterraneo ha un vulcano attivo?"
            Reponses := array{"Il Vesuvio", "L'Etna", "Il Krakatoa", "Il monte Fuji"}
            BonneReponse := 1
        question:
            Enonce := "Quale immensa distesa di sale si trova in Bolivia?"
            Reponses := array{"Il Sahara", "L'Atacama", "Il Gobi", "Il Namib"}
            BonneReponse := 1

MakeNatureQuestions() : []question =
    MakeNatureQuestionsFR()
