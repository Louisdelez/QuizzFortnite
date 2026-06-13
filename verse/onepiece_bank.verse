using { /Verse.org/Assets }

# ============================================================
#  onepiece_bank.verse — Banque du quizz ONE PIECE (1451 personnages,
#  source MyAnimeList/Jikan). GENERE par tools/build_onepiece.py.
#  Noms identiques dans les 5 langues -> banque FR + wrappers.
# ============================================================

# Palier par question (0 = cultes, 1 = connus, 2 = obscurs ; favoris MAL).
OnePieceDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeOnePieceQuestionsFR1() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0001 }
            Reponses := array{"Brook", "Gol D. Roger", "Monkey D. Luffy", "Kuzan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0002 }
            Reponses := array{"Eustass Kid", "Sabo", "Roronoa Zoro", "Karoo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0003 }
            Reponses := array{"Donquixote Doflamingo", "Sanji", "Brook", "Tashigi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0004 }
            Reponses := array{"Donquixote Doflamingo", "Nico Robin", "Silvers Rayleigh", "Monkey D. Garp"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0005 }
            Reponses := array{"Nami", "Buggy", "Monkey D. Luffy", "Trafalgar Law"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0006 }
            Reponses := array{"Marco", "Nico Robin", "Nefertari Vivi", "Tony Tony Chopper"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0007 }
            Reponses := array{"Donquixote Doflamingo", "Donquixote Rosinante", "Nami", "Ulti"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0008 }
            Reponses := array{"Monkey D. Garp", "Jinbe", "Usopp", "Gol D. Roger"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0009 }
            Reponses := array{"Boa Hancock", "Donquixote Doflamingo", "Enel", "Portgas D. Ace"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0010 }
            Reponses := array{"Kuzan", "Ulti", "Yamato", "Brook"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0011 }
            Reponses := array{"Charlotte Linlin", "Charlotte Katakuri", "Kozuki Oden", "Crocodile"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0012 }
            Reponses := array{"Koby", "Franky", "Charlotte Katakuri", "Bartolomeo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0013 }
            Reponses := array{"Shanks", "Monkey D. Luffy", "Monkey D. Garp", "Yamato"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0014 }
            Reponses := array{"Emporio Ivankov", "Eustass Kid", "Edward Newgate", "Donquixote Doflamingo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0015 }
            Reponses := array{"Charlotte Linlin", "Donquixote Doflamingo", "Tashigi", "Bartholomew Kuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0016 }
            Reponses := array{"Dracule Mihawk", "Enel", "Roronoa Zoro", "Jinbe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0017 }
            Reponses := array{"Carrot", "Sanji", "Sakazuki", "Boa Hancock"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0018 }
            Reponses := array{"Uta", "Donquixote Rosinante", "Portgas D. Ace", "Enel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0019 }
            Reponses := array{"Sabo", "Yamato", "Isshou", "Jewelry Bonney"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0020 }
            Reponses := array{"Bentham", "Gol D. Roger", "Eustass Kid", "Sakazuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0021 }
            Reponses := array{"Edward Newgate", "Kozuki Oden", "Dracule Mihawk", "Clown Caesar"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0022 }
            Reponses := array{"Sabo", "Carrot", "Edward Newgate", "Eustass Kid"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0023 }
            Reponses := array{"Monkey D. Garp", "Tashigi", "Sakazuki", "Carrot"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0024 }
            Reponses := array{"Kuzan", "Usopp", "Edward Newgate", "Perona"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0025 }
            Reponses := array{"Buggy", "Boa Hancock", "Rob Lucci", "Portgas D. Ace"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0026 }
            Reponses := array{"Crocodile", "Edward Newgate", "Nico Robin", "Usopp"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0027 }
            Reponses := array{"Bartholomew Kuma", "Jinbe", "Gol D. Roger", "Rocks D. Xebec"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0028 }
            Reponses := array{"Kozuki Oden", "Sabo", "Portgas D. Ace", "Bartolomeo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0029 }
            Reponses := array{"Rob Lucci", "Hiluluk", "Boa Hancock", "Monkey D. Garp"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0030 }
            Reponses := array{"Marshall D. Teach", "Tashigi", "Franky", "Eustass Kid"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0031 }
            Reponses := array{"Silvers Rayleigh", "Donquixote Doflamingo", "Nico Robin", "Hiluluk"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0032 }
            Reponses := array{"Marco", "Rob Lucci", "Sanji", "Marshall D. Teach"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0033 }
            Reponses := array{"Kuzan", "Donquixote Rosinante", "Enel", "Emporio Ivankov"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0034 }
            Reponses := array{"Jinbe", "Bartolomeo", "Sanji", "Senor Pink"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0035 }
            Reponses := array{"Edward Newgate", "Uta", "Borsalino", "Sakazuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0036 }
            Reponses := array{"Loki", "Gol D. Roger", "Nico Robin", "Kozuki Oden"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0037 }
            Reponses := array{"Tashigi", "Yamato", "Eustass Kid", "Donquixote Rosinante"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0038 }
            Reponses := array{"Silvers Rayleigh", "Uta", "Bartolomeo", "Tony Tony Chopper"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0039 }
            Reponses := array{"Smoker", "Marshall D. Teach", "Eustass Kid", "Bartolomeo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0040 }
            Reponses := array{"Sabo", "Jinbe", "Nefertari Vivi", "Buggy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0041 }
            Reponses := array{"Perona", "Enel", "Koby", "Shanks"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0042 }
            Reponses := array{"Isshou", "Rocks D. Xebec", "Charlotte Katakuri", "Monkey D. Dragon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0043 }
            Reponses := array{"Monkey D. Dragon", "Clown Caesar", "Portgas D. Ace", "Rocks D. Xebec"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0044 }
            Reponses := array{"Sakazuki", "Borsalino", "Buggy", "Perona"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0045 }
            Reponses := array{"Kaidou", "Sanji", "Bentham", "Brook"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0046 }
            Reponses := array{"Crocodile", "Rocks D. Xebec", "Monkey D. Luffy", "Yamato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0047 }
            Reponses := array{"Jewelry Bonney", "Borsalino", "Sanji", "Brook"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0048 }
            Reponses := array{"Kaidou", "Bartolomeo", "Charlotte Katakuri", "Senor Pink"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0049 }
            Reponses := array{"Roronoa Zoro", "Rocks D. Xebec", "Rob Lucci", "Edward Newgate"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0050 }
            Reponses := array{"Vinsmoke Reiju", "Carrot", "Bentham", "Donquixote Doflamingo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0051 }
            Reponses := array{"Boa Hancock", "Donquixote Rosinante", "Enel", "Koby"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0052 }
            Reponses := array{"Nico Robin", "Bepo", "Charlotte Linlin", "Tashigi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0053 }
            Reponses := array{"Karoo", "Nami", "Gol D. Roger", "Hiluluk"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0054 }
            Reponses := array{"Edward Newgate", "Charlotte Linlin", "Karoo", "Sakazuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0055 }
            Reponses := array{"Ulti", "Emporio Ivankov", "Gol D. Roger", "Usopp"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0056 }
            Reponses := array{"Franky", "Clown Caesar", "Marco", "Rocks D. Xebec"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0057 }
            Reponses := array{"Charlotte Linlin", "Monkey D. Dragon", "Hiluluk", "Jewelry Bonney"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0058 }
            Reponses := array{"Usopp", "Shanks", "Loki", "Bartholomew Kuma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0059 }
            Reponses := array{"Charlotte Katakuri", "Uta", "Koby", "Tashigi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0060 }
            Reponses := array{"Tony Tony Chopper", "Shanks", "Ulti", "Silvers Rayleigh"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0061 }
            Reponses := array{"Kyoushirou", "Charlotte Perospero", "Monet", "Woop Slap"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0062 }
            Reponses := array{"Johnny", "Imu", "Zeff", "Shirahoshi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0063 }
            Reponses := array{"Shyarly", "Chouchou", "Bellamy", "Bellemere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0064 }
            Reponses := array{"Laboon", "Charlotte Perospero", "Bogard", "Charlotte Praline"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0065 }
            Reponses := array{"Chouchou", "Kaku", "Okiku", "Baby 5"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0066 }
            Reponses := array{"Erik", "Kaku", "Vergo", "Yasopp"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0067 }
            Reponses := array{"S-Snake", "Yasopp", "Vinsmoke Yonji", "Koala"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0068 }
            Reponses := array{"Zeff", "Krieg", "Charlotte Pudding", "Doll"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0069 }
            Reponses := array{"Lucky Roux", "Gaimon", "Nico Olvia", "Mansherry"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0070 }
            Reponses := array{"Pandaman", "Charlotte Amande", "Shepherd", "Betty Belo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0071 }
            Reponses := array{"Suu", "Benn Beckman", "King", "Porche"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0072 }
            Reponses := array{"Dellinger", "Otama", "Yasopp", "Boa Sandersonia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0073 }
            Reponses := array{"Momonga", "Shyarly", "Cavendish", "Gin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0074 }
            Reponses := array{"Gecko Moria", "Charlotte Amande", "Shiliew", "Shepherd"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0075 }
            Reponses := array{"Charlotte Amande", "Kalifa", "Killer", "Charlotte Praline"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0076 }
            Reponses := array{"Kawamatsu", "Kung Fu Dugong", "Kuina", "Vinsmoke Yonji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0077 }
            Reponses := array{"Kaku", "Zephyr", "Helmeppo", "Bellemere"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0078 }
            Reponses := array{"Shimotsuki Ryuuma", "Sadi", "Pica", "Paulie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0079 }
            Reponses := array{"Fisher Tiger", "Baby 5", "Chimney", "Iceburg"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0080 }
            Reponses := array{"Apis", "Fisher Tiger", "Kyros", "Manjaro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0081 }
            Reponses := array{"Rebecca", "Rosward Charlos", "Kaku", "Vinsmoke Ichiji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0082 }
            Reponses := array{"Izou", "Wanze", "Charlotte Praline", "Arlong"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0083 }
            Reponses := array{"Tesoro Gild", "Kureha", "Calgara", "Pell"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0084 }
            Reponses := array{"Kalifa", "Pedro", "Wanda", "Portgas D. Rouge"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0085 }
            Reponses := array{"Zephyr", "Spandam", "Boa Sandersonia", "Capone Bege"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0086 }
            Reponses := array{"Nekomamushi", "Drip", "Patty", "Zeff"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0087 }
            Reponses := array{"Shepherd", "Montblanc Norland", "Kokoro", "King"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0088 }
            Reponses := array{"Helmeppo", "Domino", "Mansherry", "Baby 5"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0089 }
            Reponses := array{"Bao Huang", "Blueno", "Joy Boy", "Kuro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0090 }
            Reponses := array{"Foxy", "Izou", "Hannyabal", "Pierre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0091 }
            Reponses := array{"Kozuki Momonosuke", "Zeff", "Van Augur", "Imu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0092 }
            Reponses := array{"Heracles", "Jango", "Kuro", "Shiki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0093 }
            Reponses := array{"Charlotte Brulee", "King", "Kuina", "Izou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0094 }
            Reponses := array{"Shiki", "Gonbe", "Vinsmoke Niji", "Chimney"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0095 }
            Reponses := array{"Gonbe", "Queen", "Pappug", "Nora Gitsune"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0096 }
            Reponses := array{"Lucky Roux", "Kinemon", "Viola", "Shiliew"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0097 }
            Reponses := array{"Doll", "Blueno", "Magellan", "Helmeppo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0098 }
            Reponses := array{"Jonathan", "Eggplant Soldier", "Shepherd", "Kinemon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0099 }
            Reponses := array{"Gan Fall", "Killer", "Sengoku", "Paulie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0100 }
            Reponses := array{"Killer", "Sengoku", "Vinsmoke Ichiji", "Zeus"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0101 }
            Reponses := array{"Komurasaki", "Gaimon", "Bellemere", "Kawamatsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0102 }
            Reponses := array{"Izou", "Charlotte Amande", "Hatchan", "Abdullah"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0103 }
            Reponses := array{"Shiliew", "Lilith", "Lafitte", "Kumadori"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0104 }
            Reponses := array{"Genzou", "Morgans", "Zala", "Komurasaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0105 }
            Reponses := array{"Doll", "Zeff", "Jaguar D. Saul", "Queen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0106 }
            Reponses := array{"Bellamy", "Izou", "Demaro Black", "Patty"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0107 }
            Reponses := array{"Drip", "Bomba", "Hawkins Basil", "Thatch"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0108 }
            Reponses := array{"Kureha", "Dick", "Makino", "Hatchan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0109 }
            Reponses := array{"Foxy", "Vegapunk", "Leo", "Page One"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0110 }
            Reponses := array{"Mansherry", "Kuro", "Wadatsumi", "Mohmoo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0111 }
            Reponses := array{"Otohime", "Penguin", "Sadi", "Komurasaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0112 }
            Reponses := array{"Mohmoo", "Urouge", "Curly Dadan", "Jaguar D. Saul"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0113 }
            Reponses := array{"Ishilly", "X Drake", "Calgara", "Cavendish"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0114 }
            Reponses := array{"Bao Huang", "Curly Dadan", "Dellinger", "Aphelandra"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0115 }
            Reponses := array{"Hatchan", "Zephyr", "Klabautermann", "Page One"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0116 }
            Reponses := array{"Kawamatsu", "Klabautermann", "Baby 5", "Tom"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0117 }
            Reponses := array{"Hatchan", "Yorki", "Drip", "Viola"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0118 }
            Reponses := array{"Black Maria", "X Drake", "Krieg", "Hannyabal"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0119 }
            Reponses := array{"Zeus", "Krieg", "Capone Pez", "Boa Sandersonia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0120 }
            Reponses := array{"Joy Boy", "Marianne", "Abdullah", "Shepherd"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0121 }
            Reponses := array{"Kuina", "Jango", "Scratchmen Apoo", "Shyarly"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0122 }
            Reponses := array{"Kozuki Momonosuke", "Penguin", "Bogard", "Sadi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0123 }
            Reponses := array{"Wiper", "Marguerite", "Page One", "Shirahoshi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0124 }
            Reponses := array{"Nojiko", "Sengoku", "Brogy", "Wapol"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0125 }
            Reponses := array{"Marianne", "Kureha", "Otama", "Stussy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0126 }
            Reponses := array{"Gan Fall", "Lilith", "Tesoro Gild", "Iceburg"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0127 }
            Reponses := array{"Kuina", "Koala", "Montblanc Norland", "Wiper"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0128 }
            Reponses := array{"Duval", "Shimotsuki Ryuuma", "Jaguar D. Saul", "Miss Valentine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0129 }
            Reponses := array{"Charlotte Brulee", "Nico Olvia", "Sugar", "Kyoushirou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0130 }
            Reponses := array{"Domino", "Fukurou", "Zeus", "Shyarly"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0131 }
            Reponses := array{"Yasopp", "Page One", "Pierre", "Dellinger"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0132 }
            Reponses := array{"Baby 5", "Dick", "Viola", "Klabautermann"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0133 }
            Reponses := array{"Apis", "Shiki", "Penguin", "Momonga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0134 }
            Reponses := array{"X Drake", "Capone Bege", "Eggplant Soldier", "Hannyabal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0135 }
            Reponses := array{"Urouge", "Kawamatsu", "Hina", "Pica"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0136 }
            Reponses := array{"Doll", "Capone Bege", "Zeff", "Kinemon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0137 }
            Reponses := array{"Kaku", "Jozu", "Iceburg", "Wiper"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0138 }
            Reponses := array{"Kyoushirou", "Charlotte Cracker", "Vinsmoke Niji", "Domino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0139 }
            Reponses := array{"Hannyabal", "Portgas D. Rouge", "Genzou", "Mohmoo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0140 }
            Reponses := array{"Ishilly", "Morgans", "Yasopp", "Tonoyasu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0141 }
            Reponses := array{"Montblanc Norland", "Woop Slap", "Bao Huang", "Miss Valentine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0142 }
            Reponses := array{"Kalifa", "Charlotte Perospero", "Scratchmen Apoo", "Shakuyaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0143 }
            Reponses := array{"Galdino", "Pica", "Figarland Shamrock", "Vinsmoke Niji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0144 }
            Reponses := array{"Kawamatsu", "King", "Bomba", "Heracles"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0145 }
            Reponses := array{"Inazuma", "Bomba", "Baum King", "Kalifa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0146 }
            Reponses := array{"Wanda", "Okiku", "Yasopp", "Shepherd"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0147 }
            Reponses := array{"Yokozuna", "Capone Bege", "Jozu", "Hatchan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0148 }
            Reponses := array{"Johnny", "Kawamatsu", "Charlotte Cracker", "Pedro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0149 }
            Reponses := array{"Montblanc Norland", "Kaku", "Kuina", "Hatchan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0150 }
            Reponses := array{"Leo", "Lucky Roux", "Okiku", "Shirahoshi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0151 }
            Reponses := array{"Hawkins Basil", "Jaguar D. Saul", "Lilith", "Penguin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0152 }
            Reponses := array{"Rebecca", "Izou", "King", "Rosward Charlos"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0153 }
            Reponses := array{"Brogy", "Spandam", "Curly Dadan", "Kaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0154 }
            Reponses := array{"Nekomamushi", "Helmeppo", "Hibari", "Dellinger"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0155 }
            Reponses := array{"Kokoro", "Chouchou", "Zala", "Lucky Roux"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0156 }
            Reponses := array{"Sadi", "Vegapunk", "Bao Huang", "Otohime"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0157 }
            Reponses := array{"Klabautermann", "Kinemon", "Alvida", "Aramaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0158 }
            Reponses := array{"Kozuki Momonosuke", "Erik", "Queen", "Otama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0159 }
            Reponses := array{"Klabautermann", "Otohime", "Suu", "Wiper"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0160 }
            Reponses := array{"Shiki", "Figarland Shamrock", "Montblanc Norland", "Pierre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0161 }
            Reponses := array{"Wadatsumi", "Gan Fall", "Portgas D. Rouge", "Suu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0162 }
            Reponses := array{"Tesoro Gild", "Apis", "Scratchmen Apoo", "Shiliew"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0163 }
            Reponses := array{"Vinsmoke Niji", "Thatch", "Tesoro Gild", "Lao G"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0164 }
            Reponses := array{"Hina", "Yokozuna", "Wanze", "Shiki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0165 }
            Reponses := array{"Killer", "Vinsmoke Ichiji", "Charlotte Cracker", "Jonathan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0166 }
            Reponses := array{"Lucky Roux", "Marianne", "Kumashi", "Zephyr"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0167 }
            Reponses := array{"Killer", "Shakuyaku", "Wapol", "Kalifa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0168 }
            Reponses := array{"Demaro Black", "Charlotte Amande", "Gecko Moria", "Higelyges Chadros"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0169 }
            Reponses := array{"Masira", "Calgara", "Manjaro", "Momonga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0170 }
            Reponses := array{"Nico Olvia", "Chimney", "Jango", "Black Maria"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0171 }
            Reponses := array{"King", "Porche", "Van Augur", "Charlotte Amande"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0172 }
            Reponses := array{"Shyarly", "Pedro", "Blueno", "Shimotsuki Ryuuma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0173 }
            Reponses := array{"Jozu", "Shakuyaku", "Stussy", "Blueno"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0174 }
            Reponses := array{"Ishilly", "Momonga", "Thatch", "Viola"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0175 }
            Reponses := array{"Vergo", "Black Maria", "Urouge", "Otama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0176 }
            Reponses := array{"Nico Olvia", "Sengoku", "Betty Belo", "Suu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0177 }
            Reponses := array{"Charlotte Smoothie", "Johnny", "Boa Sandersonia", "Kinemon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0178 }
            Reponses := array{"Kalifa", "Yorki", "Gaimon", "Calgara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0179 }
            Reponses := array{"Doll", "Gonbe", "Wapol", "S-Snake"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0180 }
            Reponses := array{"Morgans", "Gecko Moria", "Zephyr", "Drip"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0181 }
            Reponses := array{"Pappug", "Boa Sandersonia", "Fukurou", "Hawkins Basil"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0182 }
            Reponses := array{"Suu", "Page One", "Pappug", "Genzou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0183 }
            Reponses := array{"Doll", "Inazuma", "Charlotte Cracker", "Sugar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0184 }
            Reponses := array{"Johnny", "Pedro", "Dellinger", "Charlotte Cracker"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0185 }
            Reponses := array{"Capone Bege", "Gecko Moria", "Galdino", "Lao G"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0186 }
            Reponses := array{"Nora Gitsune", "King", "Chouchou", "Rebecca"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0187 }
            Reponses := array{"Montblanc Norland", "Pierre", "Pedro", "Nojiko"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0188 }
            Reponses := array{"Leo", "Van Augur", "Johnny", "Wanze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0189 }
            Reponses := array{"Scratchmen Apoo", "Vinsmoke Yonji", "Eggplant Soldier", "Shiki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0190 }
            Reponses := array{"Doll", "Ain", "Lao G", "Aramaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0191 }
            Reponses := array{"Brogy", "Domino", "Bellamy", "Boa Sandersonia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0192 }
            Reponses := array{"Gin", "Figarland Shamrock", "Bogard", "Wanze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0193 }
            Reponses := array{"Turco", "Gin", "Ain", "Kalifa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0194 }
            Reponses := array{"Gan Fall", "Ishilly", "Eggplant Soldier", "Bogard"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0195 }
            Reponses := array{"Domino", "Kokoro", "Woop Slap", "Gonbe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0196 }
            Reponses := array{"Duval", "Kalifa", "Vander Decken IX", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0197 }
            Reponses := array{"Wiper", "Chouchou", "Blueno", "Betty Belo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0198 }
            Reponses := array{"Charlotte Smoothie", "Okiku", "Camie", "Arlong"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0199 }
            Reponses := array{"Lilith", "Crocus", "Iceburg", "Stussy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0200 }
            Reponses := array{"Killer", "Vander Decken IX", "Gan Fall", "Shakuyaku"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0201 }
            Reponses := array{"Vergo", "Mansherry", "Koala", "Aphelandra"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0202 }
            Reponses := array{"Johnny", "Mohmoo", "Tonoyasu", "Momonga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0203 }
            Reponses := array{"Apis", "Shiliew", "Page One", "Jango"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0204 }
            Reponses := array{"Hina", "Wadatsumi", "Sugar", "Pappug"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0205 }
            Reponses := array{"Otama", "Doll", "Vinsmoke Ichiji", "Sugar"}
            BonneReponse := 2

MakeOnePieceQuestionsFR2() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0206 }
            Reponses := array{"Alvida", "X Drake", "Shiki", "Bellemere"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0207 }
            Reponses := array{"Dick", "Domino", "Arlong", "Kinemon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0208 }
            Reponses := array{"Monet", "Jozu", "Kyoushirou", "Charlotte Brulee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0209 }
            Reponses := array{"Sengoku", "Kozuki Toki", "Charlotte Pudding", "Laboon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0210 }
            Reponses := array{"Lafitte", "Boa Sandersonia", "Shirahoshi", "Miss Valentine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0211 }
            Reponses := array{"Rosward Charlos", "King", "Joy Boy", "Shiliew"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0212 }
            Reponses := array{"Wanda", "Spandam", "Urouge", "Pedro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0213 }
            Reponses := array{"Abdullah", "Queen", "Aramaki", "Monet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0214 }
            Reponses := array{"Lilith", "Klabautermann", "Ain", "Bao Huang"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0215 }
            Reponses := array{"Hawkins Basil", "Bomba", "Urouge", "Vinsmoke Niji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0216 }
            Reponses := array{"Brogy", "Koala", "Inazuma", "Rosward Charlos"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0217 }
            Reponses := array{"Wanda", "Capone Pez", "Inazuma", "Wanze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0218 }
            Reponses := array{"Vinsmoke Niji", "Porche", "Pica", "Charlotte Smoothie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0219 }
            Reponses := array{"Gaimon", "Erik", "Eggplant Soldier", "Thatch"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0220 }
            Reponses := array{"Urouge", "Hatchan", "Boa Sandersonia", "Erik"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0221 }
            Reponses := array{"Zephyr", "Black Maria", "Hibari", "Heracles"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0222 }
            Reponses := array{"Woop Slap", "Fisher Tiger", "Jozu", "Higelyges Chadros"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0223 }
            Reponses := array{"Kozuki Momonosuke", "Kuina", "Joy Boy", "Wanze"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0224 }
            Reponses := array{"Masira", "Urouge", "Zala", "Page One"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0225 }
            Reponses := array{"Miss Valentine", "Higelyges Chadros", "Imu", "Doll"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0226 }
            Reponses := array{"Imu", "Black Maria", "Patty", "Helmeppo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0227 }
            Reponses := array{"Pica", "Demaro Black", "Hatchan", "Shepherd"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0228 }
            Reponses := array{"Vander Decken IX", "Vegapunk", "S-Snake", "Turco"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0229 }
            Reponses := array{"Shakuyaku", "Komurasaki", "Hannyabal", "Charlotte Smoothie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0230 }
            Reponses := array{"Turco", "Koala", "Bogard", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0231 }
            Reponses := array{"Shirahoshi", "Wadatsumi", "Jozu", "Monet"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0232 }
            Reponses := array{"Page One", "Wanda", "Spandam", "Shiliew"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0233 }
            Reponses := array{"Mohmoo", "Ishilly", "Wanze", "Charlotte Cracker"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0234 }
            Reponses := array{"Gecko Moria", "Yorki", "Zeus", "Curly Dadan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0235 }
            Reponses := array{"Zeff", "Scratchmen Apoo", "Nora Gitsune", "Zala"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0236 }
            Reponses := array{"Portgas D. Rouge", "Makino", "Aphelandra", "Charlotte Perospero"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0237 }
            Reponses := array{"Pappug", "Pedro", "Genzou", "Baum King"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0238 }
            Reponses := array{"Sengoku", "Gaimon", "Charlotte Amande", "Patty"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0239 }
            Reponses := array{"Domino", "Charlotte Brulee", "Spandam", "Gin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0240 }
            Reponses := array{"Klabautermann", "Iceburg", "Charlotte Praline", "Bellemere"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0241 }
            Reponses := array{"Charlotte Citron", "Ramen", "Chinjao", "Togare"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0242 }
            Reponses := array{"Ginger", "Conis", "Kop", "Pagaya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0243 }
            Reponses := array{"Mocha's Mother", "Dalton", "Charlotte Myukuru", "Tori"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0244 }
            Reponses := array{"Pagaya", "Dorry", "Nantokanette Sally", "Gladiator Hera"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0245 }
            Reponses := array{"Hajrudin", "Honner", "Jiro", "Ossamondo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0246 }
            Reponses := array{"Harald", "Tori", "Montblanc Cricket", "Rika"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0247 }
            Reponses := array{"Pastor Zombie", "Haredas", "Oli", "Rokuroshi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0248 }
            Reponses := array{"Acrobatic Fuwas #2", "McKinley", "Charlotte Raisin", "Hogback"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0249 }
            Reponses := array{"Ann", "Barto Club's Grandma", "Igaram", "Musse"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0250 }
            Reponses := array{"Kamijirou", "Little Oars Jr.", "Julius", "Kiev"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0251 }
            Reponses := array{"Dosun", "Naguri", "Masked Deuce", "Delacuaji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0252 }
            Reponses := array{"Abi's Father", "Gyogyo", "Kamyu's Fellow Boxer", "Mocha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0253 }
            Reponses := array{"Nefertari Cobra", "Adele", "Minchey", "Wanyudo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0254 }
            Reponses := array{"Uzu", "Delacuaji", "Oars", "Charlotte Compote"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0255 }
            Reponses := array{"Charlotte Mobile", "Pekoms", "Jose", "Sham"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0256 }
            Reponses := array{"Kairen", "Inbi", "Akudai Kanzaburou", "Scotch"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0257 }
            Reponses := array{"Raoul", "Rotund Risky Brother", "Sentoumaru", "Jaiya Shin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0258 }
            Reponses := array{"Rokuroshi", "Mr. Beans", "Shaka", "Jarul"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0259 }
            Reponses := array{"G-8 Sous Chef", "Shepherd Sommers", "Cowboy", "Igaram"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0260 }
            Reponses := array{"Peclo Drug", "Shinobu", "Prometheus", "Funk Kelly"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0261 }
            Reponses := array{"Meadows", "Abi's Father", "Shot Vasco", "Orenami Fan (L)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0262 }
            Reponses := array{"Ethanbaron V. Nusjuro", "Uholisia", "Shoujou", "Look-out of the Lady Mary"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0263 }
            Reponses := array{"Ducky Bree", "Tamanegi", "Newkama Force #1", "Mizuta Madaisuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0264 }
            Reponses := array{"Manboshi", "Toko", "Toto", "Odama"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0265 }
            Reponses := array{"Juubei", "Newkama Force #4", "Stomp", "Trebol"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0266 }
            Reponses := array{"Uholisia", "Yuya", "Victoria Cindry", "Moqueca"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0267 }
            Reponses := array{"Daifugo", "Sam", "Mr. 7", "Whitey Bay"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0268 }
            Reponses := array{"York", "Honner", "Pagaya", "Ippon-Matsu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0269 }
            Reponses := array{"Haredas", "Yosaku", "Suke", "Shimotsuki Kouzaburou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0270 }
            Reponses := array{"Nero", "Charlotte Normande", "Superhuman Domingos #3", "Absalom"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0271 }
            Reponses := array{"Hublot", "Charlotte Custard", "All-Hunt Grount", "Ideo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0272 }
            Reponses := array{"Atlas", "Barbel", "Mizuira", "Shimotsuki Ushimaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0273 }
            Reponses := array{"Maidy", "Tomozo", "Hihimaru", "Bones Daz"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0274 }
            Reponses := array{"Charlotte Brownie", "Brew", "Rittonto", "Caribou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0275 }
            Reponses := array{"Diamante", "Achino Salcho", "Caribou", "Kingdew"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0276 }
            Reponses := array{"Charlotte Newichi", "Riley Brother #1", "Emet", "Sasaki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0277 }
            Reponses := array{"Epoida", "Jabra", "Koda", "Fukaboshi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0278 }
            Reponses := array{"Fullbody", "Mountain Ricky", "Dobon", "Tsunokkov"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0279 }
            Reponses := array{"Tightrope Walking Funan Bros (Beanie Hat)", "Kamekichi", "Yazaemon", "Gedatsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0280 }
            Reponses := array{"Marin", "Yosaku", "Inuppe", "Saber"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0281 }
            Reponses := array{"Jack", "Gorilla", "Nin", "Tightrope Walking Funan Bros (Ginger)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0282 }
            Reponses := array{"Jesus Burgess", "Charlotte Moscato", "Tritobu", "Footbianco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0283 }
            Reponses := array{"Achino Lil", "Kaya", "Morollon", "Ibadonbo Dobby"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0284 }
            Reponses := array{"Machvise", "Fujin", "Dogya", "Kong"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0285 }
            Reponses := array{"Hiramera", "Topman Warcury", "Masterson Daddy", "Negikuma Maria"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0286 }
            Reponses := array{"Mero", "Raijin", "Fuga", "Kamakiri"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0287 }
            Reponses := array{"Jose", "Tansui", "Merry", "Nodoi Wakan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0288 }
            Reponses := array{"Grabar", "Boa Marigold", "Kasagoba", "Miss Father's Day"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0289 }
            Reponses := array{"Stroganoff", "Bisley", "Mounblutain", "Achino Salcho"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0290 }
            Reponses := array{"Compo", "Mozu", "G-8 Head Custodian", "Bulldog"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0291 }
            Reponses := array{"Mitsuboshi", "Pastor Zombie", "Mr. 13", "Odama"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0292 }
            Reponses := array{"Piiman", "Nero", "Ossamondo", "Ringana Tegata"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0293 }
            Reponses := array{"Pearl", "Shoujou", "Ginnosuke", "Linlin's Father"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0294 }
            Reponses := array{"Geronimo", "Charlotte Kato", "Gerd", "Pound"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0295 }
            Reponses := array{"Kaba Shinshi", "Charlotte Anglais", "Rimoshifu Killingham", "Lago"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0296 }
            Reponses := array{"Arlong Pirate (Monkfish)", "Jeep", "Streusen", "Rockstar"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0297 }
            Reponses := array{"Saber", "Roji", "Banzaburou", "Tamago"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0298 }
            Reponses := array{"Enishida", "Ducky Bree", "Tonjit", "Tararan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0299 }
            Reponses := array{"Troff", "Pellini", "S-Shark", "York"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0300 }
            Reponses := array{"Papaneel", "Fen Bock", "All-Hunt Grount", "Wicca"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0301 }
            Reponses := array{"Warashi", "A.O", "Chip", "Renona Topakka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0302 }
            Reponses := array{"Tsunagorou", "Abi", "Didit", "Jaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0303 }
            Reponses := array{"Achino Lil", "Gatherine", "Daigin", "Jorul"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0304 }
            Reponses := array{"Alpaca-Man", "Charlotte Newgo", "Carmen", "Sai"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0305 }
            Reponses := array{"Hublot", "Mekao", "Charlotte Lola", "Amazon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0306 }
            Reponses := array{"Dotaku", "Eddy", "Ann", "Decalvan Brother (A)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0307 }
            Reponses := array{"Heppoko", "Matoryou Hime-tachi", "Captain of the Lady Mary", "Bariete"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0308 }
            Reponses := array{"Bastar Gill", "All-Hunt Grount", "Bon Chari Seller", "Sanshita"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0309 }
            Reponses := array{"Colon", "Snake Building", "Cosette", "Bat-Man"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0310 }
            Reponses := array{"Bobbin", "Troff", "Urban", "Giovanni"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0311 }
            Reponses := array{"Sarutobi", "Alvida Pirate (Horned)", "Boodle", "Potsun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0312 }
            Reponses := array{"Hou-ban Taichou", "Cabaji", "Gyoro", "Ukon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0313 }
            Reponses := array{"Charlotte Kato", "Laskey", "Achino Campacino", "Charlotte Daifuku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0314 }
            Reponses := array{"Moore", "Dagama", "Rint", "Charlotte Galette"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0315 }
            Reponses := array{"Superhuman Domingos #3", "Rimoshifu Killingham", "Charlotte Lola", "Rokuroshi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0316 }
            Reponses := array{"Moyle", "Kuween", "Koze", "Chess"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0317 }
            Reponses := array{"Achino Arbell", "Chew", "Urbain-san", "Koala Zombie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0318 }
            Reponses := array{"Happygun", "Charlotte Mobile", "Ryudo", "Clou D Clover"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0319 }
            Reponses := array{"Doc Q", "Scorpion", "Potato", "Jalmack"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0320 }
            Reponses := array{"Hardy", "Ohm", "Dive", "Gaban Scopper"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0321 }
            Reponses := array{"Gion", "Jack-in-the-Box", "Piiman", "Dagama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0322 }
            Reponses := array{"Lulis", "Deigorou", "Shimotsuki Ushimaru", "Guernica"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0323 }
            Reponses := array{"Gyaro", "Konbu", "Charlotte Dragee", "Charlotte Raisin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0324 }
            Reponses := array{"Superhuman Domingos #3", "Poro", "Ham Burger", "Barto Club's Grandma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0325 }
            Reponses := array{"Blondie", "Marilyn", "Hamburg", "Rabiyan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0326 }
            Reponses := array{"Pudding Pudding", "Mani", "Heat", "Iwatobi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0327 }
            Reponses := array{"Yamakaji", "Fourtricks", "Yatappe", "Heppoko"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0328 }
            Reponses := array{"Jabra", "Scimitarta", "Dogya", "Minoruba"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0329 }
            Reponses := array{"Jones Hody", "Charlotte Dosmarche", "Karasu", "Namur"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0330 }
            Reponses := array{"Charlotte Counter", "Karasu", "Deigorou", "Kitton"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0331 }
            Reponses := array{"Gedatsu", "Lago", "Boogie", "Kohza"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0332 }
            Reponses := array{"Linaria", "Kurozumi Orochi", "Itomimizu", "Vinsmoke Sora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0333 }
            Reponses := array{"Montblanc Cricket", "Minorhinoceros", "Jabari", "George Mach"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0334 }
            Reponses := array{"Ban Dedessinee", "Mr. 5", "Ganryu (Spade Pirates)", "Bunny Joe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0335 }
            Reponses := array{"Charlotte Zuccotto", "Orlumbus", "Isoka", "Banzaburou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0336 }
            Reponses := array{"Gazelle-Man", "Raizou", "Conis", "Pluming"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0337 }
            Reponses := array{"Finamore", "Randolph", "Shopkeeper Hanji", "Otaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0338 }
            Reponses := array{"Dobon", "Ohana", "Richie", "Pasqua Rapanui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0339 }
            Reponses := array{"Tajio", "Rika", "Nin", "Sapi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0340 }
            Reponses := array{"Kotatsu", "Fujin", "Stool", "Shachi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0341 }
            Reponses := array{"Blenheim", "Short Vassal (500 Hostages)", "Largo", "Shimoi Zappa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0342 }
            Reponses := array{"Elmy", "Shimotsuki Koushirou", "Rosy Life Rider (Blond)", "Rockstar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0343 }
            Reponses := array{"Alvida Pirate (S Tattoo)", "de Bonham Ant", "Guernica", "Speed"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0344 }
            Reponses := array{"Gimlet", "T-Bone", "Okome", "Charlotte Chiboust"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0345 }
            Reponses := array{"Curiel", "Grabar", "Taco", "Natto"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0346 }
            Reponses := array{"Yonka Two", "Urban", "Uholisia", "Kiba"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0347 }
            Reponses := array{"Kazenbo", "Babanuki", "Mikazuki", "Gyaro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0348 }
            Reponses := array{"Hakugan", "Coribou", "Bacura", "Emet"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0349 }
            Reponses := array{"MocDonald", "Chesskippa", "Bobomba", "Rakuda"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0350 }
            Reponses := array{"Kyukyu", "Miss Catharine", "Captain John", "S-Shark"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0351 }
            Reponses := array{"Ginnosuke", "Charlotte Chiffon", "Red Hair Pirate (Chain)", "Kuween"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0352 }
            Reponses := array{"Charlotte Flampe", "Seto", "Tosa", "Suke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0353 }
            Reponses := array{"Kazekage", "Charlotte Myukuru", "Luca", "Rabbitman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0354 }
            Reponses := array{"Charlotte Nusstorte", "Biyo's Father", "Yamao Happa", "Charlotte Compo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0355 }
            Reponses := array{"Saturn Jaygarcia", "Charlotte Poire", "Natto", "Ohm"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0356 }
            Reponses := array{"Peseta", "Hamlet", "Clapp", "Chabo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0357 }
            Reponses := array{"Cotton", "Snakeman", "Hidayu", "Alvida Pirate (S Tattoo)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0358 }
            Reponses := array{"Barrel", "Barbel", "Karma", "Desire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0359 }
            Reponses := array{"Corgi", "Devon Catarina", "Pekkori", "Superhuman Domingos #3"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0360 }
            Reponses := array{"Guernica", "Dogra", "Nika", "Buena Festa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0361 }
            Reponses := array{"Furrari", "Eddy", "Hikoichi", "Renona Topakka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0362 }
            Reponses := array{"Milky", "Charlotte Noisette", "Tamachibi", "Enstomach Lily"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0363 }
            Reponses := array{"Farafra", "Inhel", "Hound", "Cabaji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0364 }
            Reponses := array{"Fen Bock", "G-8 Marine Officer (Blond)", "Charlotte Newsan", "Maha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0365 }
            Reponses := array{"Absalom", "Nika", "Rivers", "Figarland Garling"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0366 }
            Reponses := array{"Azuki", "Kaba Shinshi", "Charlotte Dosmarche", "Fukurokuju"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0367 }
            Reponses := array{"Stalker", "Acrobatic Fuwas #1", "Gally", "Edison"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0368 }
            Reponses := array{"Holdem", "Elmy", "Mountain Ricky", "Kurozumi Semimaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0369 }
            Reponses := array{"Pellini", "Hyogoro", "Herb", "Miss Father's Day"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0370 }
            Reponses := array{"Kirintauros", "Epony", "Charlotte Mont-d'Or", "Ideo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0371 }
            Reponses := array{"Jack", "Yokan", "Buckingham Stussy", "Inuarashi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0372 }
            Reponses := array{"Jigorou", "Gladius", "Curiel", "Charlotte Montb"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0373 }
            Reponses := array{"Scorpion", "Kappa", "Andre", "Akehende"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0374 }
            Reponses := array{"Charlotte Compo", "Buhichuck", "Inuarashi", "Kitton's Grandfather"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0375 }
            Reponses := array{"Lip Doughty", "Kodama", "Giovanni", "Doc Q"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0376 }
            Reponses := array{"Devil Dias", "Bushon", "Charlotte Laurin", "Kozuki Sukiyaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0377 }
            Reponses := array{"Ishigo Shitemanna", "McGuy", "Minokoala", "Part"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0378 }
            Reponses := array{"Little Oars Jr.", "Deigorou", "Juujirou", "Moocy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0379 }
            Reponses := array{"Gatherine", "Oide", "Morgan", "Tightrope Walking Funan Bros (Chubby)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0380 }
            Reponses := array{"Morley", "Donannoyo", "G-8 Sous Chef", "Gambo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0381 }
            Reponses := array{"Morgan", "Mr. 7", "Pascia", "Phillip"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0382 }
            Reponses := array{"Ibusu", "Chichilisia", "Mr. 9", "Nokokuwa Police"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0383 }
            Reponses := array{"Bill", "Napoleon", "Zeo", "Noble Croc"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0384 }
            Reponses := array{"Wanyudo", "Basil", "Nezumi", "Funk Bobby"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0385 }
            Reponses := array{"Charlotte Custard", "Nola", "Nika", "Charlotte Bavarois"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0386 }
            Reponses := array{"Lina and Sayo's Father", "Terracotta", "Hippie", "Noble Croc"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0387 }
            Reponses := array{"S-Shark", "Nola", "Riley Brother #2", "Wire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0388 }
            Reponses := array{"Pagaya", "Ganryu (Roger Pirates)", "Spector", "Zaba"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0389 }
            Reponses := array{"Enstomach Lily", "Peeply Lulu", "Fugar", "Miss Monday"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0390 }
            Reponses := array{"Boo", "Peppoko", "Michael", "Choco Police"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0391 }
            Reponses := array{"Charlotte Chiffon", "Mari", "O-Tsuru", "Rock"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0392 }
            Reponses := array{"Aswa", "Ryuuboshi", "Mounblutain", "Chaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0393 }
            Reponses := array{"Charlotte Oven", "Bellett", "Sai", "Jibuemon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0394 }
            Reponses := array{"Saldeath", "Short Vassal (500 Hostages)", "T-Bone", "Disco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0395 }
            Reponses := array{"Asahija", "Sapi", "Goki", "Charlotte Custard"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0396 }
            Reponses := array{"Sasaki", "Chiqicheetah", "Foxy Pirates' Referee", "Ideo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0397 }
            Reponses := array{"Saturn Jaygarcia", "Fry Panz", "Guarana", "Dalmatian"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0398 }
            Reponses := array{"Soran", "Daruma", "Giolla", "Terry"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0399 }
            Reponses := array{"Charlotte Cabaletta", "Ian", "Togare", "Stalker"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0400 }
            Reponses := array{"Kobe", "Bian", "Vinsmoke Judge", "Road"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0401 }
            Reponses := array{"G-8 Sous Chef", "Mizuta Madaisuki", "Judy", "Vinsmoke Sora"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0402 }
            Reponses := array{"Newkama Force #3", "Vista", "Inukai", "Rotund Risky Brother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0403 }
            Reponses := array{"Mozu", "Vito", "Charlotte Monder", "Wakasa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0404 }
            Reponses := array{"Moocy", "Lip Doughty", "Who's Who", "Luigia"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0405 }
            Reponses := array{"Wire", "Chappe", "Haritsu Kendiyo", "Ango Jean"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0406 }
            Reponses := array{"Yama", "Chihaya", "Rokkaku", "Hangan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0407 }
            Reponses := array{"Kohza", "Ohana", "Ed", "Zambai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0408 }
            Reponses := array{"Zunesha", "Olive", "Carmel", "Charlotte Mash"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0409 }
            Reponses := array{"Antonio", "18th Fleet Gallery Head Chef", "Bobomba", "Ikkaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0410 }
            Reponses := array{"Acrobatic Fuwas #4", "Gorobe", "Abellon", "Basil"}
            BonneReponse := 2

MakeOnePieceQuestionsFR3() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0411 }
            Reponses := array{"Hyouzou", "Kiev", "Farafra", "Abi's Father"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0412 }
            Reponses := array{"Prince Grus", "Kamyu's Fellow Swordsman", "Abi's Mother", "Jack-in-the-Box"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0413 }
            Reponses := array{"Gyoru", "Francois", "Sapi", "Achino Don"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0414 }
            Reponses := array{"Agotogi", "Gal", "Hewitt", "Hyouzou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0415 }
            Reponses := array{"Aisa", "Potaufeu", "Inbi", "Kop"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0416 }
            Reponses := array{"Limejuice", "Musse", "Akibi", "Basil"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0417 }
            Reponses := array{"Bellett", "Aladdin", "Carne", "Jorge"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0418 }
            Reponses := array{"Jean Bart", "Chome", "Moodie", "Albion"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0419 }
            Reponses := array{"Alpha", "Road", "Doberman", "Charlotte Anana"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0420 }
            Reponses := array{"Trebol", "And", "Gatherine", "Kappa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0421 }
            Reponses := array{"Ivan X", "Jigra", "Footbianco", "Andre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0422 }
            Reponses := array{"Asahija", "Delacuaji", "Kotori", "Chocolat"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0423 }
            Reponses := array{"Yama", "Kunyun", "Attach", "Honner"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0424 }
            Reponses := array{"Ban Dedessinee", "Unit 55 Troop Leader", "Megalo", "Nashi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0425 }
            Reponses := array{"Banchina", "Eccoli", "Kairiken", "Samurai Batts"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0426 }
            Reponses := array{"Dogra", "Yuki", "Acrobatic Fuwas #2", "Barbarossa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0427 }
            Reponses := array{"Haredas", "Carmen", "Short Vassal (500 Hostages)", "Barto Club's Grandma"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0428 }
            Reponses := array{"Beer VI", "Charlotte Cornstarch", "Genbou", "Doma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0429 }
            Reponses := array{"Berry Good", "Jesus Burgess", "Achino Don", "Miss Monday"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0430 }
            Reponses := array{"Big Pan", "Mr. 9", "Whetton", "Tightrope Walking Funan Bros (Beanie Hat)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0431 }
            Reponses := array{"Rokuroshi", "Hihimaru", "Rabiyan", "Blamenco"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0432 }
            Reponses := array{"Chinode Iyan'eno", "Sancrin", "Bluegrass", "Blenheim"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0433 }
            Reponses := array{"Skull", "Shin Detamaruka", "Blue Gilly", "Jorul"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0434 }
            Reponses := array{"Fukaboshi", "Boa Marigold", "Riku Dold III", "Ibadonbo Dobby"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0435 }
            Reponses := array{"Mocha", "Acrobatic Fuwas #4", "Disco", "Boo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0436 }
            Reponses := array{"Gatherine", "Doc Q", "Kamakirigirl", "Braham"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0437 }
            Reponses := array{"Charlotte Dolce", "Achino Campacino", "Suleiman", "Brannew"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0438 }
            Reponses := array{"Namur", "Buchi", "Pluming", "Sanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0439 }
            Reponses := array{"Yamanba", "Attach", "Buhichuck", "Barto Club's Grandma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0440 }
            Reponses := array{"Kamijirou", "Minoruba", "Lacueva", "Cancer"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0441 }
            Reponses := array{"Bastar Gill", "Gyoru", "Terracotta", "Capote"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0442 }
            Reponses := array{"Carmen", "Ichika", "Ramen", "Bluejam"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0443 }
            Reponses := array{"Bellett", "Pomsky", "Carne", "Loan Shark of Water 7"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0444 }
            Reponses := array{"Judy", "Zenny", "Catacombo", "Shoujou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0445 }
            Reponses := array{"Oide", "Chabo", "Kyo", "Oiwa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0446 }
            Reponses := array{"Footbianco", "Chaka", "Mr. Shimizu", "Shutenmaru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0447 }
            Reponses := array{"Mao", "Goo", "Charlotte Anana", "Hera"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0448 }
            Reponses := array{"Charlotte Brownie", "Gismonda", "Nola", "Rice Rice"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0449 }
            Reponses := array{"Edward Weevil", "Charlotte Citron", "Bas", "Charlotte Dosmarche"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0450 }
            Reponses := array{"Ham Burger", "Inukai", "Jobo", "Charlotte Monder"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0451 }
            Reponses := array{"Koze", "Bunny Joe", "Charlotte Mont-d'Or", "Brocca"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0452 }
            Reponses := array{"Caribou", "Charlotte Newshi", "Cidre", "Charlotte Newichi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0453 }
            Reponses := array{"Lacueva", "Skull", "Charlotte Nougat", "Gimlet"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0454 }
            Reponses := array{"Kuromarimo", "Charlotte Oven", "Moda", "Gyro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0455 }
            Reponses := array{"Minatomo", "Charlotte Zuccotto", "Peppoko", "Jean Bart"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0456 }
            Reponses := array{"Magra", "Drake", "Kiba", "Chocolat"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0457 }
            Reponses := array{"Mummy Mee", "Charlotte Kanten", "Colon", "Sho"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0458 }
            Reponses := array{"Corgi", "Papaneel", "Tamachibi", "Saitank"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0459 }
            Reponses := array{"Cosmos", "Banbaji", "Terracotta", "Achino Don"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0460 }
            Reponses := array{"Dalmatian", "Yamanba", "Charlotte Montb", "Macro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0461 }
            Reponses := array{"Daruma", "Spartan", "Octopako", "Fukurokuju"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0462 }
            Reponses := array{"Ban Dedessinee", "Didit", "Charlotte Compo", "Babanuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0463 }
            Reponses := array{"Brocca", "Charlotte Lola", "Disco", "Gloriosa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0464 }
            Reponses := array{"Doma", "Vinsmoke Judge", "Shimotsuki Ushimaru", "Pickles"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0465 }
            Reponses := array{"Zadie", "Gyaro", "Donquixote Homing", "Shimotsuki Kouzaburou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0466 }
            Reponses := array{"Donquixote Mjosgard", "Charlotte Normande", "Kyo", "Jigoku Benten"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0467 }
            Reponses := array{"MocDonald", "Dr. Kobato", "Tritobu", "Taro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0468 }
            Reponses := array{"Drake", "Nin", "Gazelle-Man", "Chew"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0469 }
            Reponses := array{"18th Fleet Gallery Head Chef", "Edison", "Byron", "Pekoms' Mother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0470 }
            Reponses := array{"Yonka", "Sind", "Himuro", "Edward Weevil"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0471 }
            Reponses := array{"Cook Billy", "Hotori", "Harry", "Elizabello II"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0472 }
            Reponses := array{"Pellini", "Brannew", "Ultraking", "Enishida"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0473 }
            Reponses := array{"Tsunagorou", "Ethanbaron V. Nusjuro", "Harald", "Pansy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0474 }
            Reponses := array{"Sandayu", "Fry Panz", "Puzzle", "S-Bear"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0475 }
            Reponses := array{"Daigin", "Prodi", "Funk Bobby", "Tamanegi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0476 }
            Reponses := array{"Glove", "Kinderella", "G-8 Marine Officer (Blond)", "Gambia"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0477 }
            Reponses := array{"Gardoa", "Ipponume", "Kamaya Tsumonsieur", "Quincy"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0478 }
            Reponses := array{"Kurozumi Higurashi", "Ally", "Magra", "Gerd"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0479 }
            Reponses := array{"John Giant", "Barrel", "Gimlet", "McKinley"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0480 }
            Reponses := array{"Ginko", "Urashima", "Harisenbon", "Rokki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0481 }
            Reponses := array{"Lily", "Ginny", "Linlin's Father", "Charlotte Nougat"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0482 }
            Reponses := array{"Hotei", "Mohji", "Ginrummy", "Monjii"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0483 }
            Reponses := array{"Gladius", "Neptune", "Dip", "Aruyutayan V"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0484 }
            Reponses := array{"Gimlet", "Edward Weevil", "Glove", "Kebi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0485 }
            Reponses := array{"Gorilla", "Daisy", "Inbi", "Buggy Pirate (Victim)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0486 }
            Reponses := array{"Waruno Furishirou", "Ross", "Gu", "Kazekage"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0487 }
            Reponses := array{"Gyro", "Mishoin Cashible", "Carmen", "Lindbergh"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0488 }
            Reponses := array{"Sai", "Charlotte Broye", "Edward Weevil", "Gyukimaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0489 }
            Reponses := array{"Tea IV", "Hack", "Jigoku Benten", "Dive"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0490 }
            Reponses := array{"Concelot", "Hanger", "Mocha", "Henzo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0491 }
            Reponses := array{"Potato", "Dalton", "Harry", "Fukurokuju"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0492 }
            Reponses := array{"Mr. 5", "Bakezo", "Dachoman", "Henzo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0493 }
            Reponses := array{"Hildon", "Boogie", "Shimotsuki Kouzaburou", "Kuni"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0494 }
            Reponses := array{"Doma", "Hiramera", "Kasa", "Nigeratta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0495 }
            Reponses := array{"Tristan", "Charlotte Dolce", "Hitetsu Tenguyama", "Mayor of the Desert Village"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0496 }
            Reponses := array{"Shandorian Chief", "Zanki", "Hoichael", "Charlotte Myukuru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0497 }
            Reponses := array{"Finamore", "Newkama Force #6", "Kashii", "Hotori"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0498 }
            Reponses := array{"Hou", "Ubau", "Nodoi Wakan", "Ahho Desunen IX"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0499 }
            Reponses := array{"Ichika", "Charlotte Wafers", "Fillonce", "Tooyama Tsujigirou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0500 }
            Reponses := array{"Ikkaku", "Kerville", "Yosaku", "Gairu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0501 }
            Reponses := array{"Itomimizu", "Amazon", "Lily", "Achino Hockera"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0502 }
            Reponses := array{"Konbu", "Ivan X", "Holdem", "Kitton"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0503 }
            Reponses := array{"Sutton", "Jean Bart", "Gyogyo", "Take"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0504 }
            Reponses := array{"Tall Marley Brother", "Jeep", "Aisa", "Jose"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0505 }
            Reponses := array{"Mishoin Cashible", "Mr. 7", "Kappa", "Jeet"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0506 }
            Reponses := array{"Hamburg", "Achino Salcho", "Musse", "John Giant"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0507 }
            Reponses := array{"Kairen", "Banchina", "Masked Deuce", "Hamlet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0508 }
            Reponses := array{"Caimanlady", "Kamakiri", "Kamyu", "Uzu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0509 }
            Reponses := array{"Urashima", "Rampo", "King (500 Hostages)", "Kamazo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0510 }
            Reponses := array{"Kazekage", "Kuween", "Poppy", "Skull"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0511 }
            Reponses := array{"Kamaya Tsumonsieur", "Myure", "Kazeno Minoru", "Charlotte Newsan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0512 }
            Reponses := array{"Eccoli", "Dogra", "Scarlett", "Kiba"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0513 }
            Reponses := array{"Kamazo", "Chao", "Hildon", "Kiwi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0514 }
            Reponses := array{"T-Bone", "Kobe", "Brannew", "McKinley"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0515 }
            Reponses := array{"Charlotte Broye", "All-Hunt Grount", "Gangaru", "Kujaku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0516 }
            Reponses := array{"Oars", "Dream", "Pandawomanmi", "Kuroobi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0517 }
            Reponses := array{"Buena Festa", "Concelot", "Chuchun", "Laki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0518 }
            Reponses := array{"Peclo Drug", "Buggy Ball Attendant", "Largo", "Morley"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0519 }
            Reponses := array{"Dream", "Lemoncheese", "Jobo", "Azuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0520 }
            Reponses := array{"Lepanto Tank", "Mr. 5", "Esta", "Charlotte Brownie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0521 }
            Reponses := array{"Lindbergh", "Clione", "Mitsuboshi", "Gattenshochinosukeo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0522 }
            Reponses := array{"Lip Doughty", "Kerville", "Cocoa", "Ban Dedessinee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0523 }
            Reponses := array{"Orlumbus", "Lord of the Coast", "Coribou", "Nin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0524 }
            Reponses := array{"Shinobu", "Inukai", "de Bonham Ant", "Madillo-Man"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0525 }
            Reponses := array{"Koda", "Zepo", "Magra", "Umit"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0526 }
            Reponses := array{"Mao", "Saturn Jaygarcia", "Rosward Rosward", "Akibi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0527 }
            Reponses := array{"Fuza", "Corgi", "Warashi", "Masshikaku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0528 }
            Reponses := array{"Bushon", "Charlotte Compo", "McKinley", "Tonjit"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0529 }
            Reponses := array{"Faust", "Chome", "Rint", "Megalo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0530 }
            Reponses := array{"Kamyu's Fellow Boxer", "Michael", "Uzu's Mother", "Mr. Momora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0531 }
            Reponses := array{"Aremo Ganmi", "Ramen", "Milo", "Boodle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0532 }
            Reponses := array{"Minatomo", "Choco Police", "Charlotte Yuen", "Jeep"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0533 }
            Reponses := array{"Pudding Pudding", "Cowboy", "Minatomo (East Blue)", "Bastar Gill"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0534 }
            Reponses := array{"Gorilla", "Minister of the Left", "Shura", "Spoil"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0535 }
            Reponses := array{"Minister of the Right", "Vincent", "Comil", "Alvida Pirate (S Tattoo)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0536 }
            Reponses := array{"Minozebra", "UK", "Jack-in-the-Box", "Speed Jiru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0537 }
            Reponses := array{"Nika", "Shutenmaru", "Miss Catharine", "Juubei"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0538 }
            Reponses := array{"Miss Merry Christmas", "Linlin's Mother", "Goode", "Mochi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0539 }
            Reponses := array{"Poppoko", "Miss Monday", "Kebi", "Moqueca"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0540 }
            Reponses := array{"Scorpion", "Ossamondo", "Mocha's Mother", "Piiman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0541 }
            Reponses := array{"Funk Kelly", "Moda", "Orenami Fan (L)", "Gyoru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0542 }
            Reponses := array{"Morollon", "Emet", "Spiel", "Laskey"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0543 }
            Reponses := array{"Charlotte Joscarpone", "Riley Brother #1", "Mozambia", "Linaria"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0544 }
            Reponses := array{"Busshiri", "Alvida Pirate (Horned)", "Mr. Beans", "Inukai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0545 }
            Reponses := array{"Naguri", "Kojurou", "Sphinx", "Wakasa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0546 }
            Reponses := array{"Eddy", "Mr. 13", "Chaka", "Namur"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0547 }
            Reponses := array{"Zombie Lola", "Tabuhachirou", "Nerine", "Kashii"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0548 }
            Reponses := array{"Scotch", "Aunt", "Ninjin", "Musse"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0549 }
            Reponses := array{"Akudai Kanzaburou", "Seira", "Caramel", "Nitro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0550 }
            Reponses := array{"Nugire Yainu", "Strawberry", "Natto", "Pekkori"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0551 }
            Reponses := array{"Pasqua Rapanui", "Ohm", "Mitsuboshi", "Miss Merry Christmas"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0552 }
            Reponses := array{"Jibuemon", "Vinsmoke Judge", "Charlotte Normande", "Oide"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0553 }
            Reponses := array{"Onigumo", "Boodle", "Bian", "Hublot"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0554 }
            Reponses := array{"Blakey", "Outlook III", "Newkama Force #4", "Brahm"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0555 }
            Reponses := array{"Peterman", "Rakuda", "Ukkari", "Yui"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0556 }
            Reponses := array{"Nodoi Wakan", "Piiman", "Kairen", "Ideaman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0557 }
            Reponses := array{"Glove", "Charlotte Newshi", "Sayo", "Pike"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0558 }
            Reponses := array{"Potsun", "Grabar", "Buffalo", "Tooyama Tsujigirou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0559 }
            Reponses := array{"Daddy Dee", "Mr. 4", "Kappa", "Prometheus"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0560 }
            Reponses := array{"Pudding Pudding", "Asahija", "Zambai", "Pickles"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0561 }
            Reponses := array{"Sphinx", "Yamanba", "Cowboy", "Pukau"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0562 }
            Reponses := array{"Pandora", "Rabiyan", "Poro", "Charlotte Allmeg"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0563 }
            Reponses := array{"Hara", "Rakuyou", "Victoria Cindry", "Heppoko"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0564 }
            Reponses := array{"Dago", "Sanshita", "Raoul", "Matoryou Hime-tachi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0565 }
            Reponses := array{"Taroimo", "Reik", "Hongou", "Rindou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0566 }
            Reponses := array{"Riku Dold III", "Babanuki", "Pastor Zombie's Assistant", "Motzel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0567 }
            Reponses := array{"Rindou", "Rosward Shalria", "Minister of the Left", "Shinobu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0568 }
            Reponses := array{"Margarita", "Suke", "Ringana Tegata", "Ross"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0569 }
            Reponses := array{"Royal Nelson", "Clapp", "Yoshimoto", "Rosward Shalria"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0570 }
            Reponses := array{"S-Hawk", "Ultraking", "Ange", "Yuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0571 }
            Reponses := array{"Mero", "Kujaku", "Sancrin", "Tosa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0572 }
            Reponses := array{"Tsugaru Umi", "Achino Arbell", "Sanjuan Wolf", "Pellini"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0573 }
            Reponses := array{"Mero", "Isa", "Egana", "Sanka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0574 }
            Reponses := array{"MocDonald", "Shimotsuki Ushimaru", "Satori", "Tsunagorou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0575 }
            Reponses := array{"Scarlett", "Boa Marigold", "Haredas", "Islewan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0576 }
            Reponses := array{"Keith", "Buhichuck", "Gotty", "Scorpion"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0577 }
            Reponses := array{"Bushon", "Seira", "Seki", "Eccoli"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0578 }
            Reponses := array{"Trebol", "Hammond", "Sham", "Tea IV"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0579 }
            Reponses := array{"Shura", "Kong", "Mocha's Mother", "Yama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0580 }
            Reponses := array{"Nozdon Seagull Guns", "Prometheus", "Holy", "Shutenmaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0581 }
            Reponses := array{"Ginger", "Sicilian", "Shura", "Peseta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0582 }
            Reponses := array{"Sapi", "Jaki", "Solitaire", "Ossamondo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0583 }
            Reponses := array{"Wicca", "Spector", "Atmos", "Manboshi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0584 }
            Reponses := array{"Splash", "Amadob", "Pekkori", "Mohji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0585 }
            Reponses := array{"Squard", "Montblanc Cricket", "Dachoman", "Bluejam"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0586 }
            Reponses := array{"Stelly", "Charlotte Marnier", "Amadob", "Scotch"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0587 }
            Reponses := array{"Whitey Bay", "Muchana", "Stevie", "Peterman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0588 }
            Reponses := array{"Stool", "Napoleon", "Achino Arbell", "Sarkies"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0589 }
            Reponses := array{"McKinley", "Charlotte Montb", "Saitank", "Streusen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0590 }
            Reponses := array{"Sweet Pea", "Jack", "Red King", "Sind's Father"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0591 }
            Reponses := array{"Tanaka", "Minister of the Left", "Hotori", "Jorul"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0592 }
            Reponses := array{"Julius", "Kamazo", "Yonka", "Terry"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0593 }
            Reponses := array{"Race", "Tibany", "Hublot", "Ganryu (Spade Pirates)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0594 }
            Reponses := array{"Hewitt", "Bisley", "Tightrope Walking Funan Bros (Ginger)", "Biyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0595 }
            Reponses := array{"Toto", "Ed", "Rokuroshi", "Wicca"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0596 }
            Reponses := array{"Trafalgar Lami", "Charlotte Mash", "Goode", "Otaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0597 }
            Reponses := array{"Tsuru", "Bastille", "Hanzo", "Mr. Mellow"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0598 }
            Reponses := array{"Urban", "Buchi", "Kamijirou", "S-Bear"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0599 }
            Reponses := array{"Yarisugi", "Ally", "Tamanegi", "Sauce"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0600 }
            Reponses := array{"Wellington", "Judy", "Yoko", "Potaufeu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0601 }
            Reponses := array{"Yomo", "Rokuroshi", "Donannoyo", "Jones Hody"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0602 }
            Reponses := array{"Gedatsu", "Yarisugi", "Yonka", "Lord of the Coast"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0603 }
            Reponses := array{"Pansy", "Yukimura", "Kazekage", "Curiel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0604 }
            Reponses := array{"Otaka", "Kingdew", "Yuu", "Motzel"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0605 }
            Reponses := array{"Pagaya", "Zenny", "Cosette", "Azuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0606 }
            Reponses := array{"Otaka", "Mikazuki", "Charlotte Basans", "Zeo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0607 }
            Reponses := array{"Boogie", "Shepherd Sommers", "Zepo", "Giberson"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0608 }
            Reponses := array{"Zombie Lola", "Kodama", "Natto", "Himuro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0609 }
            Reponses := array{"Gu", "Abi's Father", "Achino Arbell", "York"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0610 }
            Reponses := array{"Uzu's Mother", "Achino Brindo", "Ayako", "Pirate Captain (500 Hostages)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0611 }
            Reponses := array{"Tansui", "Charlotte Galette", "Achino Campacino", "Sphinx"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0612 }
            Reponses := array{"Hocker", "Achino Hockera", "Tokikake", "Charlotte Compote"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0613 }
            Reponses := array{"Homing's Wife", "Achino Salcho", "Bon Chari Seller", "Shimotsuki Koushirou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0614 }
            Reponses := array{"Abi", "Acilia", "Charlotte Laurin", "Dr. Kobato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0615 }
            Reponses := array{"Schollzo", "Deigorou", "Acrobatic Fuwas #1", "Kamekichi"}
            BonneReponse := 2

MakeOnePieceQuestionsFR4() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0616 }
            Reponses := array{"Zotto", "Kingdew", "Acrobatic Fuwas #2", "Noble Croc"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0617 }
            Reponses := array{"Acrobatic Fuwas #3", "Fillonce", "Rint", "Pandora"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0618 }
            Reponses := array{"Chesskippa", "Inoichibannosuke", "Rosy Life Rider (Headband)", "Acrobatic Fuwas #4"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0619 }
            Reponses := array{"Pekoms", "Edward Weevil", "Yamakaji", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0620 }
            Reponses := array{"Linlin's Mother", "Ageha Woman", "Ronse", "Kadar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0621 }
            Reponses := array{"Lina", "Boo", "Aggie 68", "Kabu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0622 }
            Reponses := array{"Saldeath", "Footbianco", "Agsilly", "Blakey"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0623 }
            Reponses := array{"Nola", "Charlotte Newgo", "Chessmarimo", "Ahho Desunen IX"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0624 }
            Reponses := array{"Daikoku", "Carmel", "Raoul", "Ahho Zurako"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0625 }
            Reponses := array{"Pekkori", "Boodle", "Ahiru", "Nubon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0626 }
            Reponses := array{"Yosaku", "Osome", "Akehende", "Ganryu (Roger Pirates)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0627 }
            Reponses := array{"Juubei", "Dive", "Akihiro", "Shanba"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0628 }
            Reponses := array{"Holy", "Kazeno Minoru", "Akudai Kanzaburou", "Shot Vasco"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0629 }
            Reponses := array{"Doran", "Sarahebi", "Machvise", "Akumai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0630 }
            Reponses := array{"Alice", "Catacombo", "Bishamon", "Ginny"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0631 }
            Reponses := array{"Black Cat Pirate (Hammer)", "Boss", "Ally", "Okame"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0632 }
            Reponses := array{"Skull", "Papaneel", "Alvida Pirate (Horned)", "Nozdon Seagull Guns"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0633 }
            Reponses := array{"Ginrummy", "Gyro", "Alvida Pirate (S Tattoo)", "Hotori"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0634 }
            Reponses := array{"Amadob", "Juujirou", "Shepherd Ju Peter", "Fujin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0635 }
            Reponses := array{"An Zengaiina", "Moore", "Noko", "Tritobu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0636 }
            Reponses := array{"Neggy", "Anba", "Mao", "Charlotte Nusstorte"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0637 }
            Reponses := array{"Charlotte Monder", "Ban Dedessinee", "Ange", "Peclo Drug"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0638 }
            Reponses := array{"Namur", "Ango Jean", "Misery", "Coribou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0639 }
            Reponses := array{"Largo", "Anjo", "Newkama Force #3", "Furrari"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0640 }
            Reponses := array{"Announcer Ikkaku", "Charlotte Normande", "Mocha's Mother", "Rakuyou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0641 }
            Reponses := array{"Stomp", "Fen Bock", "Antonio", "Kuromarimo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0642 }
            Reponses := array{"Aremo Ganmi", "Hara", "Fuga", "Togare"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0643 }
            Reponses := array{"Samosa", "Okome", "Shandorian Chief", "Arlong Pirate (Monkfish)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0644 }
            Reponses := array{"Scorpionlady", "Arrow", "Manboshi", "Nefertari D. Lili"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0645 }
            Reponses := array{"Porchemy", "Aruyutayan V", "Largo", "Decalvan Brother (A)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0646 }
            Reponses := array{"Kairo Kureyo", "Asashichi", "Abi's Father", "Russian"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0647 }
            Reponses := array{"Okame", "Decalvan Brother (A)", "Aswa", "Hara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0648 }
            Reponses := array{"Minatomo (East Blue)", "Moqueca", "Atmos", "Cook Billy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0649 }
            Reponses := array{"Aunt", "Minchey", "Solitaire", "Russian"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0650 }
            Reponses := array{"Ayako", "Charlotte Newichi", "Sphinx", "Lina"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0651 }
            Reponses := array{"Azuki", "Roshio", "Stevie", "Kamyu's Fellow Swordsman"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0652 }
            Reponses := array{"Boa Marigold", "Baburu", "Sarahebi", "Tall Marley Brother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0653 }
            Reponses := array{"Bakezo", "Omasa", "Suleiman", "Mozambia"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0654 }
            Reponses := array{"Myure", "Pluming", "Mr. 7", "Banbaji"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0655 }
            Reponses := array{"Kadar", "Rice Rice", "Banchi", "Bubblegum"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0656 }
            Reponses := array{"An Zengaiina", "Splatter", "Banshee", "Ririka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0657 }
            Reponses := array{"Sphinx", "Sancrin", "Gloriosa", "Banzaburou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0658 }
            Reponses := array{"Bao", "Mari", "Bacura", "Enishida"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0659 }
            Reponses := array{"Barbel", "Diez Barrels", "Megalo", "Charlotte Snack"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0660 }
            Reponses := array{"Donquixote Shivercalero", "Taro", "Barrel", "Heat"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0661 }
            Reponses := array{"Barry", "Yonka Two", "Terracotta", "Topman Warcury"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0662 }
            Reponses := array{"Bas", "Mashikaku", "Herb", "Chou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0663 }
            Reponses := array{"Charlotte Normande", "Basil", "Charlotte Opera", "Tensei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0664 }
            Reponses := array{"Karma", "Howling Gab", "Race", "Basilisk"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0665 }
            Reponses := array{"Disco", "Bastille", "Achino Brindo", "Papas"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0666 }
            Reponses := array{"Nitro", "Noko", "Daikon", "Baxcon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0667 }
            Reponses := array{"Beak Remark", "Gyaro", "Boodle", "Royal Nelson"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0668 }
            Reponses := array{"Mashikaku", "Bearman", "Foxy Pirates' Referee", "Captain John"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0669 }
            Reponses := array{"Linaria", "Beegirl", "Shura", "Kurozumi Orochi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0670 }
            Reponses := array{"Sheepshead", "Beetleman", "Bao", "Den"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0671 }
            Reponses := array{"Blue Gilly", "Roshio", "Pluming", "Bekori"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0672 }
            Reponses := array{"Barbarossa", "Tightrope Walking Funan Bros (Beanie Hat)", "Belladonna", "Loan Shark of Water 7"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0673 }
            Reponses := array{"Bellett", "Pickles", "Ripper", "Chao"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0674 }
            Reponses := array{"Fuza", "Koito", "Bian", "Usakkov"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0675 }
            Reponses := array{"Bill", "Gyoro", "Goki", "Superhuman Domingos #3"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0676 }
            Reponses := array{"Sutton", "Stomp", "Billy", "Nuru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0677 }
            Reponses := array{"Kibin", "Kamekichi", "Bingo", "Togare"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0678 }
            Reponses := array{"Bins", "Solitaire", "Gancho", "Charlotte Daifuku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0679 }
            Reponses := array{"Machvise", "Foxy Pirates' Referee", "Kazekage", "Birdy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0680 }
            Reponses := array{"Bishamon", "Concelot", "Rika", "Ideo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0681 }
            Reponses := array{"Bakezo", "Bishonure-onna", "Bon Chari Seller", "Kamaya Tsumonsieur"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0682 }
            Reponses := array{"Bisley", "Hihimaru", "Ottoland", "Mendou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0683 }
            Reponses := array{"Harry", "Kamekichi", "Biyo", "Poro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0684 }
            Reponses := array{"Linlin's Father", "Biyo's Father", "Farafra", "Brannew"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0685 }
            Reponses := array{"Charlotte Nougat", "Buffalo", "Napole Maria", "Bizarre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0686 }
            Reponses := array{"Minotaurus", "Black Cat Pirate (Hammer)", "Byron", "Kairo Kureyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0687 }
            Reponses := array{"Dancer on the Lady Mary", "Blackback", "Jabari", "Cancer"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0688 }
            Reponses := array{"Blakey", "Mekao", "George Mach", "Gladiator Hera"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0689 }
            Reponses := array{"Junan", "Cowboy", "Shuutai", "Blondie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0690 }
            Reponses := array{"Gairu", "Alvida Pirate (S Tattoo)", "Blue Fan", "Umit"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0691 }
            Reponses := array{"Goldberg", "Bluegrass", "Shimotsuki Koushirou", "Agotogi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0692 }
            Reponses := array{"Sind", "McKinley", "Bluejam", "Megalo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0693 }
            Reponses := array{"Uzu", "Ibadonbo Dobby", "Corto", "Bokuden"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0694 }
            Reponses := array{"Bokuden", "Caroline", "Bon Chari Seller", "Kiev"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0695 }
            Reponses := array{"Rokuroshi's' Assistant", "Bongou", "Samosa", "Kujaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0696 }
            Reponses := array{"Yuu's Father", "Boogie", "Hamlet", "Nezumi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0697 }
            Reponses := array{"Bon Chari Seller", "Charlotte Joscarpone", "Boss", "Hocha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0698 }
            Reponses := array{"Okome", "Bouche", "Achino Lil", "Caribou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0699 }
            Reponses := array{"Tightrope Walking Funan Bros (Beanie Hat)", "Bourbon Jr.", "Charlotte Mash", "Superhuman Domingos #3"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0700 }
            Reponses := array{"Kobe", "Goki", "Brahm", "Prince Grus"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0701 }
            Reponses := array{"Noble Croc", "Madillo-Man", "Charlotte Marble", "Breed"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0702 }
            Reponses := array{"Adele", "Isshi 1", "Yonka Two", "Brew"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0703 }
            Reponses := array{"Newkama Force #4", "Urashima", "Briscola", "Jabra"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0704 }
            Reponses := array{"Fuza", "Brocca", "Blackback", "Aswa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0705 }
            Reponses := array{"Inbi", "Gatz", "Bubblegum", "Dr. Kobato"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0706 }
            Reponses := array{"Kukai", "Humphrey", "Jorul", "Buckingham Stussy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0707 }
            Reponses := array{"Togare", "Pirate Captain (500 Hostages)", "Buena Festa", "Masked Deuce"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0708 }
            Reponses := array{"Toko", "Nero", "Kamaya Tsumonsieur", "Buffalo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0709 }
            Reponses := array{"Hocha", "Buggy Ball Attendant", "Kotori", "Shinobu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0710 }
            Reponses := array{"Muti", "Aunt", "Buggy Pirate (Victim)", "Mendou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0711 }
            Reponses := array{"Dream's Mother", "Haredas", "Geronimo", "Bulldog"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0712 }
            Reponses := array{"Soran", "Bungou", "Urban", "Antonio"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0713 }
            Reponses := array{"Adele", "Pandora", "Oli", "Bunny Joe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0714 }
            Reponses := array{"Peeply Lulu", "Maidy", "Cornelia", "Bushon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0715 }
            Reponses := array{"Hera", "Busshiri", "Blackback", "Charlotte Nusstorte"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0716 }
            Reponses := array{"Bobbin", "Roji", "Byron", "Kohza"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0717 }
            Reponses := array{"Yarisugi", "Charlotte Brownie", "Nako", "Caimanlady"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0718 }
            Reponses := array{"Captain of the Lady Mary", "Charlotte Marble", "Suke", "Jibuemon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0719 }
            Reponses := array{"Caramel", "Banchina", "Delacuaji", "Rindou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0720 }
            Reponses := array{"Kukai", "Gattenshochinosukeo", "Kamaya Tsumonsieur", "Carmel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0721 }
            Reponses := array{"Charlotte Myukuru", "Toko", "Caroline", "Giolla"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0722 }
            Reponses := array{"Sanka", "Bishamon", "Cezar", "Cook Billy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0723 }
            Reponses := array{"Charlotte Basskarte", "Chao", "York", "Hanger"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0724 }
            Reponses := array{"Gladiator Hera", "Chap", "Flapper", "Much Ikaros"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0725 }
            Reponses := array{"Outlook III", "Chappe", "Juki", "Meadows"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0726 }
            Reponses := array{"Garudan", "Charlotte Akimeg", "Mr. 13", "Mr. Momora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0727 }
            Reponses := array{"Mero", "Charlotte Allmeg", "Babanuki", "Buhichuck"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0728 }
            Reponses := array{"Kirintauros", "Daigin", "Brocca", "Charlotte Anglais"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0729 }
            Reponses := array{"Chicory", "Charlotte Counter", "Ango Jean", "Charlotte Basans"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0730 }
            Reponses := array{"Pastor Zombie", "Charlotte Basskarte", "Bluegrass", "Kinbo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0731 }
            Reponses := array{"Carmel", "Rindou", "Capote", "Charlotte Bavarois"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0732 }
            Reponses := array{"Pisaro", "Charlotte Broye", "Charlotte Wiro", "Sarutobi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0733 }
            Reponses := array{"Konbu", "Charlotte Kato", "Sam", "Charlotte Cabaletta"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0734 }
            Reponses := array{"Shuutai", "Pastor Zombie", "Roche", "Charlotte Cadenza"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0735 }
            Reponses := array{"Ushiano", "Charlotte Chiboust", "Rimoshifu Killingham", "Pearl"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0736 }
            Reponses := array{"Blenheim", "Shepherd Ju Peter", "Charlotte Cinnamon", "Mouse-Man"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0737 }
            Reponses := array{"Kamekichi", "Oran", "Charlotte Citron", "Jesus Burgess"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0738 }
            Reponses := array{"Sarahebi", "Sanjuan Wolf", "Charlotte Compo", "Streusen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0739 }
            Reponses := array{"Barbarossa", "Banshee", "Charlotte Kanten", "Charlotte Compote"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0740 }
            Reponses := array{"Loan Shark of Water 7", "Absalom", "Ratel", "Charlotte Cornstarch"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0741 }
            Reponses := array{"Diez Barrels", "Charlotte Poire", "Charlotte Counter", "Neoki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0742 }
            Reponses := array{"Braham", "Lago", "Isoka", "Charlotte Custard"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0743 }
            Reponses := array{"Chihaya", "Charlotte Dacquoise", "Redwolf", "Bishamon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0744 }
            Reponses := array{"Joseph", "Bushon", "Togare", "Charlotte De-Chat"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0745 }
            Reponses := array{"Haruta", "Gerd", "Charlotte Dolce", "Billy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0746 }
            Reponses := array{"Lines", "Charlotte Dragee", "Shepherd Sommers", "Antonio"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0747 }
            Reponses := array{"Ripper", "Part", "Charlotte Effiler", "Biyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0748 }
            Reponses := array{"Daddy Dee", "Charlotte Fuyumeg", "Gyukimaru", "Ukkari"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0749 }
            Reponses := array{"Minokoala", "Doringo", "Charlotte Harumeg", "Mr. Beans"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0750 }
            Reponses := array{"Charlotte Joconde", "Charlotte High-Fat", "Toko", "Mouse-Man"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0751 }
            Reponses := array{"Chou", "Stansen", "Oyame", "Charlotte Joconde"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0752 }
            Reponses := array{"Charlotte Joscarpone", "Moodie", "Togare", "Ahho Desunen IX"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0753 }
            Reponses := array{"Jerry", "Charlotte Kanten", "Fukurokuju", "Harald"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0754 }
            Reponses := array{"Charlotte Kato", "Kamyu's Fellow Boxer", "Ginko", "Charlotte Cabaletta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0755 }
            Reponses := array{"Charlotte Laurin", "Gyukimaru", "Pekoms' Father", "Tamago"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0756 }
            Reponses := array{"Shoujou", "Charlotte Marble", "Zaba", "Kappa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0757 }
            Reponses := array{"Kibin", "Charlotte Marnier", "Gladius", "Charlotte Opera"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0758 }
            Reponses := array{"Kinoko", "Charlotte Mascarpone", "Seto", "Gladius"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0759 }
            Reponses := array{"Charlotte Mash", "Corto", "Daikoku", "Desire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0760 }
            Reponses := array{"G-8 Head Custodian", "Charlotte Mobile", "Bubblegum", "Hamburg"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0761 }
            Reponses := array{"Charlotte Montb", "Uzuki Tempura", "Charlotte Newshi", "Ideo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0762 }
            Reponses := array{"Epony", "Ririka", "Charlotte Moscato", "Rabbitman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0763 }
            Reponses := array{"Charlotte Effiler", "Ushiano", "Islewan", "Charlotte Mozart"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0764 }
            Reponses := array{"Megalo", "Charlotte Newgo", "Riley Brother #2", "Miss Merry Christmas"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0765 }
            Reponses := array{"Mr. Shimizu", "Rolling Logan", "Charlotte Newji", "Short Marley Brother"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0766 }
            Reponses := array{"Charlotte Newsan", "Vinsmoke Judge", "Tamanegi", "Mizuta Madaisuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0767 }
            Reponses := array{"Charlotte Newshi", "Gaban Scopper", "Much Ikaros", "Kazeno Minoru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0768 }
            Reponses := array{"Bao", "Yoshimoto", "Tansui", "Charlotte Noisette"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0769 }
            Reponses := array{"Charlotte Normande", "Daisy", "Chiya", "Superhuman Domingos #1"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0770 }
            Reponses := array{"Charlotte Nutmeg", "Masked Deuce", "And", "Koshi Falcon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0771 }
            Reponses := array{"Charlotte Opera", "Charlotte Yuen", "Blue Fan", "Gorilla"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0772 }
            Reponses := array{"Charlotte Prim", "Achino Don", "Hajrudin", "Hikoichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0773 }
            Reponses := array{"Charlotte Raisin", "Kingdew", "Heppoko", "Bokuden"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0774 }
            Reponses := array{"Mizuta Mawaritosuki", "Oars", "Charlotte Wiro", "Charlotte Saint-Marc"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0775 }
            Reponses := array{"Hangan", "Victoria Cindry", "Charlotte Snack", "Gangaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0776 }
            Reponses := array{"Cosmos", "Charlotte Tablet", "Kong", "Hyogoro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0777 }
            Reponses := array{"Funk Bobby", "Charlotte Wafers", "Tokijiro", "Diesel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0778 }
            Reponses := array{"Tower Mukkashimi", "Charlotte Wiro", "Manboshi", "Megalo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0779 }
            Reponses := array{"Hareji", "Kairiken", "Charlotte Yuen", "Tritobu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0780 }
            Reponses := array{"Chesskippa", "Scotch", "Koda", "Schollzo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0781 }
            Reponses := array{"Heat", "Clou D Clover", "Chessmarimo", "Cotton"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0782 }
            Reponses := array{"Beetleman", "Chichilisia", "Buggy Ball Attendant", "Punch Bonk"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0783 }
            Reponses := array{"Isoka", "Ippon-Matsu", "Chicory", "Ronse"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0784 }
            Reponses := array{"Rint", "Chihaya", "Pythagoras", "Koala Zombie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0785 }
            Reponses := array{"Zabo", "Charlotte Oven", "S-Bear", "Chiken"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0786 }
            Reponses := array{"Trafalgar Lami", "Andre", "Chinode Iyan'eno", "Cosmos"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0787 }
            Reponses := array{"Carmel", "Bluegrass", "Race", "Chip"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0788 }
            Reponses := array{"Chiqicheetah", "Oimo", "Sapi", "Keith"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0789 }
            Reponses := array{"Higuma", "Fourtricks", "Zepo", "Chiya"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0790 }
            Reponses := array{"Choco Police", "Olive", "Tsunagorou", "Chabo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0791 }
            Reponses := array{"Corgi", "Chokyumei-no Chosuke", "Puzzle", "Isa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0792 }
            Reponses := array{"Tsuru", "Yamanba", "Mizuira", "Chome"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0793 }
            Reponses := array{"Charlotte Monder", "Chou", "Sayo", "Tower Mukkashimi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0794 }
            Reponses := array{"Chuchun", "Judy", "Decalvan Brother (B)", "Chappe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0795 }
            Reponses := array{"Cidre", "Peclo Drug", "Palms", "Grabar"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0796 }
            Reponses := array{"Mohji", "Zambai", "Scorpionlady", "Clione"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0797 }
            Reponses := array{"Coburn", "Tosa", "Fukaboshi", "Chichilisia"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0798 }
            Reponses := array{"Cocoa", "Boss", "Lina", "Minokoala"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0799 }
            Reponses := array{"Comil", "Caroline", "S-Shark", "Gaban Scopper"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0800 }
            Reponses := array{"Totts", "Atlas", "Compo", "Rabiyan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0801 }
            Reponses := array{"Concelot", "Peeply Lulu", "Charlotte Galette", "Uzu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0802 }
            Reponses := array{"Conney", "Haruta", "Hatcha", "Mountain Ricky"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0803 }
            Reponses := array{"Goode", "Cook Billy", "Nerine", "Tansui"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0804 }
            Reponses := array{"Newkama Force #1", "Cook Shinpachi", "Nefertari Titi", "Tall Vassal (500 Hostages)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0805 }
            Reponses := array{"Blackback", "Magra", "Cook Tom", "Kazeno Minoru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0806 }
            Reponses := array{"Coribou", "Ross", "Cornelia", "Kashii"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0807 }
            Reponses := array{"Charlotte Chiffon", "Napoleon", "Newkama Force #3", "Cornelia"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0808 }
            Reponses := array{"Potato", "Bao", "Cancer", "Corto"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0809 }
            Reponses := array{"Gairu", "Edison", "Cosette", "Morgan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0810 }
            Reponses := array{"Hareji", "Macro", "Baxcon", "Couran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0811 }
            Reponses := array{"Charlotte Yuen", "Shinosuke", "Cowboy", "Itomimizu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0812 }
            Reponses := array{"Mishoin Cashible", "Curiel", "Spartan", "Gambo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0813 }
            Reponses := array{"Hyota", "Baxcon", "Dachoman", "Misery"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0814 }
            Reponses := array{"Tristan", "Daddy Dee", "Fukurokuju", "Cosmos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0815 }
            Reponses := array{"Sutton", "Mr. Beans", "Uzuki Namida", "Dagama"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0816 }
            Reponses := array{"Pisaro", "Newkama Force #3", "Hyota", "Dago"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0817 }
            Reponses := array{"Chesskippa", "Daifugo", "Sentoumaru", "Juki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0818 }
            Reponses := array{"Scimitarta", "Daigin", "Mr. 5", "Charlotte Broye"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0819 }
            Reponses := array{"UK", "Charlotte Nougat", "Nefertari Cobra", "Daikoku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0820 }
            Reponses := array{"Mohji", "Muti", "Kodama", "Daikon"}
            BonneReponse := 3

MakeOnePieceQuestionsFR5() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0821 }
            Reponses := array{"Randolph", "Shepherd Sommers", "Kimel", "Daisy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0822 }
            Reponses := array{"Charlotte Newichi", "Damask", "Akudai Kanzaburou", "King (500 Hostages)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0823 }
            Reponses := array{"Peeply Lulu", "Dancer on the Lady Mary", "S-Hawk", "Bones Daz"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0824 }
            Reponses := array{"Rotund Risky Brother", "Decalvan Brother (A)", "Dorry", "Short Vassal (500 Hostages)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0825 }
            Reponses := array{"Tightrope Walking Funan Bros (Chubby)", "Charlotte Nutmeg", "Ishigo Shitemanna", "Decalvan Brother (B)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0826 }
            Reponses := array{"Renona Topakka", "Deigorou", "Achino Salcho", "Porchemy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0827 }
            Reponses := array{"Arlong Pirate (Monkfish)", "Delacuaji", "Schollzo", "Takao"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0828 }
            Reponses := array{"Gatz", "Den", "Fillonce", "Gladiator Hera"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0829 }
            Reponses := array{"Daigin", "Lindbergh", "Devil Dias", "Kyukyu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0830 }
            Reponses := array{"Abi's Mother", "Largo", "Diesel", "Agsilly"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0831 }
            Reponses := array{"Tibany", "Diez Barrels", "Hyouzou", "Buchi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0832 }
            Reponses := array{"Ripper", "Koda", "Koshi Falcon", "Dip"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0833 }
            Reponses := array{"Nika", "Randolph", "Vigaro", "Dive"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0834 }
            Reponses := array{"Byron", "Juujirou", "Grabar", "Doberman"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0835 }
            Reponses := array{"Dobon", "Barry", "Stomp", "Toko"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0836 }
            Reponses := array{"Kaba Shinshi", "Fukaboshi", "Dogya", "Kiwi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0837 }
            Reponses := array{"Poppy", "Pomp", "Rittonto", "Doha Ittanka II"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0838 }
            Reponses := array{"Raijin", "Atmos", "Charlotte Harumeg", "Donannoyo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0839 }
            Reponses := array{"Jiro", "Donquixote Shivercalero", "Moda", "Roche"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0840 }
            Reponses := array{"Ibusu", "Spandine", "Cidre", "Doran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0841 }
            Reponses := array{"Bokuden", "Rimoshifu Killingham", "Doran's Father", "Topman Warcury"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0842 }
            Reponses := array{"Kurozumi Orochi", "Ducky Bree", "Pisaro", "Doringo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0843 }
            Reponses := array{"Jabari", "Charlotte Citron", "MocDonald", "Dosun"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0844 }
            Reponses := array{"Charlotte Saint-Marc", "Faust", "Dotaku", "Shanba"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0845 }
            Reponses := array{"Whitey Bay", "Caroline", "Fukaboshi", "Dr. Fishbonen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0846 }
            Reponses := array{"Dream", "Uzu", "Cornelia", "Rakuda"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0847 }
            Reponses := array{"Dream's Mother", "Lord of the Coast", "Chew", "Ivan X"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0848 }
            Reponses := array{"Stansen", "Tightrope Walking Funan Bros (Beanie Hat)", "Spector", "Ducky Bree"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0849 }
            Reponses := array{"Jigoku Benten", "Charlotte Basans", "Eccoli", "Sentoumaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0850 }
            Reponses := array{"Inbi", "Ed", "Inhel", "Gu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0851 }
            Reponses := array{"Haruta", "Tomozo", "Egana", "Sarutobi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0852 }
            Reponses := array{"Zadie", "Ushiano", "Elmy", "Charlotte Newshi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0853 }
            Reponses := array{"Hyouzou", "Epoida", "Charlotte Galette", "Tall Marley Brother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0854 }
            Reponses := array{"Epony", "Comil", "Chuchun", "Blamenco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0855 }
            Reponses := array{"Esta", "Ottoland", "Charlotte Monder", "Hyota"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0856 }
            Reponses := array{"Gaban Scopper", "Esta's Boyfriend", "Ginny", "Dotaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0857 }
            Reponses := array{"Fabre", "Sphinx", "Sancrin", "Vito"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0858 }
            Reponses := array{"Charlotte Nougat", "Faust", "Chinode Iyan'eno", "Ukkari"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0859 }
            Reponses := array{"McGuy", "Lina and Sayo's Father", "Feld Du", "Papaneel"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0860 }
            Reponses := array{"Fillonce", "Chessmarimo", "Peterman", "Enishida"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0861 }
            Reponses := array{"Finamore", "Hera", "Charlotte Snack", "Rokuroshi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0862 }
            Reponses := array{"Shimotsuki Ushimaru", "Rockstar", "Ivan X", "Flapper"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0863 }
            Reponses := array{"Sanjuan Wolf", "Footbianco", "Gorobe", "Byron"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0864 }
            Reponses := array{"Pekkori", "Charlotte Mont-d'Or", "Fossa", "Tightrope Walking Funan Bros (Ginger)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0865 }
            Reponses := array{"Fourtricks", "Tooyama Tsujigirou", "Octopako", "Tristan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0866 }
            Reponses := array{"Foxy Pirates' Referee", "Banshee", "Masked Deuce", "Blamenco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0867 }
            Reponses := array{"Urashima", "Pellini", "Tonjit", "Francois"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0868 }
            Reponses := array{"Tosa", "Randolph", "Fuga", "Buhichuck"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0869 }
            Reponses := array{"Ahiru", "Fugar", "Epoida", "Miss Catharine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0870 }
            Reponses := array{"Fugetsu Omusubi", "Ossamondo", "Moqueca", "Karasu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0871 }
            Reponses := array{"Uzuki Namida", "Toko", "Beak Remark", "Fujin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0872 }
            Reponses := array{"Funk Kelly", "Birdy", "Charlotte Anana", "Suke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0873 }
            Reponses := array{"Mr. Mellow", "Doberman", "Furrari", "Blackback"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0874 }
            Reponses := array{"Gatz", "Fuza", "Roche", "Newkama Force #3"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0875 }
            Reponses := array{"Clione", "Charlotte Fuyumeg", "Sweet Pea", "G-8 Head Custodian"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0876 }
            Reponses := array{"Babanuki", "Chicory", "G-8 Marine Officer (Blond)", "Pansy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0877 }
            Reponses := array{"Ahho Zurako", "Kinderella", "Announcer Ikkaku", "G-8 Marine Officer (Gray)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0878 }
            Reponses := array{"Zabo", "Ichika", "McKinley", "G-8 Sous Chef"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0879 }
            Reponses := array{"Gairu", "Law & Lami's Father", "Bas", "Odama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0880 }
            Reponses := array{"Negikuma Maria", "Gal", "Gambo", "Boss"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0881 }
            Reponses := array{"Gambo", "Conney", "Ganryu (Spade Pirates)", "Pellini"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0882 }
            Reponses := array{"Achino Arbell", "Negikuma Maria", "Gancho", "Tooyama Tsujigirou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0883 }
            Reponses := array{"Deigorou", "Gangaru", "Porchemy", "Elizabello II"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0884 }
            Reponses := array{"Schollzo", "Ganryu (Roger Pirates)", "Chinjao", "Zambai"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0885 }
            Reponses := array{"Moodie", "Rice Rice", "Ganryu (Spade Pirates)", "Chihaya"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0886 }
            Reponses := array{"Garudan", "Chiqicheetah", "Machvise", "Ideaman"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0887 }
            Reponses := array{"Gatherine", "Pekoms' Mother", "King (500 Hostages)", "Brocca"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0888 }
            Reponses := array{"Gattenshochinosukeo", "Choco Police", "Chiya", "Negikuma Maria"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0889 }
            Reponses := array{"Brocca", "Ivan X", "Juujirou", "Gatz"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0890 }
            Reponses := array{"Gazelle-Man", "Minokoala", "Ossamondo", "Stalker"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0891 }
            Reponses := array{"Ultraking", "Kirintauros", "Genbou", "Beetleman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0892 }
            Reponses := array{"Genrin", "Attach", "Tomeo", "Ban Dedessinee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0893 }
            Reponses := array{"George Mach", "Isoka", "Banbaji", "Bulldog"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0894 }
            Reponses := array{"Ichika", "Geronimo", "Nitro", "Tightrope Walking Funan Bros (Ginger)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0895 }
            Reponses := array{"Giberson", "Charlotte Compo", "Charlotte Oven", "Ginrummy"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0896 }
            Reponses := array{"Muti", "Gina", "Judy", "Mizuta Mawaritosuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0897 }
            Reponses := array{"Mizerka", "Sicilian", "Ginger", "Albion"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0898 }
            Reponses := array{"Shimotsuki Koushirou", "Saber", "Dream", "Ginnosuke"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0899 }
            Reponses := array{"Tamachibi", "Ann", "Okame", "Giolla"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0900 }
            Reponses := array{"Giovanni", "Gairu", "Kinderella", "Nugire Yainu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0901 }
            Reponses := array{"Charlotte Snack", "Bins", "Kyuji", "Girarin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0902 }
            Reponses := array{"Ottoland", "Giro Chintarou", "Shioyaki", "Kazeno Minoru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0903 }
            Reponses := array{"Pirate Captain (500 Hostages)", "Gismonda", "Sapi", "Solitaire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0904 }
            Reponses := array{"Take", "Gladiator Hera", "Pomsky", "Pekoms' Mother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0905 }
            Reponses := array{"Gloriosa", "Bastar Gill", "Dachoman", "Naguri"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0906 }
            Reponses := array{"Gotty", "Kuween", "Superhuman Domingos #1", "Goki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0907 }
            Reponses := array{"Thalassa Lucas", "Jorul", "Yuu", "Goldberg"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0908 }
            Reponses := array{"Riley Brother #1", "Gomon Hiro", "Bourbon Jr.", "Kabu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0909 }
            Reponses := array{"Goo", "Rabiyan", "Diesel", "Who's Who"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0910 }
            Reponses := array{"Goode", "Esta", "Chou", "Caimanlady"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0911 }
            Reponses := array{"Tomozo", "Googly-Eyed", "Doberman", "Acrobatic Fuwas #4"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0912 }
            Reponses := array{"Minatomo (East Blue)", "Konbu", "Lulis", "Gorobe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0913 }
            Reponses := array{"Noko", "Gotty", "UK", "Jalmack"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0914 }
            Reponses := array{"Grabar", "Inhel", "Bastille", "Boss"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0915 }
            Reponses := array{"Gram", "Inoichibannosuke", "Sukoshiba Kanishitoru", "Jeet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0916 }
            Reponses := array{"Guarana", "Fugar", "Saitank", "Mizerka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0917 }
            Reponses := array{"Masshikaku", "Guillotine", "Sphinx", "Sind"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0918 }
            Reponses := array{"Figarland Garling", "Gyogyo", "G-8 Marine Officer (Gray)", "Bones Daz"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0919 }
            Reponses := array{"Ushiano", "Inhel", "Gyoro", "Short Marley Brother"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0920 }
            Reponses := array{"Gyoru", "Akumai", "Hamburg", "Desire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0921 }
            Reponses := array{"Kasagoba", "Hakugan", "Gyoro", "Musse"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0922 }
            Reponses := array{"Dr. Fishbonen", "Hamlet", "Orenami Fan (O)", "Kamyu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0923 }
            Reponses := array{"Saldeath", "Minister of the Left", "Hammond", "Mochi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0924 }
            Reponses := array{"Barbel", "Hangan", "Kaba Shinshi", "Kairen"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0925 }
            Reponses := array{"Cook Billy", "Hanko", "Troff", "Vista"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0926 }
            Reponses := array{"Seto", "Pastor Zombie", "Hanzo", "Black Cat Pirate (Hammer)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0927 }
            Reponses := array{"Lina and Sayo's Father", "Sennorikyuru", "Happygun", "Tomozo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0928 }
            Reponses := array{"Aremo Ganmi", "Hara", "Waruno Furishirou", "Reuder"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0929 }
            Reponses := array{"Pavlik", "Nerine", "Chiya", "Hardy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0930 }
            Reponses := array{"Hareji", "Samurai Batts", "Russian", "Buckingham Stussy"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0931 }
            Reponses := array{"S-Shark", "Esta's Boyfriend", "Trafalgar Lami", "Harisenbon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0932 }
            Reponses := array{"Miss Father's Day", "Haritsu Kendiyo", "Jorge", "Short Marley Brother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0933 }
            Reponses := array{"Sheepshead", "Haruta", "Saturn Jaygarcia", "Rosy Life Rider (Blond)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0934 }
            Reponses := array{"Blakey", "Asahija", "Moon Isaac Jr.", "Hatcha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0935 }
            Reponses := array{"Hawkman", "Tori", "Curiel", "Chinode Iyan'eno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0936 }
            Reponses := array{"Akibi", "Hera", "Nigeratta", "Nika"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0937 }
            Reponses := array{"Gal", "Herb", "Jean Goen", "Charlotte Moscato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0938 }
            Reponses := array{"Kairo Kureyo", "Hewitt", "Meadows", "Bubblegum"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0939 }
            Reponses := array{"Hidayu", "Sutton", "Elizabello II", "Chiken"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0940 }
            Reponses := array{"Higuma", "Nodoi Wakan", "Rice Rice", "Fourtricks"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0941 }
            Reponses := array{"Inukai", "Otaka", "Hihimaru", "Alpha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0942 }
            Reponses := array{"Hikoichi", "Ohm", "Mayushika", "Hitsugisukan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0943 }
            Reponses := array{"Sentoumaru", "Anjo", "Quincy", "Himuro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0944 }
            Reponses := array{"Jack", "Hip", "Tomeo", "Porchemy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0945 }
            Reponses := array{"Buchi", "Dr. Kobato", "Hippie", "Clione"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0946 }
            Reponses := array{"Hitsugisukan", "Scorpion", "Yuya", "Beegirl"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0947 }
            Reponses := array{"Kinderella", "Hocha", "Bacura", "Kinbo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0948 }
            Reponses := array{"Sind", "Acrobatic Fuwas #3", "Hocker", "Red Hair Pirate (Chain)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0949 }
            Reponses := array{"Kitton's Grandfather", "Merry", "Holy", "Isshi 1"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0950 }
            Reponses := array{"Charlotte Kanten", "Nefertari D. Lili", "Homing's Wife", "Poro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0951 }
            Reponses := array{"Charlotte Tablet", "Hongou", "Miss Father's Day", "Brew"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0952 }
            Reponses := array{"Honner", "Daikon", "Abi's Mother", "Sham"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0953 }
            Reponses := array{"Kairiken", "Nuru", "Horseman", "Koshi Falcon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0954 }
            Reponses := array{"Hotei", "Pomp", "Sai", "Garudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0955 }
            Reponses := array{"Gerd", "Uraya Mashikatta", "Hototogisu", "Miss Father's Day"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0956 }
            Reponses := array{"Hitetsu Tenguyama", "Hou-ban Taichou", "Lines", "Miyagi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0957 }
            Reponses := array{"Miss Merry Christmas", "Lacueva", "Hound", "Zaba"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0958 }
            Reponses := array{"Stroganoff", "Decalvan Brother (A)", "Howling Gab", "Mani"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0959 }
            Reponses := array{"Hublot", "Pythagoras", "Tori", "Beak Remark"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0960 }
            Reponses := array{"Humphrey", "Superhuman Domingos #3", "Rampo", "Fry Panz"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0961 }
            Reponses := array{"MocDonald", "Mari", "Lulis", "Hyota"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0962 }
            Reponses := array{"Rint", "Hyogoro", "Hyoutauros", "Antonio"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0963 }
            Reponses := array{"Scorpion", "Hyouzou", "Hack", "Sind's Father"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0964 }
            Reponses := array{"Pankuta Dakeyan", "Jean Bart", "Potsun", "Ian"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0965 }
            Reponses := array{"Fillonce", "Figarland Garling", "Mounblutain", "Ibadonbo Dobby"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0966 }
            Reponses := array{"Sanka", "Mouse-Man", "Ibusu", "Daikon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0967 }
            Reponses := array{"Humphrey", "Ideaman", "Law & Lami's Father", "Charlotte Noisette"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0968 }
            Reponses := array{"Mr. Love", "Inbi", "Charlotte Anana", "Cook Billy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0969 }
            Reponses := array{"Dagama", "Indigo", "Foxy Pirates' Referee", "Mr. Love"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0970 }
            Reponses := array{"Kiwi", "Norinosuke", "Inhel", "Bastar Gill"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0971 }
            Reponses := array{"Shepherd Sommers", "Goki", "Inoichibannosuke", "Junan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0972 }
            Reponses := array{"Kop", "Rolling Logan", "Ubau", "Inukai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0973 }
            Reponses := array{"Shine", "Ippon-Matsu", "Esta", "Cabaji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0974 }
            Reponses := array{"Ipponume", "Yoshimoto", "Mountain Ricky", "Minorhinoceros"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0975 }
            Reponses := array{"Isa", "Byron", "Charlotte Compote", "Azuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0976 }
            Reponses := array{"Ham Burger", "Ishigo Shitemanna", "Gaban Scopper", "Mr. 13"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0977 }
            Reponses := array{"Sayo", "Pavlik", "Islewan", "Maha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0978 }
            Reponses := array{"Ham Burger", "Moqueca", "Akudai Kanzaburou", "Isoka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0979 }
            Reponses := array{"Yotsubane", "Gyoru", "Isshi 1", "Compo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0980 }
            Reponses := array{"Inbi", "York", "Iwatobi", "Massui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0981 }
            Reponses := array{"Kinderella", "Wallem", "Den", "Jabari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0982 }
            Reponses := array{"Macro", "Jack-in-the-Box", "Brocca", "Charlotte Compo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0983 }
            Reponses := array{"Pirate Captain (500 Hostages)", "Jaiya Shin", "Lago", "Ramba"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0984 }
            Reponses := array{"Dalmatian", "Jean Bart", "Jaki", "Judy"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0985 }
            Reponses := array{"Jalmack", "Pike", "Jorge", "Shuutai"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0986 }
            Reponses := array{"Charlotte Newgo", "Manboshi", "Sennorikyuru", "Jarul"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0987 }
            Reponses := array{"Rindou", "Decalvan Brother (B)", "Jean Goen", "Newkama Force #6"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0988 }
            Reponses := array{"Jero", "Hyota", "Alpha", "Nubon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0989 }
            Reponses := array{"Nantokanette Sally", "Kazekage", "Jerry", "Sarkies"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0990 }
            Reponses := array{"Yuu", "Haredas", "Oyame", "Jessica"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0991 }
            Reponses := array{"Hippie", "Jibuemon", "Kuromarimo", "Cosmos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0992 }
            Reponses := array{"Jigoku Benten", "Esta's Boyfriend", "Doc Q", "Kop"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0993 }
            Reponses := array{"Mikazuki", "Fullbody", "Donquixote Mjosgard", "Jigra"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0994 }
            Reponses := array{"Jiro", "Hip", "Ganryu (Roger Pirates)", "Charlotte Montb"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0995 }
            Reponses := array{"Jiron", "Caribou", "Papaneel", "Stalker"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0996 }
            Reponses := array{"Piiman", "Guillotine", "Kamyu's Fellow Wrestler", "Jobo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0997 }
            Reponses := array{"Rice Rice", "Riley Brother #2", "Jorge", "Jessica"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0998 }
            Reponses := array{"Akudai Kanzaburou", "Red King", "Jorul", "Orenami Fan (L)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_0999 }
            Reponses := array{"Jose", "Gally", "Moda", "Aladdin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_1000 }
            Reponses := array{"Announcer Ikkaku", "Doran", "Joseph", "Stansen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1001 }
            Reponses := array{"Judy", "Totts", "Baburu", "Little Oars Jr."}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1002 }
            Reponses := array{"Juki", "Caribou", "Gal", "Charlotte Wafers"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1003 }
            Reponses := array{"Julius", "Tower Mukkashimi", "Charlotte Montb", "Miss Merry Christmas"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1004 }
            Reponses := array{"Jumper", "Acrobatic Fuwas #2", "Buffalo", "Charlotte Newsan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1005 }
            Reponses := array{"Brannew", "Aruyutayan V", "Junan", "Togare"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1006 }
            Reponses := array{"Juubei", "Kumagoro", "Koze", "Oars"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1007 }
            Reponses := array{"Sunbell", "Dosun", "Ramba", "Juujirou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1008 }
            Reponses := array{"Kobe", "Kaba Shinshi", "Kazeno Minoru", "Dream"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1009 }
            Reponses := array{"Coribou", "Kabu", "Cook Tom", "Omasa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1010 }
            Reponses := array{"Richie", "Kadar", "Hara", "Victoria Cindry"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1011 }
            Reponses := array{"Kikyou", "Kagerou", "Pandora", "Bulldog"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1012 }
            Reponses := array{"Gyoru", "Randolph", "Nika", "Kairiken"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1013 }
            Reponses := array{"Marie", "Odama", "Kairo Kureyo", "Noko"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1014 }
            Reponses := array{"Uraya Mashikatta", "Neggy", "Tokijiro", "Kakukaku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1015 }
            Reponses := array{"Kinga", "Ideaman", "Charlotte Cornstarch", "Kakunoshin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1016 }
            Reponses := array{"Chew", "Acrobatic Fuwas #2", "Kamakirigirl", "Randolph"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1017 }
            Reponses := array{"Kamaya Tsumonsieur", "Busshiri", "Newkama Force #4", "Shu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1018 }
            Reponses := array{"Kamekichi", "Puzzle", "Riley Brother #2", "Hyota"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1019 }
            Reponses := array{"Sanka", "Tritobu", "Kamijirou", "Garudan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1020 }
            Reponses := array{"Bobomba", "Charlotte Wiro", "Kamonegi", "Taroimo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1021 }
            Reponses := array{"Ripper", "Kamyu", "Sanjuan Wolf", "Kairo Kureyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1022 }
            Reponses := array{"Keith", "Umit", "Whetton", "Kamyu's Fellow Boxer"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1023 }
            Reponses := array{"Totts", "Kamekichi", "Kamyu's Fellow Swordsman", "Gaban Scopper"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1024 }
            Reponses := array{"Bunny Joe", "Kamyu's Fellow Wrestler", "Attach", "Esta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1025 }
            Reponses := array{"Happygun", "Kaneshiro", "Charlotte Cornstarch", "Topman Warcury"}
            BonneReponse := 1

MakeOnePieceQuestionsFR6() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1026 }
            Reponses := array{"Gatz", "Jarul", "Abi's Father", "Kanezenny"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1027 }
            Reponses := array{"Ban Dedessinee", "Tamagon", "Karma", "Bas"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1028 }
            Reponses := array{"Manboshi", "Aisa", "Alvida Pirate (S Tattoo)", "Kasa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1029 }
            Reponses := array{"Wakasa", "Nokokuwa Police", "Kasagoba", "Tall Marley Brother"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1030 }
            Reponses := array{"Kashii", "Ahho Desunen IX", "Judy", "Fugetsu Omusubi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1031 }
            Reponses := array{"Cook Tom", "Bingo", "Kazenbo", "Caimanlady"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1032 }
            Reponses := array{"Kebi", "Boa Marigold", "Daisy", "Eccoli"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1033 }
            Reponses := array{"Chip", "Keith", "Redwolf", "Noko"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1034 }
            Reponses := array{"Minchey", "Onigumo", "Kentauros", "Oars"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1035 }
            Reponses := array{"Bizarre", "Albion", "Minokoala", "Kerville"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1036 }
            Reponses := array{"Ross", "Tararan", "Carmel", "Kibin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1037 }
            Reponses := array{"Hotori", "Sweet Pea", "Lepanto Tank", "Kiev"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1038 }
            Reponses := array{"Nefertari Titi", "Harry", "Kikyou", "Achino Salcho"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1039 }
            Reponses := array{"Kimel", "Gladiator Hera", "Charlotte Akimeg", "Horseman"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1040 }
            Reponses := array{"Haritsu Kendiyo", "Reik", "Kinbo", "Lord of the Coast"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1041 }
            Reponses := array{"Beer VI", "Hildon", "Masterson Daddy", "Kinderella"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1042 }
            Reponses := array{"Kamijirou", "Kadar", "Oide", "King (500 Hostages)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1043 }
            Reponses := array{"Kinga", "Ossamondo", "Noko", "Hitsugisukan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1044 }
            Reponses := array{"Charlotte Opera", "Hildon", "Kingdew", "Cook Tom"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1045 }
            Reponses := array{"Hildon", "Kinoko", "Yotsubane", "Guillotine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1046 }
            Reponses := array{"Heat", "Eccoli", "Minotaurus", "Kirintauros"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1047 }
            Reponses := array{"Orenami Fan (V)", "Kisegawa", "Roji", "Rabiyan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1048 }
            Reponses := array{"Sheepshead", "Kitton", "Faust", "Ipponume"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1049 }
            Reponses := array{"Fujin", "Caramel", "Koala Zombie", "G-8 Head Custodian"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1050 }
            Reponses := array{"Ipponume", "Juki", "Koda", "Norinosuke"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1051 }
            Reponses := array{"Bobomba", "Koito", "Esta", "Rint"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1052 }
            Reponses := array{"Kojurou", "Gally", "Footbianco", "Gyoru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1053 }
            Reponses := array{"Moocy", "Komane", "Mr. 5", "Girarin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1054 }
            Reponses := array{"Elmy", "Konbu", "Tamagon", "Milky"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1055 }
            Reponses := array{"Bastar Gill", "Goldberg", "Charlotte Nutmeg", "Kop"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1056 }
            Reponses := array{"Dotaku", "Gyogyo", "Koshi Falcon", "Esta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1057 }
            Reponses := array{"Rotund Risky Brother", "Charlotte Opera", "Kotatsu", "Chinjao"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1058 }
            Reponses := array{"Shu", "Kotori", "Humphrey", "Hangan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1059 }
            Reponses := array{"Choco Police", "Fabre", "Carne", "Koze"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1060 }
            Reponses := array{"Jumper", "Zeo", "Hammond", "Kukai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1061 }
            Reponses := array{"Charlotte Zuccotto", "Rabbitman", "Ibusu", "Kumagoro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1062 }
            Reponses := array{"Kuni", "Eddy", "Mendou", "Tightrope Walking Funan Bros (Chubby)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1063 }
            Reponses := array{"Shoujou", "Kunyun", "Kobe", "Yonka Two"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1064 }
            Reponses := array{"Kuromarimo", "Shepherd Sommers", "Hangan", "York"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1065 }
            Reponses := array{"Gangaru", "Kurozumi Higurashi", "Fuga", "Samosa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1066 }
            Reponses := array{"Oars", "Kurozumi Kanjuurou", "Sind's Father", "Rika"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1067 }
            Reponses := array{"Cotton", "Minokoala", "Charlotte Mash", "Kurozumi Semimaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1068 }
            Reponses := array{"Charlotte Akimeg", "Eddy", "Stelly", "Kuween"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1069 }
            Reponses := array{"Hotei", "Nodoi Wakan", "Masterson Daddy", "Kyo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1070 }
            Reponses := array{"Pekoms' Father", "Kyuji", "Barbarossa", "Raoul"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1071 }
            Reponses := array{"Yamao Happa", "Esta", "Kyukyu", "Haritsu Kendiyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1072 }
            Reponses := array{"Moqueca", "Ryuuboshi", "Birdy", "Lacroix"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1073 }
            Reponses := array{"Thalassa Lucas", "Braham", "Lacueva", "Karma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1074 }
            Reponses := array{"Tamachibi", "Blue Fan", "Lady Tree", "Pukau"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1075 }
            Reponses := array{"Bariete", "Rice Rice", "Zunesha", "Lago"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1076 }
            Reponses := array{"Amadob", "Ohana", "Charlotte Allmeg", "Laskey"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1077 }
            Reponses := array{"Law & Lami's Father", "Minchey", "Banchi", "Orenami Fan (L)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1078 }
            Reponses := array{"Lulis", "Stroganoff", "Leonero", "Scarlett"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1079 }
            Reponses := array{"Harald", "Lily", "G-8 Marine Officer (Blond)", "Speed Jiru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1080 }
            Reponses := array{"Charlotte Oven", "Shine", "Limejuice", "Yukimura"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1081 }
            Reponses := array{"Mr. Mellow", "Lina", "Reik", "Aruyutayan V"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1082 }
            Reponses := array{"Mayushika", "Kuroobi", "Colon", "Lina and Sayo's Father"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1083 }
            Reponses := array{"Roche", "Linaria", "Aunt", "Higuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1084 }
            Reponses := array{"Lines", "Nako", "Gyro", "Fuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1085 }
            Reponses := array{"Kiev", "Decalvan Brother (A)", "And", "Linlin's Father"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1086 }
            Reponses := array{"Kamonegi", "Rabbitman", "Linlin's Mother", "A.O"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1087 }
            Reponses := array{"Seki", "Sheepshead", "Loan Shark of Water 7", "Desire"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1088 }
            Reponses := array{"Genrin", "Brew", "Tristan", "Look-out of the Lady Mary"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1089 }
            Reponses := array{"Luca", "Donquixote Mjosgard", "Koala Zombie", "Banchina"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1090 }
            Reponses := array{"Look-out of the Lady Mary", "Bellett", "Luigia", "Nubon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1091 }
            Reponses := array{"Charlotte Newichi", "Carne", "Short Marley Brother", "Lulis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1092 }
            Reponses := array{"Mr. 9", "Komane", "Machvise", "Edison"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1093 }
            Reponses := array{"Gram", "Macro", "Bingo", "Egana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1094 }
            Reponses := array{"Charlotte Anglais", "Maha", "Gambo", "Roddy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1095 }
            Reponses := array{"Maidy", "Pekoms' Mother", "Okame", "Charlotte Oven"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1096 }
            Reponses := array{"Fry Panz", "Bungou", "Manboshi", "Mochi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1097 }
            Reponses := array{"Devil Dias", "Minotaurus", "Mani", "Hatcha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1098 }
            Reponses := array{"Marcus Mars", "Akehende", "Capote", "Charlotte Newichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1099 }
            Reponses := array{"Charlotte Cadenza", "Devon Catarina", "Margarita", "Buchi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1100 }
            Reponses := array{"Nitro", "Damask", "Mari", "Rabiyan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1101 }
            Reponses := array{"Marie", "Mummy", "Doberman", "Charlotte Mobile"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1102 }
            Reponses := array{"Marilyn", "Higuma", "John Giant", "Goode"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1103 }
            Reponses := array{"Charlotte Cinnamon", "Milky", "Marin", "Buggy Ball Attendant"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1104 }
            Reponses := array{"Acrobatic Fuwas #1", "Bian", "Mashikaku", "Briscola"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1105 }
            Reponses := array{"Genrin", "Shura", "Ibusu", "Massui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1106 }
            Reponses := array{"Master", "Gina", "Mendou", "Yuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1107 }
            Reponses := array{"Byron", "Masterson Carol", "Flapper", "Ginnosuke"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1108 }
            Reponses := array{"Reuder", "Mato", "Kaya", "Farafra"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1109 }
            Reponses := array{"Figarland Garling", "Charlotte Laurin", "Matoryou Hime-tachi", "Announcer Ikkaku"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1110 }
            Reponses := array{"Maujii", "Chao", "Horseman", "Bisley"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1111 }
            Reponses := array{"Pomp", "Jumper", "Tosa", "Maynard"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1112 }
            Reponses := array{"Gismonda", "Suleiman", "Mayor of the Desert Village", "Ripper"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1113 }
            Reponses := array{"Toko", "Mayushika", "Banchi", "Shepherd Sommers"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1114 }
            Reponses := array{"Meadows", "Zambai", "Holdem", "Buckingham Stussy"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1115 }
            Reponses := array{"Mekao", "Charlotte Noisette", "Mr. 13", "Yamao Happa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1116 }
            Reponses := array{"Napole Maria", "Charlotte Dacquoise", "Nugire Yainu", "Mendou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1117 }
            Reponses := array{"Marie", "Bluejam", "Mihar", "Superhuman Domingos #2"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1118 }
            Reponses := array{"Mikazuki", "Roche", "Pirate Captain (500 Hostages)", "George Mach"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1119 }
            Reponses := array{"Milky", "Mr. 9", "Kabu", "Ringana Tegata"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1120 }
            Reponses := array{"Dorry", "Linaria", "Minchey", "Ryuuboshi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1121 }
            Reponses := array{"Doberman", "Byron", "Minokoala", "Yomo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1122 }
            Reponses := array{"Kop", "Charlotte Laurin", "Zenny", "Minorhinoceros"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1123 }
            Reponses := array{"Sarahebi", "Minoruba", "Gimlet", "Ally"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1124 }
            Reponses := array{"Terry Gilteo", "Minotaurus", "Ninjin", "Homing's Wife"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1125 }
            Reponses := array{"Basil", "Shaka", "Misery", "Nefertari Cobra"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1126 }
            Reponses := array{"Tequila Wolf Prison Chief", "Daigin", "Mishoin Cashible", "Cocoa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1127 }
            Reponses := array{"Newkama Force #6", "Masked Deuce", "Yamakaji", "Miss Friday"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1128 }
            Reponses := array{"Mitsuboshi", "Aggie 68", "Newkama Force #3", "Abellon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1129 }
            Reponses := array{"Akumai", "Osome", "Miyagi", "Bingo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1130 }
            Reponses := array{"Andre", "Charlotte Flampe", "Kumagoro", "Mizerka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1131 }
            Reponses := array{"Minatomo", "Ginger", "Kurozumi Kanjuurou", "Mizuira"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1132 }
            Reponses := array{"Shine", "Aruyutayan V", "Mizuta Madaisuki", "Marcus Mars"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1133 }
            Reponses := array{"Riley Brother #2", "Gatz", "Kukai", "Mizuta Mawaritosuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1134 }
            Reponses := array{"Ronse", "MocDonald", "Babanuki", "Yoshimoto"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1135 }
            Reponses := array{"Juujirou", "Mochi", "Daddy Dee", "Blondie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1136 }
            Reponses := array{"Achino Salcho", "Kurozumi Semimaru", "Mohji", "Banchina"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1137 }
            Reponses := array{"Monjii", "Dalmatian", "Charlotte Saint-Marc", "Barbel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1138 }
            Reponses := array{"Moodie", "G-8 Head Custodian", "Kamakiri", "Lady Tree"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1139 }
            Reponses := array{"Minatomo", "Ibusu", "Charlotte Bavarois", "Moon Isaac Jr."}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1140 }
            Reponses := array{"Moore", "Buchi", "Basil", "Tristan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1141 }
            Reponses := array{"Moqueca", "Gerd", "Race", "Charlotte Poire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1142 }
            Reponses := array{"Eddy", "Cosmos", "Motzel", "Charlotte Mascarpone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1143 }
            Reponses := array{"Mountain Ricky", "Azuki", "Ahiru", "Speed"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1144 }
            Reponses := array{"Sennorikyuru", "UK", "Mouse-Man", "Fugetsu Omusubi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1145 }
            Reponses := array{"Ally", "Moyle", "Ultraking", "Mouse-Man"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1146 }
            Reponses := array{"Harisenbon", "Mr. 11", "Scarlett", "Cook Billy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1147 }
            Reponses := array{"Kuni", "Kimel", "Mr. 4", "Taco"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1148 }
            Reponses := array{"Peseta", "Mr. Love", "Jose", "Esta's Boyfriend"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1149 }
            Reponses := array{"Charlotte Joscarpone", "Mr. Mellow", "Minotaurus", "Fujin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1150 }
            Reponses := array{"Bon Chari Seller", "Mr. Momora", "Minoruba", "Ringana Tegata"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1151 }
            Reponses := array{"Mr. Shimizu", "Genbou", "Andre", "Ohana"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1152 }
            Reponses := array{"Much Ikaros", "Kazekage", "Saturn Jaygarcia", "Chabo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1153 }
            Reponses := array{"Tomozo", "Jiro", "Ryuuboshi", "Muchana"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1154 }
            Reponses := array{"Sarutobi", "Charlotte Nougat", "Babanuki", "Mummy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1155 }
            Reponses := array{"Mummy Mee", "Wire", "Luca", "Juujirou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1156 }
            Reponses := array{"Musse", "Jigorou", "Trebol", "Rokuroshi's' Assistant"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1157 }
            Reponses := array{"Charlotte Compote", "Muti", "Charlotte Dragee", "Pagaya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1158 }
            Reponses := array{"Myure", "Chess", "Kaneshiro", "Spiel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1159 }
            Reponses := array{"Indigo", "Nako", "Zenny", "Charlotte Counter"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1160 }
            Reponses := array{"Mato", "Snake Building", "Nangi", "Kasagoba"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1161 }
            Reponses := array{"Mountain Ricky", "Fabre", "Mato", "Nantokanette Sally"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1162 }
            Reponses := array{"Acrobatic Fuwas #1", "Rosward Shalria", "Napole Maria", "Henzo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1163 }
            Reponses := array{"Hyota", "Suke", "Kinderella", "Nashi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1164 }
            Reponses := array{"Tensei", "Natto", "And", "Amadob"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1165 }
            Reponses := array{"Part", "Nefertari D. Lili", "Megalo", "Mizuira"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1166 }
            Reponses := array{"Tajio", "Nefertari Titi", "Jarul", "Warashi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1167 }
            Reponses := array{"Neggy", "Ukkari", "Skull", "Miyagi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1168 }
            Reponses := array{"Tsunagorou", "Negikuma Maria", "Captain John", "Diez Barrels"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1169 }
            Reponses := array{"Mozambia", "Cosette", "Neoki", "Chocolat"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1170 }
            Reponses := array{"Saturn Jaygarcia", "Uzuki Namida", "Jesus Burgess", "Neptune"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1171 }
            Reponses := array{"Roche", "Tsunagorou", "Newkama Force #1", "Minatomo (East Blue)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1172 }
            Reponses := array{"Thalassa Lucas", "Stansen", "Carmen", "Newkama Force #2"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1173 }
            Reponses := array{"Charlotte Harumeg", "Howling Gab", "Ideo", "Newkama Force #3"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1174 }
            Reponses := array{"Russian", "Rongo", "Newkama Force #4", "Kasa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1175 }
            Reponses := array{"Gyogyo", "Fuga", "Newkama Force #5", "Stansen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1176 }
            Reponses := array{"Tibany", "Mani", "Newkama Force #6", "Chuchun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1177 }
            Reponses := array{"Lindbergh", "Nigeratta", "Henzo", "Boss"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1178 }
            Reponses := array{"Bastille", "Scarlett", "Bisley", "Nin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1179 }
            Reponses := array{"Oiwa", "Oyame", "Achino Don", "Nodoi Wakan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1180 }
            Reponses := array{"Bones Daz", "Noko", "Edward Weevil", "Potsun"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1181 }
            Reponses := array{"Nokokuwa Police", "Banshee", "Hippie", "Kojurou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1182 }
            Reponses := array{"Norinosuke", "Charlotte Mozart", "Roche", "Homing's Wife"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1183 }
            Reponses := array{"Kasagoba", "Farafra", "Nozdon Seagull Guns", "Donquixote Shivercalero"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1184 }
            Reponses := array{"Nubon", "Ann", "S-Hawk", "Mr. 11"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1185 }
            Reponses := array{"Nuru", "Coribou", "Doringo", "Cotton"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1186 }
            Reponses := array{"Cabaji", "Kamyu's Fellow Wrestler", "Largo", "O-Tsuru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1187 }
            Reponses := array{"Magra", "Octopako", "Vista", "Richie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1188 }
            Reponses := array{"Pearl", "Nerine", "Odama", "Alpaca-Man"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1189 }
            Reponses := array{"Nefertari Titi", "Ohana", "Caramel", "Spartan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1190 }
            Reponses := array{"Roche", "Charlotte Anglais", "Oimo", "Mummy Mee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1191 }
            Reponses := array{"Rimoshifu Killingham", "Donannoyo", "Oiwa", "Cotton"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1192 }
            Reponses := array{"Okame", "Scarlett", "Chaka", "Inbi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1193 }
            Reponses := array{"Disco", "Ratel", "Kong", "Okome"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1194 }
            Reponses := array{"Brannew", "Belladonna", "Oli", "Rittonto"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1195 }
            Reponses := array{"Olive", "Mizerka", "Sweet Pea", "Kaya"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1196 }
            Reponses := array{"Omasa", "Kamyu's Fellow Wrestler", "Mummy", "Gyro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1197 }
            Reponses := array{"Chaka", "Oran", "Daifugo", "Uni"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1198 }
            Reponses := array{"Linlin's Mother", "Charlotte Wafers", "Daigin", "Orenami Fan (L)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1199 }
            Reponses := array{"Usakkov", "Orenami Fan (O)", "Peclo Drug", "Gatz"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1200 }
            Reponses := array{"Orenami Fan (V)", "Ririka", "Kurozumi Kanjuurou", "Nika"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1201 }
            Reponses := array{"Osome", "Gatz", "Jero", "Briscola"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1202 }
            Reponses := array{"Bisley", "Margarita", "Ossamondo", "Merry"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1203 }
            Reponses := array{"Tooyama Tsujigirou", "Otaka", "Nashi", "Spector"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1204 }
            Reponses := array{"Ramba", "Nantokanette Sally", "Ottoland", "Hitsugisukan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1205 }
            Reponses := array{"Lacroix", "Oyame", "Puppuu", "Neptune"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1206 }
            Reponses := array{"Hardy", "Shinobu", "Mr. 5", "Packy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1207 }
            Reponses := array{"Alpha", "Charlotte Fuyumeg", "Juki", "Palms"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1208 }
            Reponses := array{"Edison", "Pandawomanmi", "Bouche", "Sind"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1209 }
            Reponses := array{"Shuzo", "Pastor Zombie's Assistant", "Urashima", "Pandora"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1210 }
            Reponses := array{"Minozebra", "Devon Catarina", "Pankuta Dakeyan", "Fugetsu Omusubi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1211 }
            Reponses := array{"Rint", "Mocha's Mother", "Charlotte Mobile", "Pansy"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1212 }
            Reponses := array{"Topman Warcury", "Decalvan Brother (A)", "Papaneel", "Inoichibannosuke"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1213 }
            Reponses := array{"Papas", "Lacroix", "Nantokanette Sally", "Charlotte Marble"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1214 }
            Reponses := array{"Raijin", "Part", "Daigin", "Vito"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1215 }
            Reponses := array{"Lago", "UK", "Pascia", "Giberson"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1216 }
            Reponses := array{"Kagerou", "Laki", "Hongou", "Pasqua Rapanui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1217 }
            Reponses := array{"Hatcha", "Pastor Zombie", "Mato", "Miyagi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1218 }
            Reponses := array{"Pound", "Pastor Zombie's Assistant", "Koze", "Miss Catharine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1219 }
            Reponses := array{"Lago", "Pavlik", "Charlotte Wiro", "Rock"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1220 }
            Reponses := array{"Peachbeard", "Rosward Shalria", "Dream", "Charlotte Cabaletta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1221 }
            Reponses := array{"Peclo Drug", "Kyuji", "Charlotte Cinnamon", "Beegirl"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1222 }
            Reponses := array{"Pekkori", "Pekoms' Mother", "Charlotte Wiro", "Maynard"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1223 }
            Reponses := array{"Leonero", "Beegirl", "Pekoms' Father", "Basil"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1224 }
            Reponses := array{"Chou", "Pekoms' Mother", "Rosy Life Rider (Headband)", "Wakasa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1225 }
            Reponses := array{"Pellini", "Sheepshead", "Kabu", "Nerine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1226 }
            Reponses := array{"Diamante", "Kitton", "Peseta", "Islewan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1227 }
            Reponses := array{"Mihar", "Phillip", "Donannoyo", "Albion"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1228 }
            Reponses := array{"Pickles", "Gyaro", "Sanjuan Wolf", "Orenami Fan (L)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1229 }
            Reponses := array{"Stainless", "Nigeratta", "Cotton", "Pirate Captain (500 Hostages)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1230 }
            Reponses := array{"Pisaro", "Birdy", "Nefertari D. Lili", "Ageha Woman"}
            BonneReponse := 0

MakeOnePieceQuestionsFR7() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1231 }
            Reponses := array{"Pizarro Avalo", "Zabo", "Iwatobi", "Sanka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1232 }
            Reponses := array{"Pythagoras", "Pluming", "Pickles", "Giro Chintarou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1233 }
            Reponses := array{"Haritsu Kendiyo", "Poker", "Schollzo", "Barrel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1234 }
            Reponses := array{"Jigoku Benten", "Jeet", "Pomp", "Ippon-Matsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1235 }
            Reponses := array{"Bouche", "Pomsky", "Mendou", "Couran"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1236 }
            Reponses := array{"Fullbody", "Poppoko", "Saber", "Bas"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1237 }
            Reponses := array{"Jaiya Shin", "Poppy", "Hawkman", "Hyota"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1238 }
            Reponses := array{"Porchemy", "Topknot", "Ikkaku", "George Mach"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1239 }
            Reponses := array{"Zotto", "Pellini", "Daikon", "Poro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1240 }
            Reponses := array{"Potato", "Antonio", "Kairen", "Basil"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1241 }
            Reponses := array{"Achino Arbell", "Potaufeu", "Neggy", "Elizabello II"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1242 }
            Reponses := array{"Ichika", "Mashikaku", "Bourbon Jr.", "Prince Grus"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1243 }
            Reponses := array{"Howling Gab", "Pavlik", "Hammond", "Prodi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1244 }
            Reponses := array{"Hotei", "Bishamon", "Mr. 4", "Punch Bonk"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1245 }
            Reponses := array{"Bao", "Kujaku", "Puppuu", "Julius"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1246 }
            Reponses := array{"Lacueva", "Puzzle", "Homing's Wife", "Sukoshiba Kanishitoru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1247 }
            Reponses := array{"Suleiman", "Pythagoras", "Anjo", "Mani"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1248 }
            Reponses := array{"Kinga", "Quincy", "Kibin", "Shot Vasco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1249 }
            Reponses := array{"Milo", "Ross", "Giro Chintarou", "Rabbitman"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1250 }
            Reponses := array{"Daifugo", "Minatomo (East Blue)", "Fukurokuju", "Race"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1251 }
            Reponses := array{"Raideen", "Charlotte Nusstorte", "Feld Du", "Shimoi Zappa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1252 }
            Reponses := array{"Kobe", "Raijin", "Conney", "Charlotte Newgo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1253 }
            Reponses := array{"Briscola", "Charlotte Bavarois", "Rakuda", "Miss Friday"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1254 }
            Reponses := array{"Ramba", "Pirate Captain (500 Hostages)", "Clione", "Yuu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1255 }
            Reponses := array{"Judy", "Charlotte Poire", "Charlotte Zuccotto", "Ramen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1256 }
            Reponses := array{"Mr. 9", "Charlotte Broye", "Rampo", "Hotei"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1257 }
            Reponses := array{"Mr. 11", "Minozebra", "Redwolf", "Ran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1258 }
            Reponses := array{"Ibadonbo Dobby", "Octopako", "Rasa", "Catacombo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1259 }
            Reponses := array{"Ratel", "Funk Kelly", "Beer VI", "Achino Salcho"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1260 }
            Reponses := array{"Spiel", "Chinode Iyan'eno", "Nerine", "Reck"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1261 }
            Reponses := array{"Red Hair Pirate (Chain)", "Hip", "Waruno Furishirou", "Charlotte Wiro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1262 }
            Reponses := array{"Ohm", "Red King", "Charlotte Zuccotto", "Dorry"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1263 }
            Reponses := array{"Packy", "Glove", "Redwolf", "Uholisia"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1264 }
            Reponses := array{"Sapi", "Splash", "Punch Bonk", "Renona Topakka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1265 }
            Reponses := array{"Reuder", "Keith", "Donquixote Mjosgard", "Saber"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1266 }
            Reponses := array{"Kakukaku", "Akudai Kanzaburou", "Rice Rice", "Doran"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1267 }
            Reponses := array{"Tightrope Walking Funan Bros (Chubby)", "Olive", "Mr. 4", "Riley Brother #1"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1268 }
            Reponses := array{"Chicory", "Riley Brother #2", "Warashi", "Samurai Batts"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1269 }
            Reponses := array{"T-Bone", "Clou D Clover", "Ringana Tegata", "Tamago"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1270 }
            Reponses := array{"Rint", "Alvida Pirate (Horned)", "Mizuta Madaisuki", "Iwatobi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1271 }
            Reponses := array{"Ripper", "Braham", "Cotton", "Charlotte Flampe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1272 }
            Reponses := array{"Charlotte Opera", "Shepherd Sommers", "Inoichibannosuke", "Ririka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1273 }
            Reponses := array{"G-8 Marine Officer (Blond)", "Charlotte Cornstarch", "Rittonto", "Machvise"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1274 }
            Reponses := array{"Pukau", "Kimel", "Rivers", "Totts"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1275 }
            Reponses := array{"Cezar", "Road", "Raizou", "Koze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1276 }
            Reponses := array{"Carmel", "Roche", "Kinga", "Jose"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1277 }
            Reponses := array{"Roddy", "Sphinx", "Decalvan Brother (A)", "Sapi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1278 }
            Reponses := array{"Uholisia", "Roji", "Luca", "Ian"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1279 }
            Reponses := array{"Vincent", "Jarul", "Tamago", "Rokkaku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1280 }
            Reponses := array{"Charlotte Nutmeg", "Yatappe", "Uholisia", "Rokki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1281 }
            Reponses := array{"Sicilian", "Totts", "Rokuroshi", "Taro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1282 }
            Reponses := array{"Splatter", "Troff", "Mochi", "Rokuroshi's' Assistant"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1283 }
            Reponses := array{"Gion", "Bulldog", "John Giant", "Rolling Logan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1284 }
            Reponses := array{"Richie", "Bastille", "Splatter", "Rongo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1285 }
            Reponses := array{"Ishigo Shitemanna", "Ronse", "Zaba", "Bekori"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1286 }
            Reponses := array{"Suleiman", "Biyo", "Nefertari Cobra", "Roshio"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1287 }
            Reponses := array{"Gismonda", "Rosward Rosward", "Epony", "Herb"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1288 }
            Reponses := array{"Rosward Shalria", "Kamyu", "Ukkari", "Chinjao"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1289 }
            Reponses := array{"Kamyu", "Kinderella", "Julius", "Rosy Life Rider (Blond)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1290 }
            Reponses := array{"Rosy Life Rider (Headband)", "Shachi", "Newkama Force #5", "Absalom"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1291 }
            Reponses := array{"Rotund Risky Brother", "Aswa", "Chocolat", "Morgan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1292 }
            Reponses := array{"Aremo Ganmi", "Compo", "Rug Bear", "Francois"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1293 }
            Reponses := array{"Inuppe", "Mayushika", "Run", "Baburu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1294 }
            Reponses := array{"Russian", "Alvida Pirate (S Tattoo)", "Hocker", "Kop"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1295 }
            Reponses := array{"Charlotte Anana", "Raizou", "Ryudo", "Buggy Ball Attendant"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1296 }
            Reponses := array{"Lacroix", "Newkama Force #5", "Pastor Zombie", "S-Bear"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1297 }
            Reponses := array{"S-Shark", "Gion", "Speed", "Look-out of the Lady Mary"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1298 }
            Reponses := array{"Saber", "Charlotte Brownie", "Muti", "Maidy"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1299 }
            Reponses := array{"Samurai Batts", "Mayushika", "Topknot", "Saitank"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1300 }
            Reponses := array{"Chao", "Uzu", "Sam", "Eccoli"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1301 }
            Reponses := array{"Samosa", "Ethanbaron V. Nusjuro", "Napoleon", "Karasu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1302 }
            Reponses := array{"Kojurou", "Samurai Batts", "Alpaca-Man", "Announcer Ikkaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1303 }
            Reponses := array{"Yoko", "Michael", "Mr. 9", "Sandayu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1304 }
            Reponses := array{"Sanshita", "Charlotte Prim", "Gairu", "Abi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1305 }
            Reponses := array{"Sarahebi", "Ipponume", "Capote", "Ian"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1306 }
            Reponses := array{"Tensei", "Largo", "Mocha", "Sarkies"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1307 }
            Reponses := array{"Macro", "T-Bone", "Sarutobi", "Strawberry"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1308 }
            Reponses := array{"Yuki", "Soran", "Punch Bonk", "Sauce"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1309 }
            Reponses := array{"Grabar", "Scorpion", "Sayo", "Potsun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1310 }
            Reponses := array{"Shepherd Ju Peter", "Bao", "Scarlet", "Koze"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1311 }
            Reponses := array{"Schollzo", "Brahm", "Kodama", "Miss Monday"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1312 }
            Reponses := array{"Shin Detamaruka", "Scimitarta", "Gismonda", "Sauce"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1313 }
            Reponses := array{"Scorpionlady", "Yuya", "Zanki", "Dorry"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1314 }
            Reponses := array{"Mr. 9", "Seki", "Noble Croc", "Rock"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1315 }
            Reponses := array{"Kojurou", "Sennorikyuru", "Charlotte Nusstorte", "Dachoman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1316 }
            Reponses := array{"Funk Bobby", "McKinley", "Seto", "Hewitt"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1317 }
            Reponses := array{"Shanba", "Ibusu", "Kashii", "Cook Shinpachi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1318 }
            Reponses := array{"Achino Brindo", "Shandorian Chief", "Taro", "Abi's Mother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1319 }
            Reponses := array{"Sharinguru", "Funk Kelly", "Kerville", "Ed"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1320 }
            Reponses := array{"Sheepshead", "Babanuki", "Buggy Ball Attendant", "Ross"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1321 }
            Reponses := array{"Gally", "Tritobu", "Horseman", "Shepherd Ju Peter"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1322 }
            Reponses := array{"Garudan", "Pankuta Dakeyan", "Caroline", "Shimotsuki Kouzaburou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1323 }
            Reponses := array{"Kingdew", "Iwatobi", "Shimotsuki Ushimaru", "Charlotte Wafers"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1324 }
            Reponses := array{"John Giant", "Bourbon Jr.", "Tower Mukkashimi", "Shin Detamaruka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1325 }
            Reponses := array{"Shine", "Baburu", "Charlotte Yuen", "Yarisugi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1326 }
            Reponses := array{"Shoujou", "Shinosuke", "Wanyudo", "Scorpionlady"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1327 }
            Reponses := array{"Charlotte Chiffon", "Achino Hockera", "Shioyaki", "Wakasa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1328 }
            Reponses := array{"Charlotte Mozart", "Giberson", "Toto", "Shiro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1329 }
            Reponses := array{"Maidy", "Busshiri", "Charlotte Anglais", "Sho"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1330 }
            Reponses := array{"Alpaca-Man", "Finamore", "Shopkeeper Hanji", "Akihiro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1331 }
            Reponses := array{"Short Marley Brother", "Charlotte Chiboust", "Okome", "Olive"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1332 }
            Reponses := array{"Chiya", "Charlotte Anglais", "Short Vassal (500 Hostages)", "Doha Ittanka II"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1333 }
            Reponses := array{"Boss", "Tamago", "Shu", "Fugetsu Omusubi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1334 }
            Reponses := array{"Shuutai", "Kisegawa", "Kazekage", "Charlotte Mash"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1335 }
            Reponses := array{"Shuzo", "Mr. 5", "Foxy Pirates' Referee", "Mizuta Madaisuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1336 }
            Reponses := array{"Yuya", "Massui", "Sind", "Akudai Kanzaburou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1337 }
            Reponses := array{"Cabaji", "Sind's Father", "Gal", "Race"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1338 }
            Reponses := array{"Kasa", "Laki", "Superhuman Domingos #1", "Skull"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1339 }
            Reponses := array{"Smooge", "Hanger", "Mizuta Madaisuki", "Jiron"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1340 }
            Reponses := array{"Mr. 9", "Pekoms' Father", "Charlotte Dolce", "Snake Building"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1341 }
            Reponses := array{"Snakeman", "Ban Dedessinee", "Cook Billy", "Jiro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1342 }
            Reponses := array{"Gina", "Orlumbus", "Spandine", "Peachbeard"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1343 }
            Reponses := array{"Oyame", "Spartan", "Daikon", "Mocha"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1344 }
            Reponses := array{"Speed Jiru", "Googly-Eyed", "Anba", "Mouse-Man"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1345 }
            Reponses := array{"Charlotte Broye", "Elizabello II", "Sphinx", "Esta's Boyfriend"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1346 }
            Reponses := array{"Clapp", "T-Bone", "Spiel", "Milo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1347 }
            Reponses := array{"Bisley", "Chinode Iyan'eno", "Inbi", "Splatter"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1348 }
            Reponses := array{"Keith", "Spoil", "Ninjin", "Barrel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1349 }
            Reponses := array{"Gambo", "Stainless", "Part", "Yazaemon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1350 }
            Reponses := array{"Tibany", "Isa", "Flapper", "Stansen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1351 }
            Reponses := array{"Byron", "Kyukyu", "Rongo", "Stomp"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1352 }
            Reponses := array{"Hippie", "Bastar Gill", "Speed Jiru", "Strawberry"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1353 }
            Reponses := array{"Norinosuke", "Pizarro Avalo", "Cowboy", "Stroganoff"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1354 }
            Reponses := array{"Charlotte Marble", "Suke", "Edward Weevil", "Mishoin Cashible"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1355 }
            Reponses := array{"Esta", "Tonjit", "Sukoshiba Kanishitoru", "Red Hair Pirate (Chain)"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1356 }
            Reponses := array{"Suleiman", "Kuroobi", "Baxcon", "Motzel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1357 }
            Reponses := array{"Ukon", "Doran's Father", "Sunbell", "Nika"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1358 }
            Reponses := array{"Superhuman Domingos #1", "Bastar Gill", "Charlotte Nougat", "Sind's Father"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1359 }
            Reponses := array{"Bluegrass", "Superhuman Domingos #2", "Stomp", "Banzaburou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1360 }
            Reponses := array{"Tomeo", "Superhuman Domingos #3", "Humphrey", "Kinoko"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1361 }
            Reponses := array{"Charlotte Snack", "Sutton", "Aremo Ganmi", "Holdem"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1362 }
            Reponses := array{"Chess", "Tabuhachirou", "Hihimaru", "Rug Bear"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1363 }
            Reponses := array{"Gorobe", "Tailor Zombie", "Shaka", "Splash"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1364 }
            Reponses := array{"Ivan X", "Chaka", "Tajio", "Nefertari Cobra"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1365 }
            Reponses := array{"Epony", "Milo", "Run", "Takao"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1366 }
            Reponses := array{"Take", "Newkama Force #6", "Humphrey", "Foxy Pirates' Referee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1367 }
            Reponses := array{"And", "Tokikake", "Tall Marley Brother", "Stansen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1368 }
            Reponses := array{"Riku Dold III", "Tall Risky Brother", "Morley", "Rug Bear"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1369 }
            Reponses := array{"Charlotte Newgo", "Tall Vassal (500 Hostages)", "Sarahebi", "Shin Detamaruka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1370 }
            Reponses := array{"Kinbo", "Briscola", "Tamachibi", "Caimanlady"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1371 }
            Reponses := array{"Linlin's Father", "Splatter", "Tamagon", "Miss Father's Day"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1372 }
            Reponses := array{"Gismonda", "Tansui", "Pandora", "Cezar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1373 }
            Reponses := array{"Kitton's Grandfather", "Tokikake", "Rokuroshi's' Assistant", "Tararan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1374 }
            Reponses := array{"Sphinx", "Miss Merry Christmas", "Gambia", "Taro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1375 }
            Reponses := array{"MocDonald", "George Mach", "Taroimo", "Jarul"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1376 }
            Reponses := array{"Kasa", "Tate", "Tailor Zombie", "Shandorian Chief"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1377 }
            Reponses := array{"Saitank", "Yukimura", "Tea IV", "Aremo Ganmi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1378 }
            Reponses := array{"Superhuman Domingos #3", "Tensei", "Jobo", "Bongou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1379 }
            Reponses := array{"Jobo", "Brew", "Tristan", "Tequila Wolf Prison Chief"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1380 }
            Reponses := array{"Whetton", "Tori", "Terracotta", "Doma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1381 }
            Reponses := array{"Koshi Falcon", "Puzzle", "Terry Gilteo", "Chess"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1382 }
            Reponses := array{"Mr. Mellow", "Chihaya", "Thalassa Lucas", "Prodi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1383 }
            Reponses := array{"Biyo", "Kingdew", "Tightrope Walking Funan Bros (Beanie Hat)", "Royal Nelson"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1384 }
            Reponses := array{"And", "Tightrope Walking Funan Bros (Chubby)", "Who's Who", "Gyoro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1385 }
            Reponses := array{"Namur", "Jeet", "Tilestone", "Bluegrass"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1386 }
            Reponses := array{"Mummy Mee", "Streusen", "Togare", "Ossamondo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1387 }
            Reponses := array{"Tokijiro", "Charlotte Dolce", "Rakuda", "Mr. 4"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1388 }
            Reponses := array{"Ottoland", "Tokikake", "Shot Vasco", "Amazon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1389 }
            Reponses := array{"Urban", "Tomeo", "Kamyu's Fellow Boxer", "Pagaya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1390 }
            Reponses := array{"Shopkeeper Hanji", "Tomozo", "Boa Marigold", "Shioyaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1391 }
            Reponses := array{"Yuu", "Achino Lil", "Tooyama Tsujigirou", "Faust"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1392 }
            Reponses := array{"Fourtricks", "Reuder", "Topknot", "Antonio"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1393 }
            Reponses := array{"Minatomo", "Suleiman", "Topman Warcury", "Chuchun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1394 }
            Reponses := array{"Roddy", "Chihaya", "Tori", "Kadar"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1395 }
            Reponses := array{"Morley", "Tosa", "Rosy Life Rider (Blond)", "MocDonald"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1396 }
            Reponses := array{"Miss Friday", "Totts", "Blondie", "Alvida Pirate (S Tattoo)"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1397 }
            Reponses := array{"Tower Mukkashimi", "Faust", "Short Marley Brother", "Charlotte Tablet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1398 }
            Reponses := array{"Esta", "Raijin", "Tristan", "Azuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1399 }
            Reponses := array{"Jaki", "Berry Good", "MocDonald", "Tritobu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1400 }
            Reponses := array{"Gloriosa", "Tsugaru Umi", "Red Hair Pirate (Chain)", "Solitaire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1401 }
            Reponses := array{"Charlotte Newgo", "Tsunagorou", "Charlotte Citron", "Kitton"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1402 }
            Reponses := array{"Figarland Garling", "Loan Shark of Water 7", "Chichilisia", "Tsunokkov"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1403 }
            Reponses := array{"Tsurue Monnosuke", "Mizuira", "Stevie", "Karma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1404 }
            Reponses := array{"Splash", "UK", "Aunt", "Asahija"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1405 }
            Reponses := array{"Caramel", "Mato", "Guarana", "Ubau"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1406 }
            Reponses := array{"Yamakaji", "Uholisia", "Kurozumi Kanjuurou", "Nodoi Wakan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1407 }
            Reponses := array{"Samurai Batts", "Charlotte Opera", "Ukkari", "Moon Isaac Jr."}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1408 }
            Reponses := array{"Ukon", "Manboshi", "Urbain-san", "Noble Croc"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1409 }
            Reponses := array{"Chiya", "Dago", "Ultraking", "Attach"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1410 }
            Reponses := array{"Umit", "Reck", "Koze", "Carmel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1411 }
            Reponses := array{"Uni", "Peachbeard", "Ripper", "Who's Who"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1412 }
            Reponses := array{"Taroimo", "Charlotte Dolce", "Ham Burger", "Unit 55 Troop Leader"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1413 }
            Reponses := array{"Urashima", "Natto", "Pastor Zombie", "Girarin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1414 }
            Reponses := array{"Concelot", "Sanjuan Wolf", "Puzzle", "Uraya Mashikatta"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1415 }
            Reponses := array{"Charlotte Dacquoise", "Olive", "Urbain-san", "Rice Rice"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1416 }
            Reponses := array{"Kamaya Tsumonsieur", "Usakkov", "Tower Mukkashimi", "Urban"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1417 }
            Reponses := array{"Ushiano", "Yuu's Father", "Totts", "Yukimura"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1418 }
            Reponses := array{"Sanshita", "Usunoro", "Geronimo", "Mounblutain"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1419 }
            Reponses := array{"Kiev", "Uzu", "Zadie", "Olive"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1420 }
            Reponses := array{"Rasa", "Uzu's Mother", "Superhuman Domingos #3", "Ronse"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1421 }
            Reponses := array{"Tamanegi", "Uzuki Namida", "Ban Dedessinee", "Masterson Carol"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1422 }
            Reponses := array{"Flapper", "Nerine", "Kumagoro", "Uzuki Tempura"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1423 }
            Reponses := array{"Vigaro", "Elizabello II", "Capote", "Mishoin Cashible"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1424 }
            Reponses := array{"Pekoms' Father", "Vincent", "Joseph", "Neoki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1425 }
            Reponses := array{"Nashi", "Wakasa", "Wicca", "Riley Brother #2"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1426 }
            Reponses := array{"Outlook III", "Newkama Force #5", "Wallem", "Topknot"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1427 }
            Reponses := array{"Reck", "Charlotte Brownie", "Wanyudo", "Fuga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1428 }
            Reponses := array{"Kojurou", "Peppoko", "Warashi", "Iwatobi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1429 }
            Reponses := array{"Chabo", "Gu", "Waruno Furishirou", "Ohana"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1430 }
            Reponses := array{"Arlong Pirate (Monkfish)", "Charlotte Chiboust", "Wellington", "Corgi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1431 }
            Reponses := array{"Marilyn", "Wheel", "Ottoland", "Usunoro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1432 }
            Reponses := array{"Daikoku", "Whetton", "Pizarro Avalo", "Pascia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1433 }
            Reponses := array{"Schollzo", "Yamakaji", "Napoleon", "Feld Du"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1434 }
            Reponses := array{"Koshi Falcon", "Yamanba", "Chao", "Pellini"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1435 }
            Reponses := array{"Mizerka", "Yamao Happa", "Chihaya", "Kazenbo"}
            BonneReponse := 1

MakeOnePieceQuestionsFR8() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1436 }
            Reponses := array{"Vito", "Yatappe", "Tightrope Walking Funan Bros (Beanie Hat)", "Itomimizu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1437 }
            Reponses := array{"Juubei", "Charlotte Anana", "Bill", "Yazaemon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1438 }
            Reponses := array{"Wakasa", "Koshi Falcon", "Itomimizu", "Yokan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1439 }
            Reponses := array{"All-Hunt Grount", "Myure", "Yoshimoto", "Tristan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1440 }
            Reponses := array{"Part", "Ideaman", "Yotsubane", "Hip"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1441 }
            Reponses := array{"Mozambia", "Yui", "Ducky Bree", "Sweet Pea"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1442 }
            Reponses := array{"Manboshi", "Yuki", "Vinsmoke Sora", "Chappe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1443 }
            Reponses := array{"Bellett", "Orlumbus", "Yuu's Father", "Kamyu's Fellow Swordsman"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1444 }
            Reponses := array{"Laskey", "Fry Panz", "Yuya", "Gismonda"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1445 }
            Reponses := array{"Achino Salcho", "Geronimo", "Shaka", "Zaba"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1446 }
            Reponses := array{"Wallem", "Jaiya Shin", "Wheel", "Zabo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1447 }
            Reponses := array{"Tansui", "Charlotte Marnier", "Samurai Batts", "Zadie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1448 }
            Reponses := array{"Ally", "Zangirimaru", "Ageha Woman", "Shura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1449 }
            Reponses := array{"Kaya", "Charlotte Newsan", "Daikoku", "Zanki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1450 }
            Reponses := array{"Charlotte Mobile", "Sutton", "Zotto", "Samurai Batts"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ onepiece.op_x1451 }
            Reponses := array{"Jones Hody", "G-8 Sous Chef", "de Bonham Ant", "Sapi"}
            BonneReponse := 2

MakeOnePieceQuestionsFR() : []question =
    MakeOnePieceQuestionsFR1() + MakeOnePieceQuestionsFR2() + MakeOnePieceQuestionsFR3() + MakeOnePieceQuestionsFR4() + MakeOnePieceQuestionsFR5() + MakeOnePieceQuestionsFR6() + MakeOnePieceQuestionsFR7() + MakeOnePieceQuestionsFR8()

MakeOnePieceQuestions() : []question =
    MakeOnePieceQuestionsFR()

MakeOnePieceQuestionsEN() : []question =
    Base := MakeOnePieceQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Who is this character?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeOnePieceQuestionsES() : []question =
    Base := MakeOnePieceQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Quien es este personaje?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeOnePieceQuestionsDE() : []question =
    Base := MakeOnePieceQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Wer ist dieser Charakter?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeOnePieceQuestionsIT() : []question =
    Base := MakeOnePieceQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Chi e questo personaggio?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }
