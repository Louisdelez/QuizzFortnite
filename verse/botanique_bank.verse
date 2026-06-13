using { /Verse.org/Assets }

# botanique_bank.verse — Quizz BOTANIQUE (photos Wikipedia)
# GENERE — NE PAS EDITER A LA MAIN.

BotaniqueDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeBotaniqueQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0001 }
            Reponses := array{"Mais", "Sapin", "Cactus", "Rose"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0002 }
            Reponses := array{"Coquelicot", "Pissenlit", "Olivier", "Tulipe"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0003 }
            Reponses := array{"Erable", "Tournesol", "Riz", "Mais"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0004 }
            Reponses := array{"Cactus", "Lavande", "Marguerite", "Chene"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0005 }
            Reponses := array{"Orchidee", "Pissenlit", "Cerisier du Japon", "Bambou"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0006 }
            Reponses := array{"Chene", "Coquelicot", "Pissenlit", "Fougere"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0007 }
            Reponses := array{"Riz", "Lavande", "Tulipe", "Tournesol"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0008 }
            Reponses := array{"Trefle", "Cactus", "Saule pleureur", "Cerisier du Japon"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0009 }
            Reponses := array{"Orchidee", "Lierre", "Olivier", "Bambou"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0010 }
            Reponses := array{"Chene", "Vigne", "Saule pleureur", "Bambou"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0011 }
            Reponses := array{"Lavande", "Mais", "Palmier", "Saule pleureur"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0012 }
            Reponses := array{"Sapin", "Trefle", "Chene", "Lierre"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0013 }
            Reponses := array{"Muguet", "Saule pleureur", "Cerisier du Japon", "Sapin"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0014 }
            Reponses := array{"Fougere", "Muguet", "Lierre", "Erable"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0015 }
            Reponses := array{"Bouleau", "Vigne", "Rose", "Fougere"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0016 }
            Reponses := array{"Tulipe", "Riz", "Saule pleureur", "Cactus"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0017 }
            Reponses := array{"Sapin", "Lierre", "Olivier", "Muguet"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0018 }
            Reponses := array{"Cerisier du Japon", "Erable", "Bambou", "Orchidee"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0019 }
            Reponses := array{"Chene", "Vigne", "Muguet", "Bambou"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0020 }
            Reponses := array{"Mais", "Cerisier du Japon", "Trefle", "Ble"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0021 }
            Reponses := array{"Coquelicot", "Erable", "Lierre", "Vigne"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0022 }
            Reponses := array{"Sapin", "Fougere", "Olivier", "Saule pleureur"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0023 }
            Reponses := array{"Bouleau", "Ble", "Chene", "Muguet"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0024 }
            Reponses := array{"Trefle", "Sapin", "Mais", "Pissenlit"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0025 }
            Reponses := array{"Ble", "Chene", "Riz", "Marguerite"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0026 }
            Reponses := array{"Vigne", "Orchidee", "Coquelicot", "Sapin"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0027 }
            Reponses := array{"Jonquille", "Lys", "Iris", "Peuplier"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0028 }
            Reponses := array{"Edelweiss", "Pivoine", "Iris", "Camelia"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0029 }
            Reponses := array{"Hortensia", "Perce-neige", "Jonquille", "Peuplier"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0030 }
            Reponses := array{"Cedre", "Jacinthe", "Perce-neige", "Hetre"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0031 }
            Reponses := array{"Baobab", "Pivoine", "Hortensia", "Lys"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0032 }
            Reponses := array{"Camelia", "Menthe", "Hortensia", "Lilas"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0033 }
            Reponses := array{"Peuplier", "Geranium", "Cedre", "Platane"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0034 }
            Reponses := array{"Sequoia geant", "Cedre", "Magnolia", "Eucalyptus"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0035 }
            Reponses := array{"Platane", "Magnolia", "Jacinthe", "Camelia"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0036 }
            Reponses := array{"Glycine", "Geranium", "Hetre", "Dahlia"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0037 }
            Reponses := array{"Hetre", "Lilas", "Peuplier", "Menthe"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0038 }
            Reponses := array{"Glycine", "Perce-neige", "Menthe", "Eucalyptus"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0039 }
            Reponses := array{"Cedre", "Glycine", "Camelia", "Edelweiss"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0040 }
            Reponses := array{"Perce-neige", "Lilas", "Hortensia", "Lys"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0041 }
            Reponses := array{"Hetre", "Aloe vera", "Eucalyptus", "Bleuet"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0042 }
            Reponses := array{"Eucalyptus", "Magnolia", "Hortensia", "Jacinthe"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0043 }
            Reponses := array{"Iris", "Sequoia geant", "Geranium", "Glycine"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0044 }
            Reponses := array{"Hortensia", "Perce-neige", "Lys", "Baobab"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0045 }
            Reponses := array{"Cypres", "Hetre", "Baobab", "Peuplier"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0046 }
            Reponses := array{"Eucalyptus", "Baobab", "Cedre", "Cypres"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0047 }
            Reponses := array{"Peuplier", "Iris", "Lys", "Platane"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0048 }
            Reponses := array{"Peuplier", "Dahlia", "Aloe vera", "Jacinthe"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0049 }
            Reponses := array{"Hetre", "Lys", "Magnolia", "Geranium"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0050 }
            Reponses := array{"Lys", "Menthe", "Jacinthe", "Aloe vera"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0051 }
            Reponses := array{"Menthe", "Aloe vera", "Baobab", "Eucalyptus"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0052 }
            Reponses := array{"Sequoia geant", "Hetre", "Basilic", "Cypres"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0053 }
            Reponses := array{"Lin", "Belladone", "Rafflesia", "Sauge"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0054 }
            Reponses := array{"Dionee attrape-mouche", "Houblon", "Monstera", "Gardenia"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0055 }
            Reponses := array{"Belladone", "Nepenthes", "Cacaoyer", "Safran"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0056 }
            Reponses := array{"Anthurium", "Welwitschia", "Cacaoyer", "Digitale"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0057 }
            Reponses := array{"Dionee attrape-mouche", "Grenadier", "Ginkgo", "Welwitschia"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0058 }
            Reponses := array{"Lotus", "Mandragore", "Anthurium", "Bromeliacee"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0059 }
            Reponses := array{"Belladone", "Cacaoyer", "Bougainvillier", "Safran"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0060 }
            Reponses := array{"Houblon", "Ortie", "Safran", "Grande cigue"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0061 }
            Reponses := array{"Hibiscus", "Cacaoyer", "Ortie", "Ginkgo"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0062 }
            Reponses := array{"Grande cigue", "Oiseau de paradis", "Chardon", "Lupin"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0063 }
            Reponses := array{"Topinambour", "Romarin", "Bromeliacee", "Grenadier"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0064 }
            Reponses := array{"Bougainvillier", "Rafflesia", "Gardenia", "Thym"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0065 }
            Reponses := array{"Rafflesia", "Topinambour", "Anthurium", "Sauge"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0066 }
            Reponses := array{"Anthurium", "Ginkgo", "Safran", "Mandragore"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0067 }
            Reponses := array{"Bougainvillier", "Mandragore", "Houblon", "Protea"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0068 }
            Reponses := array{"Belladone", "Nepenthes", "Safran", "Lin"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0069 }
            Reponses := array{"Belladone", "Nepenthes", "Coton", "Safran"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0070 }
            Reponses := array{"Jasmin", "Canne a sucre", "Safran", "Gardenia"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0071 }
            Reponses := array{"Hibiscus", "Theier", "Topinambour", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0072 }
            Reponses := array{"Cafeier", "Theier", "Oiseau de paradis", "Monstera"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0073 }
            Reponses := array{"Cacaoyer", "Lupin", "Gardenia", "Jasmin"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0074 }
            Reponses := array{"Figuier", "Hibiscus", "Houblon", "Coton"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0075 }
            Reponses := array{"Hibiscus", "Cafeier", "Grenadier", "Mandragore"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0076 }
            Reponses := array{"Hibiscus", "Rafflesia", "Grande cigue", "Thym"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0077 }
            Reponses := array{"Lotus", "Canne a sucre", "Grande cigue", "Digitale"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0078 }
            Reponses := array{"Monstera", "Gardenia", "Houblon", "Lupin"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0079 }
            Reponses := array{"Monstera", "Protea", "Oiseau de paradis", "Dionee attrape-mouche"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0080 }
            Reponses := array{"Thym", "Anthurium", "Belladone", "Coton"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0081 }
            Reponses := array{"Lotus", "Cacaoyer", "Anthurium", "Bromeliacee"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0082 }
            Reponses := array{"Jasmin", "Protea", "Chardon", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0083 }
            Reponses := array{"Gardenia", "Cacaoyer", "Lotus", "Bougainvillier"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0084 }
            Reponses := array{"Oiseau de paradis", "Mandragore", "Belladone", "Jasmin"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0085 }
            Reponses := array{"Anthurium", "Coton", "Figuier", "Gardenia"}
            BonneReponse := 3
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0086 }
            Reponses := array{"Digitale", "Monstera", "Thym", "Topinambour"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0087 }
            Reponses := array{"Thym", "Gardenia", "Lupin", "Digitale"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est cette plante ?"
            Image := option{ botanique.bot_0088 }
            Reponses := array{"Jasmin", "Topinambour", "Grande cigue", "Thym"}
            BonneReponse := 1

MakeBotaniqueQuestionsEN() : []question =
    array:
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0001 }
            Reponses := array{"Corn", "Fir", "Cactus", "Rose"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0002 }
            Reponses := array{"Poppy", "Dandelion", "Olive tree", "Tulip"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0003 }
            Reponses := array{"Maple", "Sunflower", "Rice", "Corn"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0004 }
            Reponses := array{"Cactus", "Lavender", "Daisy", "Oak"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0005 }
            Reponses := array{"Orchid", "Dandelion", "Cherry blossom", "Bamboo"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0006 }
            Reponses := array{"Oak", "Poppy", "Dandelion", "Fern"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0007 }
            Reponses := array{"Rice", "Lavender", "Tulip", "Sunflower"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0008 }
            Reponses := array{"Clover", "Cactus", "Weeping willow", "Cherry blossom"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0009 }
            Reponses := array{"Orchid", "Ivy", "Olive tree", "Bamboo"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0010 }
            Reponses := array{"Oak", "Grapevine", "Weeping willow", "Bamboo"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0011 }
            Reponses := array{"Lavender", "Corn", "Palm tree", "Weeping willow"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0012 }
            Reponses := array{"Fir", "Clover", "Oak", "Ivy"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0013 }
            Reponses := array{"Lily of the valley", "Weeping willow", "Cherry blossom", "Fir"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0014 }
            Reponses := array{"Fern", "Lily of the valley", "Ivy", "Maple"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0015 }
            Reponses := array{"Birch", "Grapevine", "Rose", "Fern"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0016 }
            Reponses := array{"Tulip", "Rice", "Weeping willow", "Cactus"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0017 }
            Reponses := array{"Fir", "Ivy", "Olive tree", "Lily of the valley"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0018 }
            Reponses := array{"Cherry blossom", "Maple", "Bamboo", "Orchid"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0019 }
            Reponses := array{"Oak", "Grapevine", "Lily of the valley", "Bamboo"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0020 }
            Reponses := array{"Corn", "Cherry blossom", "Clover", "Wheat"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0021 }
            Reponses := array{"Poppy", "Maple", "Ivy", "Grapevine"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0022 }
            Reponses := array{"Fir", "Fern", "Olive tree", "Weeping willow"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0023 }
            Reponses := array{"Birch", "Wheat", "Oak", "Lily of the valley"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0024 }
            Reponses := array{"Clover", "Fir", "Corn", "Dandelion"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0025 }
            Reponses := array{"Wheat", "Oak", "Rice", "Daisy"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0026 }
            Reponses := array{"Grapevine", "Orchid", "Poppy", "Fir"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0027 }
            Reponses := array{"Daffodil", "Lily", "Iris", "Poplar"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0028 }
            Reponses := array{"Edelweiss", "Peony", "Iris", "Camellia"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0029 }
            Reponses := array{"Hydrangea", "Snowdrop", "Daffodil", "Poplar"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0030 }
            Reponses := array{"Cedar", "Hyacinth", "Snowdrop", "Beech"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0031 }
            Reponses := array{"Baobab", "Peony", "Hydrangea", "Lily"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0032 }
            Reponses := array{"Camellia", "Mint", "Hydrangea", "Lilac"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0033 }
            Reponses := array{"Poplar", "Geranium", "Cedar", "Plane tree"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0034 }
            Reponses := array{"Giant sequoia", "Cedar", "Magnolia", "Eucalyptus"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0035 }
            Reponses := array{"Plane tree", "Magnolia", "Hyacinth", "Camellia"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0036 }
            Reponses := array{"Wisteria", "Geranium", "Beech", "Dahlia"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0037 }
            Reponses := array{"Beech", "Lilac", "Poplar", "Mint"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0038 }
            Reponses := array{"Wisteria", "Snowdrop", "Mint", "Eucalyptus"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0039 }
            Reponses := array{"Cedar", "Wisteria", "Camellia", "Edelweiss"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0040 }
            Reponses := array{"Snowdrop", "Lilac", "Hydrangea", "Lily"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0041 }
            Reponses := array{"Beech", "Aloe vera", "Eucalyptus", "Cornflower"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0042 }
            Reponses := array{"Eucalyptus", "Magnolia", "Hydrangea", "Hyacinth"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0043 }
            Reponses := array{"Iris", "Giant sequoia", "Geranium", "Wisteria"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0044 }
            Reponses := array{"Hydrangea", "Snowdrop", "Lily", "Baobab"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0045 }
            Reponses := array{"Cypress", "Beech", "Baobab", "Poplar"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0046 }
            Reponses := array{"Eucalyptus", "Baobab", "Cedar", "Cypress"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0047 }
            Reponses := array{"Poplar", "Iris", "Lily", "Plane tree"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0048 }
            Reponses := array{"Poplar", "Dahlia", "Aloe vera", "Hyacinth"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0049 }
            Reponses := array{"Beech", "Lily", "Magnolia", "Geranium"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0050 }
            Reponses := array{"Lily", "Mint", "Hyacinth", "Aloe vera"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0051 }
            Reponses := array{"Mint", "Aloe vera", "Baobab", "Eucalyptus"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0052 }
            Reponses := array{"Giant sequoia", "Beech", "Basil", "Cypress"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0053 }
            Reponses := array{"Flax", "Belladonna", "Rafflesia", "Sage"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0054 }
            Reponses := array{"Venus flytrap", "Hops", "Monstera", "Gardenia"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0055 }
            Reponses := array{"Belladonna", "Nepenthes", "Cacao tree", "Saffron"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0056 }
            Reponses := array{"Anthurium", "Welwitschia", "Cacao tree", "Foxglove"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0057 }
            Reponses := array{"Venus flytrap", "Pomegranate", "Ginkgo", "Welwitschia"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0058 }
            Reponses := array{"Lotus", "Mandrake", "Anthurium", "Bromeliad"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0059 }
            Reponses := array{"Belladonna", "Cacao tree", "Bougainvillea", "Saffron"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0060 }
            Reponses := array{"Hops", "Nettle", "Saffron", "Hemlock"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0061 }
            Reponses := array{"Hibiscus", "Cacao tree", "Nettle", "Ginkgo"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0062 }
            Reponses := array{"Hemlock", "Bird of paradise", "Thistle", "Lupine"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0063 }
            Reponses := array{"Jerusalem artichoke", "Rosemary", "Bromeliad", "Pomegranate"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0064 }
            Reponses := array{"Bougainvillea", "Rafflesia", "Gardenia", "Thyme"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0065 }
            Reponses := array{"Rafflesia", "Jerusalem artichoke", "Anthurium", "Sage"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0066 }
            Reponses := array{"Anthurium", "Ginkgo", "Saffron", "Mandrake"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0067 }
            Reponses := array{"Bougainvillea", "Mandrake", "Hops", "Protea"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0068 }
            Reponses := array{"Belladonna", "Nepenthes", "Saffron", "Flax"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0069 }
            Reponses := array{"Belladonna", "Nepenthes", "Cotton", "Saffron"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0070 }
            Reponses := array{"Jasmine", "Sugarcane", "Saffron", "Gardenia"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0071 }
            Reponses := array{"Hibiscus", "Tea plant", "Jerusalem artichoke", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0072 }
            Reponses := array{"Coffee plant", "Tea plant", "Bird of paradise", "Monstera"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0073 }
            Reponses := array{"Cacao tree", "Lupine", "Gardenia", "Jasmine"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0074 }
            Reponses := array{"Fig tree", "Hibiscus", "Hops", "Cotton"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0075 }
            Reponses := array{"Hibiscus", "Coffee plant", "Pomegranate", "Mandrake"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0076 }
            Reponses := array{"Hibiscus", "Rafflesia", "Hemlock", "Thyme"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0077 }
            Reponses := array{"Lotus", "Sugarcane", "Hemlock", "Foxglove"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0078 }
            Reponses := array{"Monstera", "Gardenia", "Hops", "Lupine"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0079 }
            Reponses := array{"Monstera", "Protea", "Bird of paradise", "Venus flytrap"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0080 }
            Reponses := array{"Thyme", "Anthurium", "Belladonna", "Cotton"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0081 }
            Reponses := array{"Lotus", "Cacao tree", "Anthurium", "Bromeliad"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0082 }
            Reponses := array{"Jasmine", "Protea", "Thistle", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0083 }
            Reponses := array{"Gardenia", "Cacao tree", "Lotus", "Bougainvillea"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0084 }
            Reponses := array{"Bird of paradise", "Mandrake", "Belladonna", "Jasmine"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0085 }
            Reponses := array{"Anthurium", "Cotton", "Fig tree", "Gardenia"}
            BonneReponse := 3
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0086 }
            Reponses := array{"Foxglove", "Monstera", "Thyme", "Jerusalem artichoke"}
            BonneReponse := 0
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0087 }
            Reponses := array{"Thyme", "Gardenia", "Lupine", "Foxglove"}
            BonneReponse := 2
        question:
            Enonce := "What plant is this?"
            Image := option{ botanique.bot_0088 }
            Reponses := array{"Jasmine", "Jerusalem artichoke", "Hemlock", "Thyme"}
            BonneReponse := 1

MakeBotaniqueQuestionsES() : []question =
    array:
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0001 }
            Reponses := array{"Maiz", "Abeto", "Cactus", "Rosa"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0002 }
            Reponses := array{"Amapola", "Diente de leon", "Olivo", "Tulipan"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0003 }
            Reponses := array{"Arce", "Girasol", "Arroz", "Maiz"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0004 }
            Reponses := array{"Cactus", "Lavanda", "Margarita", "Roble"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0005 }
            Reponses := array{"Orquidea", "Diente de leon", "Cerezo japones", "Bambu"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0006 }
            Reponses := array{"Roble", "Amapola", "Diente de leon", "Helecho"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0007 }
            Reponses := array{"Arroz", "Lavanda", "Tulipan", "Girasol"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0008 }
            Reponses := array{"Trebol", "Cactus", "Sauce lloron", "Cerezo japones"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0009 }
            Reponses := array{"Orquidea", "Hiedra", "Olivo", "Bambu"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0010 }
            Reponses := array{"Roble", "Vid", "Sauce lloron", "Bambu"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0011 }
            Reponses := array{"Lavanda", "Maiz", "Palmera", "Sauce lloron"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0012 }
            Reponses := array{"Abeto", "Trebol", "Roble", "Hiedra"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0013 }
            Reponses := array{"Lirio de los valles", "Sauce lloron", "Cerezo japones", "Abeto"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0014 }
            Reponses := array{"Helecho", "Lirio de los valles", "Hiedra", "Arce"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0015 }
            Reponses := array{"Abedul", "Vid", "Rosa", "Helecho"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0016 }
            Reponses := array{"Tulipan", "Arroz", "Sauce lloron", "Cactus"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0017 }
            Reponses := array{"Abeto", "Hiedra", "Olivo", "Lirio de los valles"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0018 }
            Reponses := array{"Cerezo japones", "Arce", "Bambu", "Orquidea"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0019 }
            Reponses := array{"Roble", "Vid", "Lirio de los valles", "Bambu"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0020 }
            Reponses := array{"Maiz", "Cerezo japones", "Trebol", "Trigo"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0021 }
            Reponses := array{"Amapola", "Arce", "Hiedra", "Vid"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0022 }
            Reponses := array{"Abeto", "Helecho", "Olivo", "Sauce lloron"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0023 }
            Reponses := array{"Abedul", "Trigo", "Roble", "Lirio de los valles"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0024 }
            Reponses := array{"Trebol", "Abeto", "Maiz", "Diente de leon"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0025 }
            Reponses := array{"Trigo", "Roble", "Arroz", "Margarita"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0026 }
            Reponses := array{"Vid", "Orquidea", "Amapola", "Abeto"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0027 }
            Reponses := array{"Narciso", "Lirio", "Iris", "Alamo"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0028 }
            Reponses := array{"Edelweiss", "Peonia", "Iris", "Camelia"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0029 }
            Reponses := array{"Hortensia", "Campanilla de invierno", "Narciso", "Alamo"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0030 }
            Reponses := array{"Cedro", "Jacinto", "Campanilla de invierno", "Haya"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0031 }
            Reponses := array{"Baobab", "Peonia", "Hortensia", "Lirio"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0032 }
            Reponses := array{"Camelia", "Menta", "Hortensia", "Lila"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0033 }
            Reponses := array{"Alamo", "Geranio", "Cedro", "Platano"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0034 }
            Reponses := array{"Secuoya gigante", "Cedro", "Magnolia", "Eucalipto"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0035 }
            Reponses := array{"Platano", "Magnolia", "Jacinto", "Camelia"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0036 }
            Reponses := array{"Glicina", "Geranio", "Haya", "Dalia"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0037 }
            Reponses := array{"Haya", "Lila", "Alamo", "Menta"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0038 }
            Reponses := array{"Glicina", "Campanilla de invierno", "Menta", "Eucalipto"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0039 }
            Reponses := array{"Cedro", "Glicina", "Camelia", "Edelweiss"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0040 }
            Reponses := array{"Campanilla de invierno", "Lila", "Hortensia", "Lirio"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0041 }
            Reponses := array{"Haya", "Aloe vera", "Eucalipto", "Aciano"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0042 }
            Reponses := array{"Eucalipto", "Magnolia", "Hortensia", "Jacinto"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0043 }
            Reponses := array{"Iris", "Secuoya gigante", "Geranio", "Glicina"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0044 }
            Reponses := array{"Hortensia", "Campanilla de invierno", "Lirio", "Baobab"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0045 }
            Reponses := array{"Cipres", "Haya", "Baobab", "Alamo"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0046 }
            Reponses := array{"Eucalipto", "Baobab", "Cedro", "Cipres"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0047 }
            Reponses := array{"Alamo", "Iris", "Lirio", "Platano"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0048 }
            Reponses := array{"Alamo", "Dalia", "Aloe vera", "Jacinto"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0049 }
            Reponses := array{"Haya", "Lirio", "Magnolia", "Geranio"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0050 }
            Reponses := array{"Lirio", "Menta", "Jacinto", "Aloe vera"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0051 }
            Reponses := array{"Menta", "Aloe vera", "Baobab", "Eucalipto"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0052 }
            Reponses := array{"Secuoya gigante", "Haya", "Albahaca", "Cipres"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0053 }
            Reponses := array{"Lino", "Belladona", "Rafflesia", "Salvia"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0054 }
            Reponses := array{"Venus atrapamoscas", "Lupulo", "Monstera", "Gardenia"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0055 }
            Reponses := array{"Belladona", "Nepenthes", "Arbol del cacao", "Azafran"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0056 }
            Reponses := array{"Anturio", "Welwitschia", "Arbol del cacao", "Dedalera"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0057 }
            Reponses := array{"Venus atrapamoscas", "Granado", "Ginkgo", "Welwitschia"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0058 }
            Reponses := array{"Loto", "Mandragora", "Anturio", "Bromelia"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0059 }
            Reponses := array{"Belladona", "Arbol del cacao", "Buganvilla", "Azafran"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0060 }
            Reponses := array{"Lupulo", "Ortiga", "Azafran", "Cicuta"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0061 }
            Reponses := array{"Hibisco", "Arbol del cacao", "Ortiga", "Ginkgo"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0062 }
            Reponses := array{"Cicuta", "Ave del paraiso", "Cardo", "Lupino"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0063 }
            Reponses := array{"Tupinambo", "Romero", "Bromelia", "Granado"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0064 }
            Reponses := array{"Buganvilla", "Rafflesia", "Gardenia", "Tomillo"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0065 }
            Reponses := array{"Rafflesia", "Tupinambo", "Anturio", "Salvia"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0066 }
            Reponses := array{"Anturio", "Ginkgo", "Azafran", "Mandragora"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0067 }
            Reponses := array{"Buganvilla", "Mandragora", "Lupulo", "Protea"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0068 }
            Reponses := array{"Belladona", "Nepenthes", "Azafran", "Lino"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0069 }
            Reponses := array{"Belladona", "Nepenthes", "Algodon", "Azafran"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0070 }
            Reponses := array{"Jazmin", "Cana de azucar", "Azafran", "Gardenia"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0071 }
            Reponses := array{"Hibisco", "Planta del te", "Tupinambo", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0072 }
            Reponses := array{"Cafeto", "Planta del te", "Ave del paraiso", "Monstera"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0073 }
            Reponses := array{"Arbol del cacao", "Lupino", "Gardenia", "Jazmin"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0074 }
            Reponses := array{"Higuera", "Hibisco", "Lupulo", "Algodon"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0075 }
            Reponses := array{"Hibisco", "Cafeto", "Granado", "Mandragora"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0076 }
            Reponses := array{"Hibisco", "Rafflesia", "Cicuta", "Tomillo"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0077 }
            Reponses := array{"Loto", "Cana de azucar", "Cicuta", "Dedalera"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0078 }
            Reponses := array{"Monstera", "Gardenia", "Lupulo", "Lupino"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0079 }
            Reponses := array{"Monstera", "Protea", "Ave del paraiso", "Venus atrapamoscas"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0080 }
            Reponses := array{"Tomillo", "Anturio", "Belladona", "Algodon"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0081 }
            Reponses := array{"Loto", "Arbol del cacao", "Anturio", "Bromelia"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0082 }
            Reponses := array{"Jazmin", "Protea", "Cardo", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0083 }
            Reponses := array{"Gardenia", "Arbol del cacao", "Loto", "Buganvilla"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0084 }
            Reponses := array{"Ave del paraiso", "Mandragora", "Belladona", "Jazmin"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0085 }
            Reponses := array{"Anturio", "Algodon", "Higuera", "Gardenia"}
            BonneReponse := 3
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0086 }
            Reponses := array{"Dedalera", "Monstera", "Tomillo", "Tupinambo"}
            BonneReponse := 0
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0087 }
            Reponses := array{"Tomillo", "Gardenia", "Lupino", "Dedalera"}
            BonneReponse := 2
        question:
            Enonce := "Que planta es esta?"
            Image := option{ botanique.bot_0088 }
            Reponses := array{"Jazmin", "Tupinambo", "Cicuta", "Tomillo"}
            BonneReponse := 1

MakeBotaniqueQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0001 }
            Reponses := array{"Mais", "Tanne", "Kaktus", "Rose"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0002 }
            Reponses := array{"Mohn", "Loewenzahn", "Olivenbaum", "Tulpe"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0003 }
            Reponses := array{"Ahorn", "Sonnenblume", "Reis", "Mais"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0004 }
            Reponses := array{"Kaktus", "Lavendel", "Gaensebluemchen", "Eiche"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0005 }
            Reponses := array{"Orchidee", "Loewenzahn", "Kirschbluete", "Bambus"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0006 }
            Reponses := array{"Eiche", "Mohn", "Loewenzahn", "Farn"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0007 }
            Reponses := array{"Reis", "Lavendel", "Tulpe", "Sonnenblume"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0008 }
            Reponses := array{"Klee", "Kaktus", "Trauerweide", "Kirschbluete"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0009 }
            Reponses := array{"Orchidee", "Efeu", "Olivenbaum", "Bambus"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0010 }
            Reponses := array{"Eiche", "Weinrebe", "Trauerweide", "Bambus"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0011 }
            Reponses := array{"Lavendel", "Mais", "Palme", "Trauerweide"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0012 }
            Reponses := array{"Tanne", "Klee", "Eiche", "Efeu"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0013 }
            Reponses := array{"Maigloeckchen", "Trauerweide", "Kirschbluete", "Tanne"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0014 }
            Reponses := array{"Farn", "Maigloeckchen", "Efeu", "Ahorn"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0015 }
            Reponses := array{"Birke", "Weinrebe", "Rose", "Farn"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0016 }
            Reponses := array{"Tulpe", "Reis", "Trauerweide", "Kaktus"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0017 }
            Reponses := array{"Tanne", "Efeu", "Olivenbaum", "Maigloeckchen"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0018 }
            Reponses := array{"Kirschbluete", "Ahorn", "Bambus", "Orchidee"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0019 }
            Reponses := array{"Eiche", "Weinrebe", "Maigloeckchen", "Bambus"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0020 }
            Reponses := array{"Mais", "Kirschbluete", "Klee", "Weizen"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0021 }
            Reponses := array{"Mohn", "Ahorn", "Efeu", "Weinrebe"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0022 }
            Reponses := array{"Tanne", "Farn", "Olivenbaum", "Trauerweide"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0023 }
            Reponses := array{"Birke", "Weizen", "Eiche", "Maigloeckchen"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0024 }
            Reponses := array{"Klee", "Tanne", "Mais", "Loewenzahn"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0025 }
            Reponses := array{"Weizen", "Eiche", "Reis", "Gaensebluemchen"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0026 }
            Reponses := array{"Weinrebe", "Orchidee", "Mohn", "Tanne"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0027 }
            Reponses := array{"Narzisse", "Lilie", "Iris", "Pappel"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0028 }
            Reponses := array{"Edelweiss", "Pfingstrose", "Iris", "Kamelie"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0029 }
            Reponses := array{"Hortensie", "Schneegloeckchen", "Narzisse", "Pappel"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0030 }
            Reponses := array{"Zeder", "Hyazinthe", "Schneegloeckchen", "Buche"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0031 }
            Reponses := array{"Affenbrotbaum", "Pfingstrose", "Hortensie", "Lilie"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0032 }
            Reponses := array{"Kamelie", "Minze", "Hortensie", "Flieder"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0033 }
            Reponses := array{"Pappel", "Geranie", "Zeder", "Platane"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0034 }
            Reponses := array{"Riesenmammutbaum", "Zeder", "Magnolia", "Eukalyptus"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0035 }
            Reponses := array{"Platane", "Magnolia", "Hyazinthe", "Kamelie"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0036 }
            Reponses := array{"Glyzinie", "Geranie", "Buche", "Dahlie"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0037 }
            Reponses := array{"Buche", "Flieder", "Pappel", "Minze"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0038 }
            Reponses := array{"Glyzinie", "Schneegloeckchen", "Minze", "Eukalyptus"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0039 }
            Reponses := array{"Zeder", "Glyzinie", "Kamelie", "Edelweiss"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0040 }
            Reponses := array{"Schneegloeckchen", "Flieder", "Hortensie", "Lilie"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0041 }
            Reponses := array{"Buche", "Aloe vera", "Eukalyptus", "Kornblume"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0042 }
            Reponses := array{"Eukalyptus", "Magnolia", "Hortensie", "Hyazinthe"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0043 }
            Reponses := array{"Iris", "Riesenmammutbaum", "Geranie", "Glyzinie"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0044 }
            Reponses := array{"Hortensie", "Schneegloeckchen", "Lilie", "Affenbrotbaum"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0045 }
            Reponses := array{"Zypresse", "Buche", "Affenbrotbaum", "Pappel"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0046 }
            Reponses := array{"Eukalyptus", "Affenbrotbaum", "Zeder", "Zypresse"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0047 }
            Reponses := array{"Pappel", "Iris", "Lilie", "Platane"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0048 }
            Reponses := array{"Pappel", "Dahlie", "Aloe vera", "Hyazinthe"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0049 }
            Reponses := array{"Buche", "Lilie", "Magnolia", "Geranie"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0050 }
            Reponses := array{"Lilie", "Minze", "Hyazinthe", "Aloe vera"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0051 }
            Reponses := array{"Minze", "Aloe vera", "Affenbrotbaum", "Eukalyptus"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0052 }
            Reponses := array{"Riesenmammutbaum", "Buche", "Basilikum", "Zypresse"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0053 }
            Reponses := array{"Lein", "Tollkirsche", "Rafflesie", "Salbei"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0054 }
            Reponses := array{"Venusfliegenfalle", "Hopfen", "Fensterblatt", "Gardenie"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0055 }
            Reponses := array{"Tollkirsche", "Kannenpflanze", "Kakaobaum", "Safran"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0056 }
            Reponses := array{"Flamingoblume", "Welwitschia", "Kakaobaum", "Fingerhut"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0057 }
            Reponses := array{"Venusfliegenfalle", "Granatapfel", "Ginkgo", "Welwitschia"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0058 }
            Reponses := array{"Lotosblume", "Alraune", "Flamingoblume", "Bromelie"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0059 }
            Reponses := array{"Tollkirsche", "Kakaobaum", "Bougainvillea", "Safran"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0060 }
            Reponses := array{"Hopfen", "Brennnessel", "Safran", "Schierling"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0061 }
            Reponses := array{"Hibiskus", "Kakaobaum", "Brennnessel", "Ginkgo"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0062 }
            Reponses := array{"Schierling", "Paradiesvogelblume", "Distel", "Lupine"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0063 }
            Reponses := array{"Topinambur", "Rosmarin", "Bromelie", "Granatapfel"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0064 }
            Reponses := array{"Bougainvillea", "Rafflesie", "Gardenie", "Thymian"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0065 }
            Reponses := array{"Rafflesie", "Topinambur", "Flamingoblume", "Salbei"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0066 }
            Reponses := array{"Flamingoblume", "Ginkgo", "Safran", "Alraune"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0067 }
            Reponses := array{"Bougainvillea", "Alraune", "Hopfen", "Protea"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0068 }
            Reponses := array{"Tollkirsche", "Kannenpflanze", "Safran", "Lein"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0069 }
            Reponses := array{"Tollkirsche", "Kannenpflanze", "Baumwolle", "Safran"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0070 }
            Reponses := array{"Jasmin", "Zuckerrohr", "Safran", "Gardenie"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0071 }
            Reponses := array{"Hibiskus", "Teestrauch", "Topinambur", "Fensterblatt"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0072 }
            Reponses := array{"Kaffeepflanze", "Teestrauch", "Paradiesvogelblume", "Fensterblatt"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0073 }
            Reponses := array{"Kakaobaum", "Lupine", "Gardenie", "Jasmin"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0074 }
            Reponses := array{"Feigenbaum", "Hibiskus", "Hopfen", "Baumwolle"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0075 }
            Reponses := array{"Hibiskus", "Kaffeepflanze", "Granatapfel", "Alraune"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0076 }
            Reponses := array{"Hibiskus", "Rafflesie", "Schierling", "Thymian"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0077 }
            Reponses := array{"Lotosblume", "Zuckerrohr", "Schierling", "Fingerhut"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0078 }
            Reponses := array{"Fensterblatt", "Gardenie", "Hopfen", "Lupine"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0079 }
            Reponses := array{"Fensterblatt", "Protea", "Paradiesvogelblume", "Venusfliegenfalle"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0080 }
            Reponses := array{"Thymian", "Flamingoblume", "Tollkirsche", "Baumwolle"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0081 }
            Reponses := array{"Lotosblume", "Kakaobaum", "Flamingoblume", "Bromelie"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0082 }
            Reponses := array{"Jasmin", "Protea", "Distel", "Fensterblatt"}
            BonneReponse := 1
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0083 }
            Reponses := array{"Gardenie", "Kakaobaum", "Lotosblume", "Bougainvillea"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0084 }
            Reponses := array{"Paradiesvogelblume", "Alraune", "Tollkirsche", "Jasmin"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0085 }
            Reponses := array{"Flamingoblume", "Baumwolle", "Feigenbaum", "Gardenie"}
            BonneReponse := 3
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0086 }
            Reponses := array{"Fingerhut", "Fensterblatt", "Thymian", "Topinambur"}
            BonneReponse := 0
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0087 }
            Reponses := array{"Thymian", "Gardenie", "Lupine", "Fingerhut"}
            BonneReponse := 2
        question:
            Enonce := "Welche Pflanze ist das?"
            Image := option{ botanique.bot_0088 }
            Reponses := array{"Jasmin", "Topinambur", "Schierling", "Thymian"}
            BonneReponse := 1

MakeBotaniqueQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0001 }
            Reponses := array{"Mais", "Abete", "Cactus", "Rosa"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0002 }
            Reponses := array{"Papavero", "Tarassaco", "Ulivo", "Tulipano"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0003 }
            Reponses := array{"Acero", "Girasole", "Riso", "Mais"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0004 }
            Reponses := array{"Cactus", "Lavanda", "Margherita", "Quercia"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0005 }
            Reponses := array{"Orchidea", "Tarassaco", "Ciliegio giapponese", "Bambu"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0006 }
            Reponses := array{"Quercia", "Papavero", "Tarassaco", "Felce"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0007 }
            Reponses := array{"Riso", "Lavanda", "Tulipano", "Girasole"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0008 }
            Reponses := array{"Trifoglio", "Cactus", "Salice piangente", "Ciliegio giapponese"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0009 }
            Reponses := array{"Orchidea", "Edera", "Ulivo", "Bambu"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0010 }
            Reponses := array{"Quercia", "Vite", "Salice piangente", "Bambu"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0011 }
            Reponses := array{"Lavanda", "Mais", "Palma", "Salice piangente"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0012 }
            Reponses := array{"Abete", "Trifoglio", "Quercia", "Edera"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0013 }
            Reponses := array{"Mughetto", "Salice piangente", "Ciliegio giapponese", "Abete"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0014 }
            Reponses := array{"Felce", "Mughetto", "Edera", "Acero"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0015 }
            Reponses := array{"Betulla", "Vite", "Rosa", "Felce"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0016 }
            Reponses := array{"Tulipano", "Riso", "Salice piangente", "Cactus"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0017 }
            Reponses := array{"Abete", "Edera", "Ulivo", "Mughetto"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0018 }
            Reponses := array{"Ciliegio giapponese", "Acero", "Bambu", "Orchidea"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0019 }
            Reponses := array{"Quercia", "Vite", "Mughetto", "Bambu"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0020 }
            Reponses := array{"Mais", "Ciliegio giapponese", "Trifoglio", "Grano"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0021 }
            Reponses := array{"Papavero", "Acero", "Edera", "Vite"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0022 }
            Reponses := array{"Abete", "Felce", "Ulivo", "Salice piangente"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0023 }
            Reponses := array{"Betulla", "Grano", "Quercia", "Mughetto"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0024 }
            Reponses := array{"Trifoglio", "Abete", "Mais", "Tarassaco"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0025 }
            Reponses := array{"Grano", "Quercia", "Riso", "Margherita"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0026 }
            Reponses := array{"Vite", "Orchidea", "Papavero", "Abete"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0027 }
            Reponses := array{"Narciso", "Giglio", "Iris", "Pioppo"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0028 }
            Reponses := array{"Stella alpina", "Peonia", "Iris", "Camelia"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0029 }
            Reponses := array{"Ortensia", "Bucaneve", "Narciso", "Pioppo"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0030 }
            Reponses := array{"Cedro", "Giacinto", "Bucaneve", "Faggio"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0031 }
            Reponses := array{"Baobab", "Peonia", "Ortensia", "Giglio"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0032 }
            Reponses := array{"Camelia", "Menta", "Ortensia", "Lilla"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0033 }
            Reponses := array{"Pioppo", "Geranio", "Cedro", "Platano"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0034 }
            Reponses := array{"Sequoia gigante", "Cedro", "Magnolia", "Eucalipto"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0035 }
            Reponses := array{"Platano", "Magnolia", "Giacinto", "Camelia"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0036 }
            Reponses := array{"Glicine", "Geranio", "Faggio", "Dalia"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0037 }
            Reponses := array{"Faggio", "Lilla", "Pioppo", "Menta"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0038 }
            Reponses := array{"Glicine", "Bucaneve", "Menta", "Eucalipto"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0039 }
            Reponses := array{"Cedro", "Glicine", "Camelia", "Stella alpina"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0040 }
            Reponses := array{"Bucaneve", "Lilla", "Ortensia", "Giglio"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0041 }
            Reponses := array{"Faggio", "Aloe vera", "Eucalipto", "Fiordaliso"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0042 }
            Reponses := array{"Eucalipto", "Magnolia", "Ortensia", "Giacinto"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0043 }
            Reponses := array{"Iris", "Sequoia gigante", "Geranio", "Glicine"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0044 }
            Reponses := array{"Ortensia", "Bucaneve", "Giglio", "Baobab"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0045 }
            Reponses := array{"Cipresso", "Faggio", "Baobab", "Pioppo"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0046 }
            Reponses := array{"Eucalipto", "Baobab", "Cedro", "Cipresso"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0047 }
            Reponses := array{"Pioppo", "Iris", "Giglio", "Platano"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0048 }
            Reponses := array{"Pioppo", "Dalia", "Aloe vera", "Giacinto"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0049 }
            Reponses := array{"Faggio", "Giglio", "Magnolia", "Geranio"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0050 }
            Reponses := array{"Giglio", "Menta", "Giacinto", "Aloe vera"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0051 }
            Reponses := array{"Menta", "Aloe vera", "Baobab", "Eucalipto"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0052 }
            Reponses := array{"Sequoia gigante", "Faggio", "Basilico", "Cipresso"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0053 }
            Reponses := array{"Lino", "Belladonna", "Rafflesia", "Salvia"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0054 }
            Reponses := array{"Dionea", "Luppolo", "Monstera", "Gardenia"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0055 }
            Reponses := array{"Belladonna", "Nepenthes", "Albero del cacao", "Zafferano"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0056 }
            Reponses := array{"Anturio", "Welwitschia", "Albero del cacao", "Digitale"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0057 }
            Reponses := array{"Dionea", "Melograno", "Ginkgo", "Welwitschia"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0058 }
            Reponses := array{"Fior di loto", "Mandragora", "Anturio", "Bromeliacea"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0059 }
            Reponses := array{"Belladonna", "Albero del cacao", "Buganvillea", "Zafferano"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0060 }
            Reponses := array{"Luppolo", "Ortica", "Zafferano", "Cicuta"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0061 }
            Reponses := array{"Ibisco", "Albero del cacao", "Ortica", "Ginkgo"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0062 }
            Reponses := array{"Cicuta", "Strelizia", "Cardo", "Lupino"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0063 }
            Reponses := array{"Topinambur", "Rosmarino", "Bromeliacea", "Melograno"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0064 }
            Reponses := array{"Buganvillea", "Rafflesia", "Gardenia", "Timo"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0065 }
            Reponses := array{"Rafflesia", "Topinambur", "Anturio", "Salvia"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0066 }
            Reponses := array{"Anturio", "Ginkgo", "Zafferano", "Mandragora"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0067 }
            Reponses := array{"Buganvillea", "Mandragora", "Luppolo", "Protea"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0068 }
            Reponses := array{"Belladonna", "Nepenthes", "Zafferano", "Lino"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0069 }
            Reponses := array{"Belladonna", "Nepenthes", "Cotone", "Zafferano"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0070 }
            Reponses := array{"Gelsomino", "Canna da zucchero", "Zafferano", "Gardenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0071 }
            Reponses := array{"Ibisco", "Pianta del te", "Topinambur", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0072 }
            Reponses := array{"Pianta del caffe", "Pianta del te", "Strelizia", "Monstera"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0073 }
            Reponses := array{"Albero del cacao", "Lupino", "Gardenia", "Gelsomino"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0074 }
            Reponses := array{"Fico", "Ibisco", "Luppolo", "Cotone"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0075 }
            Reponses := array{"Ibisco", "Pianta del caffe", "Melograno", "Mandragora"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0076 }
            Reponses := array{"Ibisco", "Rafflesia", "Cicuta", "Timo"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0077 }
            Reponses := array{"Fior di loto", "Canna da zucchero", "Cicuta", "Digitale"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0078 }
            Reponses := array{"Monstera", "Gardenia", "Luppolo", "Lupino"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0079 }
            Reponses := array{"Monstera", "Protea", "Strelizia", "Dionea"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0080 }
            Reponses := array{"Timo", "Anturio", "Belladonna", "Cotone"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0081 }
            Reponses := array{"Fior di loto", "Albero del cacao", "Anturio", "Bromeliacea"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0082 }
            Reponses := array{"Gelsomino", "Protea", "Cardo", "Monstera"}
            BonneReponse := 1
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0083 }
            Reponses := array{"Gardenia", "Albero del cacao", "Fior di loto", "Buganvillea"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0084 }
            Reponses := array{"Strelizia", "Mandragora", "Belladonna", "Gelsomino"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0085 }
            Reponses := array{"Anturio", "Cotone", "Fico", "Gardenia"}
            BonneReponse := 3
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0086 }
            Reponses := array{"Digitale", "Monstera", "Timo", "Topinambur"}
            BonneReponse := 0
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0087 }
            Reponses := array{"Timo", "Gardenia", "Lupino", "Digitale"}
            BonneReponse := 2
        question:
            Enonce := "Quale pianta e questa?"
            Image := option{ botanique.bot_0088 }
            Reponses := array{"Gelsomino", "Topinambur", "Cicuta", "Timo"}
            BonneReponse := 1

MakeBotaniqueQuestions() : []question =
    MakeBotaniqueQuestionsFR()
