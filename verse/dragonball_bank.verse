using { /Verse.org/Assets }

# ============================================================
#  dragonball_bank.verse — Banque du quizz DRAGON BALL (434 persos,
#  DB + Z + GT + Super, source MyAnimeList/Jikan).
#  GENERE par tools/build_dragonball.py — NE PAS EDITER A LA MAIN.
#  Noms identiques dans les 5 langues -> banque FR + wrappers.
# ============================================================

# Palier par question (0 = cultes, 1 = connus, 2 = obscurs ; favoris MAL).
DragonBallDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeDragonBallQuestionsFR1() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0001 }
            Reponses := array{"Son Goku", "Majin Buu", "Tenshinhan", "Videl"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0002 }
            Reponses := array{"Gotenks", "Zamasu", "Vegeta", "Raditz"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0003 }
            Reponses := array{"Son Gohan", "Bulma", "Whis", "Kefla"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0004 }
            Reponses := array{"Chaozu", "Android 18", "Piccolo", "Jiren"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0005 }
            Reponses := array{"Future Trunks", "Jiren", "North Kaio", "Pu'ar"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0006 }
            Reponses := array{"Nappa", "Freeza", "Son Goku", "Zamasu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0007 }
            Reponses := array{"Android 18", "Bubbles", "Goku Black", "Lunch"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0008 }
            Reponses := array{"Pan", "Vegetto", "Future Trunks", "Trunks"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0009 }
            Reponses := array{"Nappa", "Majin Buu", "Tao Pai Pai", "Bulma"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0010 }
            Reponses := array{"Piccolo", "Vegeta", "Master Roshi", "Kefla"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0011 }
            Reponses := array{"Goku Black", "Tao Pai Pai", "Krillin", "Raditz"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0012 }
            Reponses := array{"Goku Black", "Bardock", "Son Goku Jr.", "Son Gohan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0013 }
            Reponses := array{"Nappa", "Android 18", "Karin", "Beerus"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0014 }
            Reponses := array{"Goku Black", "Freeza", "Pu'ar", "Cell"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0015 }
            Reponses := array{"Android 18", "Jiren", "Bulma", "Vegeta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0016 }
            Reponses := array{"Trunks", "Karin", "Gotenks", "Gogeta"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0017 }
            Reponses := array{"Son Goten", "Chaozu", "Videl", "Android 18"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0018 }
            Reponses := array{"Majin Buu", "Chi-Chi", "Master Roshi", "Bubbles"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0019 }
            Reponses := array{"Vegetto", "Piccolo", "Android 18", "Son Goten"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0020 }
            Reponses := array{"Gogeta", "Norimaki Arale", "Android 17", "Zenou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0021 }
            Reponses := array{"Mr. Satan", "Yamcha", "Jiren", "Gogeta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0022 }
            Reponses := array{"Bubbles", "Ginyu", "Bulma", "Tenshinhan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0023 }
            Reponses := array{"Son Goku", "Caulifla", "Trunks", "Norimaki Arale"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0024 }
            Reponses := array{"Whis", "Vegeta", "Jiren", "Vegetto"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0025 }
            Reponses := array{"Zamasu", "Karin", "Gogeta", "Piccolo Daimao"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0026 }
            Reponses := array{"Piccolo Daimao", "Videl", "Jiren", "Lunch"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0027 }
            Reponses := array{"Bardock", "Mr. Popo", "Son Goku", "Trunks"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0028 }
            Reponses := array{"Chi-Chi", "Master Roshi", "Gogeta", "Jiren"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0029 }
            Reponses := array{"Android 17", "Mr. Satan", "Son Goten", "Raditz"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0030 }
            Reponses := array{"Vegeta", "North Kaio", "Lunch", "Chaozu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0031 }
            Reponses := array{"Son Goten", "Mr. Satan", "Son Goku Jr.", "Whis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0032 }
            Reponses := array{"Hit", "Bubbles", "Piccolo Daimao", "Karin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0033 }
            Reponses := array{"Pan", "Freeza", "Ginyu", "Gotenks"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0034 }
            Reponses := array{"Trunks", "Ginyu", "Zenou", "Lunch"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0035 }
            Reponses := array{"Whis", "Son Goku", "Freeza", "Caulifla"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0036 }
            Reponses := array{"Chi-Chi", "Pu'ar", "Android 17", "Chaozu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0037 }
            Reponses := array{"Android 16", "Chi-Chi", "Bubbles", "Nappa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0038 }
            Reponses := array{"Raditz", "Vegeta", "Hit", "Gotenks"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0039 }
            Reponses := array{"Gotenks", "Freeza", "Cell", "Chi-Chi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0040 }
            Reponses := array{"Android 17", "Majin Buu", "Tenshinhan", "Raditz"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0041 }
            Reponses := array{"Zenou", "Lunch", "Chi-Chi", "Yajirobe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0042 }
            Reponses := array{"Caulifla", "Nappa", "Pu'ar", "Whis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0043 }
            Reponses := array{"Majin Buu", "Karin", "Beerus", "Bulma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0044 }
            Reponses := array{"Caulifla", "Krillin", "Son Goten", "Nappa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0045 }
            Reponses := array{"Bubbles", "Piccolo Daimao", "Chaozu", "Android 16"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0046 }
            Reponses := array{"Yamcha", "Bubbles", "Gotenks", "Raditz"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0047 }
            Reponses := array{"Ginyu", "Gotenks", "Son Gohan", "Son Goku Jr."}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0048 }
            Reponses := array{"Yajirobe", "Mr. Popo", "Mr. Satan", "North Kaio"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0049 }
            Reponses := array{"Pu'ar", "Son Goten", "Kefla", "Ginyu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0050 }
            Reponses := array{"Piccolo Daimao", "Karin", "Tao Pai Pai", "Mr. Satan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0051 }
            Reponses := array{"Mai", "Haiya Dragon", "Dracula Man", "Super Shen Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0052 }
            Reponses := array{"Amaguri Cocoa", "General Rilldo", "Future Mai", "Vegeta Jr."}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0053 }
            Reponses := array{"Mira-kun", "Blind Boy", "Gattai Zamasu", "Liquiir"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0054 }
            Reponses := array{"Teirimentenpibosshi Jaco", "Oolong", "Cabba", "Grandma Paozu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0055 }
            Reponses := array{"Higashi no Kaioshin", "Baby", "Colonel Violet", "Suppaman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0056 }
            Reponses := array{"Poperu", "Porunga", "Tenkaichi Budokai Announcer", "Higashi no Kaioshin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0057 }
            Reponses := array{"Daishinkan", "Hasky", "Kami", "Norimaki Senbei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0058 }
            Reponses := array{"Liquiir", "Burter", "Toppo", "Shen Long"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0059 }
            Reponses := array{"Shen Long", "Dende", "Daishinkan", "Blind Boy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0060 }
            Reponses := array{"Umikame", "Bra", "Pilaf", "Pui Pui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0061 }
            Reponses := array{"Marron", "Monaka", "Tenkaichi Budokai Announcer", "Kimidori Akane"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0062 }
            Reponses := array{"General Blue", "Vermoud", "General Rilldo", "Jeice"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0063 }
            Reponses := array{"Super 17-gou", "Chuu Lee's Mother", "Tama", "Kimidori Akane"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0064 }
            Reponses := array{"Uub", "Super Shen Long", "Cynthia", "Ackman"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0065 }
            Reponses := array{"Konkichi", "Chapa-O", "Giru", "Killa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0066 }
            Reponses := array{"Toppo", "Nail", "Copy Vegeta", "Kale"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0067 }
            Reponses := array{"Porunga", "Vados", "Sarada Kinoko", "Akkuman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0068 }
            Reponses := array{"Suno", "General Blue", "King Vegeta", "Frost"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0069 }
            Reponses := array{"Uub", "Frost", "Teirimentenpibosshi Jaco", "Pui Pui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0070 }
            Reponses := array{"Dai Kaio", "Basil", "Shuu", "Umikame"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0071 }
            Reponses := array{"Dr. Briefs", "Vegeta Jr.", "Android 8", "Sergeant Murasaki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0072 }
            Reponses := array{"Monaka", "Buyon", "Gregory", "Danpara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0073 }
            Reponses := array{"Kimidori Akane", "Fuan Ran", "Farmer", "Vegeta Jr."}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0074 }
            Reponses := array{"Guldo", "Bra", "Dyspo", "Mojito"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0075 }
            Reponses := array{"Paikuhan", "Umikame", "Bibidi", "Konkichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0076 }
            Reponses := array{"Annin", "General Rilldo", "Gattai Zamasu", "Daishinkan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0077 }
            Reponses := array{"General Blue", "Daishinkan", "Dodoria", "Gattai Zamasu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0078 }
            Reponses := array{"Shuu", "Paikuhan", "Akkuman", "Higashi no Kaioshin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0079 }
            Reponses := array{"Future Mai", "Hasky", "Arack", "Dolphin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0080 }
            Reponses := array{"Norimaki Gajira", "Kibito", "Saichourou", "Monaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0081 }
            Reponses := array{"Oregano", "Toppo", "Kale", "Anat"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0082 }
            Reponses := array{"Paikuhan", "Liu Xing Long", "Zarbon", "Dr. Mashirito"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0083 }
            Reponses := array{"Burter", "Kimidori Akane", "Uub", "General Rilldo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0084 }
            Reponses := array{"Pilaf", "Buyon", "Cui", "Champa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0085 }
            Reponses := array{"Mutaito", "Yogengyo", "Staff Officer Black", "Higashi no Kaioshin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0086 }
            Reponses := array{"Maron", "Kimidori Akane", "King Cold", "Guldo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0087 }
            Reponses := array{"Dai Kaioshin", "Gowasu", "Arack", "Rou Kaioshin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0088 }
            Reponses := array{"Suppaman", "Mutaito", "Maron", "Shen Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0089 }
            Reponses := array{"Cocotte", "Liquiir", "Dolphin", "Guldo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0090 }
            Reponses := array{"Vegeta Jr.", "Sanzoku Kuma", "Umikame", "Nail"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0091 }
            Reponses := array{"Yi Xing Long", "Recoome", "Amaguri Cocoa", "Chico"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0092 }
            Reponses := array{"Yi Xing Long", "Sarada Kinoko", "Frost", "Suno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0093 }
            Reponses := array{"Maron", "Cabba", "Anilaza", "Pilaf"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0094 }
            Reponses := array{"Cell Jr.", "Babidi", "Oolong", "General Rilldo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0095 }
            Reponses := array{"Shen Long", "Porunga", "Bacterian", "Garlic Junior"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0096 }
            Reponses := array{"Bra", "Fuan Ran", "Garlic Junior", "Tama"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0097 }
            Reponses := array{"Danpara", "Bergamo", "Kami", "King Vegeta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0098 }
            Reponses := array{"Suno", "Teirimentenpibosshi Jaco", "Zarbon", "Anat"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0099 }
            Reponses := array{"Gasshu", "Maron", "Cus", "Super 17-gou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0100 }
            Reponses := array{"Bulma's Mother", "Commander Red", "Uranai Baba", "Farmer"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0101 }
            Reponses := array{"Cus", "Tsuru-Sennin", "Otokosuki", "Gyumao"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0102 }
            Reponses := array{"Bora", "Grandma Oharu", "Mai", "Dr. Gero"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0103 }
            Reponses := array{"Liquiir", "Vermoud", "Dabura", "Giran"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0104 }
            Reponses := array{"Gregory", "Bra", "Basil", "Super Shen Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0105 }
            Reponses := array{"Marron", "Colonel Violet", "Recoome", "Dai Kaioshin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0106 }
            Reponses := array{"Haiya Dragon", "Kami", "Android 8", "Sergeant Murasaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0107 }
            Reponses := array{"Erasa", "Soramame Tarou", "Basil", "Jeice"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0108 }
            Reponses := array{"Rou Kaioshin", "Toppo", "Sanzoku Kuma", "Super Shen Long"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0109 }
            Reponses := array{"Giru", "Suppaman", "Arack", "Upa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0110 }
            Reponses := array{"de Chateau Brianne", "Shuu", "Poperu", "Helles"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0111 }
            Reponses := array{"Anilaza", "Cell Jr.", "Blind Boy", "Gasshu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0112 }
            Reponses := array{"Giru", "Haiya Dragon", "Bergamo", "Saichourou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0113 }
            Reponses := array{"Cus", "Kimidori Akane", "Kami", "Bulma's Mother"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0114 }
            Reponses := array{"King Cold", "Dyspo", "King Vegeta", "Caway"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0115 }
            Reponses := array{"Drum", "Rou Kaioshin", "Konkichi", "Copy Vegeta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0116 }
            Reponses := array{"Poperu", "Namu", "Blind Boy", "Cymbal"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0117 }
            Reponses := array{"Liquiir", "Porunga", "Spopovitch", "Bonpara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0118 }
            Reponses := array{"Copy Vegeta", "Mojito", "Higashi no Kaioshin", "Fuan Ran"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0119 }
            Reponses := array{"Vodka", "Dai Kaio", "Daishinkan", "Dodoria"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0120 }
            Reponses := array{"Hasky", "Gasshu", "Erasa", "Giru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0121 }
            Reponses := array{"Suppaman", "Mutaito", "Future Mai", "Mai"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0122 }
            Reponses := array{"Obotchaman", "Teirimentenpibosshi Jaco", "Anilaza", "Super 17-gou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0123 }
            Reponses := array{"Future Mai", "Giru", "Porunga", "Bacterian"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0124 }
            Reponses := array{"Cabba", "Gasshu", "Staff Officer Black", "Saichourou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0125 }
            Reponses := array{"Higashi no Kaioshin", "Babidi", "Sarada Kinoko", "Pui Pui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0126 }
            Reponses := array{"Akkuman", "Vodka", "Giru", "Kibito"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0127 }
            Reponses := array{"Si Xing Long", "Amaguri Cocoa", "Rou Kaioshin", "Mira-kun"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0128 }
            Reponses := array{"Marron", "Cui", "Babidi", "Bee"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0129 }
            Reponses := array{"Oregano", "Arack", "Blind Boy", "Dolphin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0130 }
            Reponses := array{"Farmer", "Copy Vegeta", "Hasky", "Cui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0131 }
            Reponses := array{"Farmer", "Dodoria", "Toppo", "Colonel Violet"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0132 }
            Reponses := array{"Konkichi", "Tsuru-Sennin", "Dracula Man", "Chuu Lee's Mother"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0133 }
            Reponses := array{"Hell Fighter 17-gou", "Upa", "Annin", "Dyspo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0134 }
            Reponses := array{"Gyumao", "Dracula Man", "Dyspo", "Yi Xing Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0135 }
            Reponses := array{"Cell Games Announcer", "Rou Kaioshin", "Helles", "Marron"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0136 }
            Reponses := array{"Namu", "Kibito", "Si Xing Long", "Daishinkan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0137 }
            Reponses := array{"Shen Long", "Sarada Kinoko", "Maron", "Helles"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0138 }
            Reponses := array{"Namu", "Norimaki Turbo", "Sergeant Murasaki", "Botamo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0139 }
            Reponses := array{"Pui Pui", "Akkuman", "Danpara", "Maron"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0140 }
            Reponses := array{"Si Xing Long", "Porunga", "Burter", "Cus"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0141 }
            Reponses := array{"Uranai Baba", "Shen Long", "Annin", "Kale"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0142 }
            Reponses := array{"Uranai Baba", "Vodka", "Dr. Mashirito", "Dabura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0143 }
            Reponses := array{"Ackman", "Dr. Briefs", "Danpara", "Super Shen Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0144 }
            Reponses := array{"Annin", "Suppaman", "Vegeta Jr.", "Cynthia"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0145 }
            Reponses := array{"Konkichi", "Uub", "Appule", "Pui Pui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0146 }
            Reponses := array{"Shen Long", "Dai Kaio", "Hasky", "Botamo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0147 }
            Reponses := array{"Kibitoshin", "Nail", "Suno", "Buyon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0148 }
            Reponses := array{"Caway", "Sergeant Murasaki", "Cabba", "Jeice"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0149 }
            Reponses := array{"Cell Games Announcer", "Cynthia", "Bonpara", "Haiya Dragon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0150 }
            Reponses := array{"Chapa-O", "Si Xing Long", "Babidi", "Commander Red"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0151 }
            Reponses := array{"Dracula Man", "Chapa-O", "Mira-kun", "Cymbal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0152 }
            Reponses := array{"Dai Kaioshin", "Recoome", "Buckets Polly", "Colonel Violet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0153 }
            Reponses := array{"Champa", "Grandma Oharu", "General Rilldo", "Dr. Briefs"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0154 }
            Reponses := array{"Dr. Mashirito", "Kami", "Chapa-O", "Copy Vegeta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0155 }
            Reponses := array{"Yi Xing Long", "Enma Dai-Ou", "Norimaki Turbo", "Kale"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0156 }
            Reponses := array{"Teirimentenpibosshi Jaco", "Frost", "Chapa-O", "Sanzoku Kuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0157 }
            Reponses := array{"Fuan Ran", "General Rilldo", "Farmer", "Kami"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0158 }
            Reponses := array{"Appule", "Shen Long", "Kibitoshin", "Cui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0159 }
            Reponses := array{"Sergeant Murasaki", "Rou Kaioshin", "Vegeta Jr.", "Killa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0160 }
            Reponses := array{"Liquiir", "Cell Games Announcer", "Android 8", "Gattai Zamasu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0161 }
            Reponses := array{"Recoome", "Tsuru-Sennin", "Liu Xing Long", "Bergamo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0162 }
            Reponses := array{"Tenkaichi Budokai Announcer", "Dolphin", "Marcarita", "Garlic Junior"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0163 }
            Reponses := array{"Mira-kun", "Porunga", "Chapa-O", "#C6"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0164 }
            Reponses := array{"Liu Xing Long", "Helles", "Dende", "Mojito"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0165 }
            Reponses := array{"Marcarita", "Tama", "Oregano", "Oolong"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0166 }
            Reponses := array{"Otokosuki", "Dr. Mashirito", "Helles", "Killa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0167 }
            Reponses := array{"Uub", "Pilaf", "Poperu", "Umikame"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0168 }
            Reponses := array{"Ackman", "Sanzoku Kuma", "Cui", "Blind Boy"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0169 }
            Reponses := array{"Sarada Kinoko", "Recoome", "Vados", "Toninjinka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0170 }
            Reponses := array{"Dr. Mashirito", "Commander Red", "Tsuru-Sennin", "Kibito"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0171 }
            Reponses := array{"Ackman", "Nail", "Vermoud", "Liquiir"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0172 }
            Reponses := array{"Yogengyo", "Hasky", "Bra", "Sergeant Murasaki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0173 }
            Reponses := array{"Si Xing Long", "Cui", "#C6", "King Vegeta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0174 }
            Reponses := array{"Kibito", "Anat", "Killa", "#C6"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0175 }
            Reponses := array{"Anilaza", "de Chateau Brianne", "King Vegeta", "Mai"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0176 }
            Reponses := array{"Arack", "Bergamo", "Basil", "Sanzoku Kuma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0177 }
            Reponses := array{"Grandma Paozu", "Basil", "Chapa-O", "Frost"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0178 }
            Reponses := array{"Konkichi", "Toninjinka", "Bergamo", "Yi Xing Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0179 }
            Reponses := array{"Bibidi", "Dende", "Mutaito", "Giru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0180 }
            Reponses := array{"Umikame", "Bonpara", "Shuu", "Farmer"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0181 }
            Reponses := array{"Dercori", "Danpara", "Bora", "Copy Vegeta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0182 }
            Reponses := array{"Uub", "Dai Kaioshin", "Buckets Polly", "Norimaki Turbo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0183 }
            Reponses := array{"Nail", "Fuan Ran", "Monaka", "Chico"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0184 }
            Reponses := array{"Kibito", "Chuu Lee's Mother", "Otokosuki", "Dr. Gero"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0185 }
            Reponses := array{"Commander Red", "Kimidori Akane", "Baby", "Cocotte"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0186 }
            Reponses := array{"Colonel Violet", "Toninjinka", "Kale", "Suno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0187 }
            Reponses := array{"Commander Red", "#C6", "Drum", "Suppaman"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0188 }
            Reponses := array{"Botamo", "Cynthia", "Garlic Junior", "Akkuman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0189 }
            Reponses := array{"Tama", "Erasa", "Kibito", "Daiou Nikochan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0190 }
            Reponses := array{"Daiou Nikochan", "Monaka", "Danpara", "Giran"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0191 }
            Reponses := array{"Pui Pui", "Super 17-gou", "Dercori", "Appule"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0192 }
            Reponses := array{"Caway", "Farmer", "Sanzoku Kuma", "Drum"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0193 }
            Reponses := array{"Mojito", "Amaguri Cocoa", "Gasshu", "Dai Kaioshin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0194 }
            Reponses := array{"General Rilldo", "Mai", "Burter", "Gowasu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0195 }
            Reponses := array{"Paikuhan", "Anilaza", "Suppaman", "Giran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0196 }
            Reponses := array{"Cynthia", "Oregano", "Gowasu", "Cabba"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0197 }
            Reponses := array{"Copy Vegeta", "Shen Long", "Grandma Oharu", "Burter"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0198 }
            Reponses := array{"Grandma Paozu", "Chico", "Dolphin", "Bulma's Mother"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0199 }
            Reponses := array{"Dai Kaio", "Gregory", "Garlic Junior", "Hasky"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0200 }
            Reponses := array{"Dodoria", "Hell Fighter 17-gou", "Amaguri Cocoa", "Maron"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0201 }
            Reponses := array{"Tights", "Tupper", "Ill", "Hopp"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0202 }
            Reponses := array{"Zald", "Idasamama", "Sugoro", "Mint"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0203 }
            Reponses := array{"Kahseral", "Debu", "Minami no Kaioushin", "Zium"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0204 }
            Reponses := array{"Comfrey", "Katopesla", "Chibi", "Chao"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0205 }
            Reponses := array{"Koichiarator", "Korinto", "Grandma Hakkake", "Shosa"}
            BonneReponse := 0

MakeDragonBallQuestionsFR2() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0206 }
            Reponses := array{"Kokuen no Ryuu", "Ku Sanka", "Mustard", "Mezu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0207 }
            Reponses := array{"Napapa", "Lime", "Kahn Barry", "Ill"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0208 }
            Reponses := array{"Nishi no Kaioushin", "Murisarm", "Mera", "Magetta"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0209 }
            Reponses := array{"Shen", "Tsun Tsukutsun", "Mera", "Lee Chuu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0210 }
            Reponses := array{"Mermaid", "Yaochun", "Cargo", "Kita no Kaioushin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0211 }
            Reponses := array{"Sharpner", "Pirina", "Mint", "Hyoga Ten Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0212 }
            Reponses := array{"Prum", "Mutchy Motchy", "Don Kee", "Napapa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0213 }
            Reponses := array{"Nigrisshi", "Mother", "Yaochun", "Fuwa's Attendant"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0214 }
            Reponses := array{"Kuru", "Dr. Rota", "Tupper", "Nishi no Kaioushin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0215 }
            Reponses := array{"Ill", "Zoiray", "Suke-san", "Ogma"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0216 }
            Reponses := array{"Olibu", "Shantza", "Eclair", "Ugg"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0217 }
            Reponses := array{"Other World Budokai Announcer", "Hyssop", "Khai", "Sonpara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0218 }
            Reponses := array{"Kunshi", "Paparoni", "Kokuen no Ryuu", "Panchia"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0219 }
            Reponses := array{"Renso", "Panput", "15th Generation's Higashi no Kaioshin", "Paresu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0220 }
            Reponses := array{"Cukatail", "Vikal", "Paparoni", "Zeri"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0221 }
            Reponses := array{"Eclair", "Piano", "Parzan", "Prum"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0222 }
            Reponses := array{"Paul", "Comfrey", "Soramame Peasuke", "Chao"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0223 }
            Reponses := array{"Piano", "Awamo", "Zald", "Pagos"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0224 }
            Reponses := array{"Murisarm", "Haru", "Piiza", "Referee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0225 }
            Reponses := array{"Puck", "Fanfan", "Shura", "Musuka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0226 }
            Reponses := array{"Princess Snake", "Quitela", "Mighty Mask", "San Xing Long"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0227 }
            Reponses := array{"Kimidori Aoi", "Shosa", "Colonel Silver", "Rumsshi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0228 }
            Reponses := array{"Antique Shop Owner", "Korinto", "San Xing Long", "Potage"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0229 }
            Reponses := array{"Tights", "Bisuke", "Saonel", "Rozel"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0230 }
            Reponses := array{"Sharpner", "Yamu", "Debu", "San Xing Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0231 }
            Reponses := array{"Zoiray", "Parzan", "Wu Xing Long", "Sonpara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0232 }
            Reponses := array{"Soramame Kurikinton", "Er Xing Long", "Gala", "Parzan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0233 }
            Reponses := array{"The Preecho", "15th Generation's Higashi no Kaioshin", "Soramame Peasuke", "Gala"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0234 }
            Reponses := array{"Chappil", "Vuon", "Maji Kayo", "Sorrel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0235 }
            Reponses := array{"Parzan", "Rom", "Sour", "Cukatail"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0236 }
            Reponses := array{"Rabanra", "Bisuke", "Monna", "Suke-san"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0237 }
            Reponses := array{"Tagoma", "Gale", "Milkman", "Jilcol"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0238 }
            Reponses := array{"Muuri", "Rom", "Paparoni", "Tambourine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0239 }
            Reponses := array{"Tights", "Soramame Peasuke", "Orlen", "Kinkaku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0240 }
            Reponses := array{"Tsun Tsukutsun", "Sugoro", "Kokuen no Ryuu", "Obake"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0241 }
            Reponses := array{"Zoiray", "Ugg", "Obuni", "Mr. Shu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0242 }
            Reponses := array{"Majora", "Don Kee", "Punta", "Yakon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0243 }
            Reponses := array{"Korinto", "Panchia", "East Kaio", "Yamu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0244 }
            Reponses := array{"Rabbit Gang Member 1", "Antique Shop Owner", "Yaochun", "Hyoga Shao Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0245 }
            Reponses := array{"Martinu", "Comfrey", "Zoiray", "Zeri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0246 }
            Reponses := array{"Gora", "Awamo", "Musuka", "Zunoo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0247 }
            Reponses := array{"Kuru", "Murichim", "Mutchy Motchy", "15th Generation's Higashi no Kaioshin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0248 }
            Reponses := array{"Android 19", "Pteranodon", "Zirloin", "Musuka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0249 }
            Reponses := array{"Roas Su", "Angela", "Sorrel", "Piegero"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0250 }
            Reponses := array{"Mint", "Katopesla", "Anton the Great", "Antique Shop Owner"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0251 }
            Reponses := array{"Vuon", "Don Kee", "Anton the Great", "Prum"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0252 }
            Reponses := array{"Damon", "Haru", "Arqua", "Magetta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0253 }
            Reponses := array{"Awamo", "Other World Budokai Announcer", "Zald", "Soramame Peasuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0254 }
            Reponses := array{"Raspberry", "Galbi", "Yurin", "Babaro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0255 }
            Reponses := array{"Musuka", "Martinu", "Bisshu", "Nishi no Kaioushin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0256 }
            Reponses := array{"Hopp", "Bisuke", "Mother", "Tanmen"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0257 }
            Reponses := array{"Blueberry", "Angela", "Panchia", "Vikal"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0258 }
            Reponses := array{"Pirina", "Zium", "Bollarator", "Piano"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0259 }
            Reponses := array{"Obuni", "Rom", "Magetta", "Campari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0260 }
            Reponses := array{"Maki", "Sugoro", "Cargo", "Karoni"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0261 }
            Reponses := array{"Chao", "Rozel", "Debu", "Hyoga Ten Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0262 }
            Reponses := array{"Chappil", "Panchia", "Old Witch", "Hyoga Ten Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0263 }
            Reponses := array{"Dr. Myu", "Choco", "Napapa", "Chibi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0264 }
            Reponses := array{"Vinegar", "Chin Shoken", "Shura", "Viara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0265 }
            Reponses := array{"Jasmine", "Chin Taiken", "Sidra", "Rabbit Gang Member 2"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0266 }
            Reponses := array{"Maki", "Sharpner", "Choco", "Don Kee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0267 }
            Reponses := array{"Lavender", "Cognac", "Campari", "Sonpara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0268 }
            Reponses := array{"Fuwa", "Mighty Mask", "Colonel Silver", "Ill"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0269 }
            Reponses := array{"Colonel Yellow", "Rabanra", "Grandma Hakkake", "Lavender"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0270 }
            Reponses := array{"Sidra", "Majora", "Other World Budokai Announcer", "Comfrey"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0271 }
            Reponses := array{"Cookie", "Mr. Shu", "Tagoma", "Hopp"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0272 }
            Reponses := array{"Copy Gryll", "Shura", "Bollarator", "Pagos"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0273 }
            Reponses := array{"Nikochan's Servant", "Grandma Hakkake", "Mosco", "Cranberry"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0274 }
            Reponses := array{"Suke-san", "Shosa", "Don Kee", "Crepe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0275 }
            Reponses := array{"Cukatail", "Papoi", "Dock", "Campari"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0276 }
            Reponses := array{"Blueberry", "Damon", "Mezu", "Mosco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0277 }
            Reponses := array{"Arqua", "Debu", "Shantza", "Koichiarator"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0278 }
            Reponses := array{"Lilibeu", "Dock", "Mousse", "Olibu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0279 }
            Reponses := array{"Mint", "Bisuke", "Dolltaki", "South Kaio"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0280 }
            Reponses := array{"Pirozhki", "Zeri", "Don Kee", "Mr. Shu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0281 }
            Reponses := array{"Pirozhki", "Mera", "Potage", "Donuts"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0282 }
            Reponses := array{"Fuwa", "Methiop", "Lime", "Dr. Flappe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0283 }
            Reponses := array{"Tanmen", "Mother", "Dr. Myu", "Awamo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0284 }
            Reponses := array{"Roh", "Rubalt", "Geppuman", "Dr. Rota"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0285 }
            Reponses := array{"Pteranodon", "Rubalt", "Ea", "Blueberry"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0286 }
            Reponses := array{"East Kaio", "Koitsukai", "Khai", "Rozel"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0287 }
            Reponses := array{"Koku-Ou", "Monna", "Eclair", "Nink"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0288 }
            Reponses := array{"Monna", "Er Xing Long", "Sour", "Maji Kayo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0289 }
            Reponses := array{"Jewel", "Gamisaras", "Fanfan", "Zoiray"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0290 }
            Reponses := array{"Antique Shop Owner", "Paresu", "Fuwa", "Fuwa's Attendant"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0291 }
            Reponses := array{"Mint", "Fuwa's Attendant", "Rumsshi", "Dr. Flappe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0292 }
            Reponses := array{"Ea", "Tagoma", "Gala", "Er Xing Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0293 }
            Reponses := array{"Galbi", "Paul", "Yamabuki Midori", "Campari"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0294 }
            Reponses := array{"The Preecho", "Shen", "Gale", "Dr. Flappe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0295 }
            Reponses := array{"Gamisaras", "Wu Xing Long", "East Kaio", "Paparoni"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0296 }
            Reponses := array{"Maji Kayo", "Comfrey", "Ganos", "Musuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0297 }
            Reponses := array{"Pirozhki", "Geene", "Mustard", "Princess Snake"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0298 }
            Reponses := array{"Cukatail", "General White", "Napapa", "Mousse"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0299 }
            Reponses := array{"Geppuman", "Don Kee", "Gamisaras", "Kunshi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0300 }
            Reponses := array{"Shen", "Panchia", "Idasa", "Gingaou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0301 }
            Reponses := array{"Idasamama", "Ginkaku", "Muuri", "Lee Chuu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0302 }
            Reponses := array{"Narirama", "Girl", "Minami no Kaioushin", "15th Generation's Higashi no Kaioshin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0303 }
            Reponses := array{"Piano", "Gora", "Katopesla", "Hyssop"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0304 }
            Reponses := array{"Bollarator", "Copy Gryll", "Gozu", "Geene"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0305 }
            Reponses := array{"Jilcol", "Iwne", "Pirozhki", "Grandma Hakkake"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0306 }
            Reponses := array{"Sorbet", "Ledgic", "Mother", "Gryll"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0307 }
            Reponses := array{"Haru", "Punta", "Gamisaras", "Gala"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0308 }
            Reponses := array{"Hermila", "General White", "Zant Van", "Grandma Hakkake"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0309 }
            Reponses := array{"Shantza", "Pochawompa", "Cookie", "Hyoga Shao Long"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0310 }
            Reponses := array{"Hyoga Ten Long", "Panput", "Zirloin", "South Kaio"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0311 }
            Reponses := array{"Hyssop", "Prum", "Murisarm", "Soramame Peasuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0312 }
            Reponses := array{"Sidra", "Cognac", "Idasa", "Mighty Mask"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0313 }
            Reponses := array{"Yaochun", "Ikose", "Sorbet", "Gala"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0314 }
            Reponses := array{"Punta", "Maki", "Idasa", "Ill"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0315 }
            Reponses := array{"Roas Su", "Donuts", "Zoiray", "Iwne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0316 }
            Reponses := array{"Jasmine", "Piano", "Punta", "Viara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0317 }
            Reponses := array{"Tagoma", "Sonpara", "Napapa", "Jewel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0318 }
            Reponses := array{"Pirozhki", "Jilcol", "Monna", "Pochawompa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0319 }
            Reponses := array{"Watagash", "East Kaio", "Maki", "Jimeze"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0320 }
            Reponses := array{"Kokuen no Ryuu", "The Preecho", "Jirasen", "San Xing Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0321 }
            Reponses := array{"Sonpara", "Kahn Barry", "Mezu", "Gryll"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0322 }
            Reponses := array{"Viara", "Vinegar", "Karoni", "Kettol"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0323 }
            Reponses := array{"Kettol", "Monna", "Dock", "Hyssop"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0324 }
            Reponses := array{"Colonel Yellow", "Khai", "Referee", "East Kaio"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0325 }
            Reponses := array{"Kita no Kaioushin", "Rubalt", "Vuon", "Kimidori Aoi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0326 }
            Reponses := array{"King Kress", "Fuwa", "Potage", "Hyoga Ten Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0327 }
            Reponses := array{"Campari", "Obake", "Kinkaku", "Cukatail"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0328 }
            Reponses := array{"Saonel", "South Kaio", "Kita no Kaioushin", "Yurin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0329 }
            Reponses := array{"East Kaio", "Koitsukai", "Tights", "Kimidori Aoi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0330 }
            Reponses := array{"Minami no Kaioushin", "Katopesla", "Koku-Ou", "Sidra"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0331 }
            Reponses := array{"Kokuen no Ryuu", "South Kaio", "Snake Way Guide", "Sorbet"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0332 }
            Reponses := array{"Babaro", "Nigrisshi", "Korinto", "West Kaio"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0333 }
            Reponses := array{"Crepe", "The Preecho", "Korn", "Hyoga Ten Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0334 }
            Reponses := array{"Suke-san", "Campari", "Kunshi", "Yakon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0335 }
            Reponses := array{"Arqua", "Donuts", "Sharpner", "Kuru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0336 }
            Reponses := array{"Murichim", "Lavender", "Mermaid", "Musuka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0337 }
            Reponses := array{"Kahseral", "Ledgic", "Iwne", "Ganos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0338 }
            Reponses := array{"South Kaio", "Android 19", "Lee Chuu", "Debu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0339 }
            Reponses := array{"Sherman Priest", "Lemuria", "Kahseral", "Punta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0340 }
            Reponses := array{"Shosa", "Iwne", "Lilibeu", "Sour"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0341 }
            Reponses := array{"Snake Way Guide", "Gingaou", "Maji Kayo", "Damon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0342 }
            Reponses := array{"Sergeant Metallic", "Zunoo", "Majora", "Gryll"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0343 }
            Reponses := array{"Maki", "Hyoga Shao Long", "Paul", "Soramame Peasuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0344 }
            Reponses := array{"Colonel Yellow", "Jasmine", "Maraikoh", "Crepe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0345 }
            Reponses := array{"Fuwa", "Soramame Peasuke", "Eclair", "Martinu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0346 }
            Reponses := array{"Methiop", "Iwne", "Qi Xing Long", "Korn"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0347 }
            Reponses := array{"Piegero", "Mezu", "Ogma", "Suke-san"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0348 }
            Reponses := array{"Mighty Mask", "Roh", "Shosa", "Fuwa's Attendant"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0349 }
            Reponses := array{"Mousse", "Jimeze", "Milkman", "Rubalt"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0350 }
            Reponses := array{"Minami no Kaioushin", "Koku-Ou", "Ugg", "Ledgic"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0351 }
            Reponses := array{"Parzan", "Gryll", "Cranberry", "Monna"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0352 }
            Reponses := array{"Koichiarator", "Snake Way Guide", "Mosco", "Koitsukai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0353 }
            Reponses := array{"Mother", "Tsun Tsukutsun", "Yamabuki Midori", "Koitsukai"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0354 }
            Reponses := array{"Mousse", "Rozel", "Khai", "Maki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0355 }
            Reponses := array{"Choco", "Mr. Shu", "Karoni", "Ku Sanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0356 }
            Reponses := array{"Murichim", "Pteranodon", "Kahn Barry", "Hyssop"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0357 }
            Reponses := array{"Murisarm", "Katopesla", "Shosa", "Tupper"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0358 }
            Reponses := array{"Zeri", "Mustard", "Raspberry", "Idasamama"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0359 }
            Reponses := array{"Musuka", "Damon", "Ganos", "Idasamama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0360 }
            Reponses := array{"Lilibeu", "Kahseral", "Vinegar", "Muuri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0361 }
            Reponses := array{"Maraikoh", "Qi Xing Long", "Don Kee", "Napapa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0362 }
            Reponses := array{"Gamisaras", "Rubalt", "Narirama", "Kokuen no Ryuu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0363 }
            Reponses := array{"West Kaio", "Sergeant Metallic", "Nikochan's Servant", "East Kaio"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0364 }
            Reponses := array{"Pteranodon", "Sheela", "Sour", "Nink"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0365 }
            Reponses := array{"Pell", "Pochawompa", "Nok", "Gamisaras"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0366 }
            Reponses := array{"Ill", "Noppo", "Mera", "Gozu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0367 }
            Reponses := array{"Obake", "Grandma Hakkake", "Shuuku", "Geene"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0368 }
            Reponses := array{"Jimeze", "Obuni", "Pteranodon", "Gingaou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0369 }
            Reponses := array{"Old Witch", "Copy Gryll", "Jirasen", "Jilcol"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0370 }
            Reponses := array{"Suke-san", "Ea", "Oonaan", "Chin Shoken"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0371 }
            Reponses := array{"Kita no Kaioushin", "Orlen", "Referee", "Kettol"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0372 }
            Reponses := array{"Pagos", "Mermaid", "Tights", "Mighty Mask"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0373 }
            Reponses := array{"Papoi", "Chin Taiken", "Kuru", "Panchia"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0374 }
            Reponses := array{"Girl", "Mint", "Paresu", "Cranberry"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0375 }
            Reponses := array{"Chappil", "Dock", "Qi Xing Long", "Pell"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0376 }
            Reponses := array{"Rabbit Gang Member 1", "Soramame Kurikinton", "Penguin Village Junior High Principal", "Tagoma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0377 }
            Reponses := array{"Dr. Myu", "Ginkaku", "East Kaio", "Piegero"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0378 }
            Reponses := array{"Pirina", "Yurin", "Kokuen no Ryuu", "Sherman Priest"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0379 }
            Reponses := array{"Nikochan's Servant", "Murichim", "Don Kee", "Pirozhki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0380 }
            Reponses := array{"Kinkaku", "Renso", "Pochawompa", "Ku Sanka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0381 }
            Reponses := array{"Piano", "Chibi", "Potage", "Monna"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0382 }
            Reponses := array{"Princess Misa", "Geene", "Mousse", "Antique Shop Owner"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0383 }
            Reponses := array{"Kimidori Aoi", "Idasa", "Obuni", "Princess Snake"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0384 }
            Reponses := array{"Kahn Barry", "Prum", "Zald", "Sonpara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0385 }
            Reponses := array{"Crepe", "Vinegar", "Pteranodon", "Sherman Priest"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0386 }
            Reponses := array{"Suke-san", "Rumsshi", "Shura", "Pudding"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0387 }
            Reponses := array{"Punta", "Pagos", "Shen", "Tupper"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0388 }
            Reponses := array{"Gala", "Antique Shop Owner", "Qi Xing Long", "Nigrisshi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0389 }
            Reponses := array{"San Xing Long", "Haru", "Copy Gryll", "Rabanra"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0390 }
            Reponses := array{"Zoiray", "Katopesla", "Rabanra", "Rabbit Gang Member 1"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0391 }
            Reponses := array{"Rabbit Gang Member 2", "Piano", "Quitela", "Koichiarator"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0392 }
            Reponses := array{"Bollarator", "Shantza", "Raspberry", "Jirasen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0393 }
            Reponses := array{"Maji Kayo", "Mousse", "Papoi", "Referee"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0394 }
            Reponses := array{"Tambourine", "Papoi", "Renso", "Chin Taiken"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0395 }
            Reponses := array{"Colonel Silver", "Roas Su", "Jirasen", "15th Generation's Higashi no Kaioshin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0396 }
            Reponses := array{"Pagos", "Maki", "Choco", "Rock"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0397 }
            Reponses := array{"Roh", "Sorbet", "Princess Misa", "Piegero"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0398 }
            Reponses := array{"Noppo", "Rom", "Mera", "Mosco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0399 }
            Reponses := array{"Suke-san", "Rozel", "15th Generation's Higashi no Kaioshin", "East Kaio"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0400 }
            Reponses := array{"Rubalt", "Pudding", "Shantza", "Majora"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0401 }
            Reponses := array{"Pudding", "Maraikoh", "Sergeant Metallic", "Tagoma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0402 }
            Reponses := array{"Dr. Rota", "Shisami", "Roas Su", "Shantza"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0403 }
            Reponses := array{"Shuuku", "Sheela", "Monna", "Gryll"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0404 }
            Reponses := array{"Soramame Kurikinton", "Gingaou", "Shen", "Pagos"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0405 }
            Reponses := array{"Sonpara", "Lemuria", "Sherman Priest", "Referee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0406 }
            Reponses := array{"Geppuman", "Shi-Buta", "Wu Xing Long", "Shuuku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0407 }
            Reponses := array{"Shisami", "Bollarator", "Princess Misa", "Ku Sanka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0408 }
            Reponses := array{"Shosa", "Mutchy Motchy", "Kimidori Aoi", "Mighty Mask"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0409 }
            Reponses := array{"Gozu", "Shura", "Ill", "Sorrel"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0410 }
            Reponses := array{"Cookie", "Shuuku", "Zium", "Yamu"}
            BonneReponse := 1

MakeDragonBallQuestionsFR3() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0411 }
            Reponses := array{"Sidra", "Puck", "Rozel", "Ganos"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0412 }
            Reponses := array{"Pteranodon", "Lemuria", "Koku-Ou", "Snake Way Guide"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0413 }
            Reponses := array{"Gamisaras", "Obuni", "Sorbet", "Paparoni"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0414 }
            Reponses := array{"Vuon", "Sidra", "South Kaio", "Zoiray"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0415 }
            Reponses := array{"Shuuku", "Trampire", "Sugoro", "Wu Xing Long"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0416 }
            Reponses := array{"Tanmen", "Soramame Kurikinton", "King Kress", "Hyoga Shao Long"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0417 }
            Reponses := array{"San Xing Long", "Watagash", "The Preecho", "Bisshu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0418 }
            Reponses := array{"Ill", "Trampire", "Eclair", "Lime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0419 }
            Reponses := array{"Tupper", "Kettol", "San Xing Long", "Zium"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0420 }
            Reponses := array{"Zirloin", "Chao", "Dr. Myu", "Viara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0421 }
            Reponses := array{"Vikal", "Kokuen no Ryuu", "Damon", "Kahseral"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0422 }
            Reponses := array{"Kettol", "Qi Xing Long", "Ikose", "Vinegar"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0423 }
            Reponses := array{"Mr. Shu", "Muuri", "Vuon", "Potage"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0424 }
            Reponses := array{"Angela", "Watagash", "Er Xing Long", "Girl"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0425 }
            Reponses := array{"West Kaio", "Bollarator", "Ikose", "Soramame Kurikinton"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0426 }
            Reponses := array{"Bisshu", "Wu Xing Long", "Rabbit Gang Member 2", "Chin Taiken"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0427 }
            Reponses := array{"Yamabuki Midori", "Viara", "Nok", "Fanfan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0428 }
            Reponses := array{"Ea", "Mustard", "Yurin", "Murisarm"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0429 }
            Reponses := array{"Yamu", "Quitela", "Zald", "Choco"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0430 }
            Reponses := array{"Babaro", "Nishi no Kaioushin", "Kokuen no Ryuu", "Zant Van"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0431 }
            Reponses := array{"Jewel", "Zarbuto", "Ugg", "Paparoni"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0432 }
            Reponses := array{"The Preecho", "Jasmine", "Zirloin", "Kuru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0433 }
            Reponses := array{"Paparoni", "Ikose", "Zium", "Android 19"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ dragonball.db_0434 }
            Reponses := array{"Zoiray", "Musuka", "Wu Xing Long", "Soramame Peasuke"}
            BonneReponse := 0

MakeDragonBallQuestionsFR() : []question =
    MakeDragonBallQuestionsFR1() + MakeDragonBallQuestionsFR2() + MakeDragonBallQuestionsFR3()

MakeDragonBallQuestions() : []question =
    MakeDragonBallQuestionsFR()

MakeDragonBallQuestionsEN() : []question =
    Base := MakeDragonBallQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Who is this character?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeDragonBallQuestionsES() : []question =
    Base := MakeDragonBallQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Quien es este personaje?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeDragonBallQuestionsDE() : []question =
    Base := MakeDragonBallQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Wer ist dieser Charakter?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeDragonBallQuestionsIT() : []question =
    Base := MakeDragonBallQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Chi e questo personaggio?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }
