using { /Verse.org/Assets }

# ============================================================
#  naruto_bank.verse — Banque du quizz NARUTO (825 personnages,
#  Naruto + Shippuden + Boruto, source MyAnimeList/Jikan).
#  GENERE par tools/build_naruto.py — NE PAS EDITER A LA MAIN.
#  Noms identiques dans les 5 langues -> banque FR + wrappers.
# ============================================================

# Palier par question (0 = cultes, 1 = connus, 2 = obscurs ; favoris MAL).
NarutoDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeNarutoQuestionsFR1() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0001 }
            Reponses := array{"Kawaki", "Suigetsu Hoozuki", "Orochimaru", "Naruto Uzumaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0002 }
            Reponses := array{"Boruto Uzumaki", "Madara Uchiha", "Itachi Uchiha", "Kakashi Hatake"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0003 }
            Reponses := array{"Minato Namikaze", "Kakashi Hatake", "Kakuzu", "Sakura Haruno"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0004 }
            Reponses := array{"Karin", "Kiba Inuzuka", "Hinata Hyuuga", "Sasuke Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0005 }
            Reponses := array{"Hanabi Hyuuga", "Sarada Uchiha", "Shikamaru Nara", "Kankurou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0006 }
            Reponses := array{"Kawaki", "Jiraiya", "Haku", "Teuchi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0007 }
            Reponses := array{"Madara Uchiha", "Kurama", "Kakashi Hatake", "Orochimaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0008 }
            Reponses := array{"Himawari Uzumaki", "Temari", "Kushina Uzumaki", "Gaara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0009 }
            Reponses := array{"Kawaki", "Hidan", "Guy Might", "Hinata Hyuuga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0010 }
            Reponses := array{"Madara Uchiha", "Sasori", "Konohamaru Sarutobi", "Minato Namikaze"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0011 }
            Reponses := array{"Jiraiya", "Hidan", "Kawaki", "Pain"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0012 }
            Reponses := array{"Jiraiya", "Shisui Uchiha", "Minato Namikaze", "Obito Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0013 }
            Reponses := array{"Rock Lee", "Kakashi Hatake", "Tobi", "Teuchi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0014 }
            Reponses := array{"Zabuza Momochi", "Sakura Haruno", "Iruka Umino", "Jiraiya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0015 }
            Reponses := array{"Neji Hyuuga", "Pain", "Sasori", "Orochimaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0016 }
            Reponses := array{"Ino Yamanaka", "Shisui Uchiha", "Kakashi Hatake", "Deidara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0017 }
            Reponses := array{"Hidan", "Sasori", "Tobi", "Orochimaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0018 }
            Reponses := array{"Hanabi Hyuuga", "Kurama", "Sasori", "Guy Might"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0019 }
            Reponses := array{"Yamato", "Tobi", "Itachi Uchiha", "Sakura Haruno"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0020 }
            Reponses := array{"Himawari Uzumaki", "Tsunade", "Hinata Hyuuga", "Killer Bee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0021 }
            Reponses := array{"Hashirama Senju", "Rock Lee", "Sasori", "Chouji Akimichi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0022 }
            Reponses := array{"Boruto Uzumaki", "Mitsuki", "Suigetsu Hoozuki", "Hanabi Hyuuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0023 }
            Reponses := array{"Akamaru", "Hidan", "Kisame Hoshigaki", "Shisui Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0024 }
            Reponses := array{"Obito Uchiha", "Suigetsu Hoozuki", "Deidara", "Hidan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0025 }
            Reponses := array{"Temari", "Obito Uchiha", "Kimimaro", "Neji Hyuuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0026 }
            Reponses := array{"Sarada Uchiha", "Kankurou", "Teuchi", "Jiraiya"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0027 }
            Reponses := array{"Asuma Sarutobi", "Neji Hyuuga", "Konan", "Killer Bee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0028 }
            Reponses := array{"Chouji Akimichi", "Zabuza Momochi", "Kushina Uzumaki", "Tobirama Senju"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0029 }
            Reponses := array{"Kiba Inuzuka", "Yamato", "Gaara", "Temari"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0030 }
            Reponses := array{"Kushina Uzumaki", "Jiraiya", "Chouji Akimichi", "Sakura Haruno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0031 }
            Reponses := array{"Mitsuki", "Akamaru", "Neji Hyuuga", "Kakuzu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0032 }
            Reponses := array{"Zabuza Momochi", "Kisame Hoshigaki", "Sarada Uchiha", "Sai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0033 }
            Reponses := array{"Iruka Umino", "Sarada Uchiha", "Kurama", "Minato Namikaze"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0034 }
            Reponses := array{"Tobirama Senju", "Asuma Sarutobi", "Naruto Uzumaki", "Killer Bee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0035 }
            Reponses := array{"Kiba Inuzuka", "Jiraiya", "Kushina Uzumaki", "Hashirama Senju"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0036 }
            Reponses := array{"Asuma Sarutobi", "Kurama", "Haku", "Anko Mitarashi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0037 }
            Reponses := array{"Kisame Hoshigaki", "Shisui Uchiha", "Chouji Akimichi", "Kakuzu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0038 }
            Reponses := array{"Killer Bee", "Kakashi Hatake", "Sasuke Uchiha", "Obito Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0039 }
            Reponses := array{"Sasori", "Shino Aburame", "Tenten", "Asuma Sarutobi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0040 }
            Reponses := array{"Jiraiya", "Obito Uchiha", "Ino Yamanaka", "Kankurou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0041 }
            Reponses := array{"Yamato", "Kawaki", "Mitsuki", "Karin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0042 }
            Reponses := array{"Shino Aburame", "Tobi", "Killer Bee", "Tobirama Senju"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0043 }
            Reponses := array{"Kimimaro", "Tobirama Senju", "Akamaru", "Shino Aburame"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0044 }
            Reponses := array{"Hashirama Senju", "Kisame Hoshigaki", "Mitsuki", "Kabuto Yakushi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0045 }
            Reponses := array{"Yamato", "Shino Aburame", "Kakuzu", "Tobi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0046 }
            Reponses := array{"Anko Mitarashi", "Shisui Uchiha", "Suigetsu Hoozuki", "Tobirama Senju"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0047 }
            Reponses := array{"Iruka Umino", "Sai", "Anko Mitarashi", "Shikamaru Nara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0048 }
            Reponses := array{"Pain", "Tsunade", "Tenten", "Himawari Uzumaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0049 }
            Reponses := array{"Boruto Uzumaki", "Iruka Umino", "Teuchi", "Asuma Sarutobi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0050 }
            Reponses := array{"Yamato", "Hanabi Hyuuga", "Kankurou", "Itachi Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0051 }
            Reponses := array{"Hidan", "Hanabi Hyuuga", "Kisame Hoshigaki", "Konohamaru Sarutobi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0052 }
            Reponses := array{"Gaara", "Teuchi", "Akamaru", "Tobirama Senju"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0053 }
            Reponses := array{"Kiba Inuzuka", "Karin", "Kankurou", "Boruto Uzumaki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0054 }
            Reponses := array{"Teuchi", "Kabuto Yakushi", "Kakashi Hatake", "Obito Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0055 }
            Reponses := array{"Tobi", "Neji Hyuuga", "Sasori", "Anko Mitarashi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0056 }
            Reponses := array{"Kabuto Yakushi", "Chouji Akimichi", "Kisame Hoshigaki", "Jiraiya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0057 }
            Reponses := array{"Rin Nohara", "Guy Might", "Pain", "Iruka Umino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0058 }
            Reponses := array{"Kiba Inuzuka", "Yahiko", "Shikamaru Nara", "Killer Bee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0059 }
            Reponses := array{"Karin", "Kisame Hoshigaki", "Tobirama Senju", "Yamato"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0060 }
            Reponses := array{"Akamaru", "Hanabi Hyuuga", "Shino Aburame", "Kurama"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0061 }
            Reponses := array{"Urashiki Ootsutsuki", "Hiruzen Sarutobi", "Mangetsu Hoozuki", "Mei Terumi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0062 }
            Reponses := array{"Inojin Yamanaka", "Hagoromo Ootsutsuki", "Gerotora", "Kaguya Ootsutsuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0063 }
            Reponses := array{"Juugo", "Kaneki", "Yugito Nii", "Tayuya"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0064 }
            Reponses := array{"Naka Uchiha", "Kurenai Yuuhi", "Dan Katou", "Condor"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0065 }
            Reponses := array{"Jinin Akebino", "Gamabunta", "Zetsu", "Chouchou Akimichi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0066 }
            Reponses := array{"Hiruzen Sarutobi", "Yukimaru", "Nonou Yakushi", "Izumo Kamizuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0067 }
            Reponses := array{"Wasabi Izuno", "Darui", "Muu", "Tayuya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0068 }
            Reponses := array{"Naka Uchiha", "Yota", "Pakkun", "Dock"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0069 }
            Reponses := array{"Kushimaru Kuriarare", "Danzou Shimura", "Jigen", "Guren"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0070 }
            Reponses := array{"Gantetsu", "Toneri Ootsutsuki", "Utakata", "Muu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0071 }
            Reponses := array{"Guren", "Furido", "Tayuya", "Raiga Kurosuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0072 }
            Reponses := array{"Ayame", "Tonton", "Kidoumaru", "Gamatatsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0073 }
            Reponses := array{"Houki Taketori", "Izuna Uchiha", "Jinin Akebino", "Mabui"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0074 }
            Reponses := array{"Yagura Karatachi", "Dosu Kinuta", "Kurenai Yuuhi", "Sumire Kakei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0075 }
            Reponses := array{"A (Third Raikage)", "Hanzou", "Genma Shiranui", "Ameno"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0076 }
            Reponses := array{"Mabui", "Indra Ootsutsuki", "Ayame", "Sasame Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0077 }
            Reponses := array{"Guruko", "Gamabunta", "Tekka Uchiha", "Baru Uchiha"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0078 }
            Reponses := array{"Shikadai Nara", "Yashiro Uchiha", "Jinin Akebino", "Son Gokuu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0079 }
            Reponses := array{"Omoi", "Mito Uzumaki", "Shin Uchiha", "Oonoki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0080 }
            Reponses := array{"Momoshiki Ootsutsuki", "Genno", "Furido", "Sukea"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0081 }
            Reponses := array{"Shukaku", "Dai Might", "Kotetsu Hagane", "Dock"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0082 }
            Reponses := array{"Choujuurou", "Hayate Gekkou", "Ajisai", "Inojin Yamanaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0083 }
            Reponses := array{"Tsume Inuzuka", "Shizune", "Mikoto Uchiha", "Yakumi Uchiha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0084 }
            Reponses := array{"A", "Ashura Ootsutsuki", "Kurenai Yuuhi", "Hotaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0085 }
            Reponses := array{"Ajisai", "Mifune", "Nonou Yakushi", "Isshiki Ootsutsuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0086 }
            Reponses := array{"Yagura Karatachi", "Dai Might", "Urashiki Ootsutsuki", "Shikaku Nara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0087 }
            Reponses := array{"Hayate Gekkou", "Chiyo", "Genzou", "Juugo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0088 }
            Reponses := array{"Sakon", "Ashura Ootsutsuki", "Gamakichi", "Menma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0089 }
            Reponses := array{"Omoi", "Gamaken", "Shizune", "Zaku Abumi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0090 }
            Reponses := array{"Hagoromo Ootsutsuki", "Furido", "Chiyo", "Tayuya"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0091 }
            Reponses := array{"Gamabunta", "Hayate Gekkou", "Eida", "Sandaime Kazekage"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0092 }
            Reponses := array{"Samui", "Kurenai Yuuhi", "Tonton", "Koji Kashin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0093 }
            Reponses := array{"Dan Katou", "Toneri Ootsutsuki", "Mifune", "Todoroki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0094 }
            Reponses := array{"Fuu", "Fugaku Uchiha", "Sasame Fuuma", "Kidoumaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0095 }
            Reponses := array{"Chino", "Iwabee Yuino", "Yagura Karatachi", "Gantetsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0096 }
            Reponses := array{"Mifune", "Hiruko", "Samui", "Kushimaru Kuriarare"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0097 }
            Reponses := array{"Shin Uchiha", "Chouchou Akimichi", "Toneri Ootsutsuki", "Enma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0098 }
            Reponses := array{"Hako Kuroi", "Jinin Akebino", "Inojin Yamanaka", "Kaneki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0099 }
            Reponses := array{"Menma", "Pakkun", "A (Third Raikage)", "Gamabunta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0100 }
            Reponses := array{"Mifune", "Gamabunta", "Eida", "Dosu Kinuta"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0101 }
            Reponses := array{"Oonoki", "Kaneki", "Son Gokuu", "Ukon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0102 }
            Reponses := array{"Guren", "Juugo", "Matsuri", "Sakumo Hatake"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0103 }
            Reponses := array{"Code", "Kaneki", "Juugo", "Yakumi Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0104 }
            Reponses := array{"Koji Kashin", "Hamura Ootsutsuki", "Oonoki", "Namida Suzumeno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0105 }
            Reponses := array{"Hayate Gekkou", "Naka Uchiha", "Nonou Yakushi", "Sakumo Hatake"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0106 }
            Reponses := array{"Shiho", "Genzou", "Dan Katou", "Guren"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0107 }
            Reponses := array{"Kaneki", "Izuna Uchiha", "Juuzou Biwa", "Shibi Aburame"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0108 }
            Reponses := array{"Gamabunta", "Akkun", "Izumi Uchiha", "Yodo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0109 }
            Reponses := array{"A", "Rai Uchiha", "Yugito Nii", "Gamatatsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0110 }
            Reponses := array{"Mei Terumi", "Sakumo Hatake", "Fugaku Uchiha", "Hagoromo Ootsutsuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0111 }
            Reponses := array{"Rai Uchiha", "Kotetsu Hagane", "Kagami Uchiha", "Choujuurou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0112 }
            Reponses := array{"Mizuki Touji", "Kaguya Ootsutsuki", "Sakon", "Chouza Akimichi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0113 }
            Reponses := array{"Shinki", "Enko Onikuma", "Kaneki", "Kosuke Maruboshi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0114 }
            Reponses := array{"Izumo Kamizuki", "Gyuuki", "Dosu Kinuta", "Dan Katou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0115 }
            Reponses := array{"Yagura Karatachi", "Mito Uzumaki", "Omoi", "Hanzou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0116 }
            Reponses := array{"Ukon", "Han", "Kae Yukiwari", "Naori Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0117 }
            Reponses := array{"Mifune", "Oonoki", "Kushimaru Kuriarare", "Juugo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0118 }
            Reponses := array{"Sandaime Kazekage", "Kagura Karatachi", "Mifune", "Yota"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0119 }
            Reponses := array{"Manda", "Kaiza", "Ebisu", "Shukaku"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0120 }
            Reponses := array{"Shinki", "Shin Uchiha", "Akkun", "Yodo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0121 }
            Reponses := array{"Gengetsu Hoozuki", "Kurotsuchi", "Kae Yukiwari", "Ranmaru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0122 }
            Reponses := array{"Baki", "Hamura Ootsutsuki", "Sandaime Kazekage", "Ebisu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0123 }
            Reponses := array{"Jigen", "Pakura", "Oonoki", "Kaneki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0124 }
            Reponses := array{"Metal Lee", "Matsuri", "Isobu", "Mei Terumi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0125 }
            Reponses := array{"Wasabi Izuno", "Ajisai", "Todoroki", "Kosuke Maruboshi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0126 }
            Reponses := array{"Ayame", "Genzou", "Houki Taketori", "Chouchou Akimichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0127 }
            Reponses := array{"Baki", "Ranmaru", "Matsuri", "Hagoromo Ootsutsuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0128 }
            Reponses := array{"Matsuri", "Enko Onikuma", "Fukasaku", "Han"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0129 }
            Reponses := array{"Shizune", "Son Gokuu", "A (Third Raikage)", "Kagami Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0130 }
            Reponses := array{"Yashamaru", "Baru Uchiha", "Condor", "Houki Taketori"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0131 }
            Reponses := array{"Gamaken", "Inabi Uchiha", "Matsuri", "Akatsuchi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0132 }
            Reponses := array{"Hiruzen Sarutobi", "Matsuri", "Mirai Sarutobi", "Mangetsu Hoozuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0133 }
            Reponses := array{"Yagura Karatachi", "Yota", "Izumo Kamizuki", "Gyuuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0134 }
            Reponses := array{"Gengetsu Hoozuki", "Isobu", "Gantetsu", "Metal Lee"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0135 }
            Reponses := array{"Mabui", "Matatabi", "Baru Uchiha", "Indra Ootsutsuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0136 }
            Reponses := array{"Mifune", "Baru Uchiha", "Sora", "Mabui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0137 }
            Reponses := array{"Tajima Uchiha", "Ashura Ootsutsuki", "Hiruzen Sarutobi", "Tsubaki Kurogane"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0138 }
            Reponses := array{"Mugino", "Delta", "Dock", "Tayuya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0139 }
            Reponses := array{"Aoba Yamashiro", "Utakata", "Matsuri", "Tsume Inuzuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0140 }
            Reponses := array{"Dan Katou", "A (Third Raikage)", "Sakumo Hatake", "Fukasaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0141 }
            Reponses := array{"Code", "Aoba Yamashiro", "Yashamaru", "Hanzou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0142 }
            Reponses := array{"Enma", "Juugo", "Aoba Yamashiro", "Shinki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0143 }
            Reponses := array{"Akatsuchi", "Fuu", "Gatsu", "Oonoki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0144 }
            Reponses := array{"Katsuyu", "Hako Kuroi", "Izumo Kamizuki", "Mito Uzumaki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0145 }
            Reponses := array{"Kurenai Yuuhi", "Chouza Akimichi", "Sasame Fuuma", "Chiyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0146 }
            Reponses := array{"Denki Kaminarimon", "Isaribi", "Gamabunta", "Urashiki Ootsutsuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0147 }
            Reponses := array{"Raidou Namiashi", "Izumi Uchiha", "Yukimaru", "Kotetsu Hagane"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0148 }
            Reponses := array{"Son Gokuu", "Manabu Akado", "Ranmaru", "Zaku Abumi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0149 }
            Reponses := array{"Torune Aburame", "Hiashi Hyuuga", "Gatsu", "Sasame Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0150 }
            Reponses := array{"Kushimaru Kuriarare", "Ibiki Morino", "Isaribi", "Shiho"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0151 }
            Reponses := array{"Inari", "Shizune", "Koji Kashin", "Dosu Kinuta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0152 }
            Reponses := array{"Menma Namikaze", "Muu", "Izumo Kamizuki", "Kotetsu Hagane"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0153 }
            Reponses := array{"Katsuyu", "Jinin Akebino", "Natsuhi", "Indra Ootsutsuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0154 }
            Reponses := array{"Denki Kaminarimon", "Aoba Yamashiro", "Dock", "Ranmaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0155 }
            Reponses := array{"Hebiichigo", "Todoroki", "Dai Might", "Han"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0156 }
            Reponses := array{"Gantetsu", "Choujuurou", "Delta", "Nonou Yakushi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0157 }
            Reponses := array{"Tonton", "Namida Suzumeno", "Hanzou", "Dosu Kinuta"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0158 }
            Reponses := array{"Chino", "Houki Taketori", "Shibi Aburame", "Kushimaru Kuriarare"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0159 }
            Reponses := array{"Baki", "Iwabee Yuino", "Shukaku", "Inojin Yamanaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0160 }
            Reponses := array{"Juuzou Biwa", "Hiruzen Sarutobi", "Inabi Uchiha", "Isshiki Ootsutsuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0161 }
            Reponses := array{"Dock", "Kidoumaru", "Raidou Namiashi", "Hako Kuroi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0162 }
            Reponses := array{"Ajisai", "Kin Tsuchi", "Kagami Uchiha", "Chino"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0163 }
            Reponses := array{"Mabui", "Isobu", "Matatabi", "Kagura Karatachi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0164 }
            Reponses := array{"Hana Inuzuka", "Tsubaki Kurogane", "Manda", "Oboro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0165 }
            Reponses := array{"Tsume Inuzuka", "Choujuurou", "Shibi Aburame", "Akkun"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0166 }
            Reponses := array{"Izumi Uchiha", "Fuuka", "Wasabi Izuno", "Gengetsu Hoozuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0167 }
            Reponses := array{"Kaiza", "Toneri Ootsutsuki", "Mito Uzumaki", "Yashamaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0168 }
            Reponses := array{"Moegi Kazamatsuri", "Zetsu", "Sukea", "Yugao Uzuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0169 }
            Reponses := array{"Amado Sanzu", "Muu", "Delta", "Raidou Namiashi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0170 }
            Reponses := array{"Yashamaru", "Hagoromo Ootsutsuki", "Bisuke", "Son Gokuu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0171 }
            Reponses := array{"Yugao Uzuki", "Katsuyu", "Koji Kashin", "Denki Kaminarimon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0172 }
            Reponses := array{"Gyuuki", "Chouza Akimichi", "Danzou Shimura", "Houki Taketori"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0173 }
            Reponses := array{"Kizashi Haruno", "Izumo Kamizuki", "Hamura Ootsutsuki", "Oonoki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0174 }
            Reponses := array{"Kurotsuchi", "Houki Taketori", "Indra Ootsutsuki", "Isaribi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0175 }
            Reponses := array{"Shizune", "Kaiza", "Chiyo", "Gamabunta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0176 }
            Reponses := array{"Karui", "Sukea", "Yashiro Uchiha", "Gyuuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0177 }
            Reponses := array{"A", "Metal Lee", "Kushimaru Kuriarare", "Sasame Fuuma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0178 }
            Reponses := array{"Manabu Akado", "Hiashi Hyuuga", "Son Gokuu", "Indra Ootsutsuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0179 }
            Reponses := array{"Manda", "Muu", "Kaneki", "Tsume Inuzuka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0180 }
            Reponses := array{"Hanzou", "Mugino", "Baki", "Mifune"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0181 }
            Reponses := array{"Pakkun", "Mugino", "Fukasaku", "Kae Yukiwari"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0182 }
            Reponses := array{"Oboro", "Dock", "Shinki", "Gamabunta"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0183 }
            Reponses := array{"Gatsu", "Juugo", "Mito Uzumaki", "Raiga Kurosuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0184 }
            Reponses := array{"Shibi Aburame", "Kaguya Ootsutsuki", "Baki", "Shikadai Nara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0185 }
            Reponses := array{"Manabu Akado", "Inojin Yamanaka", "Yakumi Uchiha", "Raidou Namiashi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0186 }
            Reponses := array{"Katsuyu", "Chiyo", "Tayuya", "Yukata"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0187 }
            Reponses := array{"Matatabi", "Ameyuri Ringo", "Torune Aburame", "Rai Uchiha"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0188 }
            Reponses := array{"Mifune", "Izumi Uchiha", "Kae Yukiwari", "Genno"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0189 }
            Reponses := array{"Denki Kaminarimon", "Code", "Hotaru", "Danzou Shimura"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0190 }
            Reponses := array{"Omoi", "Jinin Akebino", "Shii", "Yukata"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0191 }
            Reponses := array{"Code", "Gerotora", "Kurenai Yuuhi", "Kae Yukiwari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0192 }
            Reponses := array{"Katsuyu", "Sandaime Kazekage", "Mangetsu Hoozuki", "Shizune"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0193 }
            Reponses := array{"Muu", "Yashamaru", "Indra Ootsutsuki", "Genno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0194 }
            Reponses := array{"Tsubaki Kurogane", "Yukimaru", "Namida Suzumeno", "Pakura"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0195 }
            Reponses := array{"Juuzou Biwa", "Izumo Kamizuki", "Danzou Shimura", "Shin Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0196 }
            Reponses := array{"Matsuri", "Wasabi Izuno", "Darui", "Shizuka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0197 }
            Reponses := array{"Izumo Kamizuki", "Shizuka", "Tajima Uchiha", "Dan Katou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0198 }
            Reponses := array{"Mugino", "Tekka Uchiha", "Toneri Ootsutsuki", "Mabui"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0199 }
            Reponses := array{"Hebiichigo", "Matsuri", "Samui", "Ukon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0200 }
            Reponses := array{"Baru Uchiha", "Gamaken", "Iwabee Yuino", "Rai Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0201 }
            Reponses := array{"Chiriku", "Raidou Namiashi", "Koji Kashin", "Matatabi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0202 }
            Reponses := array{"Daemon", "Shiho", "Fuu", "Hotaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0203 }
            Reponses := array{"Bisuke", "Mugino", "Dan Katou", "Shizuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0204 }
            Reponses := array{"Baru Uchiha", "Mirai Sarutobi", "Fuuka", "Bisuke"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0205 }
            Reponses := array{"Fuu", "Denki Kaminarimon", "Juuzou Biwa", "Gouzu"}
            BonneReponse := 3

MakeNarutoQuestionsFR2() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0206 }
            Reponses := array{"Hayate Gekkou", "Nonou Yakushi", "Gamabunta", "Hako Kuroi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0207 }
            Reponses := array{"Gamabunta", "Baki", "Kushimaru Kuriarare", "Hebiichigo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0208 }
            Reponses := array{"Chouchou Akimichi", "Jiroubou", "Baru Uchiha", "Sukea"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0209 }
            Reponses := array{"Inari", "Gatsu", "Moegi Kazamatsuri", "Shizuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0210 }
            Reponses := array{"Shizune", "Naka Uchiha", "Han", "Namida Suzumeno"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0211 }
            Reponses := array{"Gyuuki", "Shibi Aburame", "Rai Uchiha", "Akatsuchi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0212 }
            Reponses := array{"Shiho", "Sandaime Kazekage", "Furido", "Gamabunta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0213 }
            Reponses := array{"Yukimaru", "Shinki", "Shizune", "Shiho"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0214 }
            Reponses := array{"Gatsu", "Hotaru", "Shii", "Toneri Ootsutsuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0215 }
            Reponses := array{"Katsuyu", "Kizashi Haruno", "Sukea", "Menma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0216 }
            Reponses := array{"Torune Aburame", "Jiroubou", "Karui", "Yakumi Uchiha"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0217 }
            Reponses := array{"Shiho", "Yashiro Uchiha", "Chouchou Akimichi", "Amado Sanzu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0218 }
            Reponses := array{"Iwabee Yuino", "Zaku Abumi", "Yodo", "Oonoki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0219 }
            Reponses := array{"Manabu Akado", "Akatsuchi", "Dai Might", "Baki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0220 }
            Reponses := array{"Akatsuchi", "Moegi Kazamatsuri", "Ameno", "Iwabee Yuino"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0221 }
            Reponses := array{"Chino", "Hanzou", "Dan Katou", "Juugo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0222 }
            Reponses := array{"Omoi", "Kurotsuchi", "Fuu", "Chouza Akimichi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0223 }
            Reponses := array{"Hiashi Hyuuga", "Naka Uchiha", "Dock", "Kagura Karatachi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0224 }
            Reponses := array{"Chiriku", "Enko Onikuma", "Kotetsu Hagane", "Oboro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0225 }
            Reponses := array{"Shizune", "Furido", "Oboro", "Hagoromo Ootsutsuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0226 }
            Reponses := array{"Koji Kashin", "Karui", "Gantetsu", "Tekka Uchiha"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0227 }
            Reponses := array{"Ibiki Morino", "Hagoromo Ootsutsuki", "Gerotora", "Genno"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0228 }
            Reponses := array{"Houki Taketori", "Kae Yukiwari", "Guruko", "Fukasaku"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0229 }
            Reponses := array{"Han", "Yakumi Uchiha", "Hako Kuroi", "Zaku Abumi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0230 }
            Reponses := array{"Hana Inuzuka", "Chiriku", "Iwabee Yuino", "Gamaken"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0231 }
            Reponses := array{"Wasabi Izuno", "Hanare", "Kaguya Ootsutsuki", "Shibi Aburame"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0232 }
            Reponses := array{"Hagoromo Ootsutsuki", "Hiruko", "Toneri Ootsutsuki", "Sasame Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0233 }
            Reponses := array{"Inabi Uchiha", "Hanare", "Omoi", "Gerotora"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0234 }
            Reponses := array{"Torune Aburame", "Muu", "Delta", "Isobu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0235 }
            Reponses := array{"Hako Kuroi", "Kizashi Haruno", "Furido", "Guren"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0236 }
            Reponses := array{"Menma Namikaze", "Mei Terumi", "Kosuke Maruboshi", "Ameno"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0237 }
            Reponses := array{"Houki Taketori", "Nonou Yakushi", "Wasabi Izuno", "Mizuki Touji"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0238 }
            Reponses := array{"Shikadai Nara", "Nonou Yakushi", "Tekka Uchiha", "Inojin Yamanaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0239 }
            Reponses := array{"A", "Pakura", "Danzou Shimura", "Enma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0240 }
            Reponses := array{"Raidou Namiashi", "Gamabunta", "Gamatatsu", "Amado Sanzu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0241 }
            Reponses := array{"Ryougi", "Kitsuchi", "Hanzaki", "Shibuki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0242 }
            Reponses := array{"Hinoe", "Kohari Umino", "Saiken", "Taizou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0243 }
            Reponses := array{"Giichi", "Hishaku", "Akane", "Disonas"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0244 }
            Reponses := array{"Koutarou Fuuma", "Akio", "Daruma Izuno", "Karashi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0245 }
            Reponses := array{"Genbu", "Ikada Funato", "Aoda", "Ishikawa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0246 }
            Reponses := array{"Setsuna Uchiha", "Araya", "Chamaru", "Ship's Captain"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0247 }
            Reponses := array{"Murakumo Kurama", "Baiu", "Buntan Kurosuki", "Shisou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0248 }
            Reponses := array{"Victor", "Yaoki", "Fundaru", "Choumei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0249 }
            Reponses := array{"Deepa", "Maki", "Azami", "Ichirouta Oniyuzu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0250 }
            Reponses := array{"Yuura", "Iwashi Tatami", "Obito's Grandmother", "Denka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0251 }
            Reponses := array{"Arai", "Ikkaku Umino", "Doushu Goetsu", "Sabiru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0252 }
            Reponses := array{"Tsukune", "Fuzz", "Haato", "Ryougi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0253 }
            Reponses := array{"Konsuchi", "Taiko Uchiha", "Yurui", "Gamahiro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0254 }
            Reponses := array{"Land of Frost Daimyo", "Ranka", "Akahoshi", "Haruna"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0255 }
            Reponses := array{"Hizashi Hyuuga", "Jinpachi Munashi", "Kou Hyuuga", "Fugou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0256 }
            Reponses := array{"Homura Mitokado", "Motoi", "Guruguru", "Shinko Inari"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0257 }
            Reponses := array{"Daore Doutonbori", "Chuusin", "Idate Morino", "Fugou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0258 }
            Reponses := array{"Shiore", "Sada", "Gamariki", "Inoichi Yamanaka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0259 }
            Reponses := array{"Iwana Akame", "Tenma Izumo", "Shiranami", "Shuu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0260 }
            Reponses := array{"Oppo", "Sagiri", "En no Gyouja", "Kinshiki Ootsutsuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0261 }
            Reponses := array{"Ushi", "Kiseru Gankubi", "Kiku", "Kokuou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0262 }
            Reponses := array{"Maruta", "Ouga's Male Puppet", "Kokuri", "Log"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0263 }
            Reponses := array{"Miina", "Magire Kakuremino", "Renga Kokubou", "Neon Asakusa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0264 }
            Reponses := array{"Mebuki Haruno", "Kihou", "Mondai", "Zaji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0265 }
            Reponses := array{"Hyuuga Elder", "Naho", "Choumei", "Kinshiki Ootsutsuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0266 }
            Reponses := array{"Nekomata", "Sukui", "Land of Frost Daimyo", "Hibiki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0267 }
            Reponses := array{"Rasa", "Okisuke", "Isari Funato", "Mimi Inuzuka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0268 }
            Reponses := array{"Zansul", "Kobuna", "Neon Asakusa", "Ruka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0269 }
            Reponses := array{"Monju", "Tazuna", "Ryuugan", "Sanshou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0270 }
            Reponses := array{"Itama Senju", "Sari", "Maki", "Kiji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0271 }
            Reponses := array{"Naraka Path", "Karai", "Ran", "Seimei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0272 }
            Reponses := array{"Karura", "Aoda", "Shira", "Haori"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0273 }
            Reponses := array{"Take Nitora", "Shiseru", "Chuukichi", "Kinkaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0274 }
            Reponses := array{"Yokaze", "Suiren", "Kiyoi Yotsuki", "Butsuma Senju"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0275 }
            Reponses := array{"Suzaku", "Sumaru", "Hina", "Preta Path"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0276 }
            Reponses := array{"Benten", "Tazuna", "Homura Mitokado", "Shin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0277 }
            Reponses := array{"Jinpachi Munashi", "Homura Mitokado", "Tenji", "Doragu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0278 }
            Reponses := array{"Tobio", "Saiken", "Shiba", "Fuyou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0279 }
            Reponses := array{"Ittetsu", "Tsuru Itoi", "Akahoshi", "Kujaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0280 }
            Reponses := array{"Tsubusa", "Udon Ise", "Sagi", "Gosunkugi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0281 }
            Reponses := array{"Yoroi Akado", "Land of Wind Daimyo", "Nangou", "Nan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0282 }
            Reponses := array{"Zaji", "Shiseru", "Doushu Goetsu", "Idate Morino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0283 }
            Reponses := array{"Zouri", "En no Gyouja", "Watase", "Makinami Senka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0284 }
            Reponses := array{"Kazabune", "Kouza Kubisaki", "Agara", "Nanara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0285 }
            Reponses := array{"Musai", "Ashimaru", "Kagari", "Aino"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0286 }
            Reponses := array{"Akaboshi", "Akane", "Banna", "Shisou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0287 }
            Reponses := array{"Amai", "Kobuna", "Fuyou", "Tenga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0288 }
            Reponses := array{"Sumaru", "Ami", "Sagi", "Hinoto"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0289 }
            Reponses := array{"Naho", "Gatou", "Mia", "Aoi Rokushou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0290 }
            Reponses := array{"Arai", "Akane", "Gataro", "Neon's Mother"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0291 }
            Reponses := array{"Hinoto", "Ashina", "Michizou Manaka", "Tora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0292 }
            Reponses := array{"Gengo", "Baiu", "Waraji", "Uroko Kurama"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0293 }
            Reponses := array{"Kokuou", "Potcha", "Yukimi", "Banna"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0294 }
            Reponses := array{"Bekkou", "Nawaki", "Yukimi", "Ichikishimahime"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0295 }
            Reponses := array{"Amagi Izuno", "Karura", "Benten", "Zansul"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0296 }
            Reponses := array{"Tamaki", "Boro", "Hyoui Yorishiro", "Karashi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0297 }
            Reponses := array{"K", "Bug", "Tsuchigumo Chief", "Makinami Senka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0298 }
            Reponses := array{"Chishima", "Hyoui Yorishiro", "Tsukiyo", "Sazanami Senka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0299 }
            Reponses := array{"Shitou Akimichi", "Daen Nara", "Hishaku", "Yukimi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0300 }
            Reponses := array{"Doragu", "Kobuna", "Kusabi", "Ashimaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0301 }
            Reponses := array{"Hana Kaka", "Eiki Fuuma", "Kandachi", "Remon Yoimura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0302 }
            Reponses := array{"Batta", "Gojou", "En Oyashiro", "Dengaku"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0303 }
            Reponses := array{"Roushi", "Ashimaru", "Fudou", "Suiren"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0304 }
            Reponses := array{"Toufu", "Fuen", "Yurinojou", "Kihou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0305 }
            Reponses := array{"Katazu", "Daen Nara", "Fusou", "Jakou Ryuudouin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0306 }
            Reponses := array{"Haori", "Kunijirou", "Tatsumi", "Fuujin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0307 }
            Reponses := array{"Gamamaru", "Kiku", "Oppo", "JJ"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0308 }
            Reponses := array{"Doutou Akimichi", "Toki", "Garaga", "Tokiwa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0309 }
            Reponses := array{"Kokatsu", "Kuu", "Tamaki", "Giichi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0310 }
            Reponses := array{"Tosaka", "Jakou Ryuudouin", "Ginkaku", "Konashi Nerikiri"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0311 }
            Reponses := array{"Hyoui Yorishiro", "Haku's Mother", "Rokuro", "Nekomata"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0312 }
            Reponses := array{"Hayama Shirakumo", "Kisuke Maboroshi", "Iwa Doctor", "Tsurushi Hachiya"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0313 }
            Reponses := array{"Komushi", "Furofoki", "Saya", "Hinoko"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0314 }
            Reponses := array{"Shima", "Benten", "Hoheto Hyuuga", "Harika Aburame"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0315 }
            Reponses := array{"Ouga's Male Puppet", "Sazanami", "Hokushin", "Gari"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0316 }
            Reponses := array{"Agara", "Honoka", "Unkai Kurama", "Sagi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0317 }
            Reponses := array{"Iou", "Nekomata", "K", "Suzu Sougi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0318 }
            Reponses := array{"Toroi", "Itama Senju", "Renga", "Ship's Captain"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0319 }
            Reponses := array{"Obito's Grandmother", "Iwa Kunoichi", "Kayo", "Aosa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0320 }
            Reponses := array{"Neon Asakusa", "JJ", "Nadeshiko Previous Leader", "Land of This Daimyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0321 }
            Reponses := array{"Hibiki", "Jigumo Fuuma", "Jouseki", "Azami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0322 }
            Reponses := array{"Ashina Uzumaki", "Nurui", "Taiko Uchiha", "Kankitsu Akitsuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0323 }
            Reponses := array{"Karai", "Haato", "Rokusuke", "Sagan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0324 }
            Reponses := array{"Remon Yoimura", "Karashi", "Teyaki Uchiha", "Maen Nara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0325 }
            Reponses := array{"Karin's Mother", "Ikada Funato", "Tamaki", "Harusame"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0326 }
            Reponses := array{"Karura", "Akio", "Sumaru", "Tsubusa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0327 }
            Reponses := array{"Benten", "Kazabune", "Sasami", "Yuina Itomaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0328 }
            Reponses := array{"Ruiga", "Sanshou", "Kigiri", "Tazuna"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0329 }
            Reponses := array{"Reto", "Kinkaku", "Mia", "Yurui"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0330 }
            Reponses := array{"Kirara", "Choumei", "Kayui", "Chuukaku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0331 }
            Reponses := array{"Kokuri", "Akita Inuzuka", "Kitane", "Shuu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0332 }
            Reponses := array{"Gotta", "Koharu Utatane", "Garashi Tono", "Shinku Yuuhi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0333 }
            Reponses := array{"Nangou", "Mecha-Naruto", "Kou Hyuuga", "Kusabi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0334 }
            Reponses := array{"Kousuke", "Land of Wind Daimyo", "Shura Sanjurou", "Stone carver's assistant"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0335 }
            Reponses := array{"Nan", "Kigiri", "Kuu", "Samidare Amaashi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0336 }
            Reponses := array{"Samidare Amaashi", "Leo", "Katasuke Toono", "Haku's Father"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0337 }
            Reponses := array{"Enra", "Mitsuo", "Ryuuki", "Magire Kakuremino"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0338 }
            Reponses := array{"Korobi", "Gameru", "Nurari", "Mebuki Haruno"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0339 }
            Reponses := array{"Santa Yamanaka", "Heiji", "Kokatsu", "Mecha-Naruto"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0340 }
            Reponses := array{"Choumei", "Meizu", "Taji", "Samidare Amaashi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0341 }
            Reponses := array{"Misumi Tsurugi", "Kagari", "Shouseki", "Chuusin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0342 }
            Reponses := array{"Arai", "Suiko", "Mizura", "Hokuto"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0343 }
            Reponses := array{"Mother Akimichi", "Boro", "Gamagorou", "Kuay Doutonbori"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0344 }
            Reponses := array{"Mubi", "Eff", "En Oyashiro", "Victor's Secretary"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0345 }
            Reponses := array{"Karin's Mother", "Gotta", "Amachi", "Mukade"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0346 }
            Reponses := array{"Hassaku Onomichi", "Nangou", "Sana", "Muta Aburame"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0347 }
            Reponses := array{"Yurika", "Natsu", "Kokuyou", "Jibiki Funato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0348 }
            Reponses := array{"Genbu", "Saya", "Land of This Daimyo", "Natsu Hyuuga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0349 }
            Reponses := array{"Agira Ryuudouin", "Okisuke", "Gamahiro", "Nawaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0350 }
            Reponses := array{"Nigai", "Ittetsu", "Kazami", "Eiki Fuuma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0351 }
            Reponses := array{"A (Second Raikage)", "Nurari", "Koumei", "Tazuna"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0352 }
            Reponses := array{"Namua", "Preta Path", "Tobio", "Miina"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0353 }
            Reponses := array{"Land of Earth Daimyo", "Renga Kokubou", "Yagura", "Kobuna"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0354 }
            Reponses := array{"Ruiga", "Sekki", "Kiku", "Hizashi Hyuuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0355 }
            Reponses := array{"Nue", "Ryuugan", "Ishikawa", "Jirouchou Wasabi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0356 }
            Reponses := array{"Ryuusa", "Ryuuki", "Hana Kaka", "Ittetsu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0357 }
            Reponses := array{"Shiseru", "Blue B", "Mother Akimichi", "Sagan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0358 }
            Reponses := array{"Kedama", "Sagi", "Maki", "Yuina Itomaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0359 }
            Reponses := array{"Kitsuchi", "Ishikawa", "Sazanami", "Suiko"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0360 }
            Reponses := array{"Senta", "Kakkou", "Shibire", "Mother Akimichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0361 }
            Reponses := array{"Gengo", "Suiren", "Shima", "Shibire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0362 }
            Reponses := array{"Shigure", "Gotta", "Gamaden", "Zouri"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0363 }
            Reponses := array{"Mozu Shitakiri", "Urushi", "Shima", "Denka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0364 }
            Reponses := array{"Shin'emon", "Jigumo Fuuma", "Mozuku", "Natsu Hyuuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0365 }
            Reponses := array{"Shinko Inari", "Akane", "Karin's Mother", "Sangorou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0366 }
            Reponses := array{"Mazuma Izuno", "Tonika Village Head", "Shiore", "Yokaze"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0367 }
            Reponses := array{"Disonas", "Yoruga", "Akio", "Shizuma Hoshigaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0368 }
            Reponses := array{"Kayo", "Tonika Village Head", "Shun", "Kokushi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0369 }
            Reponses := array{"Stone carver's assistant", "Gouza", "Namua", "Biwako Sarutobi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0370 }
            Reponses := array{"Doseki Ganryuu", "Nowaki", "Mukade", "Suika"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0371 }
            Reponses := array{"Asura Path", "Tamaki", "Hana Kaka", "Sukui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0372 }
            Reponses := array{"Kankitsu Akitsuki", "Ryougi", "Fudou", "Take Nitora"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0373 }
            Reponses := array{"Hokuto", "Tarui", "Yuuga", "Tomaru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0374 }
            Reponses := array{"Tenji", "Komugi", "Shouseki", "Tatsumi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0375 }
            Reponses := array{"Osuka Kamakura", "Tayori", "Fuujin", "Gameru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0376 }
            Reponses := array{"Tatewaki", "Benten", "Tokuma Hyuuga", "Eiki Fuuma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0377 }
            Reponses := array{"Tomaru", "Buntan Kurosuki", "Itama Senju", "Nagare"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0378 }
            Reponses := array{"Mozu Shitakiri", "Sabu", "Kamikiri Fuuma", "Touka Senju"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0379 }
            Reponses := array{"Hyuuga Elder", "Tsukado", "Senta", "Heiji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0380 }
            Reponses := array{"Tsunami", "Hokuto", "Rokusuke", "Ishikawa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0381 }
            Reponses := array{"Jiji", "Ushi", "Nangou", "Honoka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0382 }
            Reponses := array{"Nadeshiko Previous Leader", "Igii", "Mozuku", "Yajirobee"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0383 }
            Reponses := array{"Yakumo Kurama", "Agari", "Jouseki", "Shisou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0384 }
            Reponses := array{"Kokuou", "Ishikawa", "Nowaki", "Yoshino Nara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0385 }
            Reponses := array{"Fuki", "Yotaka", "Jako", "Ashina Uzumaki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0386 }
            Reponses := array{"Yubina", "Aino", "Igii", "Gamamaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0387 }
            Reponses := array{"Yukimi", "Akahoshi", "Suzume", "Hinoko"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0388 }
            Reponses := array{"Raijin", "Yurito", "Kagari", "Yurika"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0389 }
            Reponses := array{"Yuuki Minazuki", "Amai", "Mother Akimichi", "Nangou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0390 }
            Reponses := array{"Yuusuke", "Sekka", "JJ", "Benga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0391 }
            Reponses := array{"Midare", "Zansul", "Kedama", "Shuu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0392 }
            Reponses := array{"Touka Senju", "Harika Aburame", "Fuzz", "Zou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0393 }
            Reponses := array{"Akita Inuzuka", "Iwa Doctor", "Hanzaki", "A (First Raikage)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0394 }
            Reponses := array{"Aino", "Watase", "Rokuro", "A (Second Raikage)"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0395 }
            Reponses := array{"Hibiki", "Taiko Uchiha", "Agari", "Dodai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0396 }
            Reponses := array{"Santa Yamanaka", "Funamushi", "Agari Kaisen", "Raijin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0397 }
            Reponses := array{"Agira Ryuudouin", "Daibutsu", "Suzaku", "Land of Wind Daimyo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0398 }
            Reponses := array{"Rokkaku Ryuudouin", "Korobi", "Land", "Akahoshi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0399 }
            Reponses := array{"Mother Yamanaka", "Waraji", "Akemaru", "Naraka Path"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0400 }
            Reponses := array{"Kedama", "Akita Inuzuka", "Yaoki", "Jantou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0401 }
            Reponses := array{"Yuudachi", "Amachi", "Kouza Kubisaki", "Yagura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0402 }
            Reponses := array{"Amagi Izuno", "Tsubaki", "Toroi", "Zaji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0403 }
            Reponses := array{"Haku's Father", "Anaguma", "Yome", "Kuay Doutonbori"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0404 }
            Reponses := array{"Rasa", "Ittan", "Chamaru", "Aniki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0405 }
            Reponses := array{"Hoheto Hyuuga", "Raijin", "Ao", "Kajiki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0406 }
            Reponses := array{"Ryuuki", "Gamamaru", "Aosa", "Mimi Inuzuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0407 }
            Reponses := array{"Shizuma Hoshigaki", "Arashi Fuuma", "Kinkaku", "Dodai"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0408 }
            Reponses := array{"Yurinojou", "Koumei", "Dokan", "Araumi Funato"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0409 }
            Reponses := array{"Sanshou", "Asaka", "Shira", "Suzaku Nara"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0410 }
            Reponses := array{"Ashimaru", "Ao", "Kiseru Gankubi", "Mozuku"}
            BonneReponse := 0

MakeNarutoQuestionsFR3() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0411 }
            Reponses := array{"Ashina Uzumaki", "Fuen", "Ninkame", "Tagorihime"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0412 }
            Reponses := array{"Nurui", "Kinshiki Ootsutsuki", "Asura Path", "Tsukado"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0413 }
            Reponses := array{"Isari Funato", "Shimon Hijiri", "Nan", "Atsui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0414 }
            Reponses := array{"Kayui", "Tsurugi", "Haruna", "Awaji Unabara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0415 }
            Reponses := array{"Naraka Path", "Azami", "Sukeza", "Ganryuu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0416 }
            Reponses := array{"Baji", "Akemaru", "Bug", "Tenma Izumo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0417 }
            Reponses := array{"Ryoukan", "Baku", "Hibari Kamakura", "Gekkou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0418 }
            Reponses := array{"Tatsuma Aburame", "Chen", "Bansai", "Roushi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0419 }
            Reponses := array{"Victor's Secretary", "Akahoshi", "Yoruga", "Batora Kuromori"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0420 }
            Reponses := array{"Batta", "Natsu", "Houki", "Fuu Yamanaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0421 }
            Reponses := array{"Benga", "Iwashi Tatami", "Penjira", "Minamo Funato"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0422 }
            Reponses := array{"Ninkame", "Houki", "Biwako Sarutobi", "Fusou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0423 }
            Reponses := array{"Daikoku Funeno", "Shinko Inari", "Nan", "Blue B"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0424 }
            Reponses := array{"Hoheto Hyuuga", "Batora Kuromori", "Bunpuku", "Samidare Amaashi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0425 }
            Reponses := array{"Fuu Yamanaka", "Butsuma Senju", "Torifu Akimichi", "Iwana Akame"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0426 }
            Reponses := array{"Byakuren", "Jakou Ryuudouin", "Kiseru Gankubi", "Chikara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0427 }
            Reponses := array{"Sajou", "Hostess-san", "Tayori", "Chamaru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0428 }
            Reponses := array{"Hokuto", "Chen", "Sekki", "Nekomata"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0429 }
            Reponses := array{"Tobio", "Daore Doutonbori", "Monga", "Chikara"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0430 }
            Reponses := array{"Chouhan", "Tonika Village Head", "Land of Fire Daimyo", "Kokuyou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0431 }
            Reponses := array{"Chuukaku", "Toubei Kagetsu", "Haruna", "Kirisaki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0432 }
            Reponses := array{"Chuukichi", "Konsuchi", "Tagorihime", "Kokuyou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0433 }
            Reponses := array{"Human Path", "Chuusin", "Fugou", "Tsunami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0434 }
            Reponses := array{"Sagan", "Torifu Akimichi", "Giichi", "Daibutsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0435 }
            Reponses := array{"Daikoku Funeno", "Gatou", "Himushi", "Bunpuku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0436 }
            Reponses := array{"Isago", "Daimaru", "Arashi Fuuma", "Shimon Hijiri"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0437 }
            Reponses := array{"Kyuusuke", "Kajiki", "Hoheto Hyuuga", "Daore Doutonbori"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0438 }
            Reponses := array{"Daruma Izuno", "Kinkaku", "Tora", "Chuukichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0439 }
            Reponses := array{"Tagorihime", "Dengaku", "Neon Asakusa", "Sumaru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0440 }
            Reponses := array{"Shira", "Sada", "Denki's Father", "Jirouchou Wasabi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0441 }
            Reponses := array{"Kotohime Fuuma", "Sana", "Shiranami", "Disonas"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0442 }
            Reponses := array{"Muyami", "Aosa", "Dodai", "Motoi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0443 }
            Reponses := array{"Dokan", "Aosa", "Hibari Kamakura", "Sada"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0444 }
            Reponses := array{"Kaitou Nezumi", "Doseki Ganryuu", "Biwako Sarutobi", "Kona"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0445 }
            Reponses := array{"Doutou Akimichi", "Kunijirou", "Haori", "Komushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0446 }
            Reponses := array{"Shiseru", "Ebizou", "Kyuuroku Wagarashi", "Miina"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0447 }
            Reponses := array{"Eff", "Baiu", "Kyuusuke", "Ittan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0448 }
            Reponses := array{"Ehou Norimaki", "Fuzz", "Makaro Akimichi", "Kokushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0449 }
            Reponses := array{"En no Gyouja", "Zou", "Kuromaru", "Shin'emon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0450 }
            Reponses := array{"Enchuu Nara", "Aoi Rokushou", "Choumei", "Nan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0451 }
            Reponses := array{"Hachidai", "Fundaru", "Preta Path", "Enra"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0452 }
            Reponses := array{"Ensui Nara", "Fugou", "Jigumo Fuuma", "Yagura"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0453 }
            Reponses := array{"Yakku", "First Animal Path", "Rokusuke", "Yagura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0454 }
            Reponses := array{"Daikoku Funeno", "Fugou", "Chuukaku", "En Oyashiro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0455 }
            Reponses := array{"A (First Raikage)", "Blue B", "Fuguki Suikazan", "Mondai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0456 }
            Reponses := array{"Kokuyou", "Nonota", "Fuki", "Shiseru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0457 }
            Reponses := array{"Himushi", "Fuku", "Take Nitora", "Sukui"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0458 }
            Reponses := array{"Osoi", "Fukusuke Hikyakuya", "Kagero", "Ganno"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0459 }
            Reponses := array{"Haguruma", "Fukuyokana", "Sagi", "Shiranami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0460 }
            Reponses := array{"Hinoto", "Shizuma Hoshigaki", "Ran Sougi", "Funamushi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0461 }
            Reponses := array{"Ao", "Fundaru", "Azami", "Sekiei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0462 }
            Reponses := array{"Chuukaku", "Kyuuroku Wagarashi", "Furofoki", "Yubina"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0463 }
            Reponses := array{"Futa Kagetsu", "Take Nitora", "Urushi", "Hostess-san"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0464 }
            Reponses := array{"Chishima", "Futami", "Mondai", "Choumei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0465 }
            Reponses := array{"Fuu Yamanaka", "Ganno", "Aoda", "Victor"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0466 }
            Reponses := array{"Shin'emon", "Fuyou", "Yubina", "Michizou Manaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0467 }
            Reponses := array{"Akemaru", "Blue B", "Ebizou", "Gaku Inuzuka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0468 }
            Reponses := array{"Tokiwa", "Suiko", "Gama", "Batora Kuromori"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0469 }
            Reponses := array{"Gamaden", "Takanami Senka", "Jakou Ryuudouin", "Genbu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0470 }
            Reponses := array{"Gamagorou", "Oppo", "Gamaden", "Gojou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0471 }
            Reponses := array{"Gotta", "Kokuri", "Gamariki", "Nawaki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0472 }
            Reponses := array{"Mimi Inuzuka", "Kazabune", "Gamaden", "Gamatama"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0473 }
            Reponses := array{"Tamaki", "Gameru", "Toubei Kagetsu", "Eiki Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0474 }
            Reponses := array{"Mecha-Naruto", "Kamata", "Tentou Madoka", "Ganno"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0475 }
            Reponses := array{"Watase", "Toubei Kagetsu", "Ganryuu", "Kodama"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0476 }
            Reponses := array{"Garashi Tono", "Magire Kakuremino", "Futami", "Yurui"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0477 }
            Reponses := array{"Hyou", "Bug", "Fuu Yamanaka", "Gari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0478 }
            Reponses := array{"Kiyoyasu Kagetsu", "Garou", "Tagorihime", "Haori"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0479 }
            Reponses := array{"Gataro", "Gatai", "Kirara", "Mother Yamanaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0480 }
            Reponses := array{"Hizashi Hyuuga", "Gataro", "Yukimi", "Kaito Kawanami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0481 }
            Reponses := array{"Katazu", "Tsukiko Kagetsu", "Gatou", "Gamaden"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0482 }
            Reponses := array{"Fukuyokana", "Gekkou", "Manari", "Haato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0483 }
            Reponses := array{"Yukai", "Hokushin", "Dodai", "Genbu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0484 }
            Reponses := array{"Nekomata", "Deepa", "Kedama", "Gengo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0485 }
            Reponses := array{"Tofu", "Ibara", "Renga", "Genji"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0486 }
            Reponses := array{"Ikada Funato", "Gama", "Genshou Ryuudouin", "Zaji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0487 }
            Reponses := array{"Kurobachi Kamizuru", "Aoi Rokushou", "Genyuumaru", "Sumaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0488 }
            Reponses := array{"Hayama Shirakumo", "Sasami", "Gojou", "Kurobachi Kamizuru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0489 }
            Reponses := array{"Reto", "Doragu", "Kagero", "Gongorou Kamakura"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0490 }
            Reponses := array{"Kyuuroku Wagarashi", "Toubei Kagetsu", "Gosunkugi", "Eff"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0491 }
            Reponses := array{"Nekomata", "Kinshiki Ootsutsuki", "Gotta", "Santa Yamanaka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0492 }
            Reponses := array{"Momiji", "Kanabun", "Gouza", "Kiji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0493 }
            Reponses := array{"Tsunami", "Hinoko", "Gozu", "Nanara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0494 }
            Reponses := array{"A (First Raikage)", "Guruguru", "Kokuri", "Raijin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0495 }
            Reponses := array{"Hibiki", "Batta", "Haato", "Victor"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0496 }
            Reponses := array{"Hachidai", "Baku", "Land of Water Daimyo", "Awaji Unabara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0497 }
            Reponses := array{"Haguruma", "Seiren Funato", "Tsunami", "Kouza Kubisaki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0498 }
            Reponses := array{"Ichikishimahime", "Hakkaku", "Suika Kannonji", "Tsunami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0499 }
            Reponses := array{"Sagiri", "Zaji", "Toki", "Haku's Father"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0500 }
            Reponses := array{"Hana Kaka", "Rinji", "Uruchi Uchiha", "Mozuku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0501 }
            Reponses := array{"Hanzaki", "Mizura", "Ranka", "Naraka Path"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0502 }
            Reponses := array{"Kakkou", "Haori", "Sadai", "Boro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0503 }
            Reponses := array{"Aino", "Jiji", "Harika Aburame", "Banna"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0504 }
            Reponses := array{"Konsuchi", "Harusame", "Hinoto", "Waraji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0505 }
            Reponses := array{"Aoda", "Hyoui Yorishiro", "Hassaku Onomichi", "Kona"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0506 }
            Reponses := array{"Fuki", "Soul Tao", "Sajou", "Heiji"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0507 }
            Reponses := array{"Ryuuki", "Hibachi", "Nangou", "Tonbo Tobitake"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0508 }
            Reponses := array{"Tofu", "Baji", "Hibari Kamakura", "Asura Path"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0509 }
            Reponses := array{"Sazanami", "Byakuren", "Hibiki", "Reto"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0510 }
            Reponses := array{"Hidari", "Aoda", "Asaka", "Daore Doutonbori"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0511 }
            Reponses := array{"Kyuusuke", "Hikaku Uchiha", "Arai", "Tsuchigumo Chief"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0512 }
            Reponses := array{"Ginkaku", "Sekiei", "Preta Path", "Himushi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0513 }
            Reponses := array{"Hokushin", "Mia", "Hina", "Ashimaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0514 }
            Reponses := array{"JJ", "Gamamaru", "Hinata and Hanabi's Mother", "Idate Morino"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0515 }
            Reponses := array{"Nigai", "Himushi", "Hinoe", "Tamao"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0516 }
            Reponses := array{"Stone carver's assistant", "Hinoto", "Haori", "Giichi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0517 }
            Reponses := array{"Batora Kuromori", "Hiruga", "Kedama", "Tsuzumi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0518 }
            Reponses := array{"Hoheto Hyuuga", "Yukai", "Hishaku", "Amachi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0519 }
            Reponses := array{"Hitode", "Kaito Kawanami", "Kitsuchi", "Daore Doutonbori"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0520 }
            Reponses := array{"Land", "Hokuto", "Kanabun", "Jei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0521 }
            Reponses := array{"Nagare", "Hiruga", "Ao", "Hostess-san"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0522 }
            Reponses := array{"Hotarubi", "Shiin", "Tsuzumi", "Chuukaku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0523 }
            Reponses := array{"Kayo", "Houki", "Igii", "Take Nitora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0524 }
            Reponses := array{"Human Path", "Sazanami", "Kiseru Gankubi", "Iwa Kunoichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0525 }
            Reponses := array{"Hyogo", "Miru", "Enra", "Hayama Shirakumo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0526 }
            Reponses := array{"Kakou", "Takanami Senka", "Hyou", "Funamushi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0527 }
            Reponses := array{"Yoroi Akado", "Fuyou", "Hyoui Yorishiro", "Genji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0528 }
            Reponses := array{"Hyuuga Elder", "Take Nitora", "Karashi", "Garashi Tono"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0529 }
            Reponses := array{"Toubei Kagetsu", "En Oyashiro", "Ibara", "Gamahiro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0530 }
            Reponses := array{"Chikara", "Genji", "Azami", "Ichikishimahime"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0531 }
            Reponses := array{"Agira Ryuudouin", "Shiseru", "Furofoki", "Ichirouta Oniyuzu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0532 }
            Reponses := array{"Yoshino Nara", "Nanafushi", "Igii", "Rasa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0533 }
            Reponses := array{"Ikada Funato", "Sabu", "Arai", "Ryuusa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0534 }
            Reponses := array{"Biwako Sarutobi", "Namua", "Ikkaku Umino", "Kajiki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0535 }
            Reponses := array{"Watase", "Chamaru", "Kodama", "Inaho"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0536 }
            Reponses := array{"Iori", "Reto", "Biwako Sarutobi", "Ittan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0537 }
            Reponses := array{"Sangorou", "Hokushin", "Kitsuchi", "Iroha Hyuuga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0538 }
            Reponses := array{"Isago", "Reto", "Ikada Funato", "Rokusuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0539 }
            Reponses := array{"Isari Funato", "Asura Path", "Jei", "Watase"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0540 }
            Reponses := array{"Kunijirou", "Araumi Funato", "Ise", "Mimi Inuzuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0541 }
            Reponses := array{"Ouga's Male Puppet", "Genyuumaru", "Shiba", "Ishikawa"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0542 }
            Reponses := array{"Kotohime Fuuma", "Isono", "Uroko Kurama", "Fudou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0543 }
            Reponses := array{"Okisuke", "Preta Path", "Kokushi", "Ittan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0544 }
            Reponses := array{"Ryuuki", "Ittetsu", "Madam Shijimi", "Udon Ise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0545 }
            Reponses := array{"Iwa Doctor", "Toufu", "Agira Ryuudouin", "Ganno"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0546 }
            Reponses := array{"Kitsuchi", "Suzume", "Tsukune", "Iwashi Tatami"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0547 }
            Reponses := array{"Kusabi", "Jako", "Furofoki", "Yaoki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0548 }
            Reponses := array{"Fuzz", "Ashimaru", "Chikara", "Jakou Ryuudouin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0549 }
            Reponses := array{"Karashi", "Jantou", "Tsukune", "Sangorou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0550 }
            Reponses := array{"Jei", "Yurui", "Sari", "Michizou Manaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0551 }
            Reponses := array{"Sabiru", "Kawarama Senjuu", "Jibachi Kamizuru", "Blue B"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0552 }
            Reponses := array{"Kaito Kawanami", "Komushi", "Jibiki Funato", "Tsukiko Kagetsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0553 }
            Reponses := array{"Jiga", "Koumei", "Harusame", "Asaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0554 }
            Reponses := array{"Amai", "Tanuki Shigaraki", "Jiji", "Daore Doutonbori"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0555 }
            Reponses := array{"Sajou", "Gekkou", "Maen Nara", "Jinpachi Munashi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0556 }
            Reponses := array{"Jirouchou Wasabi", "Kaito Kawanami", "Tora", "Sousha Amino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0557 }
            Reponses := array{"Jinpachi Munashi", "Tsunami", "Hotarubi", "Jouseki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0558 }
            Reponses := array{"Takanami Senka", "K", "Nanafushi", "Haku's Father"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0559 }
            Reponses := array{"Sukune", "Doushu Goetsu", "Tonbei", "Kagari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0560 }
            Reponses := array{"Kageki", "Yome", "Suika", "Kuromaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0561 }
            Reponses := array{"Banna", "Kagero", "Hinata and Hanabi's Mother", "Koharu Utatane"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0562 }
            Reponses := array{"Hina", "Udon Ise", "Hyoui Yorishiro", "Kaguya Clan Patriarch"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0563 }
            Reponses := array{"Kobuna", "Kaito Kawanami", "Mondai", "Dokan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0564 }
            Reponses := array{"Tenji", "Fuyou", "Kaitou Nezumi", "Akita Inuzuka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0565 }
            Reponses := array{"Kajiki", "Kotohime Fuuma", "Torifu Akimichi", "Karin's Mother"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0566 }
            Reponses := array{"Kakkou", "Aoda", "Preta Path", "Urakaku"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0567 }
            Reponses := array{"Kakou", "Maruta", "Kayo", "Kyuusuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0568 }
            Reponses := array{"Kamata", "Shouseki", "Sana", "Garashi Tono"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0569 }
            Reponses := array{"Watase", "Oowashi", "Kamikiri Fuuma", "Tekuno Kanden"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0570 }
            Reponses := array{"Kanabun", "Hinoto", "Sada", "Yuusuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0571 }
            Reponses := array{"Dokan", "Kohari Umino", "Kandachi", "Kura Kageno"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0572 }
            Reponses := array{"Tsuru Itoi", "Shin", "Tonbo Tobitake", "Kande Inabikari"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0573 }
            Reponses := array{"Ami", "Kanna", "Korobi", "Genbu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0574 }
            Reponses := array{"Saya", "Kousuke", "Kasuga Nara", "Ibara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0575 }
            Reponses := array{"Tanishi", "Watase", "Katasuke Toono", "Gongorou Kamakura"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0576 }
            Reponses := array{"Miina", "Katazu", "Kurobachi Kamizuru", "Yurika"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0577 }
            Reponses := array{"Takanami Senka", "Kanna", "Kobuna", "Kawarama Senjuu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0578 }
            Reponses := array{"Kayo", "Kigiri", "Momo", "Iwashi Tatami"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0579 }
            Reponses := array{"Tonbo Tobitake", "Kayui", "Sukui", "Okisuke"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0580 }
            Reponses := array{"Kazami", "Denki's Father", "Tsuru Itoi", "Anaguma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0581 }
            Reponses := array{"Kedama", "Tatsuma Aburame", "Kiyoi Yotsuki", "Haguruma"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0582 }
            Reponses := array{"Kihou", "Hayama Shirakumo", "Ise", "Iou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0583 }
            Reponses := array{"Kiji", "Gongorou Kamakura", "Haori", "Sumaru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0584 }
            Reponses := array{"Doushu Goetsu", "Kiku", "Yukai", "Suzu Sougi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0585 }
            Reponses := array{"Chamaru", "Ran", "Setsuna Uchiha", "Kikunojou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0586 }
            Reponses := array{"Yuura", "Yurinojou", "Kiji", "Kiri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0587 }
            Reponses := array{"Giichi", "Akio", "Suname", "Kirisaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0588 }
            Reponses := array{"Nanafushi", "Tekuno Kanden", "Ganno", "Kiseru Gankubi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0589 }
            Reponses := array{"Yurinojou", "Kisuke Maboroshi", "Homura Mitokado", "Koutarou Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0590 }
            Reponses := array{"Kitsuchi", "Yurui", "Kusabi", "Hostess-san"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0591 }
            Reponses := array{"Iroha Hyuuga", "Kiyoi Yotsuki", "Tenma Funato", "Hibari Kamakura"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0592 }
            Reponses := array{"Kuromaru", "Kiyoyasu Kagetsu", "Sukeza", "Land of Lightning Daimyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0593 }
            Reponses := array{"Kobuna", "Hana Kaka", "Kaito Kawanami", "Maen Nara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0594 }
            Reponses := array{"A (First Raikage)", "Raijin", "Kodama", "Byakuren"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0595 }
            Reponses := array{"Kohan Yamanaka", "Tayori", "Tonika Village Head", "Akaboshi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0596 }
            Reponses := array{"Kohari Umino", "Renga Kokubou", "Yuina Itomaki", "Suname"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0597 }
            Reponses := array{"Saya", "Ninkame", "Kokatsu", "Agira Ryuudouin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0598 }
            Reponses := array{"Nekomata", "Karura", "Kou Hyuuga", "Kokuri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0599 }
            Reponses := array{"Haruna", "Yuura", "Kokushi", "Kanabun"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0600 }
            Reponses := array{"Kokuyou", "Yukai", "Maruta", "Ashina"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0601 }
            Reponses := array{"Komugi", "Tanuki Shigaraki", "Margo", "Namua"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0602 }
            Reponses := array{"Preta Path", "Nagare", "Yuura", "Komushi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0603 }
            Reponses := array{"Guruguru", "Yajirobee", "Kona", "Mukade"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0604 }
            Reponses := array{"Naraka Path", "Konashi Nerikiri", "Ran Sougi", "Benten"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0605 }
            Reponses := array{"Batora Kuromori", "Saya", "Konsuchi", "Hakkaku"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0606 }
            Reponses := array{"Iwa Kunoichi", "Korobi", "Iori", "Fuen"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0607 }
            Reponses := array{"Kayo", "Minamo Funato", "Kotohime Fuuma", "Hitode"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0608 }
            Reponses := array{"Gamamaru", "Koumei", "Ruka", "Natsu Hyuuga"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0609 }
            Reponses := array{"Gengo", "Butsuma Senju", "Koutarou Fuuma", "Honoka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0610 }
            Reponses := array{"Kouza Kubisaki", "Jibachi Kamizuru", "Tamaki", "Kuu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0611 }
            Reponses := array{"Kuay Doutonbori", "Sada", "Asura Path", "Sazanami Senka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0612 }
            Reponses := array{"Kujaku", "Magire Kakuremino", "Hinoto", "Log"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0613 }
            Reponses := array{"Saya", "Kunihisa", "Fukusuke Hikyakuya", "Nan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0614 }
            Reponses := array{"Tango", "Kunijirou", "Suzaku Nara", "Saya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0615 }
            Reponses := array{"Komugi", "Kura Kageno", "Shiore", "Toki"}
            BonneReponse := 1

MakeNarutoQuestionsFR4() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0616 }
            Reponses := array{"Tsukiyo", "Kurobachi Kamizuru", "Zansul", "Jibiki Funato"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0617 }
            Reponses := array{"Torifu Akimichi", "Senta", "Kuromaru", "Shin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0618 }
            Reponses := array{"Mamushi", "Kusabi", "Nawaki", "Jei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0619 }
            Reponses := array{"Suzume", "Ichirouta Oniyuzu", "Kusune", "Chamaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0620 }
            Reponses := array{"Fuujin", "Kyohou Fuefuki", "Kageki", "Land of Earth Daimyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0621 }
            Reponses := array{"Shira", "Komugi", "Kyuuroku Wagarashi", "Land of Fire Daimyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0622 }
            Reponses := array{"Kyuusuke", "Yukimi", "Kanna", "Genbu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0623 }
            Reponses := array{"Land", "Mamushi", "Doutou Akimichi", "A (First Raikage)"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0624 }
            Reponses := array{"Kohari Umino", "Asura Path", "Land of Earth Daimyo", "Shiranami"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0625 }
            Reponses := array{"Land", "Garashi Tono", "Land of Fire Daimyo", "Yuusuke"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0626 }
            Reponses := array{"Land of Water Daimyo", "Kura Kageno", "Land of Frost Daimyo", "Daibutsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0627 }
            Reponses := array{"Mother Akimichi", "Fuguki Suikazan", "Mebuki Haruno", "Land of Lightning Daimyo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0628 }
            Reponses := array{"Kyuusuke", "Tentou Madoka", "Rinji", "Land of This Daimyo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0629 }
            Reponses := array{"Kona", "Baiu", "Land of Water Daimyo", "Gosunkugi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0630 }
            Reponses := array{"Raijin", "Kayo", "Land of Wind Daimyo", "Kyohou Fuefuki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0631 }
            Reponses := array{"Yuusuke", "Tsuru Itoi", "Madam Shijimi", "Fuzz"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0632 }
            Reponses := array{"Maen Nara", "Bunpuku", "Preta Path", "Toki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0633 }
            Reponses := array{"Toroi", "Akita Inuzuka", "Ibara", "Mai Kagetsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0634 }
            Reponses := array{"Hizashi Hyuuga", "Victor's Secretary", "Tofu", "Makaro Akimichi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0635 }
            Reponses := array{"Ibara", "Shimon Hijiri", "Maki", "Tarui"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0636 }
            Reponses := array{"Makinami Senka", "Genji", "Namua", "Kajiki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0637 }
            Reponses := array{"Mamushi", "Kousuke", "Fuzz", "Kobuna"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0638 }
            Reponses := array{"Kyohou Fuefuki", "Rinji", "Manari", "Land of Earth Daimyo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0639 }
            Reponses := array{"Tanzou", "Doushu Goetsu", "Hiruga", "Margo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0640 }
            Reponses := array{"Zou", "Maruta", "Yoshino Nara", "Kanna"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0641 }
            Reponses := array{"Maruten Akimichi", "Kiku", "Gamatama", "Guruguru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0642 }
            Reponses := array{"Watase", "Arai", "Haori", "Mazuma Izuno"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0643 }
            Reponses := array{"Mia", "Genbu", "Ushi", "Tobio"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0644 }
            Reponses := array{"Nagare", "Kobuna", "Michizou Manaka", "Konashi Nerikiri"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0645 }
            Reponses := array{"Nekomata", "Midare", "Manari", "Eiki Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0646 }
            Reponses := array{"Ryuuki", "Prime Minister", "Bug", "Mimi Inuzuka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0647 }
            Reponses := array{"Minamo Funato", "Tosaka", "Hyou", "Nanafushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0648 }
            Reponses := array{"Uruchi Uchiha", "Miru", "Ryoukan", "Tonbo Tobitake"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0649 }
            Reponses := array{"Hayama Shirakumo", "Tenzou", "Sana", "Mitsuo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0650 }
            Reponses := array{"Suiren", "Momiji", "Ryuuki", "Hachidai"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0651 }
            Reponses := array{"Aoi Rokushou", "Momo", "Kazami", "Boro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0652 }
            Reponses := array{"Monga", "Gamaden", "Yoruga", "Ran Sougi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0653 }
            Reponses := array{"Jibachi Kamizuru", "Monju", "Hayama Shirakumo", "Fuku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0654 }
            Reponses := array{"Yamaoka", "Mother Yamanaka", "Toubei Kagetsu", "Daibutsu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0655 }
            Reponses := array{"Jirouchou Wasabi", "Motoi", "Hanzaki", "Gotta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0656 }
            Reponses := array{"Shin'emon", "Shiin", "Mozu Shitakiri", "Koutarou Fuuma"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0657 }
            Reponses := array{"Kaito Kawanami", "Doushu Goetsu", "Mozuku", "Fugou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0658 }
            Reponses := array{"Urushi", "Nekobaa", "Mujou", "Hachidai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0659 }
            Reponses := array{"Agari Kaisen", "Batta", "En no Gyouja", "Murakumo Kurama"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0660 }
            Reponses := array{"Hachidai", "Ginkaku", "Musai", "Muta Aburame"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0661 }
            Reponses := array{"Tokuma Hyuuga", "Ikkaku Umino", "Saiken", "Muyami"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0662 }
            Reponses := array{"Michizou Manaka", "Jouseki", "Nadeshiko Previous Leader", "Kazami"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0663 }
            Reponses := array{"Garaga", "Shibuki", "Nagare", "Inoichi Yamanaka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0664 }
            Reponses := array{"Namua", "Neon Asakusa", "Haori", "Genji"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0665 }
            Reponses := array{"Kaito Kawanami", "Nan", "Yurinojou", "Boro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0666 }
            Reponses := array{"Hyoui Yorishiro", "Nanafushi", "Gama", "Setsuna Uchiha"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0667 }
            Reponses := array{"Nanara", "Yuura", "Gamahiro", "Mamushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0668 }
            Reponses := array{"Sousha Amino", "Tenzou", "Nangou", "Hina"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0669 }
            Reponses := array{"Naraka Path", "Chouhan", "Jouseki", "Miina"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0670 }
            Reponses := array{"Natori", "Kitane", "Senta", "Ship's Captain"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0671 }
            Reponses := array{"Shima", "Nekobaa", "Kasuga Nara", "Land of This Daimyo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0672 }
            Reponses := array{"Fuzz", "Neon Asakusa", "Yuuki Minazuki", "Asura Path"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0673 }
            Reponses := array{"Kikunojou", "Neon's Mother", "Katasuke Toono", "Taizou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0674 }
            Reponses := array{"Tobio", "Hyuuga Elder", "Renga", "Ninkame"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0675 }
            Reponses := array{"Suguro", "Fudou", "Kande Inabikari", "Nonota"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0676 }
            Reponses := array{"Shin'emon", "Doushu Goetsu", "Yuusuke", "Nowaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0677 }
            Reponses := array{"Uruchi Uchiha", "Nue", "Ittetsu", "Katazu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0678 }
            Reponses := array{"Shiin", "Harika Aburame", "Korobi", "Nurui"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0679 }
            Reponses := array{"Dodai", "Obito's Grandmother", "Amagi Izuno", "Ruiga"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0680 }
            Reponses := array{"Minamo Funato", "Urushi", "Ryoukan", "Okisuke"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0681 }
            Reponses := array{"Oowashi", "Gamagorou", "Konashi Nerikiri", "Hana Kaka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0682 }
            Reponses := array{"Ikkaku Umino", "Akahoshi", "Oppo", "Yuuga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0683 }
            Reponses := array{"Osoi", "Kokuou", "Hotarubi", "Inaho"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0684 }
            Reponses := array{"Araumi Funato", "Kokuyou", "Osuka Kamakura", "Futa Kagetsu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0685 }
            Reponses := array{"Kakou", "Ouga", "Roushi", "Kusabi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0686 }
            Reponses := array{"Kokushi", "Toki", "Ouga's Male Puppet", "Funamushi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0687 }
            Reponses := array{"Haku's Father", "Sumaru", "Penjira", "Sekki"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0688 }
            Reponses := array{"Sangorou", "Potcha", "Yuudachi", "Daimaru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0689 }
            Reponses := array{"Prime Minister", "Amagi Izuno", "Tsuzura Shitakiri", "Ibara"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0690 }
            Reponses := array{"Shimon Hijiri", "Sabiru", "Raijin", "Idate Morino"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0691 }
            Reponses := array{"Takanami Senka", "Taji", "Karura", "Ran"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0692 }
            Reponses := array{"Boro", "Ran Sougi", "Tokiwa", "Kinshiki Ootsutsuki"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0693 }
            Reponses := array{"Ouga", "Jouseki", "Ranka", "Kayo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0694 }
            Reponses := array{"Blue B", "Preta Path", "Tsurugi", "Remon Yoimura"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0695 }
            Reponses := array{"Land of Wind Daimyo", "Renga", "Okisuke", "Saya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0696 }
            Reponses := array{"Mother Yamanaka", "Reto", "Karai", "Eiki Fuuma"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0697 }
            Reponses := array{"Rinji", "Kujaku", "Michizou Manaka", "Tekuno Kanden"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0698 }
            Reponses := array{"Unkai Kurama", "Rokkaku Ryuudouin", "Makaro Akimichi", "Sen"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0699 }
            Reponses := array{"Kaguya Clan Patriarch", "Tsukado", "Kyuuroku Wagarashi", "Rokuro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0700 }
            Reponses := array{"Hana Kaka", "Kinkaku", "Rokusuke", "Shura Sanjurou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0701 }
            Reponses := array{"Suika", "Tatsumi", "Roushi", "Suika Kannonji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0702 }
            Reponses := array{"Ryoukan", "Hayama Shirakumo", "Kaitou Nezumi", "Land"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0703 }
            Reponses := array{"Ryuusa", "Akane", "Kusune", "Daibutsu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0704 }
            Reponses := array{"Kou Hyuuga", "Sabiru", "Kajiki", "Arai"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0705 }
            Reponses := array{"Fuu Yamanaka", "Denka", "Sabu", "Midare"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0706 }
            Reponses := array{"Doushu Goetsu", "Kouza Kubisaki", "Fuzz", "Sada"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0707 }
            Reponses := array{"Natsu Hyuuga", "Haruna", "Chen", "Sadai"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0708 }
            Reponses := array{"Futa Kagetsu", "Fudou", "Osuka Kamakura", "Sagiri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0709 }
            Reponses := array{"Arashi Fuuma", "Akahoshi", "Saisu Kamano", "Gamamaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0710 }
            Reponses := array{"Tatsuma Aburame", "Baji", "Raijin", "Sajou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0711 }
            Reponses := array{"Daore Doutonbori", "Mitsuo", "Samidare Amaashi", "Sana"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0712 }
            Reponses := array{"Awaji Unabara", "Ashina Uzumaki", "Sana", "Kunihisa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0713 }
            Reponses := array{"Sangorou", "Hibachi", "Yukai", "Banna"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0714 }
            Reponses := array{"Sukune", "Honoka", "Shiseru", "Santa Yamanaka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0715 }
            Reponses := array{"Nekomata", "Roushi", "Sasami", "Ranka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0716 }
            Reponses := array{"Jei", "Obito's Grandmother", "Hibachi", "Saya"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0717 }
            Reponses := array{"Minamo Funato", "Kageki", "Mother Yamanaka", "Sayuu Jouge"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0718 }
            Reponses := array{"Kageki", "Hitode", "Sazanami Senka", "Nurari"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0719 }
            Reponses := array{"Gozu", "Seiren Funato", "Kurobachi Kamizuru", "Kihou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0720 }
            Reponses := array{"Sekiei", "Kihou", "Iwa Doctor", "Hinoko"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0721 }
            Reponses := array{"Shinayakana", "Sekka", "Kirisaki", "Asura Path"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0722 }
            Reponses := array{"Ouga", "Sekki", "Shouseki", "Nagare"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0723 }
            Reponses := array{"Sen", "Shigure", "Jinpachi Munashi", "Murakumo Kurama"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0724 }
            Reponses := array{"Setsuna Uchiha", "Iwana Akame", "Kou Hyuuga", "Shouseki"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0725 }
            Reponses := array{"Shamo", "Yakku", "Kiyoi Yotsuki", "Yokozuna"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0726 }
            Reponses := array{"Shamon", "Tsuzura Shitakiri", "Karura", "Shiore"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0727 }
            Reponses := array{"Yokozuna", "Fuujin", "Shizuma Hoshigaki", "Shiba"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0728 }
            Reponses := array{"Sen", "Harusame", "Yone", "Shibuki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0729 }
            Reponses := array{"Renga", "Houki", "Shiin", "Ran"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0730 }
            Reponses := array{"Shura Sanjurou", "Ryuuki", "Kujaku", "Shimon Hijiri"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0731 }
            Reponses := array{"Akahoshi", "Kobuna", "Shin", "Ouga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0732 }
            Reponses := array{"Hakkaku", "Mimi Inuzuka", "Shinayakana", "Gongorou Kamakura"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0733 }
            Reponses := array{"Rokusuke", "Saiken", "Shinku Yuuhi", "Shisou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0734 }
            Reponses := array{"Agara", "Samidare Amaashi", "Ship's Captain", "Denka"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0735 }
            Reponses := array{"Shiranami", "Kousuke", "Shinko Inari", "Magire Kakuremino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0736 }
            Reponses := array{"Hostess-san", "Maen Nara", "Shisou", "Asura Path"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0737 }
            Reponses := array{"Shitou Akimichi", "Nekomata", "Yakku", "Amai"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0738 }
            Reponses := array{"Komushi", "Shojoji", "JJ", "Kokuyou"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0739 }
            Reponses := array{"Shouseki", "Tenzou", "Yome", "Mitsuo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0740 }
            Reponses := array{"Midare", "Sagan", "Fuki", "Shura Sanjurou"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0741 }
            Reponses := array{"Kou Hyuuga", "Kuu", "Shuu", "Genyuumaru"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0742 }
            Reponses := array{"Kyuusuke", "Teru", "Soul Tao", "Monju"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0743 }
            Reponses := array{"Mother Akimichi", "Hanzaki", "Heiji", "Sousha Amino"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0744 }
            Reponses := array{"Shizuma Hoshigaki", "Saya", "Taji", "Suguro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0745 }
            Reponses := array{"Sousha Amino", "Suika Kannonji", "Kiyoyasu Kagetsu", "Hoheto Hyuuga"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0746 }
            Reponses := array{"Takanami Senka", "Oppo", "Suiko", "Shigure"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0747 }
            Reponses := array{"Awaji Unabara", "Yukai", "Ittan", "Sukeza"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0748 }
            Reponses := array{"Sukune", "Tanuki Shigaraki", "Ushi", "Urushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0749 }
            Reponses := array{"Suname", "Kiku", "Manari", "En Oyashiro"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0750 }
            Reponses := array{"Jinpachi Munashi", "Harusame", "Suzaku", "Kirara"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0751 }
            Reponses := array{"Renga Kokubou", "Fuujin", "Suzaku Nara", "Hoheto Hyuuga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0752 }
            Reponses := array{"Shisou", "Suzu Sougi", "Kandachi", "Kazami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0753 }
            Reponses := array{"Tsuchigumo Chief", "Suzume", "Mamushi", "Suiko"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0754 }
            Reponses := array{"Suzumebachi Kamizuru", "Isago", "Stone carver's assistant", "Kousuke"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0755 }
            Reponses := array{"Karai", "Tagitsuhime", "Toubei Kagetsu", "Sazanami Senka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0756 }
            Reponses := array{"Musai", "Tagorihime", "Yurika", "Tagitsuhime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0757 }
            Reponses := array{"Misumi Tsurugi", "Taiko Uchiha", "Ami", "Gozu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0758 }
            Reponses := array{"Gosunkugi", "Houki", "Bansai", "Taiseki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0759 }
            Reponses := array{"Taizou", "Mazuma Izuno", "Nawaki", "Mother Akimichi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0760 }
            Reponses := array{"Kande Inabikari", "Hyoui Yorishiro", "Taji", "Gatai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0761 }
            Reponses := array{"Fukuyokana", "Takanami Senka", "Isono", "Tosaka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0762 }
            Reponses := array{"Hassaku Onomichi", "Tamaki", "Natsu Hyuuga", "Futa Kagetsu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0763 }
            Reponses := array{"Kokuri", "Akahoshi", "Agira Ryuudouin", "Tamao"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0764 }
            Reponses := array{"Houki", "Hibachi", "Yoshino Nara", "Tango"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0765 }
            Reponses := array{"Butsuma Senju", "Karura", "Sabu", "Tanishi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0766 }
            Reponses := array{"Kirara", "Tanuki Shigaraki", "Ryuusa", "Kaito Kawanami"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0767 }
            Reponses := array{"Chen", "Kedama", "Tanzou", "Ashina"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0768 }
            Reponses := array{"Tatewaki", "Ao", "Sukune", "Tsuzura Shitakiri"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0769 }
            Reponses := array{"Nurari", "Tatsuma Aburame", "Sajou", "Yurika"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0770 }
            Reponses := array{"Sanshou", "Tekuno Kanden", "Kaguya Clan Patriarch", "Takanami Senka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0771 }
            Reponses := array{"Sukui", "Setsuna Uchiha", "Ruiga", "Tenga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0772 }
            Reponses := array{"Tenma Funato", "Obito's Grandmother", "Aino", "Human Path"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0773 }
            Reponses := array{"Yokozuna", "Bug", "Tenma Izumo", "Miina"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0774 }
            Reponses := array{"Tenzou", "Tentou Madoka", "Kanna", "Batta"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0775 }
            Reponses := array{"Ensui Nara", "Kohari Umino", "Tenzou", "Sayuu Jouge"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0776 }
            Reponses := array{"Kagari", "Kande Inabikari", "Teru", "Yurinojou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0777 }
            Reponses := array{"Tora", "Zansul", "Nurui", "Teyaki Uchiha"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0778 }
            Reponses := array{"Nurui", "Tofu", "Hinoto", "Monga"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0779 }
            Reponses := array{"Yakku", "Ichirouta Oniyuzu", "Mitsuo", "Toki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0780 }
            Reponses := array{"Namua", "Uroko Kurama", "Tokiwa", "Haku's Father"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0781 }
            Reponses := array{"A (First Raikage)", "Yagura", "Tonbei", "Shinayakana"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0782 }
            Reponses := array{"Harusame", "Hibari Kamakura", "Tonbo Tobitake", "Mujou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0783 }
            Reponses := array{"Waraji", "Tsukune", "Mother Yamanaka", "Tonika Village Head"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0784 }
            Reponses := array{"Tora", "Kujaku", "Haku's Mother", "Shuu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0785 }
            Reponses := array{"Torifu Akimichi", "Haruna", "Ibara", "Nanafushi"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0786 }
            Reponses := array{"Choumei", "Saya", "Kitane", "Toroi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0787 }
            Reponses := array{"Tosaka", "Yokaze", "Giichi", "Victor's Secretary"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0788 }
            Reponses := array{"Tenzou", "Makaro Akimichi", "Jigumo Fuuma", "Toubei Kagetsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0789 }
            Reponses := array{"Toufu", "Kiji", "Makaro Akimichi", "Kihou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0790 }
            Reponses := array{"Toki", "Tsubaki", "Shin", "Katasuke Toono"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0791 }
            Reponses := array{"Hinata and Hanabi's Mother", "Tsubusa", "Gojou", "Leo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0792 }
            Reponses := array{"Batora Kuromori", "Tsuchigumo Chief", "Ami", "Kujaku"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0793 }
            Reponses := array{"Suika Kannonji", "En no Gyouja", "Kohan Yamanaka", "Tsukiko Kagetsu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0794 }
            Reponses := array{"Tsukiyo", "Baku", "Jigumo Fuuma", "Watase"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0795 }
            Reponses := array{"Tsukune", "Land", "Saiken", "Chishima"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0796 }
            Reponses := array{"Stone carver's assistant", "Okisuke", "Ichikishimahime", "Tsurugi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0797 }
            Reponses := array{"Tsurushi Hachiya", "Kunihisa", "Yakumo Kurama", "Kayo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0798 }
            Reponses := array{"Suzaku Nara", "Tsuzumi", "Tenga", "Tora"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0799 }
            Reponses := array{"Katazu", "Tsuzura Shitakiri", "Kokuri", "Ryougi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0800 }
            Reponses := array{"Yuusuke", "Unkai Kurama", "Zansul", "Sazanami Senka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0801 }
            Reponses := array{"Urakaku", "Saisu Kamano", "Yurinojou", "Gekkou"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0802 }
            Reponses := array{"Fuki", "Uroko Kurama", "Kasuga Nara", "Suzu Sougi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0803 }
            Reponses := array{"Tatewaki", "Suzumebachi Kamizuru", "Uruchi Uchiha", "Enra"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0804 }
            Reponses := array{"Urushi", "Iwa Doctor", "Hoheto Hyuuga", "Kohari Umino"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0805 }
            Reponses := array{"Sekka", "Victor", "Chuusin", "Kiseru Gankubi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0806 }
            Reponses := array{"Yurito", "Land of Water Daimyo", "Gamariki", "Victor's Secretary"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0807 }
            Reponses := array{"Mebuki Haruno", "Waraji", "Kinkaku", "Baji"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0808 }
            Reponses := array{"Watase", "Miru", "Hotarubi", "Yuuga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0809 }
            Reponses := array{"Tatsumi", "Mubi", "Shimon Hijiri", "Yagura"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0810 }
            Reponses := array{"Himushi", "Yakku", "Fundaru", "Shinayakana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0811 }
            Reponses := array{"Yome", "Ushi", "Yamaoka", "Karai"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0812 }
            Reponses := array{"Bug", "Kurobachi Kamizuru", "Yaoki", "Motoi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0813 }
            Reponses := array{"Jigumo Fuuma", "Yokaze", "Toki", "Homura Mitokado"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0814 }
            Reponses := array{"Yurika", "Yokozuna", "Enra", "Tenma Izumo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0815 }
            Reponses := array{"Tobio", "Karin's Mother", "Sazanami Senka", "Yome"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0816 }
            Reponses := array{"Neon Asakusa", "Hostess-san", "Yone", "Makaro Akimichi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0817 }
            Reponses := array{"Agari Kaisen", "Yoruga", "Hizashi Hyuuga", "Haku's Father"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0818 }
            Reponses := array{"Maen Nara", "Momo", "Jirouchou Wasabi", "Yuina Itomaki"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0819 }
            Reponses := array{"Sana", "Sousha Amino", "Yukai", "Byakuren"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0820 }
            Reponses := array{"Idate Morino", "Yurika", "Gaku Inuzuka", "Kaitou Nezumi"}
            BonneReponse := 1

MakeNarutoQuestionsFR5() : []question =
    array:
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0821 }
            Reponses := array{"Namua", "Yurinojou", "Iroha Hyuuga", "Shamon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0822 }
            Reponses := array{"Gatou", "Soul Tao", "Yurui", "Nekobaa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0823 }
            Reponses := array{"Ouga", "Ise", "Yuudachi", "Tsunami"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0824 }
            Reponses := array{"Mitsuo", "Yuuga", "Agari", "Ruka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce personnage ?"
            Image := option{ naruto.naru_0825 }
            Reponses := array{"Jakou Ryuudouin", "Houki", "Yuura", "Jouseki"}
            BonneReponse := 2

MakeNarutoQuestionsFR() : []question =
    MakeNarutoQuestionsFR1() + MakeNarutoQuestionsFR2() + MakeNarutoQuestionsFR3() + MakeNarutoQuestionsFR4() + MakeNarutoQuestionsFR5()

MakeNarutoQuestions() : []question =
    MakeNarutoQuestionsFR()

MakeNarutoQuestionsEN() : []question =
    Base := MakeNarutoQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Who is this character?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeNarutoQuestionsES() : []question =
    Base := MakeNarutoQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Quien es este personaje?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeNarutoQuestionsDE() : []question =
    Base := MakeNarutoQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Wer ist dieser Charakter?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeNarutoQuestionsIT() : []question =
    Base := MakeNarutoQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Chi e questo personaggio?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }
