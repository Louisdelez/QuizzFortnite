using { /Verse.org/Assets }

# ============================================================
#  carte_bank.verse — Banque du quizz PAYS SUR CARTE (195).
#  GENERE par tools/build_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes Natural Earth (domaine public). Tirages identiques x5 langues.
# ============================================================

CarteDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 1, 2, 1, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 0, 1, 2, 1, 1, 0}


MakeCarteQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_fr }
            Reponses := array{"Monaco", "Italie", "France", "Autriche"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_de }
            Reponses := array{"Allemagne", "Liechtenstein", "Andorre", "France"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_it }
            Reponses := array{"Pays-Bas", "Belgique", "Malte", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_es }
            Reponses := array{"Suede", "Espagne", "Islande", "Autriche"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pt }
            Reponses := array{"Irlande", "Allemagne", "Portugal", "Finlande"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gb }
            Reponses := array{"Belgique", "France", "Royaume-Uni", "Finlande"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ie }
            Reponses := array{"Liechtenstein", "Vatican", "Irlande", "Autriche"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_be }
            Reponses := array{"France", "Liechtenstein", "Belgique", "Allemagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_nl }
            Reponses := array{"Danemark", "Islande", "Espagne", "Pays-Bas"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lu }
            Reponses := array{"Luxembourg", "Irlande", "Autriche", "Vatican"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ch }
            Reponses := array{"Finlande", "Belgique", "Luxembourg", "Suisse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_at }
            Reponses := array{"Espagne", "Autriche", "Irlande", "Italie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mc }
            Reponses := array{"Monaco", "Vatican", "Espagne", "Allemagne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ad }
            Reponses := array{"Andorre", "Luxembourg", "Irlande", "Allemagne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_li }
            Reponses := array{"Norvege", "Suisse", "Autriche", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sm }
            Reponses := array{"Saint-Marin", "Islande", "Italie", "Finlande"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_va }
            Reponses := array{"Liechtenstein", "Saint-Marin", "Pays-Bas", "Vatican"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mt }
            Reponses := array{"Pays-Bas", "Malte", "Royaume-Uni", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_is }
            Reponses := array{"Autriche", "Allemagne", "Saint-Marin", "Islande"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_no }
            Reponses := array{"Portugal", "Vatican", "Norvege", "Allemagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_se }
            Reponses := array{"Malte", "Suede", "Pays-Bas", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_dk }
            Reponses := array{"Saint-Marin", "Danemark", "Monaco", "Royaume-Uni"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_fi }
            Reponses := array{"Monaco", "Finlande", "Malte", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pl }
            Reponses := array{"Pologne", "Chypre", "Roumanie", "Slovenie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cz }
            Reponses := array{"Lituanie", "Bielorussie", "Pologne", "Tchequie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sk }
            Reponses := array{"Roumanie", "Bosnie-Herzegovine", "Slovenie", "Slovaquie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_hu }
            Reponses := array{"Hongrie", "Bulgarie", "Grece", "Pologne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_si }
            Reponses := array{"Hongrie", "Bielorussie", "Macedoine du Nord", "Slovenie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_hr }
            Reponses := array{"Hongrie", "Pologne", "Croatie", "Albanie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ba }
            Reponses := array{"Bosnie-Herzegovine", "Roumanie", "Russie", "Estonie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_rs }
            Reponses := array{"Bosnie-Herzegovine", "Serbie", "Roumanie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_me }
            Reponses := array{"Estonie", "Montenegro", "Bosnie-Herzegovine", "Slovenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mk }
            Reponses := array{"Lettonie", "Moldavie", "Bosnie-Herzegovine", "Macedoine du Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_al }
            Reponses := array{"Pologne", "Albanie", "Serbie", "Slovenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gr }
            Reponses := array{"Albanie", "Roumanie", "Bosnie-Herzegovine", "Grece"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bg }
            Reponses := array{"Tchequie", "Bosnie-Herzegovine", "Bulgarie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ro }
            Reponses := array{"Roumanie", "Pologne", "Hongrie", "Moldavie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_md }
            Reponses := array{"Chypre", "Moldavie", "Grece", "Bielorussie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ua }
            Reponses := array{"Chypre", "Pologne", "Bulgarie", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_by }
            Reponses := array{"Macedoine du Nord", "Moldavie", "Slovaquie", "Bielorussie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ru }
            Reponses := array{"Albanie", "Russie", "Tchequie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ee }
            Reponses := array{"Moldavie", "Estonie", "Bosnie-Herzegovine", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lv }
            Reponses := array{"Serbie", "Croatie", "Lettonie", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lt }
            Reponses := array{"Serbie", "Tchequie", "Bielorussie", "Lituanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cy }
            Reponses := array{"Tchequie", "Moldavie", "Lituanie", "Chypre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tr }
            Reponses := array{"Armenie", "Turquie", "Qatar", "Liban"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_il }
            Reponses := array{"Liban", "Israel", "Koweit", "Syrie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ps }
            Reponses := array{"Liban", "Arabie saoudite", "Emirats arabes unis", "Palestine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lb }
            Reponses := array{"Oman", "Georgie", "Liban", "Arabie saoudite"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sy }
            Reponses := array{"Israel", "Syrie", "Turquie", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_jo }
            Reponses := array{"Koweit", "Palestine", "Jordanie", "Armenie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_iq }
            Reponses := array{"Turquie", "Qatar", "Liban", "Irak"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ir }
            Reponses := array{"Iran", "Armenie", "Arabie saoudite", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sa }
            Reponses := array{"Arabie saoudite", "Iran", "Jordanie", "Liban"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ye }
            Reponses := array{"Azerbaidjan", "Yemen", "Koweit", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_om }
            Reponses := array{"Iran", "Palestine", "Bahrein", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ae }
            Reponses := array{"Bahrein", "Irak", "Palestine", "Emirats arabes unis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_qa }
            Reponses := array{"Azerbaidjan", "Qatar", "Bahrein", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bh }
            Reponses := array{"Liban", "Israel", "Yemen", "Bahrein"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kw }
            Reponses := array{"Azerbaidjan", "Syrie", "Koweit", "Yemen"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ge }
            Reponses := array{"Iran", "Georgie", "Syrie", "Liban"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_am }
            Reponses := array{"Liban", "Armenie", "Emirats arabes unis", "Syrie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_az }
            Reponses := array{"Azerbaidjan", "Qatar", "Jordanie", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kz }
            Reponses := array{"Kazakhstan", "Tadjikistan", "Turkmenistan", "Kirghizistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_uz }
            Reponses := array{"Kirghizistan", "Mongolie", "Ouzbekistan", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tm }
            Reponses := array{"Turkmenistan", "Afghanistan", "Ouzbekistan", "Tadjikistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kg }
            Reponses := array{"Kirghizistan", "Tadjikistan", "Ouzbekistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tj }
            Reponses := array{"Afghanistan", "Mongolie", "Tadjikistan", "Ouzbekistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_af }
            Reponses := array{"Afghanistan", "Mongolie", "Kazakhstan", "Kirghizistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mn }
            Reponses := array{"Kazakhstan", "Mongolie", "Turkmenistan", "Tadjikistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cn }
            Reponses := array{"Chine", "Japon", "Brunei", "Timor oriental"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_jp }
            Reponses := array{"Japon", "Inde", "Pakistan", "Cambodge"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kr }
            Reponses := array{"Malaisie", "Cambodge", "Vietnam", "Coree du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kp }
            Reponses := array{"Coree du Sud", "Laos", "Maldives", "Coree du Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_in }
            Reponses := array{"Inde", "Singapour", "Bangladesh", "Bhoutan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pk }
            Reponses := array{"Japon", "Coree du Sud", "Pakistan", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bd }
            Reponses := array{"Bangladesh", "Inde", "Sri Lanka", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lk }
            Reponses := array{"Singapour", "Nepal", "Japon", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_np }
            Reponses := array{"Nepal", "Timor oriental", "Brunei", "Coree du Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bt }
            Reponses := array{"Pakistan", "Bhoutan", "Japon", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mv }
            Reponses := array{"Maldives", "Coree du Nord", "Inde", "Timor oriental"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mm }
            Reponses := array{"Coree du Nord", "Laos", "Birmanie", "Vietnam"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_th }
            Reponses := array{"Thailande", "Maldives", "Vietnam", "Singapour"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_la }
            Reponses := array{"Indonesie", "Birmanie", "Laos", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kh }
            Reponses := array{"Philippines", "Birmanie", "Chine", "Cambodge"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_vn }
            Reponses := array{"Vietnam", "Birmanie", "Singapour", "Coree du Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_my }
            Reponses := array{"Coree du Nord", "Malaisie", "Vietnam", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sg }
            Reponses := array{"Japon", "Sri Lanka", "Singapour", "Malaisie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_id }
            Reponses := array{"Birmanie", "Indonesie", "Bhoutan", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bn }
            Reponses := array{"Pakistan", "Coree du Nord", "Laos", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ph }
            Reponses := array{"Thailande", "Philippines", "Maldives", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tl }
            Reponses := array{"Laos", "Timor oriental", "Malaisie", "Thailande"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_au }
            Reponses := array{"Iles Salomon", "Iles Marshall", "Australie", "Fidji"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_nz }
            Reponses := array{"Micronesie", "Palaos", "Nouvelle-Zelande", "Iles Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pg }
            Reponses := array{"Palaos", "Papouasie-Nouvelle-Guinee", "Iles Marshall", "Samoa"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_fj }
            Reponses := array{"Samoa", "Vanuatu", "Fidji", "Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sb }
            Reponses := array{"Iles Salomon", "Papouasie-Nouvelle-Guinee", "Micronesie", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_vu }
            Reponses := array{"Fidji", "Tonga", "Australie", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ws }
            Reponses := array{"Iles Salomon", "Papouasie-Nouvelle-Guinee", "Samoa", "Tonga"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_to }
            Reponses := array{"Nouvelle-Zelande", "Tonga", "Micronesie", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tv }
            Reponses := array{"Nauru", "Palaos", "Tuvalu", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ki }
            Reponses := array{"Nauru", "Kiribati", "Samoa", "Nouvelle-Zelande"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_nr }
            Reponses := array{"Nauru", "Kiribati", "Micronesie", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pw }
            Reponses := array{"Palaos", "Vanuatu", "Samoa", "Australie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_fm }
            Reponses := array{"Nauru", "Australie", "Fidji", "Micronesie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mh }
            Reponses := array{"Iles Salomon", "Iles Marshall", "Fidji", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ma }
            Reponses := array{"Guinee-Bissau", "Egypte", "Maroc", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_dz }
            Reponses := array{"Djibouti", "Algerie", "Burundi", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tn }
            Reponses := array{"Ethiopie", "RD Congo", "Rwanda", "Tunisie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ly }
            Reponses := array{"Cameroun", "Rwanda", "Afrique du Sud", "Libye"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_eg }
            Reponses := array{"Egypte", "Gabon", "Togo", "Erythree"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sd }
            Reponses := array{"Afrique du Sud", "Soudan", "Guinee-Bissau", "Maroc"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ss }
            Reponses := array{"Soudan du Sud", "Lesotho", "Ghana", "Mauritanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_et }
            Reponses := array{"Soudan", "Mozambique", "Namibie", "Ethiopie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_er }
            Reponses := array{"Togo", "Maroc", "Erythree", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_dj }
            Reponses := array{"Djibouti", "Algerie", "Burkina Faso", "Zambie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_so }
            Reponses := array{"Centrafrique", "Burundi", "Somalie", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ke }
            Reponses := array{"Kenya", "Ghana", "Soudan", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ug }
            Reponses := array{"Rwanda", "Cameroun", "Liberia", "Ouganda"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tz }
            Reponses := array{"Maroc", "Rwanda", "Guinee equatoriale", "Tanzanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_rw }
            Reponses := array{"Angola", "Congo", "Guinee equatoriale", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bi }
            Reponses := array{"Lesotho", "Cameroun", "Ethiopie", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cd }
            Reponses := array{"Libye", "Liberia", "Djibouti", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cg }
            Reponses := array{"Eswatini", "Senegal", "Congo", "Sao Tome-et-Principe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ga }
            Reponses := array{"Cote d'Ivoire", "Gabon", "Namibie", "Tunisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gq }
            Reponses := array{"Libye", "Guinee equatoriale", "Kenya", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cm }
            Reponses := array{"Cameroun", "Maurice", "Comores", "Egypte"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cf }
            Reponses := array{"Ouganda", "Centrafrique", "Mauritanie", "Cote d'Ivoire"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_td }
            Reponses := array{"Tchad", "Maurice", "Mozambique", "Soudan du Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ne }
            Reponses := array{"Malawi", "Niger", "Algerie", "Soudan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ng }
            Reponses := array{"Nigeria", "Rwanda", "Somalie", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bj }
            Reponses := array{"Zimbabwe", "Benin", "Guinee equatoriale", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tg }
            Reponses := array{"Maroc", "Togo", "Lesotho", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gh }
            Reponses := array{"Maurice", "Ghana", "Zimbabwe", "Erythree"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ci }
            Reponses := array{"Libye", "Namibie", "Angola", "Cote d'Ivoire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lr }
            Reponses := array{"Liberia", "Niger", "Rwanda", "Comores"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sl }
            Reponses := array{"Lesotho", "Sierra Leone", "Algerie", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gn }
            Reponses := array{"Madagascar", "Guinee", "Soudan", "Kenya"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gw }
            Reponses := array{"Maroc", "Guinee-Bissau", "Gambie", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sn }
            Reponses := array{"Senegal", "Cap-Vert", "Guinee-Bissau", "Djibouti"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gm }
            Reponses := array{"Erythree", "Gambie", "Tchad", "Soudan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ml }
            Reponses := array{"Liberia", "Mali", "Benin", "Guinee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bf }
            Reponses := array{"Ouganda", "Nigeria", "Tchad", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mr }
            Reponses := array{"Guinee equatoriale", "Afrique du Sud", "Mauritanie", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cv }
            Reponses := array{"Sao Tome-et-Principe", "Rwanda", "Cap-Vert", "Comores"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_st }
            Reponses := array{"Sao Tome-et-Principe", "Burkina Faso", "Ouganda", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ao }
            Reponses := array{"Soudan", "Botswana", "Nigeria", "Angola"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_zm }
            Reponses := array{"Zambie", "Centrafrique", "Comores", "Botswana"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_zw }
            Reponses := array{"Centrafrique", "Somalie", "Zimbabwe", "Tchad"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mw }
            Reponses := array{"Gambie", "Tchad", "Malawi", "Burkina Faso"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mz }
            Reponses := array{"Botswana", "Liberia", "Togo", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mg }
            Reponses := array{"Gabon", "Libye", "Madagascar", "Algerie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_km }
            Reponses := array{"Nigeria", "Mauritanie", "Comores", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mu }
            Reponses := array{"Maurice", "Soudan", "Gabon", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sc }
            Reponses := array{"Eswatini", "Seychelles", "Somalie", "Maroc"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_za }
            Reponses := array{"Gambie", "Afrique du Sud", "Ghana", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_na }
            Reponses := array{"Kenya", "Guinee-Bissau", "Guinee equatoriale", "Namibie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bw }
            Reponses := array{"Botswana", "Egypte", "Burkina Faso", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ls }
            Reponses := array{"Lesotho", "Tunisie", "Tchad", "Guinee-Bissau"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sz }
            Reponses := array{"Eswatini", "Seychelles", "Ghana", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_us }
            Reponses := array{"Belize", "Canada", "Mexique", "Etats-Unis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ca }
            Reponses := array{"Guinee equatoriale", "Mexique", "Etats-Unis", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_mx }
            Reponses := array{"Canada", "Mexique", "Etats-Unis", "Arabie saoudite"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gt }
            Reponses := array{"Guatemala", "Grenade", "Cuba", "Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bz }
            Reponses := array{"Dominique", "Costa Rica", "Belize", "Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_hn }
            Reponses := array{"Haiti", "Salvador", "Dominique", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sv }
            Reponses := array{"Republique dominicaine", "Salvador", "Antigua-et-Barbuda", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ni }
            Reponses := array{"Grenade", "Saint-Vincent", "Nicaragua", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cr }
            Reponses := array{"Belize", "Cuba", "Dominique", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pa }
            Reponses := array{"Haiti", "Antigua-et-Barbuda", "Barbade", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bs }
            Reponses := array{"Haiti", "Sainte-Lucie", "Nicaragua", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cu }
            Reponses := array{"Haiti", "Saint-Vincent", "Cuba", "Antigua-et-Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_jm }
            Reponses := array{"Costa Rica", "Guatemala", "Cuba", "Jamaique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ht }
            Reponses := array{"Belize", "Haiti", "Dominique", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_do }
            Reponses := array{"Republique dominicaine", "Panama", "Barbade", "Grenade"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_kn }
            Reponses := array{"Guatemala", "Costa Rica", "Panama", "Saint-Kitts-et-Nevis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ag }
            Reponses := array{"Trinite-et-Tobago", "Grenade", "Antigua-et-Barbuda", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_dm }
            Reponses := array{"Honduras", "Haiti", "Costa Rica", "Dominique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_lc }
            Reponses := array{"Sainte-Lucie", "Salvador", "Guatemala", "Republique dominicaine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_vc }
            Reponses := array{"Jamaique", "Antigua-et-Barbuda", "Honduras", "Saint-Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bb }
            Reponses := array{"Haiti", "Honduras", "Guatemala", "Barbade"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gd }
            Reponses := array{"Grenade", "Antigua-et-Barbuda", "Panama", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_tt }
            Reponses := array{"Trinite-et-Tobago", "Belize", "Cuba", "Sainte-Lucie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_co }
            Reponses := array{"Colombie", "Uruguay", "Venezuela", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ve }
            Reponses := array{"Paraguay", "Chili", "Venezuela", "Bolivie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_gy }
            Reponses := array{"Chili", "Perou", "Guyana", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_sr }
            Reponses := array{"Suriname", "Bresil", "Paraguay", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ec }
            Reponses := array{"Uruguay", "Equateur", "Bresil", "Chili"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_pe }
            Reponses := array{"Paraguay", "Perou", "Uruguay", "Argentine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_br }
            Reponses := array{"Colombie", "Paraguay", "Bresil", "Perou"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_bo }
            Reponses := array{"Chili", "Bresil", "Bolivie", "Argentine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_py }
            Reponses := array{"Uruguay", "Paraguay", "Perou", "Chili"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_uy }
            Reponses := array{"Argentine", "Colombie", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_cl }
            Reponses := array{"Chili", "Perou", "Paraguay", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ?"
            Image := option{ carte.map_ar }
            Reponses := array{"Guyana", "Chili", "Uruguay", "Argentine"}
            BonneReponse := 3

MakeCarteQuestions() : []question =
    MakeCarteQuestionsFR()

MakeCarteQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_fr }
            Reponses := array{"Monaco", "Italy", "France", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_de }
            Reponses := array{"Germany", "Liechtenstein", "Andorra", "France"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_it }
            Reponses := array{"Netherlands", "Belgium", "Malta", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_es }
            Reponses := array{"Sweden", "Spain", "Iceland", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pt }
            Reponses := array{"Ireland", "Germany", "Portugal", "Finland"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gb }
            Reponses := array{"Belgium", "France", "United Kingdom", "Finland"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ie }
            Reponses := array{"Liechtenstein", "Vatican City", "Ireland", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_be }
            Reponses := array{"France", "Liechtenstein", "Belgium", "Germany"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_nl }
            Reponses := array{"Denmark", "Iceland", "Spain", "Netherlands"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lu }
            Reponses := array{"Luxembourg", "Ireland", "Austria", "Vatican City"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ch }
            Reponses := array{"Finland", "Belgium", "Luxembourg", "Switzerland"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_at }
            Reponses := array{"Spain", "Austria", "Ireland", "Italy"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mc }
            Reponses := array{"Monaco", "Vatican City", "Spain", "Germany"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ad }
            Reponses := array{"Andorra", "Luxembourg", "Ireland", "Germany"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_li }
            Reponses := array{"Norway", "Switzerland", "Austria", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sm }
            Reponses := array{"San Marino", "Iceland", "Italy", "Finland"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_va }
            Reponses := array{"Liechtenstein", "San Marino", "Netherlands", "Vatican City"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mt }
            Reponses := array{"Netherlands", "Malta", "United Kingdom", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_is }
            Reponses := array{"Austria", "Germany", "San Marino", "Iceland"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_no }
            Reponses := array{"Portugal", "Vatican City", "Norway", "Germany"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_se }
            Reponses := array{"Malta", "Sweden", "Netherlands", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_dk }
            Reponses := array{"San Marino", "Denmark", "Monaco", "United Kingdom"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_fi }
            Reponses := array{"Monaco", "Finland", "Malta", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pl }
            Reponses := array{"Poland", "Cyprus", "Romania", "Slovenia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cz }
            Reponses := array{"Lithuania", "Belarus", "Poland", "Czechia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sk }
            Reponses := array{"Romania", "Bosnia and Herzegovina", "Slovenia", "Slovakia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_hu }
            Reponses := array{"Hungary", "Bulgaria", "Greece", "Poland"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_si }
            Reponses := array{"Hungary", "Belarus", "North Macedonia", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_hr }
            Reponses := array{"Hungary", "Poland", "Croatia", "Albania"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ba }
            Reponses := array{"Bosnia and Herzegovina", "Romania", "Russia", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_rs }
            Reponses := array{"Bosnia and Herzegovina", "Serbia", "Romania", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_me }
            Reponses := array{"Estonia", "Montenegro", "Bosnia and Herzegovina", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mk }
            Reponses := array{"Latvia", "Moldova", "Bosnia and Herzegovina", "North Macedonia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_al }
            Reponses := array{"Poland", "Albania", "Serbia", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gr }
            Reponses := array{"Albania", "Romania", "Bosnia and Herzegovina", "Greece"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bg }
            Reponses := array{"Czechia", "Bosnia and Herzegovina", "Bulgaria", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ro }
            Reponses := array{"Romania", "Poland", "Hungary", "Moldova"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_md }
            Reponses := array{"Cyprus", "Moldova", "Greece", "Belarus"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ua }
            Reponses := array{"Cyprus", "Poland", "Bulgaria", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_by }
            Reponses := array{"North Macedonia", "Moldova", "Slovakia", "Belarus"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ru }
            Reponses := array{"Albania", "Russia", "Czechia", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ee }
            Reponses := array{"Moldova", "Estonia", "Bosnia and Herzegovina", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lv }
            Reponses := array{"Serbia", "Croatia", "Latvia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lt }
            Reponses := array{"Serbia", "Czechia", "Belarus", "Lithuania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cy }
            Reponses := array{"Czechia", "Moldova", "Lithuania", "Cyprus"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tr }
            Reponses := array{"Armenia", "Turkey", "Qatar", "Lebanon"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_il }
            Reponses := array{"Lebanon", "Israel", "Kuwait", "Syria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ps }
            Reponses := array{"Lebanon", "Saudi Arabia", "United Arab Emirates", "Palestine"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lb }
            Reponses := array{"Oman", "Georgia", "Lebanon", "Saudi Arabia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sy }
            Reponses := array{"Israel", "Syria", "Turkey", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_jo }
            Reponses := array{"Kuwait", "Palestine", "Jordan", "Armenia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_iq }
            Reponses := array{"Turkey", "Qatar", "Lebanon", "Iraq"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ir }
            Reponses := array{"Iran", "Armenia", "Saudi Arabia", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sa }
            Reponses := array{"Saudi Arabia", "Iran", "Jordan", "Lebanon"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ye }
            Reponses := array{"Azerbaijan", "Yemen", "Kuwait", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_om }
            Reponses := array{"Iran", "Palestine", "Bahrain", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ae }
            Reponses := array{"Bahrain", "Iraq", "Palestine", "United Arab Emirates"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_qa }
            Reponses := array{"Azerbaijan", "Qatar", "Bahrain", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bh }
            Reponses := array{"Lebanon", "Israel", "Yemen", "Bahrain"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kw }
            Reponses := array{"Azerbaijan", "Syria", "Kuwait", "Yemen"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ge }
            Reponses := array{"Iran", "Georgia", "Syria", "Lebanon"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_am }
            Reponses := array{"Lebanon", "Armenia", "United Arab Emirates", "Syria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_az }
            Reponses := array{"Azerbaijan", "Qatar", "Jordan", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kz }
            Reponses := array{"Kazakhstan", "Tajikistan", "Turkmenistan", "Kyrgyzstan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_uz }
            Reponses := array{"Kyrgyzstan", "Mongolia", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tm }
            Reponses := array{"Turkmenistan", "Afghanistan", "Uzbekistan", "Tajikistan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kg }
            Reponses := array{"Kyrgyzstan", "Tajikistan", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tj }
            Reponses := array{"Afghanistan", "Mongolia", "Tajikistan", "Uzbekistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_af }
            Reponses := array{"Afghanistan", "Mongolia", "Kazakhstan", "Kyrgyzstan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mn }
            Reponses := array{"Kazakhstan", "Mongolia", "Turkmenistan", "Tajikistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cn }
            Reponses := array{"China", "Japan", "Brunei", "East Timor"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_jp }
            Reponses := array{"Japan", "India", "Pakistan", "Cambodia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kr }
            Reponses := array{"Malaysia", "Cambodia", "Vietnam", "South Korea"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kp }
            Reponses := array{"South Korea", "Laos", "Maldives", "North Korea"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_in }
            Reponses := array{"India", "Singapore", "Bangladesh", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pk }
            Reponses := array{"Japan", "South Korea", "Pakistan", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bd }
            Reponses := array{"Bangladesh", "India", "Sri Lanka", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lk }
            Reponses := array{"Singapore", "Nepal", "Japan", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_np }
            Reponses := array{"Nepal", "East Timor", "Brunei", "North Korea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bt }
            Reponses := array{"Pakistan", "Bhutan", "Japan", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mv }
            Reponses := array{"Maldives", "North Korea", "India", "East Timor"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mm }
            Reponses := array{"North Korea", "Laos", "Myanmar", "Vietnam"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_th }
            Reponses := array{"Thailand", "Maldives", "Vietnam", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_la }
            Reponses := array{"Indonesia", "Myanmar", "Laos", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kh }
            Reponses := array{"Philippines", "Myanmar", "China", "Cambodia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_vn }
            Reponses := array{"Vietnam", "Myanmar", "Singapore", "South Korea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_my }
            Reponses := array{"North Korea", "Malaysia", "Vietnam", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sg }
            Reponses := array{"Japan", "Sri Lanka", "Singapore", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_id }
            Reponses := array{"Myanmar", "Indonesia", "Bhutan", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bn }
            Reponses := array{"Pakistan", "North Korea", "Laos", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ph }
            Reponses := array{"Thailand", "Philippines", "Maldives", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tl }
            Reponses := array{"Laos", "East Timor", "Malaysia", "Thailand"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_au }
            Reponses := array{"Solomon Islands", "Marshall Islands", "Australia", "Fiji"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_nz }
            Reponses := array{"Micronesia", "Palau", "New Zealand", "Marshall Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pg }
            Reponses := array{"Palau", "Papua New Guinea", "Marshall Islands", "Samoa"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_fj }
            Reponses := array{"Samoa", "Vanuatu", "Fiji", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sb }
            Reponses := array{"Solomon Islands", "Papua New Guinea", "Micronesia", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_vu }
            Reponses := array{"Fiji", "Tonga", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ws }
            Reponses := array{"Solomon Islands", "Papua New Guinea", "Samoa", "Tonga"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_to }
            Reponses := array{"New Zealand", "Tonga", "Micronesia", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tv }
            Reponses := array{"Nauru", "Palau", "Tuvalu", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ki }
            Reponses := array{"Nauru", "Kiribati", "Samoa", "New Zealand"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_nr }
            Reponses := array{"Nauru", "Kiribati", "Micronesia", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pw }
            Reponses := array{"Palau", "Vanuatu", "Samoa", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_fm }
            Reponses := array{"Nauru", "Australia", "Fiji", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mh }
            Reponses := array{"Solomon Islands", "Marshall Islands", "Fiji", "Papua New Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ma }
            Reponses := array{"Guinea-Bissau", "Egypt", "Morocco", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_dz }
            Reponses := array{"Djibouti", "Algeria", "Burundi", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tn }
            Reponses := array{"Ethiopia", "DR Congo", "Rwanda", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ly }
            Reponses := array{"Cameroon", "Rwanda", "South Africa", "Libya"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_eg }
            Reponses := array{"Egypt", "Gabon", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sd }
            Reponses := array{"South Africa", "Sudan", "Guinea-Bissau", "Morocco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ss }
            Reponses := array{"South Sudan", "Lesotho", "Ghana", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_et }
            Reponses := array{"Sudan", "Mozambique", "Namibia", "Ethiopia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_er }
            Reponses := array{"Togo", "Morocco", "Eritrea", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_dj }
            Reponses := array{"Djibouti", "Algeria", "Burkina Faso", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_so }
            Reponses := array{"Central African Republic", "Burundi", "Somalia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ke }
            Reponses := array{"Kenya", "Ghana", "Sudan", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ug }
            Reponses := array{"Rwanda", "Cameroon", "Liberia", "Uganda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tz }
            Reponses := array{"Morocco", "Rwanda", "Equatorial Guinea", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_rw }
            Reponses := array{"Angola", "Congo", "Equatorial Guinea", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bi }
            Reponses := array{"Lesotho", "Cameroon", "Ethiopia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cd }
            Reponses := array{"Libya", "Liberia", "Djibouti", "DR Congo"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cg }
            Reponses := array{"Eswatini", "Senegal", "Congo", "Sao Tome and Principe"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ga }
            Reponses := array{"Ivory Coast", "Gabon", "Namibia", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gq }
            Reponses := array{"Libya", "Equatorial Guinea", "Kenya", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cm }
            Reponses := array{"Cameroon", "Mauritius", "Comoros", "Egypt"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cf }
            Reponses := array{"Uganda", "Central African Republic", "Mauritania", "Ivory Coast"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_td }
            Reponses := array{"Chad", "Mauritius", "Mozambique", "South Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ne }
            Reponses := array{"Malawi", "Niger", "Algeria", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ng }
            Reponses := array{"Nigeria", "Rwanda", "Somalia", "DR Congo"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bj }
            Reponses := array{"Zimbabwe", "Benin", "Equatorial Guinea", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tg }
            Reponses := array{"Morocco", "Togo", "Lesotho", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gh }
            Reponses := array{"Mauritius", "Ghana", "Zimbabwe", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ci }
            Reponses := array{"Libya", "Namibia", "Angola", "Ivory Coast"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lr }
            Reponses := array{"Liberia", "Niger", "Rwanda", "Comoros"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sl }
            Reponses := array{"Lesotho", "Sierra Leone", "Algeria", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gn }
            Reponses := array{"Madagascar", "Guinea", "Sudan", "Kenya"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gw }
            Reponses := array{"Morocco", "Guinea-Bissau", "Gambia", "DR Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sn }
            Reponses := array{"Senegal", "Cape Verde", "Guinea-Bissau", "Djibouti"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gm }
            Reponses := array{"Eritrea", "Gambia", "Chad", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ml }
            Reponses := array{"Liberia", "Mali", "Benin", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bf }
            Reponses := array{"Uganda", "Nigeria", "Chad", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mr }
            Reponses := array{"Equatorial Guinea", "South Africa", "Mauritania", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cv }
            Reponses := array{"Sao Tome and Principe", "Rwanda", "Cape Verde", "Comoros"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_st }
            Reponses := array{"Sao Tome and Principe", "Burkina Faso", "Uganda", "DR Congo"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ao }
            Reponses := array{"Sudan", "Botswana", "Nigeria", "Angola"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_zm }
            Reponses := array{"Zambia", "Central African Republic", "Comoros", "Botswana"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_zw }
            Reponses := array{"Central African Republic", "Somalia", "Zimbabwe", "Chad"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mw }
            Reponses := array{"Gambia", "Chad", "Malawi", "Burkina Faso"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mz }
            Reponses := array{"Botswana", "Liberia", "Togo", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mg }
            Reponses := array{"Gabon", "Libya", "Madagascar", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_km }
            Reponses := array{"Nigeria", "Mauritania", "Comoros", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mu }
            Reponses := array{"Mauritius", "Sudan", "Gabon", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sc }
            Reponses := array{"Eswatini", "Seychelles", "Somalia", "Morocco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_za }
            Reponses := array{"Gambia", "South Africa", "Ghana", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_na }
            Reponses := array{"Kenya", "Guinea-Bissau", "Equatorial Guinea", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bw }
            Reponses := array{"Botswana", "Egypt", "Burkina Faso", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ls }
            Reponses := array{"Lesotho", "Tunisia", "Chad", "Guinea-Bissau"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sz }
            Reponses := array{"Eswatini", "Seychelles", "Ghana", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_us }
            Reponses := array{"Belize", "Canada", "Mexico", "United States"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ca }
            Reponses := array{"Equatorial Guinea", "Mexico", "United States", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_mx }
            Reponses := array{"Canada", "Mexico", "United States", "Saudi Arabia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gt }
            Reponses := array{"Guatemala", "Grenada", "Cuba", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bz }
            Reponses := array{"Dominica", "Costa Rica", "Belize", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_hn }
            Reponses := array{"Haiti", "El Salvador", "Dominica", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sv }
            Reponses := array{"Dominican Republic", "El Salvador", "Antigua and Barbuda", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ni }
            Reponses := array{"Grenada", "Saint Vincent", "Nicaragua", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cr }
            Reponses := array{"Belize", "Cuba", "Dominica", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pa }
            Reponses := array{"Haiti", "Antigua and Barbuda", "Barbados", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bs }
            Reponses := array{"Haiti", "Saint Lucia", "Nicaragua", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cu }
            Reponses := array{"Haiti", "Saint Vincent", "Cuba", "Antigua and Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_jm }
            Reponses := array{"Costa Rica", "Guatemala", "Cuba", "Jamaica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ht }
            Reponses := array{"Belize", "Haiti", "Dominica", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_do }
            Reponses := array{"Dominican Republic", "Panama", "Barbados", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_kn }
            Reponses := array{"Guatemala", "Costa Rica", "Panama", "Saint Kitts and Nevis"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ag }
            Reponses := array{"Trinidad and Tobago", "Grenada", "Antigua and Barbuda", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_dm }
            Reponses := array{"Honduras", "Haiti", "Costa Rica", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_lc }
            Reponses := array{"Saint Lucia", "El Salvador", "Guatemala", "Dominican Republic"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_vc }
            Reponses := array{"Jamaica", "Antigua and Barbuda", "Honduras", "Saint Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bb }
            Reponses := array{"Haiti", "Honduras", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gd }
            Reponses := array{"Grenada", "Antigua and Barbuda", "Panama", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_tt }
            Reponses := array{"Trinidad and Tobago", "Belize", "Cuba", "Saint Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_co }
            Reponses := array{"Colombia", "Uruguay", "Venezuela", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ve }
            Reponses := array{"Paraguay", "Chile", "Venezuela", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_gy }
            Reponses := array{"Chile", "Peru", "Guyana", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_sr }
            Reponses := array{"Suriname", "Brazil", "Paraguay", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ec }
            Reponses := array{"Uruguay", "Ecuador", "Brazil", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_pe }
            Reponses := array{"Paraguay", "Peru", "Uruguay", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_br }
            Reponses := array{"Colombia", "Paraguay", "Brazil", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_bo }
            Reponses := array{"Chile", "Brazil", "Bolivia", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_py }
            Reponses := array{"Uruguay", "Paraguay", "Peru", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_uy }
            Reponses := array{"Argentina", "Colombia", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_cl }
            Reponses := array{"Chile", "Peru", "Paraguay", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this?"
            Image := option{ carte.map_ar }
            Reponses := array{"Guyana", "Chile", "Uruguay", "Argentina"}
            BonneReponse := 3

MakeCarteQuestionsES() : []question =
    array:
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_fr }
            Reponses := array{"Monaco", "Italia", "Francia", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_de }
            Reponses := array{"Alemania", "Liechtenstein", "Andorra", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_it }
            Reponses := array{"Paises Bajos", "Belgica", "Malta", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_es }
            Reponses := array{"Suecia", "Espana", "Islandia", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pt }
            Reponses := array{"Irlanda", "Alemania", "Portugal", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gb }
            Reponses := array{"Belgica", "Francia", "Reino Unido", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ie }
            Reponses := array{"Liechtenstein", "Ciudad del Vaticano", "Irlanda", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_be }
            Reponses := array{"Francia", "Liechtenstein", "Belgica", "Alemania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_nl }
            Reponses := array{"Dinamarca", "Islandia", "Espana", "Paises Bajos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lu }
            Reponses := array{"Luxemburgo", "Irlanda", "Austria", "Ciudad del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ch }
            Reponses := array{"Finlandia", "Belgica", "Luxemburgo", "Suiza"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_at }
            Reponses := array{"Espana", "Austria", "Irlanda", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mc }
            Reponses := array{"Monaco", "Ciudad del Vaticano", "Espana", "Alemania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ad }
            Reponses := array{"Andorra", "Luxemburgo", "Irlanda", "Alemania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_li }
            Reponses := array{"Noruega", "Suiza", "Austria", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sm }
            Reponses := array{"San Marino", "Islandia", "Italia", "Finlandia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_va }
            Reponses := array{"Liechtenstein", "San Marino", "Paises Bajos", "Ciudad del Vaticano"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mt }
            Reponses := array{"Paises Bajos", "Malta", "Reino Unido", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_is }
            Reponses := array{"Austria", "Alemania", "San Marino", "Islandia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_no }
            Reponses := array{"Portugal", "Ciudad del Vaticano", "Noruega", "Alemania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_se }
            Reponses := array{"Malta", "Suecia", "Paises Bajos", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_dk }
            Reponses := array{"San Marino", "Dinamarca", "Monaco", "Reino Unido"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_fi }
            Reponses := array{"Monaco", "Finlandia", "Malta", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pl }
            Reponses := array{"Polonia", "Chipre", "Rumania", "Eslovenia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cz }
            Reponses := array{"Lituania", "Bielorrusia", "Polonia", "Chequia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sk }
            Reponses := array{"Rumania", "Bosnia y Herzegovina", "Eslovenia", "Eslovaquia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_hu }
            Reponses := array{"Hungria", "Bulgaria", "Grecia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_si }
            Reponses := array{"Hungria", "Bielorrusia", "Macedonia del Norte", "Eslovenia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_hr }
            Reponses := array{"Hungria", "Polonia", "Croacia", "Albania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ba }
            Reponses := array{"Bosnia y Herzegovina", "Rumania", "Rusia", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_rs }
            Reponses := array{"Bosnia y Herzegovina", "Serbia", "Rumania", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_me }
            Reponses := array{"Estonia", "Montenegro", "Bosnia y Herzegovina", "Eslovenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mk }
            Reponses := array{"Letonia", "Moldavia", "Bosnia y Herzegovina", "Macedonia del Norte"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_al }
            Reponses := array{"Polonia", "Albania", "Serbia", "Eslovenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gr }
            Reponses := array{"Albania", "Rumania", "Bosnia y Herzegovina", "Grecia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bg }
            Reponses := array{"Chequia", "Bosnia y Herzegovina", "Bulgaria", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ro }
            Reponses := array{"Rumania", "Polonia", "Hungria", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_md }
            Reponses := array{"Chipre", "Moldavia", "Grecia", "Bielorrusia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ua }
            Reponses := array{"Chipre", "Polonia", "Bulgaria", "Ucrania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_by }
            Reponses := array{"Macedonia del Norte", "Moldavia", "Eslovaquia", "Bielorrusia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ru }
            Reponses := array{"Albania", "Rusia", "Chequia", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ee }
            Reponses := array{"Moldavia", "Estonia", "Bosnia y Herzegovina", "Ucrania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lv }
            Reponses := array{"Serbia", "Croacia", "Letonia", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lt }
            Reponses := array{"Serbia", "Chequia", "Bielorrusia", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cy }
            Reponses := array{"Chequia", "Moldavia", "Lituania", "Chipre"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tr }
            Reponses := array{"Armenia", "Turquia", "Catar", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_il }
            Reponses := array{"Libano", "Israel", "Kuwait", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ps }
            Reponses := array{"Libano", "Arabia Saudita", "Emiratos Arabes Unidos", "Palestina"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lb }
            Reponses := array{"Oman", "Georgia", "Libano", "Arabia Saudita"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sy }
            Reponses := array{"Israel", "Siria", "Turquia", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_jo }
            Reponses := array{"Kuwait", "Palestina", "Jordania", "Armenia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_iq }
            Reponses := array{"Turquia", "Catar", "Libano", "Irak"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ir }
            Reponses := array{"Iran", "Armenia", "Arabia Saudita", "Catar"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sa }
            Reponses := array{"Arabia Saudita", "Iran", "Jordania", "Libano"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ye }
            Reponses := array{"Azerbaiyan", "Yemen", "Kuwait", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_om }
            Reponses := array{"Iran", "Palestina", "Barein", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ae }
            Reponses := array{"Barein", "Irak", "Palestina", "Emiratos Arabes Unidos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_qa }
            Reponses := array{"Azerbaiyan", "Catar", "Barein", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bh }
            Reponses := array{"Libano", "Israel", "Yemen", "Barein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kw }
            Reponses := array{"Azerbaiyan", "Siria", "Kuwait", "Yemen"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ge }
            Reponses := array{"Iran", "Georgia", "Siria", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_am }
            Reponses := array{"Libano", "Armenia", "Emiratos Arabes Unidos", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_az }
            Reponses := array{"Azerbaiyan", "Catar", "Jordania", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kz }
            Reponses := array{"Kazajistan", "Tayikistan", "Turkmenistan", "Kirguistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_uz }
            Reponses := array{"Kirguistan", "Mongolia", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tm }
            Reponses := array{"Turkmenistan", "Afganistan", "Uzbekistan", "Tayikistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kg }
            Reponses := array{"Kirguistan", "Tayikistan", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tj }
            Reponses := array{"Afganistan", "Mongolia", "Tayikistan", "Uzbekistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_af }
            Reponses := array{"Afganistan", "Mongolia", "Kazajistan", "Kirguistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mn }
            Reponses := array{"Kazajistan", "Mongolia", "Turkmenistan", "Tayikistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cn }
            Reponses := array{"China", "Japon", "Brunei", "Timor Oriental"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_jp }
            Reponses := array{"Japon", "India", "Pakistan", "Camboya"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kr }
            Reponses := array{"Malasia", "Camboya", "Vietnam", "Corea del Sur"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kp }
            Reponses := array{"Corea del Sur", "Laos", "Maldivas", "Corea del Norte"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_in }
            Reponses := array{"India", "Singapur", "Banglades", "Butan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pk }
            Reponses := array{"Japon", "Corea del Sur", "Pakistan", "Banglades"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bd }
            Reponses := array{"Banglades", "India", "Sri Lanka", "Maldivas"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lk }
            Reponses := array{"Singapur", "Nepal", "Japon", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_np }
            Reponses := array{"Nepal", "Timor Oriental", "Brunei", "Corea del Norte"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bt }
            Reponses := array{"Pakistan", "Butan", "Japon", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mv }
            Reponses := array{"Maldivas", "Corea del Norte", "India", "Timor Oriental"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mm }
            Reponses := array{"Corea del Norte", "Laos", "Birmania", "Vietnam"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_th }
            Reponses := array{"Tailandia", "Maldivas", "Vietnam", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_la }
            Reponses := array{"Indonesia", "Birmania", "Laos", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kh }
            Reponses := array{"Filipinas", "Birmania", "China", "Camboya"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_vn }
            Reponses := array{"Vietnam", "Birmania", "Singapur", "Corea del Sur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_my }
            Reponses := array{"Corea del Norte", "Malasia", "Vietnam", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sg }
            Reponses := array{"Japon", "Sri Lanka", "Singapur", "Malasia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_id }
            Reponses := array{"Birmania", "Indonesia", "Butan", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bn }
            Reponses := array{"Pakistan", "Corea del Norte", "Laos", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ph }
            Reponses := array{"Tailandia", "Filipinas", "Maldivas", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tl }
            Reponses := array{"Laos", "Timor Oriental", "Malasia", "Tailandia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_au }
            Reponses := array{"Islas Salomon", "Islas Marshall", "Australia", "Fiyi"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_nz }
            Reponses := array{"Micronesia", "Palaos", "Nueva Zelanda", "Islas Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pg }
            Reponses := array{"Palaos", "Papua Nueva Guinea", "Islas Marshall", "Samoa"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_fj }
            Reponses := array{"Samoa", "Vanuatu", "Fiyi", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sb }
            Reponses := array{"Islas Salomon", "Papua Nueva Guinea", "Micronesia", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_vu }
            Reponses := array{"Fiyi", "Tonga", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ws }
            Reponses := array{"Islas Salomon", "Papua Nueva Guinea", "Samoa", "Tonga"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_to }
            Reponses := array{"Nueva Zelanda", "Tonga", "Micronesia", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tv }
            Reponses := array{"Nauru", "Palaos", "Tuvalu", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ki }
            Reponses := array{"Nauru", "Kiribati", "Samoa", "Nueva Zelanda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_nr }
            Reponses := array{"Nauru", "Kiribati", "Micronesia", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pw }
            Reponses := array{"Palaos", "Vanuatu", "Samoa", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_fm }
            Reponses := array{"Nauru", "Australia", "Fiyi", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mh }
            Reponses := array{"Islas Salomon", "Islas Marshall", "Fiyi", "Papua Nueva Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ma }
            Reponses := array{"Guinea-Bisau", "Egipto", "Marruecos", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_dz }
            Reponses := array{"Yibuti", "Argelia", "Burundi", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tn }
            Reponses := array{"Etiopia", "RD del Congo", "Ruanda", "Tunez"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ly }
            Reponses := array{"Camerun", "Ruanda", "Sudafrica", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_eg }
            Reponses := array{"Egipto", "Gabon", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sd }
            Reponses := array{"Sudafrica", "Sudan", "Guinea-Bisau", "Marruecos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ss }
            Reponses := array{"Sudan del Sur", "Lesoto", "Ghana", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_et }
            Reponses := array{"Sudan", "Mozambique", "Namibia", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_er }
            Reponses := array{"Togo", "Marruecos", "Eritrea", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_dj }
            Reponses := array{"Yibuti", "Argelia", "Burkina Faso", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_so }
            Reponses := array{"Republica Centroafricana", "Burundi", "Somalia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ke }
            Reponses := array{"Kenia", "Ghana", "Sudan", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ug }
            Reponses := array{"Ruanda", "Camerun", "Liberia", "Uganda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tz }
            Reponses := array{"Marruecos", "Ruanda", "Guinea Ecuatorial", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_rw }
            Reponses := array{"Angola", "Congo", "Guinea Ecuatorial", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bi }
            Reponses := array{"Lesoto", "Camerun", "Etiopia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cd }
            Reponses := array{"Libia", "Liberia", "Yibuti", "RD del Congo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cg }
            Reponses := array{"Esuatini", "Senegal", "Congo", "Santo Tome y Principe"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ga }
            Reponses := array{"Costa de Marfil", "Gabon", "Namibia", "Tunez"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gq }
            Reponses := array{"Libia", "Guinea Ecuatorial", "Kenia", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cm }
            Reponses := array{"Camerun", "Mauricio", "Comoras", "Egipto"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cf }
            Reponses := array{"Uganda", "Republica Centroafricana", "Mauritania", "Costa de Marfil"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_td }
            Reponses := array{"Chad", "Mauricio", "Mozambique", "Sudan del Sur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ne }
            Reponses := array{"Malaui", "Niger", "Argelia", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ng }
            Reponses := array{"Nigeria", "Ruanda", "Somalia", "RD del Congo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bj }
            Reponses := array{"Zimbabue", "Benin", "Guinea Ecuatorial", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tg }
            Reponses := array{"Marruecos", "Togo", "Lesoto", "Zimbabue"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gh }
            Reponses := array{"Mauricio", "Ghana", "Zimbabue", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ci }
            Reponses := array{"Libia", "Namibia", "Angola", "Costa de Marfil"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lr }
            Reponses := array{"Liberia", "Niger", "Ruanda", "Comoras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sl }
            Reponses := array{"Lesoto", "Sierra Leona", "Argelia", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gn }
            Reponses := array{"Madagascar", "Guinea", "Sudan", "Kenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gw }
            Reponses := array{"Marruecos", "Guinea-Bisau", "Gambia", "RD del Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sn }
            Reponses := array{"Senegal", "Cabo Verde", "Guinea-Bisau", "Yibuti"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gm }
            Reponses := array{"Eritrea", "Gambia", "Chad", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ml }
            Reponses := array{"Liberia", "Mali", "Benin", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bf }
            Reponses := array{"Uganda", "Nigeria", "Chad", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mr }
            Reponses := array{"Guinea Ecuatorial", "Sudafrica", "Mauritania", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cv }
            Reponses := array{"Santo Tome y Principe", "Ruanda", "Cabo Verde", "Comoras"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_st }
            Reponses := array{"Santo Tome y Principe", "Burkina Faso", "Uganda", "RD del Congo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ao }
            Reponses := array{"Sudan", "Botsuana", "Nigeria", "Angola"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_zm }
            Reponses := array{"Zambia", "Republica Centroafricana", "Comoras", "Botsuana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_zw }
            Reponses := array{"Republica Centroafricana", "Somalia", "Zimbabue", "Chad"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mw }
            Reponses := array{"Gambia", "Chad", "Malaui", "Burkina Faso"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mz }
            Reponses := array{"Botsuana", "Liberia", "Togo", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mg }
            Reponses := array{"Gabon", "Libia", "Madagascar", "Argelia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_km }
            Reponses := array{"Nigeria", "Mauritania", "Comoras", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mu }
            Reponses := array{"Mauricio", "Sudan", "Gabon", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sc }
            Reponses := array{"Esuatini", "Seychelles", "Somalia", "Marruecos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_za }
            Reponses := array{"Gambia", "Sudafrica", "Ghana", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_na }
            Reponses := array{"Kenia", "Guinea-Bisau", "Guinea Ecuatorial", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bw }
            Reponses := array{"Botsuana", "Egipto", "Burkina Faso", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ls }
            Reponses := array{"Lesoto", "Tunez", "Chad", "Guinea-Bisau"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sz }
            Reponses := array{"Esuatini", "Seychelles", "Ghana", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_us }
            Reponses := array{"Belice", "Canada", "Mexico", "Estados Unidos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ca }
            Reponses := array{"Guinea Ecuatorial", "Mexico", "Estados Unidos", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_mx }
            Reponses := array{"Canada", "Mexico", "Estados Unidos", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gt }
            Reponses := array{"Guatemala", "Granada", "Cuba", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bz }
            Reponses := array{"Dominica", "Costa Rica", "Belice", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_hn }
            Reponses := array{"Haiti", "El Salvador", "Dominica", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sv }
            Reponses := array{"Republica Dominicana", "El Salvador", "Antigua y Barbuda", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ni }
            Reponses := array{"Granada", "San Vicente", "Nicaragua", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cr }
            Reponses := array{"Belice", "Cuba", "Dominica", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pa }
            Reponses := array{"Haiti", "Antigua y Barbuda", "Barbados", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bs }
            Reponses := array{"Haiti", "Santa Lucia", "Nicaragua", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cu }
            Reponses := array{"Haiti", "San Vicente", "Cuba", "Antigua y Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_jm }
            Reponses := array{"Costa Rica", "Guatemala", "Cuba", "Jamaica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ht }
            Reponses := array{"Belice", "Haiti", "Dominica", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_do }
            Reponses := array{"Republica Dominicana", "Panama", "Barbados", "Granada"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_kn }
            Reponses := array{"Guatemala", "Costa Rica", "Panama", "San Cristobal y Nieves"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ag }
            Reponses := array{"Trinidad y Tobago", "Granada", "Antigua y Barbuda", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_dm }
            Reponses := array{"Honduras", "Haiti", "Costa Rica", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_lc }
            Reponses := array{"Santa Lucia", "El Salvador", "Guatemala", "Republica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_vc }
            Reponses := array{"Jamaica", "Antigua y Barbuda", "Honduras", "San Vicente"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bb }
            Reponses := array{"Haiti", "Honduras", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gd }
            Reponses := array{"Granada", "Antigua y Barbuda", "Panama", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_tt }
            Reponses := array{"Trinidad y Tobago", "Belice", "Cuba", "Santa Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_co }
            Reponses := array{"Colombia", "Uruguay", "Venezuela", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ve }
            Reponses := array{"Paraguay", "Chile", "Venezuela", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_gy }
            Reponses := array{"Chile", "Peru", "Guyana", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_sr }
            Reponses := array{"Surinam", "Brasil", "Paraguay", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ec }
            Reponses := array{"Uruguay", "Ecuador", "Brasil", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_pe }
            Reponses := array{"Paraguay", "Peru", "Uruguay", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_br }
            Reponses := array{"Colombia", "Paraguay", "Brasil", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_bo }
            Reponses := array{"Chile", "Brasil", "Bolivia", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_py }
            Reponses := array{"Uruguay", "Paraguay", "Peru", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_uy }
            Reponses := array{"Argentina", "Colombia", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_cl }
            Reponses := array{"Chile", "Peru", "Paraguay", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este?"
            Image := option{ carte.map_ar }
            Reponses := array{"Guyana", "Chile", "Uruguay", "Argentina"}
            BonneReponse := 3

MakeCarteQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_fr }
            Reponses := array{"Monaco", "Italien", "Frankreich", "Oesterreich"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_de }
            Reponses := array{"Deutschland", "Liechtenstein", "Andorra", "Frankreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_it }
            Reponses := array{"Niederlande", "Belgien", "Malta", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_es }
            Reponses := array{"Schweden", "Spanien", "Island", "Oesterreich"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pt }
            Reponses := array{"Irland", "Deutschland", "Portugal", "Finnland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gb }
            Reponses := array{"Belgien", "Frankreich", "Vereinigtes Koenigreich", "Finnland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ie }
            Reponses := array{"Liechtenstein", "Vatikanstadt", "Irland", "Oesterreich"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_be }
            Reponses := array{"Frankreich", "Liechtenstein", "Belgien", "Deutschland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_nl }
            Reponses := array{"Daenemark", "Island", "Spanien", "Niederlande"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lu }
            Reponses := array{"Luxemburg", "Irland", "Oesterreich", "Vatikanstadt"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ch }
            Reponses := array{"Finnland", "Belgien", "Luxemburg", "Schweiz"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_at }
            Reponses := array{"Spanien", "Oesterreich", "Irland", "Italien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mc }
            Reponses := array{"Monaco", "Vatikanstadt", "Spanien", "Deutschland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ad }
            Reponses := array{"Andorra", "Luxemburg", "Irland", "Deutschland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_li }
            Reponses := array{"Norwegen", "Schweiz", "Oesterreich", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sm }
            Reponses := array{"San Marino", "Island", "Italien", "Finnland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_va }
            Reponses := array{"Liechtenstein", "San Marino", "Niederlande", "Vatikanstadt"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mt }
            Reponses := array{"Niederlande", "Malta", "Vereinigtes Koenigreich", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_is }
            Reponses := array{"Oesterreich", "Deutschland", "San Marino", "Island"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_no }
            Reponses := array{"Portugal", "Vatikanstadt", "Norwegen", "Deutschland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_se }
            Reponses := array{"Malta", "Schweden", "Niederlande", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_dk }
            Reponses := array{"San Marino", "Daenemark", "Monaco", "Vereinigtes Koenigreich"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_fi }
            Reponses := array{"Monaco", "Finnland", "Malta", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pl }
            Reponses := array{"Polen", "Zypern", "Rumaenien", "Slowenien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cz }
            Reponses := array{"Litauen", "Belarus", "Polen", "Tschechien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sk }
            Reponses := array{"Rumaenien", "Bosnien und Herzegowina", "Slowenien", "Slowakei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_hu }
            Reponses := array{"Ungarn", "Bulgarien", "Griechenland", "Polen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_si }
            Reponses := array{"Ungarn", "Belarus", "Nordmazedonien", "Slowenien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_hr }
            Reponses := array{"Ungarn", "Polen", "Kroatien", "Albanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ba }
            Reponses := array{"Bosnien und Herzegowina", "Rumaenien", "Russland", "Estland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_rs }
            Reponses := array{"Bosnien und Herzegowina", "Serbien", "Rumaenien", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_me }
            Reponses := array{"Estland", "Montenegro", "Bosnien und Herzegowina", "Slowenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mk }
            Reponses := array{"Lettland", "Moldau", "Bosnien und Herzegowina", "Nordmazedonien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_al }
            Reponses := array{"Polen", "Albanien", "Serbien", "Slowenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gr }
            Reponses := array{"Albanien", "Rumaenien", "Bosnien und Herzegowina", "Griechenland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bg }
            Reponses := array{"Tschechien", "Bosnien und Herzegowina", "Bulgarien", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ro }
            Reponses := array{"Rumaenien", "Polen", "Ungarn", "Moldau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_md }
            Reponses := array{"Zypern", "Moldau", "Griechenland", "Belarus"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ua }
            Reponses := array{"Zypern", "Polen", "Bulgarien", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_by }
            Reponses := array{"Nordmazedonien", "Moldau", "Slowakei", "Belarus"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ru }
            Reponses := array{"Albanien", "Russland", "Tschechien", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ee }
            Reponses := array{"Moldau", "Estland", "Bosnien und Herzegowina", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lv }
            Reponses := array{"Serbien", "Kroatien", "Lettland", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lt }
            Reponses := array{"Serbien", "Tschechien", "Belarus", "Litauen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cy }
            Reponses := array{"Tschechien", "Moldau", "Litauen", "Zypern"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tr }
            Reponses := array{"Armenien", "Tuerkei", "Katar", "Libanon"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_il }
            Reponses := array{"Libanon", "Israel", "Kuwait", "Syrien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ps }
            Reponses := array{"Libanon", "Saudi-Arabien", "Vereinigte Arabische Emirate", "Palaestina"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lb }
            Reponses := array{"Oman", "Georgien", "Libanon", "Saudi-Arabien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sy }
            Reponses := array{"Israel", "Syrien", "Tuerkei", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_jo }
            Reponses := array{"Kuwait", "Palaestina", "Jordanien", "Armenien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_iq }
            Reponses := array{"Tuerkei", "Katar", "Libanon", "Irak"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ir }
            Reponses := array{"Iran", "Armenien", "Saudi-Arabien", "Katar"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sa }
            Reponses := array{"Saudi-Arabien", "Iran", "Jordanien", "Libanon"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ye }
            Reponses := array{"Aserbaidschan", "Jemen", "Kuwait", "Palaestina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_om }
            Reponses := array{"Iran", "Palaestina", "Bahrain", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ae }
            Reponses := array{"Bahrain", "Irak", "Palaestina", "Vereinigte Arabische Emirate"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_qa }
            Reponses := array{"Aserbaidschan", "Katar", "Bahrain", "Palaestina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bh }
            Reponses := array{"Libanon", "Israel", "Jemen", "Bahrain"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kw }
            Reponses := array{"Aserbaidschan", "Syrien", "Kuwait", "Jemen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ge }
            Reponses := array{"Iran", "Georgien", "Syrien", "Libanon"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_am }
            Reponses := array{"Libanon", "Armenien", "Vereinigte Arabische Emirate", "Syrien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_az }
            Reponses := array{"Aserbaidschan", "Katar", "Jordanien", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kz }
            Reponses := array{"Kasachstan", "Tadschikistan", "Turkmenistan", "Kirgisistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_uz }
            Reponses := array{"Kirgisistan", "Mongolei", "Usbekistan", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tm }
            Reponses := array{"Turkmenistan", "Afghanistan", "Usbekistan", "Tadschikistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kg }
            Reponses := array{"Kirgisistan", "Tadschikistan", "Usbekistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tj }
            Reponses := array{"Afghanistan", "Mongolei", "Tadschikistan", "Usbekistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_af }
            Reponses := array{"Afghanistan", "Mongolei", "Kasachstan", "Kirgisistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mn }
            Reponses := array{"Kasachstan", "Mongolei", "Turkmenistan", "Tadschikistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cn }
            Reponses := array{"China", "Japan", "Brunei", "Osttimor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_jp }
            Reponses := array{"Japan", "Indien", "Pakistan", "Kambodscha"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kr }
            Reponses := array{"Malaysia", "Kambodscha", "Vietnam", "Suedkorea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kp }
            Reponses := array{"Suedkorea", "Laos", "Malediven", "Nordkorea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_in }
            Reponses := array{"Indien", "Singapur", "Bangladesch", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pk }
            Reponses := array{"Japan", "Suedkorea", "Pakistan", "Bangladesch"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bd }
            Reponses := array{"Bangladesch", "Indien", "Sri Lanka", "Malediven"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lk }
            Reponses := array{"Singapur", "Nepal", "Japan", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_np }
            Reponses := array{"Nepal", "Osttimor", "Brunei", "Nordkorea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bt }
            Reponses := array{"Pakistan", "Bhutan", "Japan", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mv }
            Reponses := array{"Malediven", "Nordkorea", "Indien", "Osttimor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mm }
            Reponses := array{"Nordkorea", "Laos", "Myanmar", "Vietnam"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_th }
            Reponses := array{"Thailand", "Malediven", "Vietnam", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_la }
            Reponses := array{"Indonesien", "Myanmar", "Laos", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kh }
            Reponses := array{"Philippinen", "Myanmar", "China", "Kambodscha"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_vn }
            Reponses := array{"Vietnam", "Myanmar", "Singapur", "Suedkorea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_my }
            Reponses := array{"Nordkorea", "Malaysia", "Vietnam", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sg }
            Reponses := array{"Japan", "Sri Lanka", "Singapur", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_id }
            Reponses := array{"Myanmar", "Indonesien", "Bhutan", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bn }
            Reponses := array{"Pakistan", "Nordkorea", "Laos", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ph }
            Reponses := array{"Thailand", "Philippinen", "Malediven", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tl }
            Reponses := array{"Laos", "Osttimor", "Malaysia", "Thailand"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_au }
            Reponses := array{"Salomonen", "Marshallinseln", "Australien", "Fidschi"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_nz }
            Reponses := array{"Mikronesien", "Palau", "Neuseeland", "Marshallinseln"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pg }
            Reponses := array{"Palau", "Papua-Neuguinea", "Marshallinseln", "Samoa"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_fj }
            Reponses := array{"Samoa", "Vanuatu", "Fidschi", "Australien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sb }
            Reponses := array{"Salomonen", "Papua-Neuguinea", "Mikronesien", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_vu }
            Reponses := array{"Fidschi", "Tonga", "Australien", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ws }
            Reponses := array{"Salomonen", "Papua-Neuguinea", "Samoa", "Tonga"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_to }
            Reponses := array{"Neuseeland", "Tonga", "Mikronesien", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tv }
            Reponses := array{"Nauru", "Palau", "Tuvalu", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ki }
            Reponses := array{"Nauru", "Kiribati", "Samoa", "Neuseeland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_nr }
            Reponses := array{"Nauru", "Kiribati", "Mikronesien", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pw }
            Reponses := array{"Palau", "Vanuatu", "Samoa", "Australien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_fm }
            Reponses := array{"Nauru", "Australien", "Fidschi", "Mikronesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mh }
            Reponses := array{"Salomonen", "Marshallinseln", "Fidschi", "Papua-Neuguinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ma }
            Reponses := array{"Guinea-Bissau", "Aegypten", "Marokko", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_dz }
            Reponses := array{"Dschibuti", "Algerien", "Burundi", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tn }
            Reponses := array{"Aethiopien", "DR Kongo", "Ruanda", "Tunesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ly }
            Reponses := array{"Kamerun", "Ruanda", "Suedafrika", "Libyen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_eg }
            Reponses := array{"Aegypten", "Gabun", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sd }
            Reponses := array{"Suedafrika", "Sudan", "Guinea-Bissau", "Marokko"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ss }
            Reponses := array{"Suedsudan", "Lesotho", "Ghana", "Mauretanien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_et }
            Reponses := array{"Sudan", "Mosambik", "Namibia", "Aethiopien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_er }
            Reponses := array{"Togo", "Marokko", "Eritrea", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_dj }
            Reponses := array{"Dschibuti", "Algerien", "Burkina Faso", "Sambia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_so }
            Reponses := array{"Zentralafrikanische Republik", "Burundi", "Somalia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ke }
            Reponses := array{"Kenia", "Ghana", "Sudan", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ug }
            Reponses := array{"Ruanda", "Kamerun", "Liberia", "Uganda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tz }
            Reponses := array{"Marokko", "Ruanda", "Aequatorialguinea", "Tansania"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_rw }
            Reponses := array{"Angola", "Kongo", "Aequatorialguinea", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bi }
            Reponses := array{"Lesotho", "Kamerun", "Aethiopien", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cd }
            Reponses := array{"Libyen", "Liberia", "Dschibuti", "DR Kongo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cg }
            Reponses := array{"Eswatini", "Senegal", "Kongo", "Sao Tome und Principe"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ga }
            Reponses := array{"Elfenbeinkueste", "Gabun", "Namibia", "Tunesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gq }
            Reponses := array{"Libyen", "Aequatorialguinea", "Kenia", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cm }
            Reponses := array{"Kamerun", "Mauritius", "Komoren", "Aegypten"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cf }
            Reponses := array{"Uganda", "Zentralafrikanische Republik", "Mauretanien", "Elfenbeinkueste"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_td }
            Reponses := array{"Tschad", "Mauritius", "Mosambik", "Suedsudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ne }
            Reponses := array{"Malawi", "Niger", "Algerien", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ng }
            Reponses := array{"Nigeria", "Ruanda", "Somalia", "DR Kongo"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bj }
            Reponses := array{"Simbabwe", "Benin", "Aequatorialguinea", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tg }
            Reponses := array{"Marokko", "Togo", "Lesotho", "Simbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gh }
            Reponses := array{"Mauritius", "Ghana", "Simbabwe", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ci }
            Reponses := array{"Libyen", "Namibia", "Angola", "Elfenbeinkueste"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lr }
            Reponses := array{"Liberia", "Niger", "Ruanda", "Komoren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sl }
            Reponses := array{"Lesotho", "Sierra Leone", "Algerien", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gn }
            Reponses := array{"Madagaskar", "Guinea", "Sudan", "Kenia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gw }
            Reponses := array{"Marokko", "Guinea-Bissau", "Gambia", "DR Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sn }
            Reponses := array{"Senegal", "Kap Verde", "Guinea-Bissau", "Dschibuti"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gm }
            Reponses := array{"Eritrea", "Gambia", "Tschad", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ml }
            Reponses := array{"Liberia", "Mali", "Benin", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bf }
            Reponses := array{"Uganda", "Nigeria", "Tschad", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mr }
            Reponses := array{"Aequatorialguinea", "Suedafrika", "Mauretanien", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cv }
            Reponses := array{"Sao Tome und Principe", "Ruanda", "Kap Verde", "Komoren"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_st }
            Reponses := array{"Sao Tome und Principe", "Burkina Faso", "Uganda", "DR Kongo"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ao }
            Reponses := array{"Sudan", "Botswana", "Nigeria", "Angola"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_zm }
            Reponses := array{"Sambia", "Zentralafrikanische Republik", "Komoren", "Botswana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_zw }
            Reponses := array{"Zentralafrikanische Republik", "Somalia", "Simbabwe", "Tschad"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mw }
            Reponses := array{"Gambia", "Tschad", "Malawi", "Burkina Faso"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mz }
            Reponses := array{"Botswana", "Liberia", "Togo", "Mosambik"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mg }
            Reponses := array{"Gabun", "Libyen", "Madagaskar", "Algerien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_km }
            Reponses := array{"Nigeria", "Mauretanien", "Komoren", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mu }
            Reponses := array{"Mauritius", "Sudan", "Gabun", "Madagaskar"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sc }
            Reponses := array{"Eswatini", "Seychellen", "Somalia", "Marokko"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_za }
            Reponses := array{"Gambia", "Suedafrika", "Ghana", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_na }
            Reponses := array{"Kenia", "Guinea-Bissau", "Aequatorialguinea", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bw }
            Reponses := array{"Botswana", "Aegypten", "Burkina Faso", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ls }
            Reponses := array{"Lesotho", "Tunesien", "Tschad", "Guinea-Bissau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sz }
            Reponses := array{"Eswatini", "Seychellen", "Ghana", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_us }
            Reponses := array{"Belize", "Kanada", "Mexiko", "Vereinigte Staaten"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ca }
            Reponses := array{"Aequatorialguinea", "Mexiko", "Vereinigte Staaten", "Kanada"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_mx }
            Reponses := array{"Kanada", "Mexiko", "Vereinigte Staaten", "Saudi-Arabien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gt }
            Reponses := array{"Guatemala", "Grenada", "Kuba", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bz }
            Reponses := array{"Dominica", "Costa Rica", "Belize", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_hn }
            Reponses := array{"Haiti", "El Salvador", "Dominica", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sv }
            Reponses := array{"Dominikanische Republik", "El Salvador", "Antigua und Barbuda", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ni }
            Reponses := array{"Grenada", "St. Vincent", "Nicaragua", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cr }
            Reponses := array{"Belize", "Kuba", "Dominica", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pa }
            Reponses := array{"Haiti", "Antigua und Barbuda", "Barbados", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bs }
            Reponses := array{"Haiti", "St. Lucia", "Nicaragua", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cu }
            Reponses := array{"Haiti", "St. Vincent", "Kuba", "Antigua und Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_jm }
            Reponses := array{"Costa Rica", "Guatemala", "Kuba", "Jamaika"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ht }
            Reponses := array{"Belize", "Haiti", "Dominica", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_do }
            Reponses := array{"Dominikanische Republik", "Panama", "Barbados", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_kn }
            Reponses := array{"Guatemala", "Costa Rica", "Panama", "St. Kitts und Nevis"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ag }
            Reponses := array{"Trinidad und Tobago", "Grenada", "Antigua und Barbuda", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_dm }
            Reponses := array{"Honduras", "Haiti", "Costa Rica", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_lc }
            Reponses := array{"St. Lucia", "El Salvador", "Guatemala", "Dominikanische Republik"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_vc }
            Reponses := array{"Jamaika", "Antigua und Barbuda", "Honduras", "St. Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bb }
            Reponses := array{"Haiti", "Honduras", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gd }
            Reponses := array{"Grenada", "Antigua und Barbuda", "Panama", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_tt }
            Reponses := array{"Trinidad und Tobago", "Belize", "Kuba", "St. Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_co }
            Reponses := array{"Kolumbien", "Uruguay", "Venezuela", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ve }
            Reponses := array{"Paraguay", "Chile", "Venezuela", "Bolivien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_gy }
            Reponses := array{"Chile", "Peru", "Guyana", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_sr }
            Reponses := array{"Suriname", "Brasilien", "Paraguay", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ec }
            Reponses := array{"Uruguay", "Ecuador", "Brasilien", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_pe }
            Reponses := array{"Paraguay", "Peru", "Uruguay", "Argentinien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_br }
            Reponses := array{"Kolumbien", "Paraguay", "Brasilien", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_bo }
            Reponses := array{"Chile", "Brasilien", "Bolivien", "Argentinien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_py }
            Reponses := array{"Uruguay", "Paraguay", "Peru", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_uy }
            Reponses := array{"Argentinien", "Kolumbien", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_cl }
            Reponses := array{"Chile", "Peru", "Paraguay", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das?"
            Image := option{ carte.map_ar }
            Reponses := array{"Guyana", "Chile", "Uruguay", "Argentinien"}
            BonneReponse := 3

MakeCarteQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_fr }
            Reponses := array{"Monaco", "Italia", "Francia", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_de }
            Reponses := array{"Germania", "Liechtenstein", "Andorra", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_it }
            Reponses := array{"Paesi Bassi", "Belgio", "Malta", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_es }
            Reponses := array{"Svezia", "Spagna", "Islanda", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pt }
            Reponses := array{"Irlanda", "Germania", "Portogallo", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gb }
            Reponses := array{"Belgio", "Francia", "Regno Unito", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ie }
            Reponses := array{"Liechtenstein", "Citta del Vaticano", "Irlanda", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_be }
            Reponses := array{"Francia", "Liechtenstein", "Belgio", "Germania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_nl }
            Reponses := array{"Danimarca", "Islanda", "Spagna", "Paesi Bassi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lu }
            Reponses := array{"Lussemburgo", "Irlanda", "Austria", "Citta del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ch }
            Reponses := array{"Finlandia", "Belgio", "Lussemburgo", "Svizzera"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_at }
            Reponses := array{"Spagna", "Austria", "Irlanda", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mc }
            Reponses := array{"Monaco", "Citta del Vaticano", "Spagna", "Germania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ad }
            Reponses := array{"Andorra", "Lussemburgo", "Irlanda", "Germania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_li }
            Reponses := array{"Norvegia", "Svizzera", "Austria", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sm }
            Reponses := array{"San Marino", "Islanda", "Italia", "Finlandia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_va }
            Reponses := array{"Liechtenstein", "San Marino", "Paesi Bassi", "Citta del Vaticano"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mt }
            Reponses := array{"Paesi Bassi", "Malta", "Regno Unito", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_is }
            Reponses := array{"Austria", "Germania", "San Marino", "Islanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_no }
            Reponses := array{"Portogallo", "Citta del Vaticano", "Norvegia", "Germania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_se }
            Reponses := array{"Malta", "Svezia", "Paesi Bassi", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_dk }
            Reponses := array{"San Marino", "Danimarca", "Monaco", "Regno Unito"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_fi }
            Reponses := array{"Monaco", "Finlandia", "Malta", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pl }
            Reponses := array{"Polonia", "Cipro", "Romania", "Slovenia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cz }
            Reponses := array{"Lituania", "Bielorussia", "Polonia", "Cechia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sk }
            Reponses := array{"Romania", "Bosnia ed Erzegovina", "Slovenia", "Slovacchia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_hu }
            Reponses := array{"Ungheria", "Bulgaria", "Grecia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_si }
            Reponses := array{"Ungheria", "Bielorussia", "Macedonia del Nord", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_hr }
            Reponses := array{"Ungheria", "Polonia", "Croazia", "Albania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ba }
            Reponses := array{"Bosnia ed Erzegovina", "Romania", "Russia", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_rs }
            Reponses := array{"Bosnia ed Erzegovina", "Serbia", "Romania", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_me }
            Reponses := array{"Estonia", "Montenegro", "Bosnia ed Erzegovina", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mk }
            Reponses := array{"Lettonia", "Moldavia", "Bosnia ed Erzegovina", "Macedonia del Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_al }
            Reponses := array{"Polonia", "Albania", "Serbia", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gr }
            Reponses := array{"Albania", "Romania", "Bosnia ed Erzegovina", "Grecia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bg }
            Reponses := array{"Cechia", "Bosnia ed Erzegovina", "Bulgaria", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ro }
            Reponses := array{"Romania", "Polonia", "Ungheria", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_md }
            Reponses := array{"Cipro", "Moldavia", "Grecia", "Bielorussia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ua }
            Reponses := array{"Cipro", "Polonia", "Bulgaria", "Ucraina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_by }
            Reponses := array{"Macedonia del Nord", "Moldavia", "Slovacchia", "Bielorussia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ru }
            Reponses := array{"Albania", "Russia", "Cechia", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ee }
            Reponses := array{"Moldavia", "Estonia", "Bosnia ed Erzegovina", "Ucraina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lv }
            Reponses := array{"Serbia", "Croazia", "Lettonia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lt }
            Reponses := array{"Serbia", "Cechia", "Bielorussia", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cy }
            Reponses := array{"Cechia", "Moldavia", "Lituania", "Cipro"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tr }
            Reponses := array{"Armenia", "Turchia", "Qatar", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_il }
            Reponses := array{"Libano", "Israele", "Kuwait", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ps }
            Reponses := array{"Libano", "Arabia Saudita", "Emirati Arabi Uniti", "Palestina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lb }
            Reponses := array{"Oman", "Georgia", "Libano", "Arabia Saudita"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sy }
            Reponses := array{"Israele", "Siria", "Turchia", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_jo }
            Reponses := array{"Kuwait", "Palestina", "Giordania", "Armenia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_iq }
            Reponses := array{"Turchia", "Qatar", "Libano", "Iraq"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ir }
            Reponses := array{"Iran", "Armenia", "Arabia Saudita", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sa }
            Reponses := array{"Arabia Saudita", "Iran", "Giordania", "Libano"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ye }
            Reponses := array{"Azerbaigian", "Yemen", "Kuwait", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_om }
            Reponses := array{"Iran", "Palestina", "Bahrein", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ae }
            Reponses := array{"Bahrein", "Iraq", "Palestina", "Emirati Arabi Uniti"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_qa }
            Reponses := array{"Azerbaigian", "Qatar", "Bahrein", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bh }
            Reponses := array{"Libano", "Israele", "Yemen", "Bahrein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kw }
            Reponses := array{"Azerbaigian", "Siria", "Kuwait", "Yemen"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ge }
            Reponses := array{"Iran", "Georgia", "Siria", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_am }
            Reponses := array{"Libano", "Armenia", "Emirati Arabi Uniti", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_az }
            Reponses := array{"Azerbaigian", "Qatar", "Giordania", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kz }
            Reponses := array{"Kazakistan", "Tagikistan", "Turkmenistan", "Kirghizistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_uz }
            Reponses := array{"Kirghizistan", "Mongolia", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tm }
            Reponses := array{"Turkmenistan", "Afghanistan", "Uzbekistan", "Tagikistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kg }
            Reponses := array{"Kirghizistan", "Tagikistan", "Uzbekistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tj }
            Reponses := array{"Afghanistan", "Mongolia", "Tagikistan", "Uzbekistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_af }
            Reponses := array{"Afghanistan", "Mongolia", "Kazakistan", "Kirghizistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mn }
            Reponses := array{"Kazakistan", "Mongolia", "Turkmenistan", "Tagikistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cn }
            Reponses := array{"Cina", "Giappone", "Brunei", "Timor Est"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_jp }
            Reponses := array{"Giappone", "India", "Pakistan", "Cambogia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kr }
            Reponses := array{"Malesia", "Cambogia", "Vietnam", "Corea del Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kp }
            Reponses := array{"Corea del Sud", "Laos", "Maldive", "Corea del Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_in }
            Reponses := array{"India", "Singapore", "Bangladesh", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pk }
            Reponses := array{"Giappone", "Corea del Sud", "Pakistan", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bd }
            Reponses := array{"Bangladesh", "India", "Sri Lanka", "Maldive"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lk }
            Reponses := array{"Singapore", "Nepal", "Giappone", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_np }
            Reponses := array{"Nepal", "Timor Est", "Brunei", "Corea del Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bt }
            Reponses := array{"Pakistan", "Bhutan", "Giappone", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mv }
            Reponses := array{"Maldive", "Corea del Nord", "India", "Timor Est"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mm }
            Reponses := array{"Corea del Nord", "Laos", "Birmania", "Vietnam"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_th }
            Reponses := array{"Thailandia", "Maldive", "Vietnam", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_la }
            Reponses := array{"Indonesia", "Birmania", "Laos", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kh }
            Reponses := array{"Filippine", "Birmania", "Cina", "Cambogia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_vn }
            Reponses := array{"Vietnam", "Birmania", "Singapore", "Corea del Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_my }
            Reponses := array{"Corea del Nord", "Malesia", "Vietnam", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sg }
            Reponses := array{"Giappone", "Sri Lanka", "Singapore", "Malesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_id }
            Reponses := array{"Birmania", "Indonesia", "Bhutan", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bn }
            Reponses := array{"Pakistan", "Corea del Nord", "Laos", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ph }
            Reponses := array{"Thailandia", "Filippine", "Maldive", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tl }
            Reponses := array{"Laos", "Timor Est", "Malesia", "Thailandia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_au }
            Reponses := array{"Isole Salomone", "Isole Marshall", "Australia", "Figi"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_nz }
            Reponses := array{"Micronesia", "Palau", "Nuova Zelanda", "Isole Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pg }
            Reponses := array{"Palau", "Papua Nuova Guinea", "Isole Marshall", "Samoa"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_fj }
            Reponses := array{"Samoa", "Vanuatu", "Figi", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sb }
            Reponses := array{"Isole Salomone", "Papua Nuova Guinea", "Micronesia", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_vu }
            Reponses := array{"Figi", "Tonga", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ws }
            Reponses := array{"Isole Salomone", "Papua Nuova Guinea", "Samoa", "Tonga"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_to }
            Reponses := array{"Nuova Zelanda", "Tonga", "Micronesia", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tv }
            Reponses := array{"Nauru", "Palau", "Tuvalu", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ki }
            Reponses := array{"Nauru", "Kiribati", "Samoa", "Nuova Zelanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_nr }
            Reponses := array{"Nauru", "Kiribati", "Micronesia", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pw }
            Reponses := array{"Palau", "Vanuatu", "Samoa", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_fm }
            Reponses := array{"Nauru", "Australia", "Figi", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mh }
            Reponses := array{"Isole Salomone", "Isole Marshall", "Figi", "Papua Nuova Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ma }
            Reponses := array{"Guinea-Bissau", "Egitto", "Marocco", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_dz }
            Reponses := array{"Gibuti", "Algeria", "Burundi", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tn }
            Reponses := array{"Etiopia", "RD Congo", "Ruanda", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ly }
            Reponses := array{"Camerun", "Ruanda", "Sudafrica", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_eg }
            Reponses := array{"Egitto", "Gabon", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sd }
            Reponses := array{"Sudafrica", "Sudan", "Guinea-Bissau", "Marocco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ss }
            Reponses := array{"Sudan del Sud", "Lesotho", "Ghana", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_et }
            Reponses := array{"Sudan", "Mozambico", "Namibia", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_er }
            Reponses := array{"Togo", "Marocco", "Eritrea", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_dj }
            Reponses := array{"Gibuti", "Algeria", "Burkina Faso", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_so }
            Reponses := array{"Repubblica Centrafricana", "Burundi", "Somalia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ke }
            Reponses := array{"Kenya", "Ghana", "Sudan", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ug }
            Reponses := array{"Ruanda", "Camerun", "Liberia", "Uganda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tz }
            Reponses := array{"Marocco", "Ruanda", "Guinea Equatoriale", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_rw }
            Reponses := array{"Angola", "Congo", "Guinea Equatoriale", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bi }
            Reponses := array{"Lesotho", "Camerun", "Etiopia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cd }
            Reponses := array{"Libia", "Liberia", "Gibuti", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cg }
            Reponses := array{"Eswatini", "Senegal", "Congo", "Sao Tome e Principe"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ga }
            Reponses := array{"Costa d'Avorio", "Gabon", "Namibia", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gq }
            Reponses := array{"Libia", "Guinea Equatoriale", "Kenya", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cm }
            Reponses := array{"Camerun", "Mauritius", "Comore", "Egitto"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cf }
            Reponses := array{"Uganda", "Repubblica Centrafricana", "Mauritania", "Costa d'Avorio"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_td }
            Reponses := array{"Ciad", "Mauritius", "Mozambico", "Sudan del Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ne }
            Reponses := array{"Malawi", "Niger", "Algeria", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ng }
            Reponses := array{"Nigeria", "Ruanda", "Somalia", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bj }
            Reponses := array{"Zimbabwe", "Benin", "Guinea Equatoriale", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tg }
            Reponses := array{"Marocco", "Togo", "Lesotho", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gh }
            Reponses := array{"Mauritius", "Ghana", "Zimbabwe", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ci }
            Reponses := array{"Libia", "Namibia", "Angola", "Costa d'Avorio"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lr }
            Reponses := array{"Liberia", "Niger", "Ruanda", "Comore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sl }
            Reponses := array{"Lesotho", "Sierra Leone", "Algeria", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gn }
            Reponses := array{"Madagascar", "Guinea", "Sudan", "Kenya"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gw }
            Reponses := array{"Marocco", "Guinea-Bissau", "Gambia", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sn }
            Reponses := array{"Senegal", "Capo Verde", "Guinea-Bissau", "Gibuti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gm }
            Reponses := array{"Eritrea", "Gambia", "Ciad", "Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ml }
            Reponses := array{"Liberia", "Mali", "Benin", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bf }
            Reponses := array{"Uganda", "Nigeria", "Ciad", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mr }
            Reponses := array{"Guinea Equatoriale", "Sudafrica", "Mauritania", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cv }
            Reponses := array{"Sao Tome e Principe", "Ruanda", "Capo Verde", "Comore"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_st }
            Reponses := array{"Sao Tome e Principe", "Burkina Faso", "Uganda", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ao }
            Reponses := array{"Sudan", "Botswana", "Nigeria", "Angola"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_zm }
            Reponses := array{"Zambia", "Repubblica Centrafricana", "Comore", "Botswana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_zw }
            Reponses := array{"Repubblica Centrafricana", "Somalia", "Zimbabwe", "Ciad"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mw }
            Reponses := array{"Gambia", "Ciad", "Malawi", "Burkina Faso"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mz }
            Reponses := array{"Botswana", "Liberia", "Togo", "Mozambico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mg }
            Reponses := array{"Gabon", "Libia", "Madagascar", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_km }
            Reponses := array{"Nigeria", "Mauritania", "Comore", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mu }
            Reponses := array{"Mauritius", "Sudan", "Gabon", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sc }
            Reponses := array{"Eswatini", "Seychelles", "Somalia", "Marocco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_za }
            Reponses := array{"Gambia", "Sudafrica", "Ghana", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_na }
            Reponses := array{"Kenya", "Guinea-Bissau", "Guinea Equatoriale", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bw }
            Reponses := array{"Botswana", "Egitto", "Burkina Faso", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ls }
            Reponses := array{"Lesotho", "Tunisia", "Ciad", "Guinea-Bissau"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sz }
            Reponses := array{"Eswatini", "Seychelles", "Ghana", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_us }
            Reponses := array{"Belize", "Canada", "Messico", "Stati Uniti"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ca }
            Reponses := array{"Guinea Equatoriale", "Messico", "Stati Uniti", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_mx }
            Reponses := array{"Canada", "Messico", "Stati Uniti", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gt }
            Reponses := array{"Guatemala", "Grenada", "Cuba", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bz }
            Reponses := array{"Dominica", "Costa Rica", "Belize", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_hn }
            Reponses := array{"Haiti", "El Salvador", "Dominica", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sv }
            Reponses := array{"Repubblica Dominicana", "El Salvador", "Antigua e Barbuda", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ni }
            Reponses := array{"Grenada", "Saint Vincent", "Nicaragua", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cr }
            Reponses := array{"Belize", "Cuba", "Dominica", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pa }
            Reponses := array{"Haiti", "Antigua e Barbuda", "Barbados", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bs }
            Reponses := array{"Haiti", "Santa Lucia", "Nicaragua", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cu }
            Reponses := array{"Haiti", "Saint Vincent", "Cuba", "Antigua e Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_jm }
            Reponses := array{"Costa Rica", "Guatemala", "Cuba", "Giamaica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ht }
            Reponses := array{"Belize", "Haiti", "Dominica", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_do }
            Reponses := array{"Repubblica Dominicana", "Panama", "Barbados", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_kn }
            Reponses := array{"Guatemala", "Costa Rica", "Panama", "Saint Kitts e Nevis"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ag }
            Reponses := array{"Trinidad e Tobago", "Grenada", "Antigua e Barbuda", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_dm }
            Reponses := array{"Honduras", "Haiti", "Costa Rica", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_lc }
            Reponses := array{"Santa Lucia", "El Salvador", "Guatemala", "Repubblica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_vc }
            Reponses := array{"Giamaica", "Antigua e Barbuda", "Honduras", "Saint Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bb }
            Reponses := array{"Haiti", "Honduras", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gd }
            Reponses := array{"Grenada", "Antigua e Barbuda", "Panama", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_tt }
            Reponses := array{"Trinidad e Tobago", "Belize", "Cuba", "Santa Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_co }
            Reponses := array{"Colombia", "Uruguay", "Venezuela", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ve }
            Reponses := array{"Paraguay", "Cile", "Venezuela", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_gy }
            Reponses := array{"Cile", "Peru", "Guyana", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_sr }
            Reponses := array{"Suriname", "Brasile", "Paraguay", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ec }
            Reponses := array{"Uruguay", "Ecuador", "Brasile", "Cile"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_pe }
            Reponses := array{"Paraguay", "Peru", "Uruguay", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_br }
            Reponses := array{"Colombia", "Paraguay", "Brasile", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_bo }
            Reponses := array{"Cile", "Brasile", "Bolivia", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_py }
            Reponses := array{"Uruguay", "Paraguay", "Peru", "Cile"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_uy }
            Reponses := array{"Argentina", "Colombia", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_cl }
            Reponses := array{"Cile", "Peru", "Paraguay", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo?"
            Image := option{ carte.map_ar }
            Reponses := array{"Guyana", "Cile", "Uruguay", "Argentina"}
            BonneReponse := 3
