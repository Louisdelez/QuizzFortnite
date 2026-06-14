using { /Verse.org/Assets }

# ============================================================
#  carte_bank.verse — Banque du quizz PAYS SUR CARTE (390 = 195 normales + 195 pixelisees).
#  GENERE par tools/banks/build_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes Natural Earth (domaine public). Tirages identiques x5 langues.
#  3 paliers : Facile (communs) / Moyen / Difficile (pixelise).
# ============================================================

CarteDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}


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
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_fr }
            Reponses := array{"Vatican", "Italie", "France", "Belgique"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_de }
            Reponses := array{"Belgique", "Liechtenstein", "Italie", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_it }
            Reponses := array{"Danemark", "Italie", "Andorre", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_es }
            Reponses := array{"Espagne", "Monaco", "Suede", "Autriche"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pt }
            Reponses := array{"Allemagne", "Andorre", "Suisse", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gb }
            Reponses := array{"Irlande", "Royaume-Uni", "Liechtenstein", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ie }
            Reponses := array{"Autriche", "Monaco", "Andorre", "Irlande"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_be }
            Reponses := array{"Vatican", "France", "Saint-Marin", "Belgique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_nl }
            Reponses := array{"Suisse", "Pays-Bas", "Portugal", "Suede"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lu }
            Reponses := array{"Luxembourg", "Royaume-Uni", "Irlande", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ch }
            Reponses := array{"Liechtenstein", "Malte", "Suisse", "Espagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_at }
            Reponses := array{"Andorre", "Liechtenstein", "Autriche", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mc }
            Reponses := array{"Royaume-Uni", "Saint-Marin", "Liechtenstein", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ad }
            Reponses := array{"Pays-Bas", "Andorre", "Norvege", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_li }
            Reponses := array{"France", "Danemark", "Islande", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sm }
            Reponses := array{"Italie", "Saint-Marin", "Suisse", "Irlande"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_va }
            Reponses := array{"Luxembourg", "Royaume-Uni", "Vatican", "Espagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mt }
            Reponses := array{"Espagne", "Allemagne", "Liechtenstein", "Malte"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_is }
            Reponses := array{"Suisse", "Andorre", "Islande", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_no }
            Reponses := array{"Autriche", "Luxembourg", "Malte", "Norvege"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_se }
            Reponses := array{"Autriche", "Suisse", "Suede", "Allemagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_dk }
            Reponses := array{"Portugal", "Danemark", "Saint-Marin", "Espagne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_fi }
            Reponses := array{"Liechtenstein", "Allemagne", "Finlande", "Danemark"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pl }
            Reponses := array{"Roumanie", "Pologne", "Lituanie", "Tchequie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cz }
            Reponses := array{"Tchequie", "Roumanie", "Hongrie", "Bielorussie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sk }
            Reponses := array{"Estonie", "Chypre", "Montenegro", "Slovaquie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_hu }
            Reponses := array{"Ukraine", "Hongrie", "Lettonie", "Bielorussie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_si }
            Reponses := array{"Tchequie", "Bielorussie", "Montenegro", "Slovenie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_hr }
            Reponses := array{"Ukraine", "Croatie", "Chypre", "Slovaquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ba }
            Reponses := array{"Serbie", "Grece", "Albanie", "Bosnie-Herzegovine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_rs }
            Reponses := array{"Serbie", "Grece", "Russie", "Pologne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_me }
            Reponses := array{"Chypre", "Montenegro", "Russie", "Grece"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mk }
            Reponses := array{"Macedoine du Nord", "Slovenie", "Bosnie-Herzegovine", "Estonie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_al }
            Reponses := array{"Tchequie", "Moldavie", "Croatie", "Albanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gr }
            Reponses := array{"Grece", "Lituanie", "Macedoine du Nord", "Chypre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bg }
            Reponses := array{"Chypre", "Albanie", "Bulgarie", "Croatie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ro }
            Reponses := array{"Ukraine", "Russie", "Macedoine du Nord", "Roumanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_md }
            Reponses := array{"Lettonie", "Chypre", "Hongrie", "Moldavie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ua }
            Reponses := array{"Lettonie", "Slovenie", "Ukraine", "Grece"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_by }
            Reponses := array{"Bielorussie", "Slovenie", "Moldavie", "Chypre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ru }
            Reponses := array{"Macedoine du Nord", "Lettonie", "Russie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ee }
            Reponses := array{"Estonie", "Moldavie", "Slovaquie", "Hongrie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lv }
            Reponses := array{"Slovaquie", "Lettonie", "Hongrie", "Pologne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lt }
            Reponses := array{"Ukraine", "Lituanie", "Lettonie", "Moldavie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cy }
            Reponses := array{"Pologne", "Chypre", "Bulgarie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tr }
            Reponses := array{"Arabie saoudite", "Turquie", "Emirats arabes unis", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_il }
            Reponses := array{"Koweit", "Irak", "Qatar", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ps }
            Reponses := array{"Palestine", "Armenie", "Azerbaidjan", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lb }
            Reponses := array{"Armenie", "Liban", "Georgie", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sy }
            Reponses := array{"Iran", "Syrie", "Georgie", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_jo }
            Reponses := array{"Yemen", "Jordanie", "Iran", "Emirats arabes unis"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_iq }
            Reponses := array{"Israel", "Bahrein", "Irak", "Georgie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ir }
            Reponses := array{"Qatar", "Yemen", "Iran", "Emirats arabes unis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sa }
            Reponses := array{"Irak", "Arabie saoudite", "Armenie", "Koweit"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ye }
            Reponses := array{"Koweit", "Yemen", "Syrie", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_om }
            Reponses := array{"Palestine", "Oman", "Syrie", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ae }
            Reponses := array{"Georgie", "Emirats arabes unis", "Bahrein", "Arabie saoudite"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_qa }
            Reponses := array{"Qatar", "Georgie", "Azerbaidjan", "Arabie saoudite"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bh }
            Reponses := array{"Irak", "Liban", "Bahrein", "Azerbaidjan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kw }
            Reponses := array{"Palestine", "Bahrein", "Israel", "Koweit"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ge }
            Reponses := array{"Bahrein", "Palestine", "Syrie", "Georgie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_am }
            Reponses := array{"Armenie", "Palestine", "Emirats arabes unis", "Koweit"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_az }
            Reponses := array{"Irak", "Azerbaidjan", "Palestine", "Turquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kz }
            Reponses := array{"Kazakhstan", "Mongolie", "Tadjikistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_uz }
            Reponses := array{"Mongolie", "Ouzbekistan", "Kazakhstan", "Tadjikistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tm }
            Reponses := array{"Kirghizistan", "Turkmenistan", "Mongolie", "Ouzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kg }
            Reponses := array{"Turkmenistan", "Mongolie", "Kazakhstan", "Kirghizistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tj }
            Reponses := array{"Afghanistan", "Tadjikistan", "Mongolie", "Kirghizistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_af }
            Reponses := array{"Mongolie", "Afghanistan", "Kirghizistan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mn }
            Reponses := array{"Ouzbekistan", "Mongolie", "Turkmenistan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cn }
            Reponses := array{"Pakistan", "Bangladesh", "Chine", "Inde"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_jp }
            Reponses := array{"Singapour", "Japon", "Cambodge", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kr }
            Reponses := array{"Bangladesh", "Coree du Sud", "Coree du Nord", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kp }
            Reponses := array{"Birmanie", "Coree du Sud", "Coree du Nord", "Chine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_in }
            Reponses := array{"Inde", "Timor oriental", "Bhoutan", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pk }
            Reponses := array{"Sri Lanka", "Nepal", "Cambodge", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bd }
            Reponses := array{"Bangladesh", "Philippines", "Malaisie", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lk }
            Reponses := array{"Laos", "Vietnam", "Coree du Sud", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_np }
            Reponses := array{"Indonesie", "Philippines", "Inde", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bt }
            Reponses := array{"Bhoutan", "Sri Lanka", "Coree du Sud", "Brunei"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mv }
            Reponses := array{"Laos", "Sri Lanka", "Vietnam", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mm }
            Reponses := array{"Brunei", "Bhoutan", "Birmanie", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_th }
            Reponses := array{"Coree du Nord", "Bangladesh", "Thailande", "Chine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_la }
            Reponses := array{"Thailande", "Timor oriental", "Laos", "Cambodge"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kh }
            Reponses := array{"Cambodge", "Birmanie", "Thailande", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_vn }
            Reponses := array{"Indonesie", "Nepal", "Inde", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_my }
            Reponses := array{"Vietnam", "Malaisie", "Sri Lanka", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sg }
            Reponses := array{"Sri Lanka", "Laos", "Coree du Sud", "Singapour"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_id }
            Reponses := array{"Thailande", "Chine", "Indonesie", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bn }
            Reponses := array{"Coree du Sud", "Inde", "Brunei", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ph }
            Reponses := array{"Thailande", "Nepal", "Philippines", "Indonesie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tl }
            Reponses := array{"Singapour", "Bhoutan", "Nepal", "Timor oriental"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_au }
            Reponses := array{"Australie", "Samoa", "Tonga", "Nouvelle-Zelande"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_nz }
            Reponses := array{"Australie", "Palaos", "Nouvelle-Zelande", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pg }
            Reponses := array{"Tonga", "Australie", "Papouasie-Nouvelle-Guinee", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_fj }
            Reponses := array{"Australie", "Fidji", "Kiribati", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sb }
            Reponses := array{"Vanuatu", "Iles Salomon", "Micronesie", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_vu }
            Reponses := array{"Iles Salomon", "Papouasie-Nouvelle-Guinee", "Vanuatu", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ws }
            Reponses := array{"Tonga", "Kiribati", "Samoa", "Iles Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_to }
            Reponses := array{"Nouvelle-Zelande", "Iles Marshall", "Nauru", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tv }
            Reponses := array{"Micronesie", "Samoa", "Tuvalu", "Iles Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ki }
            Reponses := array{"Tuvalu", "Fidji", "Nauru", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_nr }
            Reponses := array{"Tonga", "Fidji", "Australie", "Nauru"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pw }
            Reponses := array{"Tuvalu", "Nouvelle-Zelande", "Palaos", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_fm }
            Reponses := array{"Samoa", "Micronesie", "Kiribati", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mh }
            Reponses := array{"Iles Marshall", "Nouvelle-Zelande", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ma }
            Reponses := array{"Maroc", "Algerie", "Angola", "Zambie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_dz }
            Reponses := array{"Algerie", "Liberia", "Senegal", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tn }
            Reponses := array{"Kenya", "Cap-Vert", "Tunisie", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ly }
            Reponses := array{"Botswana", "Togo", "Mali", "Libye"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_eg }
            Reponses := array{"Madagascar", "Afrique du Sud", "Egypte", "Guinee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sd }
            Reponses := array{"Kenya", "Soudan", "Gambie", "Cap-Vert"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ss }
            Reponses := array{"Congo", "Soudan du Sud", "Guinee", "Tanzanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_et }
            Reponses := array{"Ethiopie", "Liberia", "Namibie", "Centrafrique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_er }
            Reponses := array{"Malawi", "Ouganda", "Erythree", "Rwanda"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_dj }
            Reponses := array{"Seychelles", "Soudan", "Rwanda", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_so }
            Reponses := array{"Sao Tome-et-Principe", "Maurice", "Congo", "Somalie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ke }
            Reponses := array{"Cameroun", "Congo", "Kenya", "Centrafrique"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ug }
            Reponses := array{"Ouganda", "Benin", "Maroc", "Namibie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tz }
            Reponses := array{"Tanzanie", "Ouganda", "Rwanda", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_rw }
            Reponses := array{"Liberia", "Rwanda", "Soudan du Sud", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bi }
            Reponses := array{"Ouganda", "Tanzanie", "Burundi", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cd }
            Reponses := array{"Guinee", "Kenya", "Namibie", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cg }
            Reponses := array{"Libye", "Mozambique", "Madagascar", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ga }
            Reponses := array{"Seychelles", "Rwanda", "Cap-Vert", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gq }
            Reponses := array{"Guinee equatoriale", "Ouganda", "Somalie", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cm }
            Reponses := array{"Tchad", "Malawi", "Cameroun", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cf }
            Reponses := array{"Zambie", "Ethiopie", "Sierra Leone", "Centrafrique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_td }
            Reponses := array{"Sao Tome-et-Principe", "Djibouti", "Tchad", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ne }
            Reponses := array{"Niger", "Gambie", "Tanzanie", "Centrafrique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ng }
            Reponses := array{"Tchad", "Erythree", "Guinee equatoriale", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bj }
            Reponses := array{"Soudan du Sud", "Congo", "Benin", "Mozambique"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tg }
            Reponses := array{"Egypte", "Zimbabwe", "Togo", "Burundi"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gh }
            Reponses := array{"Congo", "Benin", "Tanzanie", "Ghana"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ci }
            Reponses := array{"Sao Tome-et-Principe", "Cote d'Ivoire", "Soudan", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lr }
            Reponses := array{"Burkina Faso", "Niger", "Zambie", "Liberia"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sl }
            Reponses := array{"Tchad", "Libye", "Sierra Leone", "Ethiopie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gn }
            Reponses := array{"Sierra Leone", "Maroc", "Guinee", "Maurice"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gw }
            Reponses := array{"Guinee", "Guinee-Bissau", "Mozambique", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sn }
            Reponses := array{"Senegal", "Sierra Leone", "Zambie", "Ouganda"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gm }
            Reponses := array{"Sao Tome-et-Principe", "Djibouti", "Ouganda", "Gambie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ml }
            Reponses := array{"Afrique du Sud", "Mali", "Zimbabwe", "Nigeria"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bf }
            Reponses := array{"Burkina Faso", "Soudan du Sud", "Libye", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mr }
            Reponses := array{"Sierra Leone", "Algerie", "Mauritanie", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cv }
            Reponses := array{"Namibie", "Sao Tome-et-Principe", "Cap-Vert", "Soudan du Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_st }
            Reponses := array{"Sao Tome-et-Principe", "Centrafrique", "Sierra Leone", "Namibie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ao }
            Reponses := array{"Guinee", "Lesotho", "Angola", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_zm }
            Reponses := array{"Algerie", "RD Congo", "Liberia", "Zambie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_zw }
            Reponses := array{"Gabon", "Kenya", "Zimbabwe", "Sierra Leone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mw }
            Reponses := array{"Ethiopie", "Burkina Faso", "Malawi", "Guinee-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mz }
            Reponses := array{"Lesotho", "Mozambique", "Namibie", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mg }
            Reponses := array{"Soudan", "Madagascar", "Mauritanie", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_km }
            Reponses := array{"Angola", "Togo", "Algerie", "Comores"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mu }
            Reponses := array{"Comores", "Maroc", "Maurice", "Guinee equatoriale"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sc }
            Reponses := array{"RD Congo", "Seychelles", "Burundi", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_za }
            Reponses := array{"Mozambique", "Seychelles", "Afrique du Sud", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_na }
            Reponses := array{"Namibie", "Tchad", "Egypte", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bw }
            Reponses := array{"Soudan", "Guinee-Bissau", "Mauritanie", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ls }
            Reponses := array{"Botswana", "Liberia", "Niger", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sz }
            Reponses := array{"Congo", "Mozambique", "Senegal", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_us }
            Reponses := array{"Maurice", "Canada", "Mexique", "Etats-Unis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ca }
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Sao Tome-et-Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_mx }
            Reponses := array{"Indonesie", "Etats-Unis", "Canada", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gt }
            Reponses := array{"Belize", "Republique dominicaine", "Guatemala", "Trinite-et-Tobago"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bz }
            Reponses := array{"Panama", "Bahamas", "Nicaragua", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_hn }
            Reponses := array{"Honduras", "Belize", "Panama", "Barbade"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sv }
            Reponses := array{"Salvador", "Costa Rica", "Bahamas", "Sainte-Lucie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ni }
            Reponses := array{"Saint-Kitts-et-Nevis", "Salvador", "Saint-Vincent", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cr }
            Reponses := array{"Sainte-Lucie", "Nicaragua", "Haiti", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pa }
            Reponses := array{"Cuba", "Panama", "Saint-Kitts-et-Nevis", "Jamaique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bs }
            Reponses := array{"Bahamas", "Grenade", "Antigua-et-Barbuda", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cu }
            Reponses := array{"Cuba", "Barbade", "Trinite-et-Tobago", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_jm }
            Reponses := array{"Belize", "Republique dominicaine", "Grenade", "Jamaique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ht }
            Reponses := array{"Bahamas", "Haiti", "Republique dominicaine", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_do }
            Reponses := array{"Republique dominicaine", "Dominique", "Sainte-Lucie", "Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_kn }
            Reponses := array{"Saint-Kitts-et-Nevis", "Salvador", "Guatemala", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ag }
            Reponses := array{"Salvador", "Antigua-et-Barbuda", "Bahamas", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_dm }
            Reponses := array{"Jamaique", "Saint-Kitts-et-Nevis", "Barbade", "Dominique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_lc }
            Reponses := array{"Cuba", "Sainte-Lucie", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_vc }
            Reponses := array{"Republique dominicaine", "Panama", "Guatemala", "Saint-Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bb }
            Reponses := array{"Barbade", "Costa Rica", "Panama", "Dominique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gd }
            Reponses := array{"Belize", "Grenade", "Nicaragua", "Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_tt }
            Reponses := array{"Grenade", "Haiti", "Jamaique", "Trinite-et-Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_co }
            Reponses := array{"Bolivie", "Venezuela", "Equateur", "Colombie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ve }
            Reponses := array{"Venezuela", "Equateur", "Perou", "Colombie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_gy }
            Reponses := array{"Uruguay", "Guyana", "Chili", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_sr }
            Reponses := array{"Suriname", "Perou", "Bresil", "Chili"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ec }
            Reponses := array{"Bolivie", "Suriname", "Uruguay", "Equateur"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_pe }
            Reponses := array{"Venezuela", "Perou", "Bolivie", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_br }
            Reponses := array{"Bresil", "Equateur", "Paraguay", "Venezuela"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_bo }
            Reponses := array{"Chili", "Bresil", "Bolivie", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_py }
            Reponses := array{"Chili", "Bolivie", "Paraguay", "Colombie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_uy }
            Reponses := array{"Venezuela", "Uruguay", "Bolivie", "Argentine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_cl }
            Reponses := array{"Bresil", "Chili", "Equateur", "Bolivie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce pays ? (carte pixelisee)"
            Image := option{ carte_pixel.mpx_ar }
            Reponses := array{"Bresil", "Argentine", "Colombie", "Uruguay"}
            BonneReponse := 1

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
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_fr }
            Reponses := array{"Vatican City", "Italy", "France", "Belgium"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_de }
            Reponses := array{"Belgium", "Liechtenstein", "Italy", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_it }
            Reponses := array{"Denmark", "Italy", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_es }
            Reponses := array{"Spain", "Monaco", "Sweden", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pt }
            Reponses := array{"Germany", "Andorra", "Switzerland", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gb }
            Reponses := array{"Ireland", "United Kingdom", "Liechtenstein", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ie }
            Reponses := array{"Austria", "Monaco", "Andorra", "Ireland"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_be }
            Reponses := array{"Vatican City", "France", "San Marino", "Belgium"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_nl }
            Reponses := array{"Switzerland", "Netherlands", "Portugal", "Sweden"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lu }
            Reponses := array{"Luxembourg", "United Kingdom", "Ireland", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ch }
            Reponses := array{"Liechtenstein", "Malta", "Switzerland", "Spain"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_at }
            Reponses := array{"Andorra", "Liechtenstein", "Austria", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mc }
            Reponses := array{"United Kingdom", "San Marino", "Liechtenstein", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ad }
            Reponses := array{"Netherlands", "Andorra", "Norway", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_li }
            Reponses := array{"France", "Denmark", "Iceland", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sm }
            Reponses := array{"Italy", "San Marino", "Switzerland", "Ireland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_va }
            Reponses := array{"Luxembourg", "United Kingdom", "Vatican City", "Spain"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mt }
            Reponses := array{"Spain", "Germany", "Liechtenstein", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_is }
            Reponses := array{"Switzerland", "Andorra", "Iceland", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_no }
            Reponses := array{"Austria", "Luxembourg", "Malta", "Norway"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_se }
            Reponses := array{"Austria", "Switzerland", "Sweden", "Germany"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_dk }
            Reponses := array{"Portugal", "Denmark", "San Marino", "Spain"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_fi }
            Reponses := array{"Liechtenstein", "Germany", "Finland", "Denmark"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pl }
            Reponses := array{"Romania", "Poland", "Lithuania", "Czechia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cz }
            Reponses := array{"Czechia", "Romania", "Hungary", "Belarus"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sk }
            Reponses := array{"Estonia", "Cyprus", "Montenegro", "Slovakia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_hu }
            Reponses := array{"Ukraine", "Hungary", "Latvia", "Belarus"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_si }
            Reponses := array{"Czechia", "Belarus", "Montenegro", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_hr }
            Reponses := array{"Ukraine", "Croatia", "Cyprus", "Slovakia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ba }
            Reponses := array{"Serbia", "Greece", "Albania", "Bosnia and Herzegovina"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_rs }
            Reponses := array{"Serbia", "Greece", "Russia", "Poland"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_me }
            Reponses := array{"Cyprus", "Montenegro", "Russia", "Greece"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mk }
            Reponses := array{"North Macedonia", "Slovenia", "Bosnia and Herzegovina", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_al }
            Reponses := array{"Czechia", "Moldova", "Croatia", "Albania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gr }
            Reponses := array{"Greece", "Lithuania", "North Macedonia", "Cyprus"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bg }
            Reponses := array{"Cyprus", "Albania", "Bulgaria", "Croatia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ro }
            Reponses := array{"Ukraine", "Russia", "North Macedonia", "Romania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_md }
            Reponses := array{"Latvia", "Cyprus", "Hungary", "Moldova"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ua }
            Reponses := array{"Latvia", "Slovenia", "Ukraine", "Greece"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_by }
            Reponses := array{"Belarus", "Slovenia", "Moldova", "Cyprus"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ru }
            Reponses := array{"North Macedonia", "Latvia", "Russia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ee }
            Reponses := array{"Estonia", "Moldova", "Slovakia", "Hungary"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lv }
            Reponses := array{"Slovakia", "Latvia", "Hungary", "Poland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lt }
            Reponses := array{"Ukraine", "Lithuania", "Latvia", "Moldova"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cy }
            Reponses := array{"Poland", "Cyprus", "Bulgaria", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tr }
            Reponses := array{"Saudi Arabia", "Turkey", "United Arab Emirates", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_il }
            Reponses := array{"Kuwait", "Iraq", "Qatar", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ps }
            Reponses := array{"Palestine", "Armenia", "Azerbaijan", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lb }
            Reponses := array{"Armenia", "Lebanon", "Georgia", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sy }
            Reponses := array{"Iran", "Syria", "Georgia", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_jo }
            Reponses := array{"Yemen", "Jordan", "Iran", "United Arab Emirates"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_iq }
            Reponses := array{"Israel", "Bahrain", "Iraq", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ir }
            Reponses := array{"Qatar", "Yemen", "Iran", "United Arab Emirates"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sa }
            Reponses := array{"Iraq", "Saudi Arabia", "Armenia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ye }
            Reponses := array{"Kuwait", "Yemen", "Syria", "Iraq"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_om }
            Reponses := array{"Palestine", "Oman", "Syria", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ae }
            Reponses := array{"Georgia", "United Arab Emirates", "Bahrain", "Saudi Arabia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_qa }
            Reponses := array{"Qatar", "Georgia", "Azerbaijan", "Saudi Arabia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bh }
            Reponses := array{"Iraq", "Lebanon", "Bahrain", "Azerbaijan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kw }
            Reponses := array{"Palestine", "Bahrain", "Israel", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ge }
            Reponses := array{"Bahrain", "Palestine", "Syria", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_am }
            Reponses := array{"Armenia", "Palestine", "United Arab Emirates", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_az }
            Reponses := array{"Iraq", "Azerbaijan", "Palestine", "Turkey"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kz }
            Reponses := array{"Kazakhstan", "Mongolia", "Tajikistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_uz }
            Reponses := array{"Mongolia", "Uzbekistan", "Kazakhstan", "Tajikistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tm }
            Reponses := array{"Kyrgyzstan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kg }
            Reponses := array{"Turkmenistan", "Mongolia", "Kazakhstan", "Kyrgyzstan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tj }
            Reponses := array{"Afghanistan", "Tajikistan", "Mongolia", "Kyrgyzstan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_af }
            Reponses := array{"Mongolia", "Afghanistan", "Kyrgyzstan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mn }
            Reponses := array{"Uzbekistan", "Mongolia", "Turkmenistan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cn }
            Reponses := array{"Pakistan", "Bangladesh", "China", "India"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_jp }
            Reponses := array{"Singapore", "Japan", "Cambodia", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kr }
            Reponses := array{"Bangladesh", "South Korea", "North Korea", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kp }
            Reponses := array{"Myanmar", "South Korea", "North Korea", "China"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_in }
            Reponses := array{"India", "East Timor", "Bhutan", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pk }
            Reponses := array{"Sri Lanka", "Nepal", "Cambodia", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bd }
            Reponses := array{"Bangladesh", "Philippines", "Malaysia", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lk }
            Reponses := array{"Laos", "Vietnam", "South Korea", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_np }
            Reponses := array{"Indonesia", "Philippines", "India", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bt }
            Reponses := array{"Bhutan", "Sri Lanka", "South Korea", "Brunei"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mv }
            Reponses := array{"Laos", "Sri Lanka", "Vietnam", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mm }
            Reponses := array{"Brunei", "Bhutan", "Myanmar", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_th }
            Reponses := array{"North Korea", "Bangladesh", "Thailand", "China"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_la }
            Reponses := array{"Thailand", "East Timor", "Laos", "Cambodia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kh }
            Reponses := array{"Cambodia", "Myanmar", "Thailand", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_vn }
            Reponses := array{"Indonesia", "Nepal", "India", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_my }
            Reponses := array{"Vietnam", "Malaysia", "Sri Lanka", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sg }
            Reponses := array{"Sri Lanka", "Laos", "South Korea", "Singapore"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_id }
            Reponses := array{"Thailand", "China", "Indonesia", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bn }
            Reponses := array{"South Korea", "India", "Brunei", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ph }
            Reponses := array{"Thailand", "Nepal", "Philippines", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tl }
            Reponses := array{"Singapore", "Bhutan", "Nepal", "East Timor"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_au }
            Reponses := array{"Australia", "Samoa", "Tonga", "New Zealand"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_nz }
            Reponses := array{"Australia", "Palau", "New Zealand", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pg }
            Reponses := array{"Tonga", "Australia", "Papua New Guinea", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_fj }
            Reponses := array{"Australia", "Fiji", "Kiribati", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sb }
            Reponses := array{"Vanuatu", "Solomon Islands", "Micronesia", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_vu }
            Reponses := array{"Solomon Islands", "Papua New Guinea", "Vanuatu", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ws }
            Reponses := array{"Tonga", "Kiribati", "Samoa", "Solomon Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_to }
            Reponses := array{"New Zealand", "Marshall Islands", "Nauru", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tv }
            Reponses := array{"Micronesia", "Samoa", "Tuvalu", "Marshall Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ki }
            Reponses := array{"Tuvalu", "Fiji", "Nauru", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_nr }
            Reponses := array{"Tonga", "Fiji", "Australia", "Nauru"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pw }
            Reponses := array{"Tuvalu", "New Zealand", "Palau", "Papua New Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_fm }
            Reponses := array{"Samoa", "Micronesia", "Kiribati", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mh }
            Reponses := array{"Marshall Islands", "New Zealand", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ma }
            Reponses := array{"Morocco", "Algeria", "Angola", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_dz }
            Reponses := array{"Algeria", "Liberia", "Senegal", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tn }
            Reponses := array{"Kenya", "Cape Verde", "Tunisia", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ly }
            Reponses := array{"Botswana", "Togo", "Mali", "Libya"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_eg }
            Reponses := array{"Madagascar", "South Africa", "Egypt", "Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sd }
            Reponses := array{"Kenya", "Sudan", "Gambia", "Cape Verde"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ss }
            Reponses := array{"Congo", "South Sudan", "Guinea", "Tanzania"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_et }
            Reponses := array{"Ethiopia", "Liberia", "Namibia", "Central African Republic"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_er }
            Reponses := array{"Malawi", "Uganda", "Eritrea", "Rwanda"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_dj }
            Reponses := array{"Seychelles", "Sudan", "Rwanda", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_so }
            Reponses := array{"Sao Tome and Principe", "Mauritius", "Congo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ke }
            Reponses := array{"Cameroon", "Congo", "Kenya", "Central African Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ug }
            Reponses := array{"Uganda", "Benin", "Morocco", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tz }
            Reponses := array{"Tanzania", "Uganda", "Rwanda", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_rw }
            Reponses := array{"Liberia", "Rwanda", "South Sudan", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bi }
            Reponses := array{"Uganda", "Tanzania", "Burundi", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cd }
            Reponses := array{"Guinea", "Kenya", "Namibia", "DR Congo"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cg }
            Reponses := array{"Libya", "Mozambique", "Madagascar", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ga }
            Reponses := array{"Seychelles", "Rwanda", "Cape Verde", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gq }
            Reponses := array{"Equatorial Guinea", "Uganda", "Somalia", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cm }
            Reponses := array{"Chad", "Malawi", "Cameroon", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cf }
            Reponses := array{"Zambia", "Ethiopia", "Sierra Leone", "Central African Republic"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_td }
            Reponses := array{"Sao Tome and Principe", "Djibouti", "Chad", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ne }
            Reponses := array{"Niger", "Gambia", "Tanzania", "Central African Republic"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ng }
            Reponses := array{"Chad", "Eritrea", "Equatorial Guinea", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bj }
            Reponses := array{"South Sudan", "Congo", "Benin", "Mozambique"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tg }
            Reponses := array{"Egypt", "Zimbabwe", "Togo", "Burundi"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gh }
            Reponses := array{"Congo", "Benin", "Tanzania", "Ghana"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ci }
            Reponses := array{"Sao Tome and Principe", "Ivory Coast", "Sudan", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lr }
            Reponses := array{"Burkina Faso", "Niger", "Zambia", "Liberia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sl }
            Reponses := array{"Chad", "Libya", "Sierra Leone", "Ethiopia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gn }
            Reponses := array{"Sierra Leone", "Morocco", "Guinea", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gw }
            Reponses := array{"Guinea", "Guinea-Bissau", "Mozambique", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sn }
            Reponses := array{"Senegal", "Sierra Leone", "Zambia", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gm }
            Reponses := array{"Sao Tome and Principe", "Djibouti", "Uganda", "Gambia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ml }
            Reponses := array{"South Africa", "Mali", "Zimbabwe", "Nigeria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bf }
            Reponses := array{"Burkina Faso", "South Sudan", "Libya", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mr }
            Reponses := array{"Sierra Leone", "Algeria", "Mauritania", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cv }
            Reponses := array{"Namibia", "Sao Tome and Principe", "Cape Verde", "South Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_st }
            Reponses := array{"Sao Tome and Principe", "Central African Republic", "Sierra Leone", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ao }
            Reponses := array{"Guinea", "Lesotho", "Angola", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_zm }
            Reponses := array{"Algeria", "DR Congo", "Liberia", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_zw }
            Reponses := array{"Gabon", "Kenya", "Zimbabwe", "Sierra Leone"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mw }
            Reponses := array{"Ethiopia", "Burkina Faso", "Malawi", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mz }
            Reponses := array{"Lesotho", "Mozambique", "Namibia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mg }
            Reponses := array{"Sudan", "Madagascar", "Mauritania", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_km }
            Reponses := array{"Angola", "Togo", "Algeria", "Comoros"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mu }
            Reponses := array{"Comoros", "Morocco", "Mauritius", "Equatorial Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sc }
            Reponses := array{"DR Congo", "Seychelles", "Burundi", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_za }
            Reponses := array{"Mozambique", "Seychelles", "South Africa", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_na }
            Reponses := array{"Namibia", "Chad", "Egypt", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bw }
            Reponses := array{"Sudan", "Guinea-Bissau", "Mauritania", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ls }
            Reponses := array{"Botswana", "Liberia", "Niger", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sz }
            Reponses := array{"Congo", "Mozambique", "Senegal", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_us }
            Reponses := array{"Mauritius", "Canada", "Mexico", "United States"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ca }
            Reponses := array{"United States", "Canada", "Mexico", "Sao Tome and Principe"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_mx }
            Reponses := array{"Indonesia", "United States", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gt }
            Reponses := array{"Belize", "Dominican Republic", "Guatemala", "Trinidad and Tobago"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bz }
            Reponses := array{"Panama", "Bahamas", "Nicaragua", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_hn }
            Reponses := array{"Honduras", "Belize", "Panama", "Barbados"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sv }
            Reponses := array{"El Salvador", "Costa Rica", "Bahamas", "Saint Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ni }
            Reponses := array{"Saint Kitts and Nevis", "El Salvador", "Saint Vincent", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cr }
            Reponses := array{"Saint Lucia", "Nicaragua", "Haiti", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pa }
            Reponses := array{"Cuba", "Panama", "Saint Kitts and Nevis", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bs }
            Reponses := array{"Bahamas", "Grenada", "Antigua and Barbuda", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cu }
            Reponses := array{"Cuba", "Barbados", "Trinidad and Tobago", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_jm }
            Reponses := array{"Belize", "Dominican Republic", "Grenada", "Jamaica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ht }
            Reponses := array{"Bahamas", "Haiti", "Dominican Republic", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_do }
            Reponses := array{"Dominican Republic", "Dominica", "Saint Lucia", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_kn }
            Reponses := array{"Saint Kitts and Nevis", "El Salvador", "Guatemala", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ag }
            Reponses := array{"El Salvador", "Antigua and Barbuda", "Bahamas", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_dm }
            Reponses := array{"Jamaica", "Saint Kitts and Nevis", "Barbados", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_lc }
            Reponses := array{"Cuba", "Saint Lucia", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_vc }
            Reponses := array{"Dominican Republic", "Panama", "Guatemala", "Saint Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bb }
            Reponses := array{"Barbados", "Costa Rica", "Panama", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gd }
            Reponses := array{"Belize", "Grenada", "Nicaragua", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_tt }
            Reponses := array{"Grenada", "Haiti", "Jamaica", "Trinidad and Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_co }
            Reponses := array{"Bolivia", "Venezuela", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ve }
            Reponses := array{"Venezuela", "Ecuador", "Peru", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_gy }
            Reponses := array{"Uruguay", "Guyana", "Chile", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_sr }
            Reponses := array{"Suriname", "Peru", "Brazil", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ec }
            Reponses := array{"Bolivia", "Suriname", "Uruguay", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_pe }
            Reponses := array{"Venezuela", "Peru", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_br }
            Reponses := array{"Brazil", "Ecuador", "Paraguay", "Venezuela"}
            BonneReponse := 0
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_bo }
            Reponses := array{"Chile", "Brazil", "Bolivia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_py }
            Reponses := array{"Chile", "Bolivia", "Paraguay", "Colombia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_uy }
            Reponses := array{"Venezuela", "Uruguay", "Bolivia", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_cl }
            Reponses := array{"Brazil", "Chile", "Ecuador", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is this? (pixelated map)"
            Image := option{ carte_pixel.mpx_ar }
            Reponses := array{"Brazil", "Argentina", "Colombia", "Uruguay"}
            BonneReponse := 1

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
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_fr }
            Reponses := array{"Ciudad del Vaticano", "Italia", "Francia", "Belgica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_de }
            Reponses := array{"Belgica", "Liechtenstein", "Italia", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_it }
            Reponses := array{"Dinamarca", "Italia", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_es }
            Reponses := array{"Espana", "Monaco", "Suecia", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pt }
            Reponses := array{"Alemania", "Andorra", "Suiza", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gb }
            Reponses := array{"Irlanda", "Reino Unido", "Liechtenstein", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ie }
            Reponses := array{"Austria", "Monaco", "Andorra", "Irlanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_be }
            Reponses := array{"Ciudad del Vaticano", "Francia", "San Marino", "Belgica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_nl }
            Reponses := array{"Suiza", "Paises Bajos", "Portugal", "Suecia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lu }
            Reponses := array{"Luxemburgo", "Reino Unido", "Irlanda", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ch }
            Reponses := array{"Liechtenstein", "Malta", "Suiza", "Espana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_at }
            Reponses := array{"Andorra", "Liechtenstein", "Austria", "Luxemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mc }
            Reponses := array{"Reino Unido", "San Marino", "Liechtenstein", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ad }
            Reponses := array{"Paises Bajos", "Andorra", "Noruega", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_li }
            Reponses := array{"Francia", "Dinamarca", "Islandia", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sm }
            Reponses := array{"Italia", "San Marino", "Suiza", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_va }
            Reponses := array{"Luxemburgo", "Reino Unido", "Ciudad del Vaticano", "Espana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mt }
            Reponses := array{"Espana", "Alemania", "Liechtenstein", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_is }
            Reponses := array{"Suiza", "Andorra", "Islandia", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_no }
            Reponses := array{"Austria", "Luxemburgo", "Malta", "Noruega"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_se }
            Reponses := array{"Austria", "Suiza", "Suecia", "Alemania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_dk }
            Reponses := array{"Portugal", "Dinamarca", "San Marino", "Espana"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_fi }
            Reponses := array{"Liechtenstein", "Alemania", "Finlandia", "Dinamarca"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pl }
            Reponses := array{"Rumania", "Polonia", "Lituania", "Chequia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cz }
            Reponses := array{"Chequia", "Rumania", "Hungria", "Bielorrusia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sk }
            Reponses := array{"Estonia", "Chipre", "Montenegro", "Eslovaquia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_hu }
            Reponses := array{"Ucrania", "Hungria", "Letonia", "Bielorrusia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_si }
            Reponses := array{"Chequia", "Bielorrusia", "Montenegro", "Eslovenia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_hr }
            Reponses := array{"Ucrania", "Croacia", "Chipre", "Eslovaquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ba }
            Reponses := array{"Serbia", "Grecia", "Albania", "Bosnia y Herzegovina"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_rs }
            Reponses := array{"Serbia", "Grecia", "Rusia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_me }
            Reponses := array{"Chipre", "Montenegro", "Rusia", "Grecia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mk }
            Reponses := array{"Macedonia del Norte", "Eslovenia", "Bosnia y Herzegovina", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_al }
            Reponses := array{"Chequia", "Moldavia", "Croacia", "Albania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gr }
            Reponses := array{"Grecia", "Lituania", "Macedonia del Norte", "Chipre"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bg }
            Reponses := array{"Chipre", "Albania", "Bulgaria", "Croacia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ro }
            Reponses := array{"Ucrania", "Rusia", "Macedonia del Norte", "Rumania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_md }
            Reponses := array{"Letonia", "Chipre", "Hungria", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ua }
            Reponses := array{"Letonia", "Eslovenia", "Ucrania", "Grecia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_by }
            Reponses := array{"Bielorrusia", "Eslovenia", "Moldavia", "Chipre"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ru }
            Reponses := array{"Macedonia del Norte", "Letonia", "Rusia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ee }
            Reponses := array{"Estonia", "Moldavia", "Eslovaquia", "Hungria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lv }
            Reponses := array{"Eslovaquia", "Letonia", "Hungria", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lt }
            Reponses := array{"Ucrania", "Lituania", "Letonia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cy }
            Reponses := array{"Polonia", "Chipre", "Bulgaria", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tr }
            Reponses := array{"Arabia Saudita", "Turquia", "Emiratos Arabes Unidos", "Catar"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_il }
            Reponses := array{"Kuwait", "Irak", "Catar", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ps }
            Reponses := array{"Palestina", "Armenia", "Azerbaiyan", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lb }
            Reponses := array{"Armenia", "Libano", "Georgia", "Barein"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sy }
            Reponses := array{"Iran", "Siria", "Georgia", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_jo }
            Reponses := array{"Yemen", "Jordania", "Iran", "Emiratos Arabes Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_iq }
            Reponses := array{"Israel", "Barein", "Irak", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ir }
            Reponses := array{"Catar", "Yemen", "Iran", "Emiratos Arabes Unidos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sa }
            Reponses := array{"Irak", "Arabia Saudita", "Armenia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ye }
            Reponses := array{"Kuwait", "Yemen", "Siria", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_om }
            Reponses := array{"Palestina", "Oman", "Siria", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ae }
            Reponses := array{"Georgia", "Emiratos Arabes Unidos", "Barein", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_qa }
            Reponses := array{"Catar", "Georgia", "Azerbaiyan", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bh }
            Reponses := array{"Irak", "Libano", "Barein", "Azerbaiyan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kw }
            Reponses := array{"Palestina", "Barein", "Israel", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ge }
            Reponses := array{"Barein", "Palestina", "Siria", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_am }
            Reponses := array{"Armenia", "Palestina", "Emiratos Arabes Unidos", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_az }
            Reponses := array{"Irak", "Azerbaiyan", "Palestina", "Turquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kz }
            Reponses := array{"Kazajistan", "Mongolia", "Tayikistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_uz }
            Reponses := array{"Mongolia", "Uzbekistan", "Kazajistan", "Tayikistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tm }
            Reponses := array{"Kirguistan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kg }
            Reponses := array{"Turkmenistan", "Mongolia", "Kazajistan", "Kirguistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tj }
            Reponses := array{"Afganistan", "Tayikistan", "Mongolia", "Kirguistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_af }
            Reponses := array{"Mongolia", "Afganistan", "Kirguistan", "Kazajistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mn }
            Reponses := array{"Uzbekistan", "Mongolia", "Turkmenistan", "Kazajistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cn }
            Reponses := array{"Pakistan", "Banglades", "China", "India"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_jp }
            Reponses := array{"Singapur", "Japon", "Camboya", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kr }
            Reponses := array{"Banglades", "Corea del Sur", "Corea del Norte", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kp }
            Reponses := array{"Birmania", "Corea del Sur", "Corea del Norte", "China"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_in }
            Reponses := array{"India", "Timor Oriental", "Butan", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pk }
            Reponses := array{"Sri Lanka", "Nepal", "Camboya", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bd }
            Reponses := array{"Banglades", "Filipinas", "Malasia", "Maldivas"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lk }
            Reponses := array{"Laos", "Vietnam", "Corea del Sur", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_np }
            Reponses := array{"Indonesia", "Filipinas", "India", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bt }
            Reponses := array{"Butan", "Sri Lanka", "Corea del Sur", "Brunei"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mv }
            Reponses := array{"Laos", "Sri Lanka", "Vietnam", "Maldivas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mm }
            Reponses := array{"Brunei", "Butan", "Birmania", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_th }
            Reponses := array{"Corea del Norte", "Banglades", "Tailandia", "China"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_la }
            Reponses := array{"Tailandia", "Timor Oriental", "Laos", "Camboya"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kh }
            Reponses := array{"Camboya", "Birmania", "Tailandia", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_vn }
            Reponses := array{"Indonesia", "Nepal", "India", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_my }
            Reponses := array{"Vietnam", "Malasia", "Sri Lanka", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sg }
            Reponses := array{"Sri Lanka", "Laos", "Corea del Sur", "Singapur"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_id }
            Reponses := array{"Tailandia", "China", "Indonesia", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bn }
            Reponses := array{"Corea del Sur", "India", "Brunei", "Filipinas"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ph }
            Reponses := array{"Tailandia", "Nepal", "Filipinas", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tl }
            Reponses := array{"Singapur", "Butan", "Nepal", "Timor Oriental"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_au }
            Reponses := array{"Australia", "Samoa", "Tonga", "Nueva Zelanda"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_nz }
            Reponses := array{"Australia", "Palaos", "Nueva Zelanda", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pg }
            Reponses := array{"Tonga", "Australia", "Papua Nueva Guinea", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_fj }
            Reponses := array{"Australia", "Fiyi", "Kiribati", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sb }
            Reponses := array{"Vanuatu", "Islas Salomon", "Micronesia", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_vu }
            Reponses := array{"Islas Salomon", "Papua Nueva Guinea", "Vanuatu", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ws }
            Reponses := array{"Tonga", "Kiribati", "Samoa", "Islas Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_to }
            Reponses := array{"Nueva Zelanda", "Islas Marshall", "Nauru", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tv }
            Reponses := array{"Micronesia", "Samoa", "Tuvalu", "Islas Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ki }
            Reponses := array{"Tuvalu", "Fiyi", "Nauru", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_nr }
            Reponses := array{"Tonga", "Fiyi", "Australia", "Nauru"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pw }
            Reponses := array{"Tuvalu", "Nueva Zelanda", "Palaos", "Papua Nueva Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_fm }
            Reponses := array{"Samoa", "Micronesia", "Kiribati", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mh }
            Reponses := array{"Islas Marshall", "Nueva Zelanda", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ma }
            Reponses := array{"Marruecos", "Argelia", "Angola", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_dz }
            Reponses := array{"Argelia", "Liberia", "Senegal", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tn }
            Reponses := array{"Kenia", "Cabo Verde", "Tunez", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ly }
            Reponses := array{"Botsuana", "Togo", "Mali", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_eg }
            Reponses := array{"Madagascar", "Sudafrica", "Egipto", "Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sd }
            Reponses := array{"Kenia", "Sudan", "Gambia", "Cabo Verde"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ss }
            Reponses := array{"Congo", "Sudan del Sur", "Guinea", "Tanzania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_et }
            Reponses := array{"Etiopia", "Liberia", "Namibia", "Republica Centroafricana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_er }
            Reponses := array{"Malaui", "Uganda", "Eritrea", "Ruanda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_dj }
            Reponses := array{"Seychelles", "Sudan", "Ruanda", "Yibuti"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_so }
            Reponses := array{"Santo Tome y Principe", "Mauricio", "Congo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ke }
            Reponses := array{"Camerun", "Congo", "Kenia", "Republica Centroafricana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ug }
            Reponses := array{"Uganda", "Benin", "Marruecos", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tz }
            Reponses := array{"Tanzania", "Uganda", "Ruanda", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_rw }
            Reponses := array{"Liberia", "Ruanda", "Sudan del Sur", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bi }
            Reponses := array{"Uganda", "Tanzania", "Burundi", "Zimbabue"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cd }
            Reponses := array{"Guinea", "Kenia", "Namibia", "RD del Congo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cg }
            Reponses := array{"Libia", "Mozambique", "Madagascar", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ga }
            Reponses := array{"Seychelles", "Ruanda", "Cabo Verde", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gq }
            Reponses := array{"Guinea Ecuatorial", "Uganda", "Somalia", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cm }
            Reponses := array{"Chad", "Malaui", "Camerun", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cf }
            Reponses := array{"Zambia", "Etiopia", "Sierra Leona", "Republica Centroafricana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_td }
            Reponses := array{"Santo Tome y Principe", "Yibuti", "Chad", "Zimbabue"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ne }
            Reponses := array{"Niger", "Gambia", "Tanzania", "Republica Centroafricana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ng }
            Reponses := array{"Chad", "Eritrea", "Guinea Ecuatorial", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bj }
            Reponses := array{"Sudan del Sur", "Congo", "Benin", "Mozambique"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tg }
            Reponses := array{"Egipto", "Zimbabue", "Togo", "Burundi"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gh }
            Reponses := array{"Congo", "Benin", "Tanzania", "Ghana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ci }
            Reponses := array{"Santo Tome y Principe", "Costa de Marfil", "Sudan", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lr }
            Reponses := array{"Burkina Faso", "Niger", "Zambia", "Liberia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sl }
            Reponses := array{"Chad", "Libia", "Sierra Leona", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gn }
            Reponses := array{"Sierra Leona", "Marruecos", "Guinea", "Mauricio"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gw }
            Reponses := array{"Guinea", "Guinea-Bisau", "Mozambique", "Lesoto"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sn }
            Reponses := array{"Senegal", "Sierra Leona", "Zambia", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gm }
            Reponses := array{"Santo Tome y Principe", "Yibuti", "Uganda", "Gambia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ml }
            Reponses := array{"Sudafrica", "Mali", "Zimbabue", "Nigeria"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bf }
            Reponses := array{"Burkina Faso", "Sudan del Sur", "Libia", "Kenia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mr }
            Reponses := array{"Sierra Leona", "Argelia", "Mauritania", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cv }
            Reponses := array{"Namibia", "Santo Tome y Principe", "Cabo Verde", "Sudan del Sur"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_st }
            Reponses := array{"Santo Tome y Principe", "Republica Centroafricana", "Sierra Leona", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ao }
            Reponses := array{"Guinea", "Lesoto", "Angola", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_zm }
            Reponses := array{"Argelia", "RD del Congo", "Liberia", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_zw }
            Reponses := array{"Gabon", "Kenia", "Zimbabue", "Sierra Leona"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mw }
            Reponses := array{"Etiopia", "Burkina Faso", "Malaui", "Guinea-Bisau"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mz }
            Reponses := array{"Lesoto", "Mozambique", "Namibia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mg }
            Reponses := array{"Sudan", "Madagascar", "Mauritania", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_km }
            Reponses := array{"Angola", "Togo", "Argelia", "Comoras"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mu }
            Reponses := array{"Comoras", "Marruecos", "Mauricio", "Guinea Ecuatorial"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sc }
            Reponses := array{"RD del Congo", "Seychelles", "Burundi", "Yibuti"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_za }
            Reponses := array{"Mozambique", "Seychelles", "Sudafrica", "Lesoto"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_na }
            Reponses := array{"Namibia", "Chad", "Egipto", "Esuatini"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bw }
            Reponses := array{"Sudan", "Guinea-Bisau", "Mauritania", "Botsuana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ls }
            Reponses := array{"Botsuana", "Liberia", "Niger", "Lesoto"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sz }
            Reponses := array{"Congo", "Mozambique", "Senegal", "Esuatini"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_us }
            Reponses := array{"Mauricio", "Canada", "Mexico", "Estados Unidos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ca }
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Santo Tome y Principe"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_mx }
            Reponses := array{"Indonesia", "Estados Unidos", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gt }
            Reponses := array{"Belice", "Republica Dominicana", "Guatemala", "Trinidad y Tobago"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bz }
            Reponses := array{"Panama", "Bahamas", "Nicaragua", "Belice"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_hn }
            Reponses := array{"Honduras", "Belice", "Panama", "Barbados"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sv }
            Reponses := array{"El Salvador", "Costa Rica", "Bahamas", "Santa Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ni }
            Reponses := array{"San Cristobal y Nieves", "El Salvador", "San Vicente", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cr }
            Reponses := array{"Santa Lucia", "Nicaragua", "Haiti", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pa }
            Reponses := array{"Cuba", "Panama", "San Cristobal y Nieves", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bs }
            Reponses := array{"Bahamas", "Granada", "Antigua y Barbuda", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cu }
            Reponses := array{"Cuba", "Barbados", "Trinidad y Tobago", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_jm }
            Reponses := array{"Belice", "Republica Dominicana", "Granada", "Jamaica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ht }
            Reponses := array{"Bahamas", "Haiti", "Republica Dominicana", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_do }
            Reponses := array{"Republica Dominicana", "Dominica", "Santa Lucia", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_kn }
            Reponses := array{"San Cristobal y Nieves", "El Salvador", "Guatemala", "Belice"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ag }
            Reponses := array{"El Salvador", "Antigua y Barbuda", "Bahamas", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_dm }
            Reponses := array{"Jamaica", "San Cristobal y Nieves", "Barbados", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_lc }
            Reponses := array{"Cuba", "Santa Lucia", "Belice", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_vc }
            Reponses := array{"Republica Dominicana", "Panama", "Guatemala", "San Vicente"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bb }
            Reponses := array{"Barbados", "Costa Rica", "Panama", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gd }
            Reponses := array{"Belice", "Granada", "Nicaragua", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_tt }
            Reponses := array{"Granada", "Haiti", "Jamaica", "Trinidad y Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_co }
            Reponses := array{"Bolivia", "Venezuela", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ve }
            Reponses := array{"Venezuela", "Ecuador", "Peru", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_gy }
            Reponses := array{"Uruguay", "Guyana", "Chile", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_sr }
            Reponses := array{"Surinam", "Peru", "Brasil", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ec }
            Reponses := array{"Bolivia", "Surinam", "Uruguay", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_pe }
            Reponses := array{"Venezuela", "Peru", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_br }
            Reponses := array{"Brasil", "Ecuador", "Paraguay", "Venezuela"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_bo }
            Reponses := array{"Chile", "Brasil", "Bolivia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_py }
            Reponses := array{"Chile", "Bolivia", "Paraguay", "Colombia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_uy }
            Reponses := array{"Venezuela", "Uruguay", "Bolivia", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_cl }
            Reponses := array{"Brasil", "Chile", "Ecuador", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es este? (mapa pixelado)"
            Image := option{ carte_pixel.mpx_ar }
            Reponses := array{"Brasil", "Argentina", "Colombia", "Uruguay"}
            BonneReponse := 1

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
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_fr }
            Reponses := array{"Vatikanstadt", "Italien", "Frankreich", "Belgien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_de }
            Reponses := array{"Belgien", "Liechtenstein", "Italien", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_it }
            Reponses := array{"Daenemark", "Italien", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_es }
            Reponses := array{"Spanien", "Monaco", "Schweden", "Oesterreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pt }
            Reponses := array{"Deutschland", "Andorra", "Schweiz", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gb }
            Reponses := array{"Irland", "Vereinigtes Koenigreich", "Liechtenstein", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ie }
            Reponses := array{"Oesterreich", "Monaco", "Andorra", "Irland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_be }
            Reponses := array{"Vatikanstadt", "Frankreich", "San Marino", "Belgien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_nl }
            Reponses := array{"Schweiz", "Niederlande", "Portugal", "Schweden"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lu }
            Reponses := array{"Luxemburg", "Vereinigtes Koenigreich", "Irland", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ch }
            Reponses := array{"Liechtenstein", "Malta", "Schweiz", "Spanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_at }
            Reponses := array{"Andorra", "Liechtenstein", "Oesterreich", "Luxemburg"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mc }
            Reponses := array{"Vereinigtes Koenigreich", "San Marino", "Liechtenstein", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ad }
            Reponses := array{"Niederlande", "Andorra", "Norwegen", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_li }
            Reponses := array{"Frankreich", "Daenemark", "Island", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sm }
            Reponses := array{"Italien", "San Marino", "Schweiz", "Irland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_va }
            Reponses := array{"Luxemburg", "Vereinigtes Koenigreich", "Vatikanstadt", "Spanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mt }
            Reponses := array{"Spanien", "Deutschland", "Liechtenstein", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_is }
            Reponses := array{"Schweiz", "Andorra", "Island", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_no }
            Reponses := array{"Oesterreich", "Luxemburg", "Malta", "Norwegen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_se }
            Reponses := array{"Oesterreich", "Schweiz", "Schweden", "Deutschland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_dk }
            Reponses := array{"Portugal", "Daenemark", "San Marino", "Spanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_fi }
            Reponses := array{"Liechtenstein", "Deutschland", "Finnland", "Daenemark"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pl }
            Reponses := array{"Rumaenien", "Polen", "Litauen", "Tschechien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cz }
            Reponses := array{"Tschechien", "Rumaenien", "Ungarn", "Belarus"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sk }
            Reponses := array{"Estland", "Zypern", "Montenegro", "Slowakei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_hu }
            Reponses := array{"Ukraine", "Ungarn", "Lettland", "Belarus"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_si }
            Reponses := array{"Tschechien", "Belarus", "Montenegro", "Slowenien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_hr }
            Reponses := array{"Ukraine", "Kroatien", "Zypern", "Slowakei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ba }
            Reponses := array{"Serbien", "Griechenland", "Albanien", "Bosnien und Herzegowina"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_rs }
            Reponses := array{"Serbien", "Griechenland", "Russland", "Polen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_me }
            Reponses := array{"Zypern", "Montenegro", "Russland", "Griechenland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mk }
            Reponses := array{"Nordmazedonien", "Slowenien", "Bosnien und Herzegowina", "Estland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_al }
            Reponses := array{"Tschechien", "Moldau", "Kroatien", "Albanien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gr }
            Reponses := array{"Griechenland", "Litauen", "Nordmazedonien", "Zypern"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bg }
            Reponses := array{"Zypern", "Albanien", "Bulgarien", "Kroatien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ro }
            Reponses := array{"Ukraine", "Russland", "Nordmazedonien", "Rumaenien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_md }
            Reponses := array{"Lettland", "Zypern", "Ungarn", "Moldau"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ua }
            Reponses := array{"Lettland", "Slowenien", "Ukraine", "Griechenland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_by }
            Reponses := array{"Belarus", "Slowenien", "Moldau", "Zypern"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ru }
            Reponses := array{"Nordmazedonien", "Lettland", "Russland", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ee }
            Reponses := array{"Estland", "Moldau", "Slowakei", "Ungarn"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lv }
            Reponses := array{"Slowakei", "Lettland", "Ungarn", "Polen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lt }
            Reponses := array{"Ukraine", "Litauen", "Lettland", "Moldau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cy }
            Reponses := array{"Polen", "Zypern", "Bulgarien", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tr }
            Reponses := array{"Saudi-Arabien", "Tuerkei", "Vereinigte Arabische Emirate", "Katar"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_il }
            Reponses := array{"Kuwait", "Irak", "Katar", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ps }
            Reponses := array{"Palaestina", "Armenien", "Aserbaidschan", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lb }
            Reponses := array{"Armenien", "Libanon", "Georgien", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sy }
            Reponses := array{"Iran", "Syrien", "Georgien", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_jo }
            Reponses := array{"Jemen", "Jordanien", "Iran", "Vereinigte Arabische Emirate"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_iq }
            Reponses := array{"Israel", "Bahrain", "Irak", "Georgien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ir }
            Reponses := array{"Katar", "Jemen", "Iran", "Vereinigte Arabische Emirate"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sa }
            Reponses := array{"Irak", "Saudi-Arabien", "Armenien", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ye }
            Reponses := array{"Kuwait", "Jemen", "Syrien", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_om }
            Reponses := array{"Palaestina", "Oman", "Syrien", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ae }
            Reponses := array{"Georgien", "Vereinigte Arabische Emirate", "Bahrain", "Saudi-Arabien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_qa }
            Reponses := array{"Katar", "Georgien", "Aserbaidschan", "Saudi-Arabien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bh }
            Reponses := array{"Irak", "Libanon", "Bahrain", "Aserbaidschan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kw }
            Reponses := array{"Palaestina", "Bahrain", "Israel", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ge }
            Reponses := array{"Bahrain", "Palaestina", "Syrien", "Georgien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_am }
            Reponses := array{"Armenien", "Palaestina", "Vereinigte Arabische Emirate", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_az }
            Reponses := array{"Irak", "Aserbaidschan", "Palaestina", "Tuerkei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kz }
            Reponses := array{"Kasachstan", "Mongolei", "Tadschikistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_uz }
            Reponses := array{"Mongolei", "Usbekistan", "Kasachstan", "Tadschikistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tm }
            Reponses := array{"Kirgisistan", "Turkmenistan", "Mongolei", "Usbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kg }
            Reponses := array{"Turkmenistan", "Mongolei", "Kasachstan", "Kirgisistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tj }
            Reponses := array{"Afghanistan", "Tadschikistan", "Mongolei", "Kirgisistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_af }
            Reponses := array{"Mongolei", "Afghanistan", "Kirgisistan", "Kasachstan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mn }
            Reponses := array{"Usbekistan", "Mongolei", "Turkmenistan", "Kasachstan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cn }
            Reponses := array{"Pakistan", "Bangladesch", "China", "Indien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_jp }
            Reponses := array{"Singapur", "Japan", "Kambodscha", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kr }
            Reponses := array{"Bangladesch", "Suedkorea", "Nordkorea", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kp }
            Reponses := array{"Myanmar", "Suedkorea", "Nordkorea", "China"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_in }
            Reponses := array{"Indien", "Osttimor", "Bhutan", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pk }
            Reponses := array{"Sri Lanka", "Nepal", "Kambodscha", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bd }
            Reponses := array{"Bangladesch", "Philippinen", "Malaysia", "Malediven"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lk }
            Reponses := array{"Laos", "Vietnam", "Suedkorea", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_np }
            Reponses := array{"Indonesien", "Philippinen", "Indien", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bt }
            Reponses := array{"Bhutan", "Sri Lanka", "Suedkorea", "Brunei"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mv }
            Reponses := array{"Laos", "Sri Lanka", "Vietnam", "Malediven"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mm }
            Reponses := array{"Brunei", "Bhutan", "Myanmar", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_th }
            Reponses := array{"Nordkorea", "Bangladesch", "Thailand", "China"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_la }
            Reponses := array{"Thailand", "Osttimor", "Laos", "Kambodscha"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kh }
            Reponses := array{"Kambodscha", "Myanmar", "Thailand", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_vn }
            Reponses := array{"Indonesien", "Nepal", "Indien", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_my }
            Reponses := array{"Vietnam", "Malaysia", "Sri Lanka", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sg }
            Reponses := array{"Sri Lanka", "Laos", "Suedkorea", "Singapur"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_id }
            Reponses := array{"Thailand", "China", "Indonesien", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bn }
            Reponses := array{"Suedkorea", "Indien", "Brunei", "Philippinen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ph }
            Reponses := array{"Thailand", "Nepal", "Philippinen", "Indonesien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tl }
            Reponses := array{"Singapur", "Bhutan", "Nepal", "Osttimor"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_au }
            Reponses := array{"Australien", "Samoa", "Tonga", "Neuseeland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_nz }
            Reponses := array{"Australien", "Palau", "Neuseeland", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pg }
            Reponses := array{"Tonga", "Australien", "Papua-Neuguinea", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_fj }
            Reponses := array{"Australien", "Fidschi", "Kiribati", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sb }
            Reponses := array{"Vanuatu", "Salomonen", "Mikronesien", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_vu }
            Reponses := array{"Salomonen", "Papua-Neuguinea", "Vanuatu", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ws }
            Reponses := array{"Tonga", "Kiribati", "Samoa", "Salomonen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_to }
            Reponses := array{"Neuseeland", "Marshallinseln", "Nauru", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tv }
            Reponses := array{"Mikronesien", "Samoa", "Tuvalu", "Marshallinseln"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ki }
            Reponses := array{"Tuvalu", "Fidschi", "Nauru", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_nr }
            Reponses := array{"Tonga", "Fidschi", "Australien", "Nauru"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pw }
            Reponses := array{"Tuvalu", "Neuseeland", "Palau", "Papua-Neuguinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_fm }
            Reponses := array{"Samoa", "Mikronesien", "Kiribati", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mh }
            Reponses := array{"Marshallinseln", "Neuseeland", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ma }
            Reponses := array{"Marokko", "Algerien", "Angola", "Sambia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_dz }
            Reponses := array{"Algerien", "Liberia", "Senegal", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tn }
            Reponses := array{"Kenia", "Kap Verde", "Tunesien", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ly }
            Reponses := array{"Botswana", "Togo", "Mali", "Libyen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_eg }
            Reponses := array{"Madagaskar", "Suedafrika", "Aegypten", "Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sd }
            Reponses := array{"Kenia", "Sudan", "Gambia", "Kap Verde"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ss }
            Reponses := array{"Kongo", "Suedsudan", "Guinea", "Tansania"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_et }
            Reponses := array{"Aethiopien", "Liberia", "Namibia", "Zentralafrikanische Republik"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_er }
            Reponses := array{"Malawi", "Uganda", "Eritrea", "Ruanda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_dj }
            Reponses := array{"Seychellen", "Sudan", "Ruanda", "Dschibuti"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_so }
            Reponses := array{"Sao Tome und Principe", "Mauritius", "Kongo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ke }
            Reponses := array{"Kamerun", "Kongo", "Kenia", "Zentralafrikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ug }
            Reponses := array{"Uganda", "Benin", "Marokko", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tz }
            Reponses := array{"Tansania", "Uganda", "Ruanda", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_rw }
            Reponses := array{"Liberia", "Ruanda", "Suedsudan", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bi }
            Reponses := array{"Uganda", "Tansania", "Burundi", "Simbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cd }
            Reponses := array{"Guinea", "Kenia", "Namibia", "DR Kongo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cg }
            Reponses := array{"Libyen", "Mosambik", "Madagaskar", "Kongo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ga }
            Reponses := array{"Seychellen", "Ruanda", "Kap Verde", "Gabun"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gq }
            Reponses := array{"Aequatorialguinea", "Uganda", "Somalia", "Seychellen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cm }
            Reponses := array{"Tschad", "Malawi", "Kamerun", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cf }
            Reponses := array{"Sambia", "Aethiopien", "Sierra Leone", "Zentralafrikanische Republik"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_td }
            Reponses := array{"Sao Tome und Principe", "Dschibuti", "Tschad", "Simbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ne }
            Reponses := array{"Niger", "Gambia", "Tansania", "Zentralafrikanische Republik"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ng }
            Reponses := array{"Tschad", "Eritrea", "Aequatorialguinea", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bj }
            Reponses := array{"Suedsudan", "Kongo", "Benin", "Mosambik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tg }
            Reponses := array{"Aegypten", "Simbabwe", "Togo", "Burundi"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gh }
            Reponses := array{"Kongo", "Benin", "Tansania", "Ghana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ci }
            Reponses := array{"Sao Tome und Principe", "Elfenbeinkueste", "Sudan", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lr }
            Reponses := array{"Burkina Faso", "Niger", "Sambia", "Liberia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sl }
            Reponses := array{"Tschad", "Libyen", "Sierra Leone", "Aethiopien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gn }
            Reponses := array{"Sierra Leone", "Marokko", "Guinea", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gw }
            Reponses := array{"Guinea", "Guinea-Bissau", "Mosambik", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sn }
            Reponses := array{"Senegal", "Sierra Leone", "Sambia", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gm }
            Reponses := array{"Sao Tome und Principe", "Dschibuti", "Uganda", "Gambia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ml }
            Reponses := array{"Suedafrika", "Mali", "Simbabwe", "Nigeria"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bf }
            Reponses := array{"Burkina Faso", "Suedsudan", "Libyen", "Kenia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mr }
            Reponses := array{"Sierra Leone", "Algerien", "Mauretanien", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cv }
            Reponses := array{"Namibia", "Sao Tome und Principe", "Kap Verde", "Suedsudan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_st }
            Reponses := array{"Sao Tome und Principe", "Zentralafrikanische Republik", "Sierra Leone", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ao }
            Reponses := array{"Guinea", "Lesotho", "Angola", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_zm }
            Reponses := array{"Algerien", "DR Kongo", "Liberia", "Sambia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_zw }
            Reponses := array{"Gabun", "Kenia", "Simbabwe", "Sierra Leone"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mw }
            Reponses := array{"Aethiopien", "Burkina Faso", "Malawi", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mz }
            Reponses := array{"Lesotho", "Mosambik", "Namibia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mg }
            Reponses := array{"Sudan", "Madagaskar", "Mauretanien", "Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_km }
            Reponses := array{"Angola", "Togo", "Algerien", "Komoren"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mu }
            Reponses := array{"Komoren", "Marokko", "Mauritius", "Aequatorialguinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sc }
            Reponses := array{"DR Kongo", "Seychellen", "Burundi", "Dschibuti"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_za }
            Reponses := array{"Mosambik", "Seychellen", "Suedafrika", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_na }
            Reponses := array{"Namibia", "Tschad", "Aegypten", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bw }
            Reponses := array{"Sudan", "Guinea-Bissau", "Mauretanien", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ls }
            Reponses := array{"Botswana", "Liberia", "Niger", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sz }
            Reponses := array{"Kongo", "Mosambik", "Senegal", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_us }
            Reponses := array{"Mauritius", "Kanada", "Mexiko", "Vereinigte Staaten"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ca }
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Sao Tome und Principe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_mx }
            Reponses := array{"Indonesien", "Vereinigte Staaten", "Kanada", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gt }
            Reponses := array{"Belize", "Dominikanische Republik", "Guatemala", "Trinidad und Tobago"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bz }
            Reponses := array{"Panama", "Bahamas", "Nicaragua", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_hn }
            Reponses := array{"Honduras", "Belize", "Panama", "Barbados"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sv }
            Reponses := array{"El Salvador", "Costa Rica", "Bahamas", "St. Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ni }
            Reponses := array{"St. Kitts und Nevis", "El Salvador", "St. Vincent", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cr }
            Reponses := array{"St. Lucia", "Nicaragua", "Haiti", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pa }
            Reponses := array{"Kuba", "Panama", "St. Kitts und Nevis", "Jamaika"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bs }
            Reponses := array{"Bahamas", "Grenada", "Antigua und Barbuda", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cu }
            Reponses := array{"Kuba", "Barbados", "Trinidad und Tobago", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_jm }
            Reponses := array{"Belize", "Dominikanische Republik", "Grenada", "Jamaika"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ht }
            Reponses := array{"Bahamas", "Haiti", "Dominikanische Republik", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_do }
            Reponses := array{"Dominikanische Republik", "Dominica", "St. Lucia", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_kn }
            Reponses := array{"St. Kitts und Nevis", "El Salvador", "Guatemala", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ag }
            Reponses := array{"El Salvador", "Antigua und Barbuda", "Bahamas", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_dm }
            Reponses := array{"Jamaika", "St. Kitts und Nevis", "Barbados", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_lc }
            Reponses := array{"Kuba", "St. Lucia", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_vc }
            Reponses := array{"Dominikanische Republik", "Panama", "Guatemala", "St. Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bb }
            Reponses := array{"Barbados", "Costa Rica", "Panama", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gd }
            Reponses := array{"Belize", "Grenada", "Nicaragua", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_tt }
            Reponses := array{"Grenada", "Haiti", "Jamaika", "Trinidad und Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_co }
            Reponses := array{"Bolivien", "Venezuela", "Ecuador", "Kolumbien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ve }
            Reponses := array{"Venezuela", "Ecuador", "Peru", "Kolumbien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_gy }
            Reponses := array{"Uruguay", "Guyana", "Chile", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_sr }
            Reponses := array{"Suriname", "Peru", "Brasilien", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ec }
            Reponses := array{"Bolivien", "Suriname", "Uruguay", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_pe }
            Reponses := array{"Venezuela", "Peru", "Bolivien", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_br }
            Reponses := array{"Brasilien", "Ecuador", "Paraguay", "Venezuela"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_bo }
            Reponses := array{"Chile", "Brasilien", "Bolivien", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_py }
            Reponses := array{"Chile", "Bolivien", "Paraguay", "Kolumbien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_uy }
            Reponses := array{"Venezuela", "Uruguay", "Bolivien", "Argentinien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_cl }
            Reponses := array{"Brasilien", "Chile", "Ecuador", "Bolivien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das? (verpixelte Karte)"
            Image := option{ carte_pixel.mpx_ar }
            Reponses := array{"Brasilien", "Argentinien", "Kolumbien", "Uruguay"}
            BonneReponse := 1

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
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_fr }
            Reponses := array{"Citta del Vaticano", "Italia", "Francia", "Belgio"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_de }
            Reponses := array{"Belgio", "Liechtenstein", "Italia", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_it }
            Reponses := array{"Danimarca", "Italia", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_es }
            Reponses := array{"Spagna", "Monaco", "Svezia", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pt }
            Reponses := array{"Germania", "Andorra", "Svizzera", "Portogallo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gb }
            Reponses := array{"Irlanda", "Regno Unito", "Liechtenstein", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ie }
            Reponses := array{"Austria", "Monaco", "Andorra", "Irlanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_be }
            Reponses := array{"Citta del Vaticano", "Francia", "San Marino", "Belgio"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_nl }
            Reponses := array{"Svizzera", "Paesi Bassi", "Portogallo", "Svezia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lu }
            Reponses := array{"Lussemburgo", "Regno Unito", "Irlanda", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ch }
            Reponses := array{"Liechtenstein", "Malta", "Svizzera", "Spagna"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_at }
            Reponses := array{"Andorra", "Liechtenstein", "Austria", "Lussemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mc }
            Reponses := array{"Regno Unito", "San Marino", "Liechtenstein", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ad }
            Reponses := array{"Paesi Bassi", "Andorra", "Norvegia", "Portogallo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_li }
            Reponses := array{"Francia", "Danimarca", "Islanda", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sm }
            Reponses := array{"Italia", "San Marino", "Svizzera", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_va }
            Reponses := array{"Lussemburgo", "Regno Unito", "Citta del Vaticano", "Spagna"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mt }
            Reponses := array{"Spagna", "Germania", "Liechtenstein", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_is }
            Reponses := array{"Svizzera", "Andorra", "Islanda", "Portogallo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_no }
            Reponses := array{"Austria", "Lussemburgo", "Malta", "Norvegia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_se }
            Reponses := array{"Austria", "Svizzera", "Svezia", "Germania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_dk }
            Reponses := array{"Portogallo", "Danimarca", "San Marino", "Spagna"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_fi }
            Reponses := array{"Liechtenstein", "Germania", "Finlandia", "Danimarca"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pl }
            Reponses := array{"Romania", "Polonia", "Lituania", "Cechia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cz }
            Reponses := array{"Cechia", "Romania", "Ungheria", "Bielorussia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sk }
            Reponses := array{"Estonia", "Cipro", "Montenegro", "Slovacchia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_hu }
            Reponses := array{"Ucraina", "Ungheria", "Lettonia", "Bielorussia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_si }
            Reponses := array{"Cechia", "Bielorussia", "Montenegro", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_hr }
            Reponses := array{"Ucraina", "Croazia", "Cipro", "Slovacchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ba }
            Reponses := array{"Serbia", "Grecia", "Albania", "Bosnia ed Erzegovina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_rs }
            Reponses := array{"Serbia", "Grecia", "Russia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_me }
            Reponses := array{"Cipro", "Montenegro", "Russia", "Grecia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mk }
            Reponses := array{"Macedonia del Nord", "Slovenia", "Bosnia ed Erzegovina", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_al }
            Reponses := array{"Cechia", "Moldavia", "Croazia", "Albania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gr }
            Reponses := array{"Grecia", "Lituania", "Macedonia del Nord", "Cipro"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bg }
            Reponses := array{"Cipro", "Albania", "Bulgaria", "Croazia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ro }
            Reponses := array{"Ucraina", "Russia", "Macedonia del Nord", "Romania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_md }
            Reponses := array{"Lettonia", "Cipro", "Ungheria", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ua }
            Reponses := array{"Lettonia", "Slovenia", "Ucraina", "Grecia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_by }
            Reponses := array{"Bielorussia", "Slovenia", "Moldavia", "Cipro"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ru }
            Reponses := array{"Macedonia del Nord", "Lettonia", "Russia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ee }
            Reponses := array{"Estonia", "Moldavia", "Slovacchia", "Ungheria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lv }
            Reponses := array{"Slovacchia", "Lettonia", "Ungheria", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lt }
            Reponses := array{"Ucraina", "Lituania", "Lettonia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cy }
            Reponses := array{"Polonia", "Cipro", "Bulgaria", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tr }
            Reponses := array{"Arabia Saudita", "Turchia", "Emirati Arabi Uniti", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_il }
            Reponses := array{"Kuwait", "Iraq", "Qatar", "Israele"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ps }
            Reponses := array{"Palestina", "Armenia", "Azerbaigian", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lb }
            Reponses := array{"Armenia", "Libano", "Georgia", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sy }
            Reponses := array{"Iran", "Siria", "Georgia", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_jo }
            Reponses := array{"Yemen", "Giordania", "Iran", "Emirati Arabi Uniti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_iq }
            Reponses := array{"Israele", "Bahrein", "Iraq", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ir }
            Reponses := array{"Qatar", "Yemen", "Iran", "Emirati Arabi Uniti"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sa }
            Reponses := array{"Iraq", "Arabia Saudita", "Armenia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ye }
            Reponses := array{"Kuwait", "Yemen", "Siria", "Iraq"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_om }
            Reponses := array{"Palestina", "Oman", "Siria", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ae }
            Reponses := array{"Georgia", "Emirati Arabi Uniti", "Bahrein", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_qa }
            Reponses := array{"Qatar", "Georgia", "Azerbaigian", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bh }
            Reponses := array{"Iraq", "Libano", "Bahrein", "Azerbaigian"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kw }
            Reponses := array{"Palestina", "Bahrein", "Israele", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ge }
            Reponses := array{"Bahrein", "Palestina", "Siria", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_am }
            Reponses := array{"Armenia", "Palestina", "Emirati Arabi Uniti", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_az }
            Reponses := array{"Iraq", "Azerbaigian", "Palestina", "Turchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kz }
            Reponses := array{"Kazakistan", "Mongolia", "Tagikistan", "Turkmenistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_uz }
            Reponses := array{"Mongolia", "Uzbekistan", "Kazakistan", "Tagikistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tm }
            Reponses := array{"Kirghizistan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kg }
            Reponses := array{"Turkmenistan", "Mongolia", "Kazakistan", "Kirghizistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tj }
            Reponses := array{"Afghanistan", "Tagikistan", "Mongolia", "Kirghizistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_af }
            Reponses := array{"Mongolia", "Afghanistan", "Kirghizistan", "Kazakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mn }
            Reponses := array{"Uzbekistan", "Mongolia", "Turkmenistan", "Kazakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cn }
            Reponses := array{"Pakistan", "Bangladesh", "Cina", "India"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_jp }
            Reponses := array{"Singapore", "Giappone", "Cambogia", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kr }
            Reponses := array{"Bangladesh", "Corea del Sud", "Corea del Nord", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kp }
            Reponses := array{"Birmania", "Corea del Sud", "Corea del Nord", "Cina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_in }
            Reponses := array{"India", "Timor Est", "Bhutan", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pk }
            Reponses := array{"Sri Lanka", "Nepal", "Cambogia", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bd }
            Reponses := array{"Bangladesh", "Filippine", "Malesia", "Maldive"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lk }
            Reponses := array{"Laos", "Vietnam", "Corea del Sud", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_np }
            Reponses := array{"Indonesia", "Filippine", "India", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bt }
            Reponses := array{"Bhutan", "Sri Lanka", "Corea del Sud", "Brunei"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mv }
            Reponses := array{"Laos", "Sri Lanka", "Vietnam", "Maldive"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mm }
            Reponses := array{"Brunei", "Bhutan", "Birmania", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_th }
            Reponses := array{"Corea del Nord", "Bangladesh", "Thailandia", "Cina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_la }
            Reponses := array{"Thailandia", "Timor Est", "Laos", "Cambogia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kh }
            Reponses := array{"Cambogia", "Birmania", "Thailandia", "Sri Lanka"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_vn }
            Reponses := array{"Indonesia", "Nepal", "India", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_my }
            Reponses := array{"Vietnam", "Malesia", "Sri Lanka", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sg }
            Reponses := array{"Sri Lanka", "Laos", "Corea del Sud", "Singapore"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_id }
            Reponses := array{"Thailandia", "Cina", "Indonesia", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bn }
            Reponses := array{"Corea del Sud", "India", "Brunei", "Filippine"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ph }
            Reponses := array{"Thailandia", "Nepal", "Filippine", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tl }
            Reponses := array{"Singapore", "Bhutan", "Nepal", "Timor Est"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_au }
            Reponses := array{"Australia", "Samoa", "Tonga", "Nuova Zelanda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_nz }
            Reponses := array{"Australia", "Palau", "Nuova Zelanda", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pg }
            Reponses := array{"Tonga", "Australia", "Papua Nuova Guinea", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_fj }
            Reponses := array{"Australia", "Figi", "Kiribati", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sb }
            Reponses := array{"Vanuatu", "Isole Salomone", "Micronesia", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_vu }
            Reponses := array{"Isole Salomone", "Papua Nuova Guinea", "Vanuatu", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ws }
            Reponses := array{"Tonga", "Kiribati", "Samoa", "Isole Salomone"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_to }
            Reponses := array{"Nuova Zelanda", "Isole Marshall", "Nauru", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tv }
            Reponses := array{"Micronesia", "Samoa", "Tuvalu", "Isole Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ki }
            Reponses := array{"Tuvalu", "Figi", "Nauru", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_nr }
            Reponses := array{"Tonga", "Figi", "Australia", "Nauru"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pw }
            Reponses := array{"Tuvalu", "Nuova Zelanda", "Palau", "Papua Nuova Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_fm }
            Reponses := array{"Samoa", "Micronesia", "Kiribati", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mh }
            Reponses := array{"Isole Marshall", "Nuova Zelanda", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ma }
            Reponses := array{"Marocco", "Algeria", "Angola", "Zambia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_dz }
            Reponses := array{"Algeria", "Liberia", "Senegal", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tn }
            Reponses := array{"Kenya", "Capo Verde", "Tunisia", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ly }
            Reponses := array{"Botswana", "Togo", "Mali", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_eg }
            Reponses := array{"Madagascar", "Sudafrica", "Egitto", "Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sd }
            Reponses := array{"Kenya", "Sudan", "Gambia", "Capo Verde"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ss }
            Reponses := array{"Congo", "Sudan del Sud", "Guinea", "Tanzania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_et }
            Reponses := array{"Etiopia", "Liberia", "Namibia", "Repubblica Centrafricana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_er }
            Reponses := array{"Malawi", "Uganda", "Eritrea", "Ruanda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_dj }
            Reponses := array{"Seychelles", "Sudan", "Ruanda", "Gibuti"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_so }
            Reponses := array{"Sao Tome e Principe", "Mauritius", "Congo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ke }
            Reponses := array{"Camerun", "Congo", "Kenya", "Repubblica Centrafricana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ug }
            Reponses := array{"Uganda", "Benin", "Marocco", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tz }
            Reponses := array{"Tanzania", "Uganda", "Ruanda", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_rw }
            Reponses := array{"Liberia", "Ruanda", "Sudan del Sud", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bi }
            Reponses := array{"Uganda", "Tanzania", "Burundi", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cd }
            Reponses := array{"Guinea", "Kenya", "Namibia", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cg }
            Reponses := array{"Libia", "Mozambico", "Madagascar", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ga }
            Reponses := array{"Seychelles", "Ruanda", "Capo Verde", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gq }
            Reponses := array{"Guinea Equatoriale", "Uganda", "Somalia", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cm }
            Reponses := array{"Ciad", "Malawi", "Camerun", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cf }
            Reponses := array{"Zambia", "Etiopia", "Sierra Leone", "Repubblica Centrafricana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_td }
            Reponses := array{"Sao Tome e Principe", "Gibuti", "Ciad", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ne }
            Reponses := array{"Niger", "Gambia", "Tanzania", "Repubblica Centrafricana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ng }
            Reponses := array{"Ciad", "Eritrea", "Guinea Equatoriale", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bj }
            Reponses := array{"Sudan del Sud", "Congo", "Benin", "Mozambico"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tg }
            Reponses := array{"Egitto", "Zimbabwe", "Togo", "Burundi"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gh }
            Reponses := array{"Congo", "Benin", "Tanzania", "Ghana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ci }
            Reponses := array{"Sao Tome e Principe", "Costa d'Avorio", "Sudan", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lr }
            Reponses := array{"Burkina Faso", "Niger", "Zambia", "Liberia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sl }
            Reponses := array{"Ciad", "Libia", "Sierra Leone", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gn }
            Reponses := array{"Sierra Leone", "Marocco", "Guinea", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gw }
            Reponses := array{"Guinea", "Guinea-Bissau", "Mozambico", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sn }
            Reponses := array{"Senegal", "Sierra Leone", "Zambia", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gm }
            Reponses := array{"Sao Tome e Principe", "Gibuti", "Uganda", "Gambia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ml }
            Reponses := array{"Sudafrica", "Mali", "Zimbabwe", "Nigeria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bf }
            Reponses := array{"Burkina Faso", "Sudan del Sud", "Libia", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mr }
            Reponses := array{"Sierra Leone", "Algeria", "Mauritania", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cv }
            Reponses := array{"Namibia", "Sao Tome e Principe", "Capo Verde", "Sudan del Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_st }
            Reponses := array{"Sao Tome e Principe", "Repubblica Centrafricana", "Sierra Leone", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ao }
            Reponses := array{"Guinea", "Lesotho", "Angola", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_zm }
            Reponses := array{"Algeria", "RD Congo", "Liberia", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_zw }
            Reponses := array{"Gabon", "Kenya", "Zimbabwe", "Sierra Leone"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mw }
            Reponses := array{"Etiopia", "Burkina Faso", "Malawi", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mz }
            Reponses := array{"Lesotho", "Mozambico", "Namibia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mg }
            Reponses := array{"Sudan", "Madagascar", "Mauritania", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_km }
            Reponses := array{"Angola", "Togo", "Algeria", "Comore"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mu }
            Reponses := array{"Comore", "Marocco", "Mauritius", "Guinea Equatoriale"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sc }
            Reponses := array{"RD Congo", "Seychelles", "Burundi", "Gibuti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_za }
            Reponses := array{"Mozambico", "Seychelles", "Sudafrica", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_na }
            Reponses := array{"Namibia", "Ciad", "Egitto", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bw }
            Reponses := array{"Sudan", "Guinea-Bissau", "Mauritania", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ls }
            Reponses := array{"Botswana", "Liberia", "Niger", "Lesotho"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sz }
            Reponses := array{"Congo", "Mozambico", "Senegal", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_us }
            Reponses := array{"Mauritius", "Canada", "Messico", "Stati Uniti"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ca }
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Sao Tome e Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_mx }
            Reponses := array{"Indonesia", "Stati Uniti", "Canada", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gt }
            Reponses := array{"Belize", "Repubblica Dominicana", "Guatemala", "Trinidad e Tobago"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bz }
            Reponses := array{"Panama", "Bahamas", "Nicaragua", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_hn }
            Reponses := array{"Honduras", "Belize", "Panama", "Barbados"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sv }
            Reponses := array{"El Salvador", "Costa Rica", "Bahamas", "Santa Lucia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ni }
            Reponses := array{"Saint Kitts e Nevis", "El Salvador", "Saint Vincent", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cr }
            Reponses := array{"Santa Lucia", "Nicaragua", "Haiti", "Costa Rica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pa }
            Reponses := array{"Cuba", "Panama", "Saint Kitts e Nevis", "Giamaica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bs }
            Reponses := array{"Bahamas", "Grenada", "Antigua e Barbuda", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cu }
            Reponses := array{"Cuba", "Barbados", "Trinidad e Tobago", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_jm }
            Reponses := array{"Belize", "Repubblica Dominicana", "Grenada", "Giamaica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ht }
            Reponses := array{"Bahamas", "Haiti", "Repubblica Dominicana", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_do }
            Reponses := array{"Repubblica Dominicana", "Dominica", "Santa Lucia", "El Salvador"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_kn }
            Reponses := array{"Saint Kitts e Nevis", "El Salvador", "Guatemala", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ag }
            Reponses := array{"El Salvador", "Antigua e Barbuda", "Bahamas", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_dm }
            Reponses := array{"Giamaica", "Saint Kitts e Nevis", "Barbados", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_lc }
            Reponses := array{"Cuba", "Santa Lucia", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_vc }
            Reponses := array{"Repubblica Dominicana", "Panama", "Guatemala", "Saint Vincent"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bb }
            Reponses := array{"Barbados", "Costa Rica", "Panama", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gd }
            Reponses := array{"Belize", "Grenada", "Nicaragua", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_tt }
            Reponses := array{"Grenada", "Haiti", "Giamaica", "Trinidad e Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_co }
            Reponses := array{"Bolivia", "Venezuela", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ve }
            Reponses := array{"Venezuela", "Ecuador", "Peru", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_gy }
            Reponses := array{"Uruguay", "Guyana", "Cile", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_sr }
            Reponses := array{"Suriname", "Peru", "Brasile", "Cile"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ec }
            Reponses := array{"Bolivia", "Suriname", "Uruguay", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_pe }
            Reponses := array{"Venezuela", "Peru", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_br }
            Reponses := array{"Brasile", "Ecuador", "Paraguay", "Venezuela"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_bo }
            Reponses := array{"Cile", "Brasile", "Bolivia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_py }
            Reponses := array{"Cile", "Bolivia", "Paraguay", "Colombia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_uy }
            Reponses := array{"Venezuela", "Uruguay", "Bolivia", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_cl }
            Reponses := array{"Brasile", "Cile", "Ecuador", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e questo? (mappa pixelata)"
            Image := option{ carte_pixel.mpx_ar }
            Reponses := array{"Brasile", "Argentina", "Colombia", "Uruguay"}
            BonneReponse := 1
