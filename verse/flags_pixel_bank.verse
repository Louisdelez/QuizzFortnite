using { /Verse.org/Assets }

# flags_pixel_bank.verse — Quizz DRAPEAUX PIXELISES
# GENERE par tools/build_flags_pixel.py.

FlagsPixelDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 1, 2, 1, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 0, 1, 2, 1, 1, 0}


MakeFlagsPixelQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_fr }
            Reponses := array{"Norvege", "Malte", "Espagne", "France"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_de }
            Reponses := array{"Suede", "Portugal", "Italie", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_it }
            Reponses := array{"Vatican", "Italie", "Danemark", "Espagne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_es }
            Reponses := array{"Autriche", "France", "Norvege", "Espagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pt }
            Reponses := array{"Malte", "Liechtenstein", "Pays-Bas", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gb }
            Reponses := array{"Danemark", "Autriche", "Vatican", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ie }
            Reponses := array{"Andorre", "Pays-Bas", "Irlande", "Norvege"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_be }
            Reponses := array{"Belgique", "Danemark", "Royaume-Uni", "Andorre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_nl }
            Reponses := array{"Belgique", "Pays-Bas", "Italie", "Royaume-Uni"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lu }
            Reponses := array{"Luxembourg", "Espagne", "Norvege", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ch }
            Reponses := array{"Belgique", "Suisse", "Espagne", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_at }
            Reponses := array{"Monaco", "Malte", "Autriche", "Danemark"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mc }
            Reponses := array{"Monaco", "Saint-Marin", "Norvege", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ad }
            Reponses := array{"Malte", "Royaume-Uni", "Norvege", "Andorre"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_li }
            Reponses := array{"France", "Liechtenstein", "Portugal", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sm }
            Reponses := array{"Saint-Marin", "Vatican", "Irlande", "Danemark"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_va }
            Reponses := array{"Luxembourg", "Vatican", "Autriche", "Suisse"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mt }
            Reponses := array{"Autriche", "France", "Suede", "Malte"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_is }
            Reponses := array{"Andorre", "Danemark", "Islande", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_no }
            Reponses := array{"Luxembourg", "Saint-Marin", "Suede", "Norvege"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_se }
            Reponses := array{"Suede", "France", "Liechtenstein", "Malte"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_dk }
            Reponses := array{"Espagne", "Danemark", "Vatican", "Italie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_fi }
            Reponses := array{"Finlande", "Allemagne", "Monaco", "Espagne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pl }
            Reponses := array{"Albanie", "Pologne", "Estonie", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cz }
            Reponses := array{"Bosnie-Herzegovine", "Tchequie", "Russie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sk }
            Reponses := array{"Tchequie", "Slovaquie", "Serbie", "Bosnie-Herzegovine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_hu }
            Reponses := array{"Lettonie", "Bosnie-Herzegovine", "Hongrie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_si }
            Reponses := array{"Albanie", "Hongrie", "Slovenie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_hr }
            Reponses := array{"Hongrie", "Roumanie", "Croatie", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ba }
            Reponses := array{"Bosnie-Herzegovine", "Russie", "Lituanie", "Macedoine du Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_rs }
            Reponses := array{"Serbie", "Hongrie", "Estonie", "Macedoine du Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_me }
            Reponses := array{"Estonie", "Pologne", "Moldavie", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mk }
            Reponses := array{"Macedoine du Nord", "Slovenie", "Lituanie", "Ukraine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_al }
            Reponses := array{"Estonie", "Tchequie", "Albanie", "Grece"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gr }
            Reponses := array{"Grece", "Hongrie", "Lituanie", "Moldavie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bg }
            Reponses := array{"Ukraine", "Bosnie-Herzegovine", "Serbie", "Bulgarie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ro }
            Reponses := array{"Chypre", "Lituanie", "Roumanie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_md }
            Reponses := array{"Bosnie-Herzegovine", "Bulgarie", "Slovaquie", "Moldavie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ua }
            Reponses := array{"Macedoine du Nord", "Hongrie", "Estonie", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_by }
            Reponses := array{"Bosnie-Herzegovine", "Moldavie", "Bielorussie", "Serbie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ru }
            Reponses := array{"Roumanie", "Russie", "Hongrie", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ee }
            Reponses := array{"Roumanie", "Montenegro", "Lituanie", "Estonie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lv }
            Reponses := array{"Lettonie", "Grece", "Bielorussie", "Hongrie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lt }
            Reponses := array{"Lituanie", "Macedoine du Nord", "Hongrie", "Roumanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cy }
            Reponses := array{"Chypre", "Croatie", "Pologne", "Bulgarie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tr }
            Reponses := array{"Armenie", "Qatar", "Turquie", "Jordanie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_il }
            Reponses := array{"Emirats arabes unis", "Armenie", "Azerbaidjan", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ps }
            Reponses := array{"Georgie", "Palestine", "Turquie", "Armenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lb }
            Reponses := array{"Oman", "Liban", "Turquie", "Emirats arabes unis"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sy }
            Reponses := array{"Azerbaidjan", "Qatar", "Syrie", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_jo }
            Reponses := array{"Jordanie", "Azerbaidjan", "Palestine", "Bahrein"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_iq }
            Reponses := array{"Jordanie", "Irak", "Yemen", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ir }
            Reponses := array{"Israel", "Georgie", "Iran", "Palestine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sa }
            Reponses := array{"Arabie saoudite", "Yemen", "Israel", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ye }
            Reponses := array{"Irak", "Turquie", "Oman", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_om }
            Reponses := array{"Iran", "Emirats arabes unis", "Oman", "Koweit"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ae }
            Reponses := array{"Emirats arabes unis", "Israel", "Irak", "Arabie saoudite"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_qa }
            Reponses := array{"Georgie", "Koweit", "Qatar", "Liban"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bh }
            Reponses := array{"Yemen", "Bahrein", "Arabie saoudite", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kw }
            Reponses := array{"Bahrein", "Koweit", "Armenie", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ge }
            Reponses := array{"Qatar", "Georgie", "Koweit", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_am }
            Reponses := array{"Oman", "Arabie saoudite", "Turquie", "Armenie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_az }
            Reponses := array{"Emirats arabes unis", "Bahrein", "Syrie", "Azerbaidjan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kz }
            Reponses := array{"Tadjikistan", "Kazakhstan", "Mongolie", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_uz }
            Reponses := array{"Afghanistan", "Turkmenistan", "Mongolie", "Ouzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tm }
            Reponses := array{"Mongolie", "Kazakhstan", "Kirghizistan", "Turkmenistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kg }
            Reponses := array{"Tadjikistan", "Kirghizistan", "Kazakhstan", "Turkmenistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tj }
            Reponses := array{"Mongolie", "Tadjikistan", "Kirghizistan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_af }
            Reponses := array{"Tadjikistan", "Turkmenistan", "Afghanistan", "Mongolie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mn }
            Reponses := array{"Kirghizistan", "Mongolie", "Turkmenistan", "Ouzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cn }
            Reponses := array{"Thailande", "Vietnam", "Chine", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_jp }
            Reponses := array{"Indonesie", "Philippines", "Japon", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kr }
            Reponses := array{"Thailande", "Laos", "Coree du Sud", "Maldives"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kp }
            Reponses := array{"Inde", "Coree du Nord", "Birmanie", "Coree du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_in }
            Reponses := array{"Indonesie", "Inde", "Bhoutan", "Philippines"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pk }
            Reponses := array{"Philippines", "Pakistan", "Cambodge", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bd }
            Reponses := array{"Bangladesh", "Coree du Sud", "Thailande", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lk }
            Reponses := array{"Japon", "Cambodge", "Sri Lanka", "Thailande"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_np }
            Reponses := array{"Birmanie", "Singapour", "Nepal", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bt }
            Reponses := array{"Maldives", "Bhoutan", "Birmanie", "Timor oriental"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mv }
            Reponses := array{"Sri Lanka", "Nepal", "Laos", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mm }
            Reponses := array{"Laos", "Thailande", "Birmanie", "Indonesie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_th }
            Reponses := array{"Thailande", "Sri Lanka", "Brunei", "Philippines"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_la }
            Reponses := array{"Laos", "Sri Lanka", "Indonesie", "Thailande"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kh }
            Reponses := array{"Cambodge", "Maldives", "Thailande", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_vn }
            Reponses := array{"Maldives", "Sri Lanka", "Timor oriental", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_my }
            Reponses := array{"Cambodge", "Malaisie", "Chine", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sg }
            Reponses := array{"Singapour", "Indonesie", "Coree du Sud", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_id }
            Reponses := array{"Sri Lanka", "Chine", "Inde", "Indonesie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bn }
            Reponses := array{"Coree du Sud", "Bangladesh", "Sri Lanka", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ph }
            Reponses := array{"Coree du Nord", "Indonesie", "Philippines", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tl }
            Reponses := array{"Timor oriental", "Sri Lanka", "Singapour", "Pakistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_au }
            Reponses := array{"Micronesie", "Nouvelle-Zelande", "Australie", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_nz }
            Reponses := array{"Micronesie", "Nouvelle-Zelande", "Iles Marshall", "Iles Salomon"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pg }
            Reponses := array{"Australie", "Tuvalu", "Samoa", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_fj }
            Reponses := array{"Fidji", "Iles Marshall", "Palaos", "Nouvelle-Zelande"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sb }
            Reponses := array{"Iles Salomon", "Palaos", "Samoa", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_vu }
            Reponses := array{"Vanuatu", "Samoa", "Micronesie", "Iles Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ws }
            Reponses := array{"Nouvelle-Zelande", "Samoa", "Papouasie-Nouvelle-Guinee", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_to }
            Reponses := array{"Fidji", "Tonga", "Iles Salomon", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tv }
            Reponses := array{"Samoa", "Nouvelle-Zelande", "Vanuatu", "Tuvalu"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ki }
            Reponses := array{"Tonga", "Kiribati", "Tuvalu", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_nr }
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Iles Salomon", "Nauru", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pw }
            Reponses := array{"Palaos", "Micronesie", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_fm }
            Reponses := array{"Australie", "Micronesie", "Nauru", "Nouvelle-Zelande"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mh }
            Reponses := array{"Palaos", "Papouasie-Nouvelle-Guinee", "Iles Marshall", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ma }
            Reponses := array{"Togo", "Centrafrique", "Maroc", "Guinee-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_dz }
            Reponses := array{"Rwanda", "Sierra Leone", "Algerie", "Libye"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tn }
            Reponses := array{"Maurice", "Egypte", "Cap-Vert", "Tunisie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ly }
            Reponses := array{"RD Congo", "Sierra Leone", "Afrique du Sud", "Libye"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_eg }
            Reponses := array{"Egypte", "Congo", "Madagascar", "Namibie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sd }
            Reponses := array{"Togo", "Soudan", "Mali", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ss }
            Reponses := array{"Soudan du Sud", "Kenya", "Malawi", "Senegal"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_et }
            Reponses := array{"Rwanda", "Lesotho", "Gambie", "Ethiopie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_er }
            Reponses := array{"Egypte", "Erythree", "Liberia", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_dj }
            Reponses := array{"Seychelles", "Malawi", "Ghana", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_so }
            Reponses := array{"Gambie", "Algerie", "Togo", "Somalie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ke }
            Reponses := array{"Kenya", "Algerie", "Somalie", "Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ug }
            Reponses := array{"Centrafrique", "Ouganda", "Guinee", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tz }
            Reponses := array{"Mozambique", "Sierra Leone", "Tanzanie", "Tunisie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_rw }
            Reponses := array{"Rwanda", "Zimbabwe", "Maroc", "Liberia"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bi }
            Reponses := array{"Madagascar", "Eswatini", "Guinee", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cd }
            Reponses := array{"Tunisie", "Gambie", "RD Congo", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cg }
            Reponses := array{"Libye", "Mozambique", "Congo", "Soudan"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ga }
            Reponses := array{"Gabon", "Erythree", "Somalie", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gq }
            Reponses := array{"Guinee equatoriale", "Rwanda", "Algerie", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cm }
            Reponses := array{"Senegal", "Tchad", "Zimbabwe", "Cameroun"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cf }
            Reponses := array{"Tchad", "Togo", "Angola", "Centrafrique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_td }
            Reponses := array{"Cap-Vert", "Tchad", "Djibouti", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ne }
            Reponses := array{"Gambie", "Niger", "Libye", "Cameroun"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ng }
            Reponses := array{"Zambie", "Nigeria", "Guinee", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bj }
            Reponses := array{"Burundi", "Benin", "Erythree", "Namibie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tg }
            Reponses := array{"Madagascar", "Liberia", "Togo", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gh }
            Reponses := array{"Ghana", "Centrafrique", "Madagascar", "Sao Tome-et-Principe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ci }
            Reponses := array{"Comores", "Cote d'Ivoire", "Lesotho", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lr }
            Reponses := array{"Nigeria", "Mozambique", "Liberia", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sl }
            Reponses := array{"Tanzanie", "Gabon", "Sierra Leone", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gn }
            Reponses := array{"Namibie", "Guinee", "Nigeria", "Burundi"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gw }
            Reponses := array{"Tanzanie", "Mozambique", "Burundi", "Guinee-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sn }
            Reponses := array{"Seychelles", "Mozambique", "Senegal", "Mauritanie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gm }
            Reponses := array{"Gambie", "Rwanda", "Mauritanie", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ml }
            Reponses := array{"Namibie", "Mali", "Eswatini", "Ethiopie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bf }
            Reponses := array{"Burkina Faso", "Erythree", "RD Congo", "Maurice"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mr }
            Reponses := array{"Sao Tome-et-Principe", "Maroc", "Mauritanie", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cv }
            Reponses := array{"Gabon", "Cap-Vert", "Somalie", "Rwanda"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_st }
            Reponses := array{"Sao Tome-et-Principe", "Sierra Leone", "Togo", "Erythree"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ao }
            Reponses := array{"Niger", "Angola", "Ghana", "Sao Tome-et-Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_zm }
            Reponses := array{"Zambie", "Zimbabwe", "Cote d'Ivoire", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_zw }
            Reponses := array{"Guinee", "Kenya", "Zimbabwe", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mw }
            Reponses := array{"Ethiopie", "Benin", "Malawi", "Ghana"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mz }
            Reponses := array{"Kenya", "Soudan du Sud", "Algerie", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mg }
            Reponses := array{"Madagascar", "Seychelles", "Ouganda", "Afrique du Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_km }
            Reponses := array{"Comores", "Malawi", "Gabon", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mu }
            Reponses := array{"RD Congo", "Lesotho", "Maurice", "Cote d'Ivoire"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sc }
            Reponses := array{"Tchad", "Soudan du Sud", "Seychelles", "Algerie"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_za }
            Reponses := array{"Afrique du Sud", "Rwanda", "Ethiopie", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_na }
            Reponses := array{"Maroc", "Namibie", "Botswana", "Tchad"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bw }
            Reponses := array{"Seychelles", "Tanzanie", "Botswana", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ls }
            Reponses := array{"Seychelles", "Lesotho", "Kenya", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sz }
            Reponses := array{"Guinee equatoriale", "Eswatini", "Soudan", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_us }
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ca }
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Syrie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_mx }
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gt }
            Reponses := array{"Salvador", "Nicaragua", "Haiti", "Guatemala"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bz }
            Reponses := array{"Salvador", "Bahamas", "Trinite-et-Tobago", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_hn }
            Reponses := array{"Bahamas", "Panama", "Honduras", "Saint-Kitts-et-Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sv }
            Reponses := array{"Antigua-et-Barbuda", "Salvador", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ni }
            Reponses := array{"Republique dominicaine", "Panama", "Nicaragua", "Saint-Kitts-et-Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cr }
            Reponses := array{"Bahamas", "Costa Rica", "Saint-Kitts-et-Nevis", "Dominique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pa }
            Reponses := array{"Panama", "Honduras", "Haiti", "Republique dominicaine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bs }
            Reponses := array{"Grenade", "Bahamas", "Nicaragua", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cu }
            Reponses := array{"Salvador", "Bahamas", "Antigua-et-Barbuda", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_jm }
            Reponses := array{"Jamaique", "Belize", "Republique dominicaine", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ht }
            Reponses := array{"Saint-Kitts-et-Nevis", "Haiti", "Salvador", "Panama"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_do }
            Reponses := array{"Guatemala", "Republique dominicaine", "Antigua-et-Barbuda", "Grenade"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_kn }
            Reponses := array{"Saint-Kitts-et-Nevis", "Bahamas", "Panama", "Grenade"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ag }
            Reponses := array{"Antigua-et-Barbuda", "Saint-Vincent", "Guatemala", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_dm }
            Reponses := array{"Dominique", "Bahamas", "Costa Rica", "Saint-Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_lc }
            Reponses := array{"Sainte-Lucie", "Republique dominicaine", "Trinite-et-Tobago", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_vc }
            Reponses := array{"Trinite-et-Tobago", "Saint-Vincent", "Guatemala", "Jamaique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bb }
            Reponses := array{"Belize", "Barbade", "Panama", "Trinite-et-Tobago"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gd }
            Reponses := array{"Grenade", "Dominique", "Trinite-et-Tobago", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_tt }
            Reponses := array{"Cuba", "Saint-Kitts-et-Nevis", "Trinite-et-Tobago", "Republique dominicaine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_co }
            Reponses := array{"Equateur", "Colombie", "Suriname", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ve }
            Reponses := array{"Suriname", "Chili", "Guyana", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_gy }
            Reponses := array{"Guyana", "Uruguay", "Bolivie", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_sr }
            Reponses := array{"Colombie", "Chili", "Suriname", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ec }
            Reponses := array{"Argentine", "Equateur", "Bolivie", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_pe }
            Reponses := array{"Bolivie", "Perou", "Equateur", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_br }
            Reponses := array{"Bresil", "Guyana", "Venezuela", "Chili"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_bo }
            Reponses := array{"Bresil", "Colombie", "Bolivie", "Chili"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_py }
            Reponses := array{"Argentine", "Bolivie", "Paraguay", "Equateur"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_uy }
            Reponses := array{"Chili", "Paraguay", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_cl }
            Reponses := array{"Uruguay", "Equateur", "Suriname", "Chili"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce drapeau (pixelise) ?"
            Image := option{ flags_pixel.fpx_ar }
            Reponses := array{"Paraguay", "Colombie", "Argentine", "Equateur"}
            BonneReponse := 2

MakeFlagsPixelQuestions() : []question =
    MakeFlagsPixelQuestionsFR()

MakeFlagsPixelQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_fr }
            Reponses := array{"Norway", "Malta", "Spain", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_de }
            Reponses := array{"Sweden", "Portugal", "Italy", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_it }
            Reponses := array{"Vatican City", "Italy", "Denmark", "Spain"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_es }
            Reponses := array{"Austria", "France", "Norway", "Spain"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pt }
            Reponses := array{"Malta", "Liechtenstein", "Netherlands", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gb }
            Reponses := array{"Denmark", "Austria", "Vatican City", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ie }
            Reponses := array{"Andorra", "Netherlands", "Ireland", "Norway"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_be }
            Reponses := array{"Belgium", "Denmark", "United Kingdom", "Andorra"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_nl }
            Reponses := array{"Belgium", "Netherlands", "Italy", "United Kingdom"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lu }
            Reponses := array{"Luxembourg", "Spain", "Norway", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ch }
            Reponses := array{"Belgium", "Switzerland", "Spain", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_at }
            Reponses := array{"Monaco", "Malta", "Austria", "Denmark"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mc }
            Reponses := array{"Monaco", "San Marino", "Norway", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ad }
            Reponses := array{"Malta", "United Kingdom", "Norway", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_li }
            Reponses := array{"France", "Liechtenstein", "Portugal", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sm }
            Reponses := array{"San Marino", "Vatican City", "Ireland", "Denmark"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_va }
            Reponses := array{"Luxembourg", "Vatican City", "Austria", "Switzerland"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mt }
            Reponses := array{"Austria", "France", "Sweden", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_is }
            Reponses := array{"Andorra", "Denmark", "Iceland", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_no }
            Reponses := array{"Luxembourg", "San Marino", "Sweden", "Norway"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_se }
            Reponses := array{"Sweden", "France", "Liechtenstein", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_dk }
            Reponses := array{"Spain", "Denmark", "Vatican City", "Italy"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_fi }
            Reponses := array{"Finland", "Germany", "Monaco", "Spain"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pl }
            Reponses := array{"Albania", "Poland", "Estonia", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cz }
            Reponses := array{"Bosnia and Herzegovina", "Czechia", "Russia", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sk }
            Reponses := array{"Czechia", "Slovakia", "Serbia", "Bosnia and Herzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_hu }
            Reponses := array{"Latvia", "Bosnia and Herzegovina", "Hungary", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_si }
            Reponses := array{"Albania", "Hungary", "Slovenia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_hr }
            Reponses := array{"Hungary", "Romania", "Croatia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ba }
            Reponses := array{"Bosnia and Herzegovina", "Russia", "Lithuania", "North Macedonia"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_rs }
            Reponses := array{"Serbia", "Hungary", "Estonia", "North Macedonia"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_me }
            Reponses := array{"Estonia", "Poland", "Moldova", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mk }
            Reponses := array{"North Macedonia", "Slovenia", "Lithuania", "Ukraine"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_al }
            Reponses := array{"Estonia", "Czechia", "Albania", "Greece"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gr }
            Reponses := array{"Greece", "Hungary", "Lithuania", "Moldova"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bg }
            Reponses := array{"Ukraine", "Bosnia and Herzegovina", "Serbia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ro }
            Reponses := array{"Cyprus", "Lithuania", "Romania", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_md }
            Reponses := array{"Bosnia and Herzegovina", "Bulgaria", "Slovakia", "Moldova"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ua }
            Reponses := array{"North Macedonia", "Hungary", "Estonia", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_by }
            Reponses := array{"Bosnia and Herzegovina", "Moldova", "Belarus", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ru }
            Reponses := array{"Romania", "Russia", "Hungary", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ee }
            Reponses := array{"Romania", "Montenegro", "Lithuania", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lv }
            Reponses := array{"Latvia", "Greece", "Belarus", "Hungary"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lt }
            Reponses := array{"Lithuania", "North Macedonia", "Hungary", "Romania"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cy }
            Reponses := array{"Cyprus", "Croatia", "Poland", "Bulgaria"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tr }
            Reponses := array{"Armenia", "Qatar", "Turkey", "Jordan"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_il }
            Reponses := array{"United Arab Emirates", "Armenia", "Azerbaijan", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ps }
            Reponses := array{"Georgia", "Palestine", "Turkey", "Armenia"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lb }
            Reponses := array{"Oman", "Lebanon", "Turkey", "United Arab Emirates"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sy }
            Reponses := array{"Azerbaijan", "Qatar", "Syria", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_jo }
            Reponses := array{"Jordan", "Azerbaijan", "Palestine", "Bahrain"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_iq }
            Reponses := array{"Jordan", "Iraq", "Yemen", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ir }
            Reponses := array{"Israel", "Georgia", "Iran", "Palestine"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sa }
            Reponses := array{"Saudi Arabia", "Yemen", "Israel", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ye }
            Reponses := array{"Iraq", "Turkey", "Oman", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_om }
            Reponses := array{"Iran", "United Arab Emirates", "Oman", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ae }
            Reponses := array{"United Arab Emirates", "Israel", "Iraq", "Saudi Arabia"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_qa }
            Reponses := array{"Georgia", "Kuwait", "Qatar", "Lebanon"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bh }
            Reponses := array{"Yemen", "Bahrain", "Saudi Arabia", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kw }
            Reponses := array{"Bahrain", "Kuwait", "Armenia", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ge }
            Reponses := array{"Qatar", "Georgia", "Kuwait", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_am }
            Reponses := array{"Oman", "Saudi Arabia", "Turkey", "Armenia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_az }
            Reponses := array{"United Arab Emirates", "Bahrain", "Syria", "Azerbaijan"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kz }
            Reponses := array{"Tajikistan", "Kazakhstan", "Mongolia", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_uz }
            Reponses := array{"Afghanistan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tm }
            Reponses := array{"Mongolia", "Kazakhstan", "Kyrgyzstan", "Turkmenistan"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kg }
            Reponses := array{"Tajikistan", "Kyrgyzstan", "Kazakhstan", "Turkmenistan"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tj }
            Reponses := array{"Mongolia", "Tajikistan", "Kyrgyzstan", "Kazakhstan"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_af }
            Reponses := array{"Tajikistan", "Turkmenistan", "Afghanistan", "Mongolia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mn }
            Reponses := array{"Kyrgyzstan", "Mongolia", "Turkmenistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cn }
            Reponses := array{"Thailand", "Vietnam", "China", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_jp }
            Reponses := array{"Indonesia", "Philippines", "Japan", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kr }
            Reponses := array{"Thailand", "Laos", "South Korea", "Maldives"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kp }
            Reponses := array{"India", "North Korea", "Myanmar", "South Korea"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_in }
            Reponses := array{"Indonesia", "India", "Bhutan", "Philippines"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pk }
            Reponses := array{"Philippines", "Pakistan", "Cambodia", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bd }
            Reponses := array{"Bangladesh", "South Korea", "Thailand", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lk }
            Reponses := array{"Japan", "Cambodia", "Sri Lanka", "Thailand"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_np }
            Reponses := array{"Myanmar", "Singapore", "Nepal", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bt }
            Reponses := array{"Maldives", "Bhutan", "Myanmar", "East Timor"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mv }
            Reponses := array{"Sri Lanka", "Nepal", "Laos", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mm }
            Reponses := array{"Laos", "Thailand", "Myanmar", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_th }
            Reponses := array{"Thailand", "Sri Lanka", "Brunei", "Philippines"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_la }
            Reponses := array{"Laos", "Sri Lanka", "Indonesia", "Thailand"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kh }
            Reponses := array{"Cambodia", "Maldives", "Thailand", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_vn }
            Reponses := array{"Maldives", "Sri Lanka", "East Timor", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_my }
            Reponses := array{"Cambodia", "Malaysia", "China", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sg }
            Reponses := array{"Singapore", "Indonesia", "South Korea", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_id }
            Reponses := array{"Sri Lanka", "China", "India", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bn }
            Reponses := array{"South Korea", "Bangladesh", "Sri Lanka", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ph }
            Reponses := array{"North Korea", "Indonesia", "Philippines", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tl }
            Reponses := array{"East Timor", "Sri Lanka", "Singapore", "Pakistan"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_au }
            Reponses := array{"Micronesia", "New Zealand", "Australia", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_nz }
            Reponses := array{"Micronesia", "New Zealand", "Marshall Islands", "Solomon Islands"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pg }
            Reponses := array{"Australia", "Tuvalu", "Samoa", "Papua New Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_fj }
            Reponses := array{"Fiji", "Marshall Islands", "Palau", "New Zealand"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sb }
            Reponses := array{"Solomon Islands", "Palau", "Samoa", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_vu }
            Reponses := array{"Vanuatu", "Samoa", "Micronesia", "Marshall Islands"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ws }
            Reponses := array{"New Zealand", "Samoa", "Papua New Guinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_to }
            Reponses := array{"Fiji", "Tonga", "Solomon Islands", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tv }
            Reponses := array{"Samoa", "New Zealand", "Vanuatu", "Tuvalu"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ki }
            Reponses := array{"Tonga", "Kiribati", "Tuvalu", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_nr }
            Reponses := array{"Papua New Guinea", "Solomon Islands", "Nauru", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pw }
            Reponses := array{"Palau", "Micronesia", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_fm }
            Reponses := array{"Australia", "Micronesia", "Nauru", "New Zealand"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mh }
            Reponses := array{"Palau", "Papua New Guinea", "Marshall Islands", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ma }
            Reponses := array{"Togo", "Central African Republic", "Morocco", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_dz }
            Reponses := array{"Rwanda", "Sierra Leone", "Algeria", "Libya"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tn }
            Reponses := array{"Mauritius", "Egypt", "Cape Verde", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ly }
            Reponses := array{"DR Congo", "Sierra Leone", "South Africa", "Libya"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_eg }
            Reponses := array{"Egypt", "Congo", "Madagascar", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sd }
            Reponses := array{"Togo", "Sudan", "Mali", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ss }
            Reponses := array{"South Sudan", "Kenya", "Malawi", "Senegal"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_et }
            Reponses := array{"Rwanda", "Lesotho", "Gambia", "Ethiopia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_er }
            Reponses := array{"Egypt", "Eritrea", "Liberia", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_dj }
            Reponses := array{"Seychelles", "Malawi", "Ghana", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_so }
            Reponses := array{"Gambia", "Algeria", "Togo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ke }
            Reponses := array{"Kenya", "Algeria", "Somalia", "Congo"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ug }
            Reponses := array{"Central African Republic", "Uganda", "Guinea", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tz }
            Reponses := array{"Mozambique", "Sierra Leone", "Tanzania", "Tunisia"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_rw }
            Reponses := array{"Rwanda", "Zimbabwe", "Morocco", "Liberia"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bi }
            Reponses := array{"Madagascar", "Eswatini", "Guinea", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cd }
            Reponses := array{"Tunisia", "Gambia", "DR Congo", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cg }
            Reponses := array{"Libya", "Mozambique", "Congo", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ga }
            Reponses := array{"Gabon", "Eritrea", "Somalia", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gq }
            Reponses := array{"Equatorial Guinea", "Rwanda", "Algeria", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cm }
            Reponses := array{"Senegal", "Chad", "Zimbabwe", "Cameroon"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cf }
            Reponses := array{"Chad", "Togo", "Angola", "Central African Republic"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_td }
            Reponses := array{"Cape Verde", "Chad", "Djibouti", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ne }
            Reponses := array{"Gambia", "Niger", "Libya", "Cameroon"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ng }
            Reponses := array{"Zambia", "Nigeria", "Guinea", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bj }
            Reponses := array{"Burundi", "Benin", "Eritrea", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tg }
            Reponses := array{"Madagascar", "Liberia", "Togo", "DR Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gh }
            Reponses := array{"Ghana", "Central African Republic", "Madagascar", "Sao Tome and Principe"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ci }
            Reponses := array{"Comoros", "Ivory Coast", "Lesotho", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lr }
            Reponses := array{"Nigeria", "Mozambique", "Liberia", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sl }
            Reponses := array{"Tanzania", "Gabon", "Sierra Leone", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gn }
            Reponses := array{"Namibia", "Guinea", "Nigeria", "Burundi"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gw }
            Reponses := array{"Tanzania", "Mozambique", "Burundi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sn }
            Reponses := array{"Seychelles", "Mozambique", "Senegal", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gm }
            Reponses := array{"Gambia", "Rwanda", "Mauritania", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ml }
            Reponses := array{"Namibia", "Mali", "Eswatini", "Ethiopia"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bf }
            Reponses := array{"Burkina Faso", "Eritrea", "DR Congo", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mr }
            Reponses := array{"Sao Tome and Principe", "Morocco", "Mauritania", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cv }
            Reponses := array{"Gabon", "Cape Verde", "Somalia", "Rwanda"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_st }
            Reponses := array{"Sao Tome and Principe", "Sierra Leone", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ao }
            Reponses := array{"Niger", "Angola", "Ghana", "Sao Tome and Principe"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_zm }
            Reponses := array{"Zambia", "Zimbabwe", "Ivory Coast", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_zw }
            Reponses := array{"Guinea", "Kenya", "Zimbabwe", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mw }
            Reponses := array{"Ethiopia", "Benin", "Malawi", "Ghana"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mz }
            Reponses := array{"Kenya", "South Sudan", "Algeria", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mg }
            Reponses := array{"Madagascar", "Seychelles", "Uganda", "South Africa"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_km }
            Reponses := array{"Comoros", "Malawi", "Gabon", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mu }
            Reponses := array{"DR Congo", "Lesotho", "Mauritius", "Ivory Coast"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sc }
            Reponses := array{"Chad", "South Sudan", "Seychelles", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_za }
            Reponses := array{"South Africa", "Rwanda", "Ethiopia", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_na }
            Reponses := array{"Morocco", "Namibia", "Botswana", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bw }
            Reponses := array{"Seychelles", "Tanzania", "Botswana", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ls }
            Reponses := array{"Seychelles", "Lesotho", "Kenya", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sz }
            Reponses := array{"Equatorial Guinea", "Eswatini", "Sudan", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_us }
            Reponses := array{"United States", "Canada", "Mexico", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ca }
            Reponses := array{"United States", "Canada", "Mexico", "Syria"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_mx }
            Reponses := array{"Mexico", "Canada", "United States", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gt }
            Reponses := array{"El Salvador", "Nicaragua", "Haiti", "Guatemala"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bz }
            Reponses := array{"El Salvador", "Bahamas", "Trinidad and Tobago", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_hn }
            Reponses := array{"Bahamas", "Panama", "Honduras", "Saint Kitts and Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sv }
            Reponses := array{"Antigua and Barbuda", "El Salvador", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ni }
            Reponses := array{"Dominican Republic", "Panama", "Nicaragua", "Saint Kitts and Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cr }
            Reponses := array{"Bahamas", "Costa Rica", "Saint Kitts and Nevis", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pa }
            Reponses := array{"Panama", "Honduras", "Haiti", "Dominican Republic"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bs }
            Reponses := array{"Grenada", "Bahamas", "Nicaragua", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cu }
            Reponses := array{"El Salvador", "Bahamas", "Antigua and Barbuda", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_jm }
            Reponses := array{"Jamaica", "Belize", "Dominican Republic", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ht }
            Reponses := array{"Saint Kitts and Nevis", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_do }
            Reponses := array{"Guatemala", "Dominican Republic", "Antigua and Barbuda", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_kn }
            Reponses := array{"Saint Kitts and Nevis", "Bahamas", "Panama", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ag }
            Reponses := array{"Antigua and Barbuda", "Saint Vincent", "Guatemala", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_dm }
            Reponses := array{"Dominica", "Bahamas", "Costa Rica", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_lc }
            Reponses := array{"Saint Lucia", "Dominican Republic", "Trinidad and Tobago", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_vc }
            Reponses := array{"Trinidad and Tobago", "Saint Vincent", "Guatemala", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bb }
            Reponses := array{"Belize", "Barbados", "Panama", "Trinidad and Tobago"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gd }
            Reponses := array{"Grenada", "Dominica", "Trinidad and Tobago", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_tt }
            Reponses := array{"Cuba", "Saint Kitts and Nevis", "Trinidad and Tobago", "Dominican Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_co }
            Reponses := array{"Ecuador", "Colombia", "Suriname", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ve }
            Reponses := array{"Suriname", "Chile", "Guyana", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_gy }
            Reponses := array{"Guyana", "Uruguay", "Bolivia", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_sr }
            Reponses := array{"Colombia", "Chile", "Suriname", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ec }
            Reponses := array{"Argentina", "Ecuador", "Bolivia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_pe }
            Reponses := array{"Bolivia", "Peru", "Ecuador", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_br }
            Reponses := array{"Brazil", "Guyana", "Venezuela", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_bo }
            Reponses := array{"Brazil", "Colombia", "Bolivia", "Chile"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_py }
            Reponses := array{"Argentina", "Bolivia", "Paraguay", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_uy }
            Reponses := array{"Chile", "Paraguay", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_cl }
            Reponses := array{"Uruguay", "Ecuador", "Suriname", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Which pixelated flag is this?"
            Image := option{ flags_pixel.fpx_ar }
            Reponses := array{"Paraguay", "Colombia", "Argentina", "Ecuador"}
            BonneReponse := 2

MakeFlagsPixelQuestionsES() : []question =
    array:
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_fr }
            Reponses := array{"Noruega", "Malta", "Espana", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_de }
            Reponses := array{"Suecia", "Portugal", "Italia", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_it }
            Reponses := array{"Ciudad del Vaticano", "Italia", "Dinamarca", "Espana"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_es }
            Reponses := array{"Austria", "Francia", "Noruega", "Espana"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pt }
            Reponses := array{"Malta", "Liechtenstein", "Paises Bajos", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gb }
            Reponses := array{"Dinamarca", "Austria", "Ciudad del Vaticano", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ie }
            Reponses := array{"Andorra", "Paises Bajos", "Irlanda", "Noruega"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_be }
            Reponses := array{"Belgica", "Dinamarca", "Reino Unido", "Andorra"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_nl }
            Reponses := array{"Belgica", "Paises Bajos", "Italia", "Reino Unido"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lu }
            Reponses := array{"Luxemburgo", "Espana", "Noruega", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ch }
            Reponses := array{"Belgica", "Suiza", "Espana", "Luxemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_at }
            Reponses := array{"Monaco", "Malta", "Austria", "Dinamarca"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mc }
            Reponses := array{"Monaco", "San Marino", "Noruega", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ad }
            Reponses := array{"Malta", "Reino Unido", "Noruega", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_li }
            Reponses := array{"Francia", "Liechtenstein", "Portugal", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sm }
            Reponses := array{"San Marino", "Ciudad del Vaticano", "Irlanda", "Dinamarca"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_va }
            Reponses := array{"Luxemburgo", "Ciudad del Vaticano", "Austria", "Suiza"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mt }
            Reponses := array{"Austria", "Francia", "Suecia", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_is }
            Reponses := array{"Andorra", "Dinamarca", "Islandia", "Luxemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_no }
            Reponses := array{"Luxemburgo", "San Marino", "Suecia", "Noruega"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_se }
            Reponses := array{"Suecia", "Francia", "Liechtenstein", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_dk }
            Reponses := array{"Espana", "Dinamarca", "Ciudad del Vaticano", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_fi }
            Reponses := array{"Finlandia", "Alemania", "Monaco", "Espana"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pl }
            Reponses := array{"Albania", "Polonia", "Estonia", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cz }
            Reponses := array{"Bosnia y Herzegovina", "Chequia", "Rusia", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sk }
            Reponses := array{"Chequia", "Eslovaquia", "Serbia", "Bosnia y Herzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_hu }
            Reponses := array{"Letonia", "Bosnia y Herzegovina", "Hungria", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_si }
            Reponses := array{"Albania", "Hungria", "Eslovenia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_hr }
            Reponses := array{"Hungria", "Rumania", "Croacia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ba }
            Reponses := array{"Bosnia y Herzegovina", "Rusia", "Lituania", "Macedonia del Norte"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_rs }
            Reponses := array{"Serbia", "Hungria", "Estonia", "Macedonia del Norte"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_me }
            Reponses := array{"Estonia", "Polonia", "Moldavia", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mk }
            Reponses := array{"Macedonia del Norte", "Eslovenia", "Lituania", "Ucrania"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_al }
            Reponses := array{"Estonia", "Chequia", "Albania", "Grecia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gr }
            Reponses := array{"Grecia", "Hungria", "Lituania", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bg }
            Reponses := array{"Ucrania", "Bosnia y Herzegovina", "Serbia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ro }
            Reponses := array{"Chipre", "Lituania", "Rumania", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_md }
            Reponses := array{"Bosnia y Herzegovina", "Bulgaria", "Eslovaquia", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ua }
            Reponses := array{"Macedonia del Norte", "Hungria", "Estonia", "Ucrania"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_by }
            Reponses := array{"Bosnia y Herzegovina", "Moldavia", "Bielorrusia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ru }
            Reponses := array{"Rumania", "Rusia", "Hungria", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ee }
            Reponses := array{"Rumania", "Montenegro", "Lituania", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lv }
            Reponses := array{"Letonia", "Grecia", "Bielorrusia", "Hungria"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lt }
            Reponses := array{"Lituania", "Macedonia del Norte", "Hungria", "Rumania"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cy }
            Reponses := array{"Chipre", "Croacia", "Polonia", "Bulgaria"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tr }
            Reponses := array{"Armenia", "Catar", "Turquia", "Jordania"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_il }
            Reponses := array{"Emiratos Arabes Unidos", "Armenia", "Azerbaiyan", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ps }
            Reponses := array{"Georgia", "Palestina", "Turquia", "Armenia"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lb }
            Reponses := array{"Oman", "Libano", "Turquia", "Emiratos Arabes Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sy }
            Reponses := array{"Azerbaiyan", "Catar", "Siria", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_jo }
            Reponses := array{"Jordania", "Azerbaiyan", "Palestina", "Barein"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_iq }
            Reponses := array{"Jordania", "Irak", "Yemen", "Barein"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ir }
            Reponses := array{"Israel", "Georgia", "Iran", "Palestina"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sa }
            Reponses := array{"Arabia Saudita", "Yemen", "Israel", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ye }
            Reponses := array{"Irak", "Turquia", "Oman", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_om }
            Reponses := array{"Iran", "Emiratos Arabes Unidos", "Oman", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ae }
            Reponses := array{"Emiratos Arabes Unidos", "Israel", "Irak", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_qa }
            Reponses := array{"Georgia", "Kuwait", "Catar", "Libano"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bh }
            Reponses := array{"Yemen", "Barein", "Arabia Saudita", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kw }
            Reponses := array{"Barein", "Kuwait", "Armenia", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ge }
            Reponses := array{"Catar", "Georgia", "Kuwait", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_am }
            Reponses := array{"Oman", "Arabia Saudita", "Turquia", "Armenia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_az }
            Reponses := array{"Emiratos Arabes Unidos", "Barein", "Siria", "Azerbaiyan"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kz }
            Reponses := array{"Tayikistan", "Kazajistan", "Mongolia", "Afganistan"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_uz }
            Reponses := array{"Afganistan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tm }
            Reponses := array{"Mongolia", "Kazajistan", "Kirguistan", "Turkmenistan"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kg }
            Reponses := array{"Tayikistan", "Kirguistan", "Kazajistan", "Turkmenistan"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tj }
            Reponses := array{"Mongolia", "Tayikistan", "Kirguistan", "Kazajistan"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_af }
            Reponses := array{"Tayikistan", "Turkmenistan", "Afganistan", "Mongolia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mn }
            Reponses := array{"Kirguistan", "Mongolia", "Turkmenistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cn }
            Reponses := array{"Tailandia", "Vietnam", "China", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_jp }
            Reponses := array{"Indonesia", "Filipinas", "Japon", "Banglades"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kr }
            Reponses := array{"Tailandia", "Laos", "Corea del Sur", "Maldivas"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kp }
            Reponses := array{"India", "Corea del Norte", "Birmania", "Corea del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_in }
            Reponses := array{"Indonesia", "India", "Butan", "Filipinas"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pk }
            Reponses := array{"Filipinas", "Pakistan", "Camboya", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bd }
            Reponses := array{"Banglades", "Corea del Sur", "Tailandia", "China"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lk }
            Reponses := array{"Japon", "Camboya", "Sri Lanka", "Tailandia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_np }
            Reponses := array{"Birmania", "Singapur", "Nepal", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bt }
            Reponses := array{"Maldivas", "Butan", "Birmania", "Timor Oriental"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mv }
            Reponses := array{"Sri Lanka", "Nepal", "Laos", "Maldivas"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mm }
            Reponses := array{"Laos", "Tailandia", "Birmania", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_th }
            Reponses := array{"Tailandia", "Sri Lanka", "Brunei", "Filipinas"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_la }
            Reponses := array{"Laos", "Sri Lanka", "Indonesia", "Tailandia"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kh }
            Reponses := array{"Camboya", "Maldivas", "Tailandia", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_vn }
            Reponses := array{"Maldivas", "Sri Lanka", "Timor Oriental", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_my }
            Reponses := array{"Camboya", "Malasia", "China", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sg }
            Reponses := array{"Singapur", "Indonesia", "Corea del Sur", "China"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_id }
            Reponses := array{"Sri Lanka", "China", "India", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bn }
            Reponses := array{"Corea del Sur", "Banglades", "Sri Lanka", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ph }
            Reponses := array{"Corea del Norte", "Indonesia", "Filipinas", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tl }
            Reponses := array{"Timor Oriental", "Sri Lanka", "Singapur", "Pakistan"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_au }
            Reponses := array{"Micronesia", "Nueva Zelanda", "Australia", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_nz }
            Reponses := array{"Micronesia", "Nueva Zelanda", "Islas Marshall", "Islas Salomon"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pg }
            Reponses := array{"Australia", "Tuvalu", "Samoa", "Papua Nueva Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_fj }
            Reponses := array{"Fiyi", "Islas Marshall", "Palaos", "Nueva Zelanda"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sb }
            Reponses := array{"Islas Salomon", "Palaos", "Samoa", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_vu }
            Reponses := array{"Vanuatu", "Samoa", "Micronesia", "Islas Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ws }
            Reponses := array{"Nueva Zelanda", "Samoa", "Papua Nueva Guinea", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_to }
            Reponses := array{"Fiyi", "Tonga", "Islas Salomon", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tv }
            Reponses := array{"Samoa", "Nueva Zelanda", "Vanuatu", "Tuvalu"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ki }
            Reponses := array{"Tonga", "Kiribati", "Tuvalu", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_nr }
            Reponses := array{"Papua Nueva Guinea", "Islas Salomon", "Nauru", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pw }
            Reponses := array{"Palaos", "Micronesia", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_fm }
            Reponses := array{"Australia", "Micronesia", "Nauru", "Nueva Zelanda"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mh }
            Reponses := array{"Palaos", "Papua Nueva Guinea", "Islas Marshall", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ma }
            Reponses := array{"Togo", "Republica Centroafricana", "Marruecos", "Guinea-Bisau"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_dz }
            Reponses := array{"Ruanda", "Sierra Leona", "Argelia", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tn }
            Reponses := array{"Mauricio", "Egipto", "Cabo Verde", "Tunez"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ly }
            Reponses := array{"RD del Congo", "Sierra Leona", "Sudafrica", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_eg }
            Reponses := array{"Egipto", "Congo", "Madagascar", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sd }
            Reponses := array{"Togo", "Sudan", "Mali", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ss }
            Reponses := array{"Sudan del Sur", "Kenia", "Malaui", "Senegal"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_et }
            Reponses := array{"Ruanda", "Lesoto", "Gambia", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_er }
            Reponses := array{"Egipto", "Eritrea", "Liberia", "Botsuana"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_dj }
            Reponses := array{"Seychelles", "Malaui", "Ghana", "Yibuti"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_so }
            Reponses := array{"Gambia", "Argelia", "Togo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ke }
            Reponses := array{"Kenia", "Argelia", "Somalia", "Congo"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ug }
            Reponses := array{"Republica Centroafricana", "Uganda", "Guinea", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tz }
            Reponses := array{"Mozambique", "Sierra Leona", "Tanzania", "Tunez"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_rw }
            Reponses := array{"Ruanda", "Zimbabue", "Marruecos", "Liberia"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bi }
            Reponses := array{"Madagascar", "Esuatini", "Guinea", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cd }
            Reponses := array{"Tunez", "Gambia", "RD del Congo", "Lesoto"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cg }
            Reponses := array{"Libia", "Mozambique", "Congo", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ga }
            Reponses := array{"Gabon", "Eritrea", "Somalia", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gq }
            Reponses := array{"Guinea Ecuatorial", "Ruanda", "Argelia", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cm }
            Reponses := array{"Senegal", "Chad", "Zimbabue", "Camerun"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cf }
            Reponses := array{"Chad", "Togo", "Angola", "Republica Centroafricana"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_td }
            Reponses := array{"Cabo Verde", "Chad", "Yibuti", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ne }
            Reponses := array{"Gambia", "Niger", "Libia", "Camerun"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ng }
            Reponses := array{"Zambia", "Nigeria", "Guinea", "Malaui"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bj }
            Reponses := array{"Burundi", "Benin", "Eritrea", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tg }
            Reponses := array{"Madagascar", "Liberia", "Togo", "RD del Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gh }
            Reponses := array{"Ghana", "Republica Centroafricana", "Madagascar", "Santo Tome y Principe"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ci }
            Reponses := array{"Comoras", "Costa de Marfil", "Lesoto", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lr }
            Reponses := array{"Nigeria", "Mozambique", "Liberia", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sl }
            Reponses := array{"Tanzania", "Gabon", "Sierra Leona", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gn }
            Reponses := array{"Namibia", "Guinea", "Nigeria", "Burundi"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gw }
            Reponses := array{"Tanzania", "Mozambique", "Burundi", "Guinea-Bisau"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sn }
            Reponses := array{"Seychelles", "Mozambique", "Senegal", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gm }
            Reponses := array{"Gambia", "Ruanda", "Mauritania", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ml }
            Reponses := array{"Namibia", "Mali", "Esuatini", "Etiopia"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bf }
            Reponses := array{"Burkina Faso", "Eritrea", "RD del Congo", "Mauricio"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mr }
            Reponses := array{"Santo Tome y Principe", "Marruecos", "Mauritania", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cv }
            Reponses := array{"Gabon", "Cabo Verde", "Somalia", "Ruanda"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_st }
            Reponses := array{"Santo Tome y Principe", "Sierra Leona", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ao }
            Reponses := array{"Niger", "Angola", "Ghana", "Santo Tome y Principe"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_zm }
            Reponses := array{"Zambia", "Zimbabue", "Costa de Marfil", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_zw }
            Reponses := array{"Guinea", "Kenia", "Zimbabue", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mw }
            Reponses := array{"Etiopia", "Benin", "Malaui", "Ghana"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mz }
            Reponses := array{"Kenia", "Sudan del Sur", "Argelia", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mg }
            Reponses := array{"Madagascar", "Seychelles", "Uganda", "Sudafrica"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_km }
            Reponses := array{"Comoras", "Malaui", "Gabon", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mu }
            Reponses := array{"RD del Congo", "Lesoto", "Mauricio", "Costa de Marfil"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sc }
            Reponses := array{"Chad", "Sudan del Sur", "Seychelles", "Argelia"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_za }
            Reponses := array{"Sudafrica", "Ruanda", "Etiopia", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_na }
            Reponses := array{"Marruecos", "Namibia", "Botsuana", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bw }
            Reponses := array{"Seychelles", "Tanzania", "Botsuana", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ls }
            Reponses := array{"Seychelles", "Lesoto", "Kenia", "Botsuana"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sz }
            Reponses := array{"Guinea Ecuatorial", "Esuatini", "Sudan", "Lesoto"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_us }
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ca }
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_mx }
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gt }
            Reponses := array{"El Salvador", "Nicaragua", "Haiti", "Guatemala"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bz }
            Reponses := array{"El Salvador", "Bahamas", "Trinidad y Tobago", "Belice"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_hn }
            Reponses := array{"Bahamas", "Panama", "Honduras", "San Cristobal y Nieves"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sv }
            Reponses := array{"Antigua y Barbuda", "El Salvador", "Belice", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ni }
            Reponses := array{"Republica Dominicana", "Panama", "Nicaragua", "San Cristobal y Nieves"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cr }
            Reponses := array{"Bahamas", "Costa Rica", "San Cristobal y Nieves", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pa }
            Reponses := array{"Panama", "Honduras", "Haiti", "Republica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bs }
            Reponses := array{"Granada", "Bahamas", "Nicaragua", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cu }
            Reponses := array{"El Salvador", "Bahamas", "Antigua y Barbuda", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_jm }
            Reponses := array{"Jamaica", "Belice", "Republica Dominicana", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ht }
            Reponses := array{"San Cristobal y Nieves", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_do }
            Reponses := array{"Guatemala", "Republica Dominicana", "Antigua y Barbuda", "Granada"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_kn }
            Reponses := array{"San Cristobal y Nieves", "Bahamas", "Panama", "Granada"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ag }
            Reponses := array{"Antigua y Barbuda", "San Vicente", "Guatemala", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_dm }
            Reponses := array{"Dominica", "Bahamas", "Costa Rica", "San Vicente"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_lc }
            Reponses := array{"Santa Lucia", "Republica Dominicana", "Trinidad y Tobago", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_vc }
            Reponses := array{"Trinidad y Tobago", "San Vicente", "Guatemala", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bb }
            Reponses := array{"Belice", "Barbados", "Panama", "Trinidad y Tobago"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gd }
            Reponses := array{"Granada", "Dominica", "Trinidad y Tobago", "Belice"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_tt }
            Reponses := array{"Cuba", "San Cristobal y Nieves", "Trinidad y Tobago", "Republica Dominicana"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_co }
            Reponses := array{"Ecuador", "Colombia", "Surinam", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ve }
            Reponses := array{"Surinam", "Chile", "Guyana", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_gy }
            Reponses := array{"Guyana", "Uruguay", "Bolivia", "Surinam"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_sr }
            Reponses := array{"Colombia", "Chile", "Surinam", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ec }
            Reponses := array{"Argentina", "Ecuador", "Bolivia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_pe }
            Reponses := array{"Bolivia", "Peru", "Ecuador", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_br }
            Reponses := array{"Brasil", "Guyana", "Venezuela", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_bo }
            Reponses := array{"Brasil", "Colombia", "Bolivia", "Chile"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_py }
            Reponses := array{"Argentina", "Bolivia", "Paraguay", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_uy }
            Reponses := array{"Chile", "Paraguay", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_cl }
            Reponses := array{"Uruguay", "Ecuador", "Surinam", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Que bandera (pixelada) es esta?"
            Image := option{ flags_pixel.fpx_ar }
            Reponses := array{"Paraguay", "Colombia", "Argentina", "Ecuador"}
            BonneReponse := 2

MakeFlagsPixelQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_fr }
            Reponses := array{"Norwegen", "Malta", "Spanien", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_de }
            Reponses := array{"Schweden", "Portugal", "Italien", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_it }
            Reponses := array{"Vatikanstadt", "Italien", "Daenemark", "Spanien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_es }
            Reponses := array{"Oesterreich", "Frankreich", "Norwegen", "Spanien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pt }
            Reponses := array{"Malta", "Liechtenstein", "Niederlande", "Portugal"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gb }
            Reponses := array{"Daenemark", "Oesterreich", "Vatikanstadt", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ie }
            Reponses := array{"Andorra", "Niederlande", "Irland", "Norwegen"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_be }
            Reponses := array{"Belgien", "Daenemark", "Vereinigtes Koenigreich", "Andorra"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_nl }
            Reponses := array{"Belgien", "Niederlande", "Italien", "Vereinigtes Koenigreich"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lu }
            Reponses := array{"Luxemburg", "Spanien", "Norwegen", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ch }
            Reponses := array{"Belgien", "Schweiz", "Spanien", "Luxemburg"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_at }
            Reponses := array{"Monaco", "Malta", "Oesterreich", "Daenemark"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mc }
            Reponses := array{"Monaco", "San Marino", "Norwegen", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ad }
            Reponses := array{"Malta", "Vereinigtes Koenigreich", "Norwegen", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_li }
            Reponses := array{"Frankreich", "Liechtenstein", "Portugal", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sm }
            Reponses := array{"San Marino", "Vatikanstadt", "Irland", "Daenemark"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_va }
            Reponses := array{"Luxemburg", "Vatikanstadt", "Oesterreich", "Schweiz"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mt }
            Reponses := array{"Oesterreich", "Frankreich", "Schweden", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_is }
            Reponses := array{"Andorra", "Daenemark", "Island", "Luxemburg"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_no }
            Reponses := array{"Luxemburg", "San Marino", "Schweden", "Norwegen"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_se }
            Reponses := array{"Schweden", "Frankreich", "Liechtenstein", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_dk }
            Reponses := array{"Spanien", "Daenemark", "Vatikanstadt", "Italien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_fi }
            Reponses := array{"Finnland", "Deutschland", "Monaco", "Spanien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pl }
            Reponses := array{"Albanien", "Polen", "Estland", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cz }
            Reponses := array{"Bosnien und Herzegowina", "Tschechien", "Russland", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sk }
            Reponses := array{"Tschechien", "Slowakei", "Serbien", "Bosnien und Herzegowina"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_hu }
            Reponses := array{"Lettland", "Bosnien und Herzegowina", "Ungarn", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_si }
            Reponses := array{"Albanien", "Ungarn", "Slowenien", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_hr }
            Reponses := array{"Ungarn", "Rumaenien", "Kroatien", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ba }
            Reponses := array{"Bosnien und Herzegowina", "Russland", "Litauen", "Nordmazedonien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_rs }
            Reponses := array{"Serbien", "Ungarn", "Estland", "Nordmazedonien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_me }
            Reponses := array{"Estland", "Polen", "Moldau", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mk }
            Reponses := array{"Nordmazedonien", "Slowenien", "Litauen", "Ukraine"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_al }
            Reponses := array{"Estland", "Tschechien", "Albanien", "Griechenland"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gr }
            Reponses := array{"Griechenland", "Ungarn", "Litauen", "Moldau"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bg }
            Reponses := array{"Ukraine", "Bosnien und Herzegowina", "Serbien", "Bulgarien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ro }
            Reponses := array{"Zypern", "Litauen", "Rumaenien", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_md }
            Reponses := array{"Bosnien und Herzegowina", "Bulgarien", "Slowakei", "Moldau"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ua }
            Reponses := array{"Nordmazedonien", "Ungarn", "Estland", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_by }
            Reponses := array{"Bosnien und Herzegowina", "Moldau", "Belarus", "Serbien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ru }
            Reponses := array{"Rumaenien", "Russland", "Ungarn", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ee }
            Reponses := array{"Rumaenien", "Montenegro", "Litauen", "Estland"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lv }
            Reponses := array{"Lettland", "Griechenland", "Belarus", "Ungarn"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lt }
            Reponses := array{"Litauen", "Nordmazedonien", "Ungarn", "Rumaenien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cy }
            Reponses := array{"Zypern", "Kroatien", "Polen", "Bulgarien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tr }
            Reponses := array{"Armenien", "Katar", "Tuerkei", "Jordanien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_il }
            Reponses := array{"Vereinigte Arabische Emirate", "Armenien", "Aserbaidschan", "Israel"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ps }
            Reponses := array{"Georgien", "Palaestina", "Tuerkei", "Armenien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lb }
            Reponses := array{"Oman", "Libanon", "Tuerkei", "Vereinigte Arabische Emirate"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sy }
            Reponses := array{"Aserbaidschan", "Katar", "Syrien", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_jo }
            Reponses := array{"Jordanien", "Aserbaidschan", "Palaestina", "Bahrain"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_iq }
            Reponses := array{"Jordanien", "Irak", "Jemen", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ir }
            Reponses := array{"Israel", "Georgien", "Iran", "Palaestina"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sa }
            Reponses := array{"Saudi-Arabien", "Jemen", "Israel", "Irak"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ye }
            Reponses := array{"Irak", "Tuerkei", "Oman", "Jemen"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_om }
            Reponses := array{"Iran", "Vereinigte Arabische Emirate", "Oman", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ae }
            Reponses := array{"Vereinigte Arabische Emirate", "Israel", "Irak", "Saudi-Arabien"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_qa }
            Reponses := array{"Georgien", "Kuwait", "Katar", "Libanon"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bh }
            Reponses := array{"Jemen", "Bahrain", "Saudi-Arabien", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kw }
            Reponses := array{"Bahrain", "Kuwait", "Armenien", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ge }
            Reponses := array{"Katar", "Georgien", "Kuwait", "Jemen"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_am }
            Reponses := array{"Oman", "Saudi-Arabien", "Tuerkei", "Armenien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_az }
            Reponses := array{"Vereinigte Arabische Emirate", "Bahrain", "Syrien", "Aserbaidschan"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kz }
            Reponses := array{"Tadschikistan", "Kasachstan", "Mongolei", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_uz }
            Reponses := array{"Afghanistan", "Turkmenistan", "Mongolei", "Usbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tm }
            Reponses := array{"Mongolei", "Kasachstan", "Kirgisistan", "Turkmenistan"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kg }
            Reponses := array{"Tadschikistan", "Kirgisistan", "Kasachstan", "Turkmenistan"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tj }
            Reponses := array{"Mongolei", "Tadschikistan", "Kirgisistan", "Kasachstan"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_af }
            Reponses := array{"Tadschikistan", "Turkmenistan", "Afghanistan", "Mongolei"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mn }
            Reponses := array{"Kirgisistan", "Mongolei", "Turkmenistan", "Usbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cn }
            Reponses := array{"Thailand", "Vietnam", "China", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_jp }
            Reponses := array{"Indonesien", "Philippinen", "Japan", "Bangladesch"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kr }
            Reponses := array{"Thailand", "Laos", "Suedkorea", "Malediven"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kp }
            Reponses := array{"Indien", "Nordkorea", "Myanmar", "Suedkorea"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_in }
            Reponses := array{"Indonesien", "Indien", "Bhutan", "Philippinen"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pk }
            Reponses := array{"Philippinen", "Pakistan", "Kambodscha", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bd }
            Reponses := array{"Bangladesch", "Suedkorea", "Thailand", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lk }
            Reponses := array{"Japan", "Kambodscha", "Sri Lanka", "Thailand"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_np }
            Reponses := array{"Myanmar", "Singapur", "Nepal", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bt }
            Reponses := array{"Malediven", "Bhutan", "Myanmar", "Osttimor"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mv }
            Reponses := array{"Sri Lanka", "Nepal", "Laos", "Malediven"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mm }
            Reponses := array{"Laos", "Thailand", "Myanmar", "Indonesien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_th }
            Reponses := array{"Thailand", "Sri Lanka", "Brunei", "Philippinen"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_la }
            Reponses := array{"Laos", "Sri Lanka", "Indonesien", "Thailand"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kh }
            Reponses := array{"Kambodscha", "Malediven", "Thailand", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_vn }
            Reponses := array{"Malediven", "Sri Lanka", "Osttimor", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_my }
            Reponses := array{"Kambodscha", "Malaysia", "China", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sg }
            Reponses := array{"Singapur", "Indonesien", "Suedkorea", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_id }
            Reponses := array{"Sri Lanka", "China", "Indien", "Indonesien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bn }
            Reponses := array{"Suedkorea", "Bangladesch", "Sri Lanka", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ph }
            Reponses := array{"Nordkorea", "Indonesien", "Philippinen", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tl }
            Reponses := array{"Osttimor", "Sri Lanka", "Singapur", "Pakistan"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_au }
            Reponses := array{"Mikronesien", "Neuseeland", "Australien", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_nz }
            Reponses := array{"Mikronesien", "Neuseeland", "Marshallinseln", "Salomonen"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pg }
            Reponses := array{"Australien", "Tuvalu", "Samoa", "Papua-Neuguinea"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_fj }
            Reponses := array{"Fidschi", "Marshallinseln", "Palau", "Neuseeland"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sb }
            Reponses := array{"Salomonen", "Palau", "Samoa", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_vu }
            Reponses := array{"Vanuatu", "Samoa", "Mikronesien", "Marshallinseln"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ws }
            Reponses := array{"Neuseeland", "Samoa", "Papua-Neuguinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_to }
            Reponses := array{"Fidschi", "Tonga", "Salomonen", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tv }
            Reponses := array{"Samoa", "Neuseeland", "Vanuatu", "Tuvalu"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ki }
            Reponses := array{"Tonga", "Kiribati", "Tuvalu", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_nr }
            Reponses := array{"Papua-Neuguinea", "Salomonen", "Nauru", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pw }
            Reponses := array{"Palau", "Mikronesien", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_fm }
            Reponses := array{"Australien", "Mikronesien", "Nauru", "Neuseeland"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mh }
            Reponses := array{"Palau", "Papua-Neuguinea", "Marshallinseln", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ma }
            Reponses := array{"Togo", "Zentralafrikanische Republik", "Marokko", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_dz }
            Reponses := array{"Ruanda", "Sierra Leone", "Algerien", "Libyen"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tn }
            Reponses := array{"Mauritius", "Aegypten", "Kap Verde", "Tunesien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ly }
            Reponses := array{"DR Kongo", "Sierra Leone", "Suedafrika", "Libyen"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_eg }
            Reponses := array{"Aegypten", "Kongo", "Madagaskar", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sd }
            Reponses := array{"Togo", "Sudan", "Mali", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ss }
            Reponses := array{"Suedsudan", "Kenia", "Malawi", "Senegal"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_et }
            Reponses := array{"Ruanda", "Lesotho", "Gambia", "Aethiopien"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_er }
            Reponses := array{"Aegypten", "Eritrea", "Liberia", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_dj }
            Reponses := array{"Seychellen", "Malawi", "Ghana", "Dschibuti"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_so }
            Reponses := array{"Gambia", "Algerien", "Togo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ke }
            Reponses := array{"Kenia", "Algerien", "Somalia", "Kongo"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ug }
            Reponses := array{"Zentralafrikanische Republik", "Uganda", "Guinea", "Madagaskar"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tz }
            Reponses := array{"Mosambik", "Sierra Leone", "Tansania", "Tunesien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_rw }
            Reponses := array{"Ruanda", "Simbabwe", "Marokko", "Liberia"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bi }
            Reponses := array{"Madagaskar", "Eswatini", "Guinea", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cd }
            Reponses := array{"Tunesien", "Gambia", "DR Kongo", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cg }
            Reponses := array{"Libyen", "Mosambik", "Kongo", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ga }
            Reponses := array{"Gabun", "Eritrea", "Somalia", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gq }
            Reponses := array{"Aequatorialguinea", "Ruanda", "Algerien", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cm }
            Reponses := array{"Senegal", "Tschad", "Simbabwe", "Kamerun"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cf }
            Reponses := array{"Tschad", "Togo", "Angola", "Zentralafrikanische Republik"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_td }
            Reponses := array{"Kap Verde", "Tschad", "Dschibuti", "Mosambik"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ne }
            Reponses := array{"Gambia", "Niger", "Libyen", "Kamerun"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ng }
            Reponses := array{"Sambia", "Nigeria", "Guinea", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bj }
            Reponses := array{"Burundi", "Benin", "Eritrea", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tg }
            Reponses := array{"Madagaskar", "Liberia", "Togo", "DR Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gh }
            Reponses := array{"Ghana", "Zentralafrikanische Republik", "Madagaskar", "Sao Tome und Principe"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ci }
            Reponses := array{"Komoren", "Elfenbeinkueste", "Lesotho", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lr }
            Reponses := array{"Nigeria", "Mosambik", "Liberia", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sl }
            Reponses := array{"Tansania", "Gabun", "Sierra Leone", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gn }
            Reponses := array{"Namibia", "Guinea", "Nigeria", "Burundi"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gw }
            Reponses := array{"Tansania", "Mosambik", "Burundi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sn }
            Reponses := array{"Seychellen", "Mosambik", "Senegal", "Mauretanien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gm }
            Reponses := array{"Gambia", "Ruanda", "Mauretanien", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ml }
            Reponses := array{"Namibia", "Mali", "Eswatini", "Aethiopien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bf }
            Reponses := array{"Burkina Faso", "Eritrea", "DR Kongo", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mr }
            Reponses := array{"Sao Tome und Principe", "Marokko", "Mauretanien", "Gabun"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cv }
            Reponses := array{"Gabun", "Kap Verde", "Somalia", "Ruanda"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_st }
            Reponses := array{"Sao Tome und Principe", "Sierra Leone", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ao }
            Reponses := array{"Niger", "Angola", "Ghana", "Sao Tome und Principe"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_zm }
            Reponses := array{"Sambia", "Simbabwe", "Elfenbeinkueste", "Gabun"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_zw }
            Reponses := array{"Guinea", "Kenia", "Simbabwe", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mw }
            Reponses := array{"Aethiopien", "Benin", "Malawi", "Ghana"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mz }
            Reponses := array{"Kenia", "Suedsudan", "Algerien", "Mosambik"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mg }
            Reponses := array{"Madagaskar", "Seychellen", "Uganda", "Suedafrika"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_km }
            Reponses := array{"Komoren", "Malawi", "Gabun", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mu }
            Reponses := array{"DR Kongo", "Lesotho", "Mauritius", "Elfenbeinkueste"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sc }
            Reponses := array{"Tschad", "Suedsudan", "Seychellen", "Algerien"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_za }
            Reponses := array{"Suedafrika", "Ruanda", "Aethiopien", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_na }
            Reponses := array{"Marokko", "Namibia", "Botswana", "Tschad"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bw }
            Reponses := array{"Seychellen", "Tansania", "Botswana", "Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ls }
            Reponses := array{"Seychellen", "Lesotho", "Kenia", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sz }
            Reponses := array{"Aequatorialguinea", "Eswatini", "Sudan", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_us }
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ca }
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Syrien"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_mx }
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gt }
            Reponses := array{"El Salvador", "Nicaragua", "Haiti", "Guatemala"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bz }
            Reponses := array{"El Salvador", "Bahamas", "Trinidad und Tobago", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_hn }
            Reponses := array{"Bahamas", "Panama", "Honduras", "St. Kitts und Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sv }
            Reponses := array{"Antigua und Barbuda", "El Salvador", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ni }
            Reponses := array{"Dominikanische Republik", "Panama", "Nicaragua", "St. Kitts und Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cr }
            Reponses := array{"Bahamas", "Costa Rica", "St. Kitts und Nevis", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pa }
            Reponses := array{"Panama", "Honduras", "Haiti", "Dominikanische Republik"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bs }
            Reponses := array{"Grenada", "Bahamas", "Nicaragua", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cu }
            Reponses := array{"El Salvador", "Bahamas", "Antigua und Barbuda", "Kuba"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_jm }
            Reponses := array{"Jamaika", "Belize", "Dominikanische Republik", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ht }
            Reponses := array{"St. Kitts und Nevis", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_do }
            Reponses := array{"Guatemala", "Dominikanische Republik", "Antigua und Barbuda", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_kn }
            Reponses := array{"St. Kitts und Nevis", "Bahamas", "Panama", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ag }
            Reponses := array{"Antigua und Barbuda", "St. Vincent", "Guatemala", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_dm }
            Reponses := array{"Dominica", "Bahamas", "Costa Rica", "St. Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_lc }
            Reponses := array{"St. Lucia", "Dominikanische Republik", "Trinidad und Tobago", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_vc }
            Reponses := array{"Trinidad und Tobago", "St. Vincent", "Guatemala", "Jamaika"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bb }
            Reponses := array{"Belize", "Barbados", "Panama", "Trinidad und Tobago"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gd }
            Reponses := array{"Grenada", "Dominica", "Trinidad und Tobago", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_tt }
            Reponses := array{"Kuba", "St. Kitts und Nevis", "Trinidad und Tobago", "Dominikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_co }
            Reponses := array{"Ecuador", "Kolumbien", "Suriname", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ve }
            Reponses := array{"Suriname", "Chile", "Guyana", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_gy }
            Reponses := array{"Guyana", "Uruguay", "Bolivien", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_sr }
            Reponses := array{"Kolumbien", "Chile", "Suriname", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ec }
            Reponses := array{"Argentinien", "Ecuador", "Bolivien", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_pe }
            Reponses := array{"Bolivien", "Peru", "Ecuador", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_br }
            Reponses := array{"Brasilien", "Guyana", "Venezuela", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_bo }
            Reponses := array{"Brasilien", "Kolumbien", "Bolivien", "Chile"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_py }
            Reponses := array{"Argentinien", "Bolivien", "Paraguay", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_uy }
            Reponses := array{"Chile", "Paraguay", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_cl }
            Reponses := array{"Uruguay", "Ecuador", "Suriname", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Welche verpixelte Flagge ist das?"
            Image := option{ flags_pixel.fpx_ar }
            Reponses := array{"Paraguay", "Kolumbien", "Argentinien", "Ecuador"}
            BonneReponse := 2

MakeFlagsPixelQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_fr }
            Reponses := array{"Norvegia", "Malta", "Spagna", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_de }
            Reponses := array{"Svezia", "Portogallo", "Italia", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_it }
            Reponses := array{"Citta del Vaticano", "Italia", "Danimarca", "Spagna"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_es }
            Reponses := array{"Austria", "Francia", "Norvegia", "Spagna"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pt }
            Reponses := array{"Malta", "Liechtenstein", "Paesi Bassi", "Portogallo"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gb }
            Reponses := array{"Danimarca", "Austria", "Citta del Vaticano", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ie }
            Reponses := array{"Andorra", "Paesi Bassi", "Irlanda", "Norvegia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_be }
            Reponses := array{"Belgio", "Danimarca", "Regno Unito", "Andorra"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_nl }
            Reponses := array{"Belgio", "Paesi Bassi", "Italia", "Regno Unito"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lu }
            Reponses := array{"Lussemburgo", "Spagna", "Norvegia", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ch }
            Reponses := array{"Belgio", "Svizzera", "Spagna", "Lussemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_at }
            Reponses := array{"Monaco", "Malta", "Austria", "Danimarca"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mc }
            Reponses := array{"Monaco", "San Marino", "Norvegia", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ad }
            Reponses := array{"Malta", "Regno Unito", "Norvegia", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_li }
            Reponses := array{"Francia", "Liechtenstein", "Portogallo", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sm }
            Reponses := array{"San Marino", "Citta del Vaticano", "Irlanda", "Danimarca"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_va }
            Reponses := array{"Lussemburgo", "Citta del Vaticano", "Austria", "Svizzera"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mt }
            Reponses := array{"Austria", "Francia", "Svezia", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_is }
            Reponses := array{"Andorra", "Danimarca", "Islanda", "Lussemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_no }
            Reponses := array{"Lussemburgo", "San Marino", "Svezia", "Norvegia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_se }
            Reponses := array{"Svezia", "Francia", "Liechtenstein", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_dk }
            Reponses := array{"Spagna", "Danimarca", "Citta del Vaticano", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_fi }
            Reponses := array{"Finlandia", "Germania", "Monaco", "Spagna"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pl }
            Reponses := array{"Albania", "Polonia", "Estonia", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cz }
            Reponses := array{"Bosnia ed Erzegovina", "Cechia", "Russia", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sk }
            Reponses := array{"Cechia", "Slovacchia", "Serbia", "Bosnia ed Erzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_hu }
            Reponses := array{"Lettonia", "Bosnia ed Erzegovina", "Ungheria", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_si }
            Reponses := array{"Albania", "Ungheria", "Slovenia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_hr }
            Reponses := array{"Ungheria", "Romania", "Croazia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ba }
            Reponses := array{"Bosnia ed Erzegovina", "Russia", "Lituania", "Macedonia del Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_rs }
            Reponses := array{"Serbia", "Ungheria", "Estonia", "Macedonia del Nord"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_me }
            Reponses := array{"Estonia", "Polonia", "Moldavia", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mk }
            Reponses := array{"Macedonia del Nord", "Slovenia", "Lituania", "Ucraina"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_al }
            Reponses := array{"Estonia", "Cechia", "Albania", "Grecia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gr }
            Reponses := array{"Grecia", "Ungheria", "Lituania", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bg }
            Reponses := array{"Ucraina", "Bosnia ed Erzegovina", "Serbia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ro }
            Reponses := array{"Cipro", "Lituania", "Romania", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_md }
            Reponses := array{"Bosnia ed Erzegovina", "Bulgaria", "Slovacchia", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ua }
            Reponses := array{"Macedonia del Nord", "Ungheria", "Estonia", "Ucraina"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_by }
            Reponses := array{"Bosnia ed Erzegovina", "Moldavia", "Bielorussia", "Serbia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ru }
            Reponses := array{"Romania", "Russia", "Ungheria", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ee }
            Reponses := array{"Romania", "Montenegro", "Lituania", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lv }
            Reponses := array{"Lettonia", "Grecia", "Bielorussia", "Ungheria"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lt }
            Reponses := array{"Lituania", "Macedonia del Nord", "Ungheria", "Romania"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cy }
            Reponses := array{"Cipro", "Croazia", "Polonia", "Bulgaria"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tr }
            Reponses := array{"Armenia", "Qatar", "Turchia", "Giordania"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_il }
            Reponses := array{"Emirati Arabi Uniti", "Armenia", "Azerbaigian", "Israele"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ps }
            Reponses := array{"Georgia", "Palestina", "Turchia", "Armenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lb }
            Reponses := array{"Oman", "Libano", "Turchia", "Emirati Arabi Uniti"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sy }
            Reponses := array{"Azerbaigian", "Qatar", "Siria", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_jo }
            Reponses := array{"Giordania", "Azerbaigian", "Palestina", "Bahrein"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_iq }
            Reponses := array{"Giordania", "Iraq", "Yemen", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ir }
            Reponses := array{"Israele", "Georgia", "Iran", "Palestina"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sa }
            Reponses := array{"Arabia Saudita", "Yemen", "Israele", "Iraq"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ye }
            Reponses := array{"Iraq", "Turchia", "Oman", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_om }
            Reponses := array{"Iran", "Emirati Arabi Uniti", "Oman", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ae }
            Reponses := array{"Emirati Arabi Uniti", "Israele", "Iraq", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_qa }
            Reponses := array{"Georgia", "Kuwait", "Qatar", "Libano"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bh }
            Reponses := array{"Yemen", "Bahrein", "Arabia Saudita", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kw }
            Reponses := array{"Bahrein", "Kuwait", "Armenia", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ge }
            Reponses := array{"Qatar", "Georgia", "Kuwait", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_am }
            Reponses := array{"Oman", "Arabia Saudita", "Turchia", "Armenia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_az }
            Reponses := array{"Emirati Arabi Uniti", "Bahrein", "Siria", "Azerbaigian"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kz }
            Reponses := array{"Tagikistan", "Kazakistan", "Mongolia", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_uz }
            Reponses := array{"Afghanistan", "Turkmenistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tm }
            Reponses := array{"Mongolia", "Kazakistan", "Kirghizistan", "Turkmenistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kg }
            Reponses := array{"Tagikistan", "Kirghizistan", "Kazakistan", "Turkmenistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tj }
            Reponses := array{"Mongolia", "Tagikistan", "Kirghizistan", "Kazakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_af }
            Reponses := array{"Tagikistan", "Turkmenistan", "Afghanistan", "Mongolia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mn }
            Reponses := array{"Kirghizistan", "Mongolia", "Turkmenistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cn }
            Reponses := array{"Thailandia", "Vietnam", "Cina", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_jp }
            Reponses := array{"Indonesia", "Filippine", "Giappone", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kr }
            Reponses := array{"Thailandia", "Laos", "Corea del Sud", "Maldive"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kp }
            Reponses := array{"India", "Corea del Nord", "Birmania", "Corea del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_in }
            Reponses := array{"Indonesia", "India", "Bhutan", "Filippine"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pk }
            Reponses := array{"Filippine", "Pakistan", "Cambogia", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bd }
            Reponses := array{"Bangladesh", "Corea del Sud", "Thailandia", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lk }
            Reponses := array{"Giappone", "Cambogia", "Sri Lanka", "Thailandia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_np }
            Reponses := array{"Birmania", "Singapore", "Nepal", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bt }
            Reponses := array{"Maldive", "Bhutan", "Birmania", "Timor Est"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mv }
            Reponses := array{"Sri Lanka", "Nepal", "Laos", "Maldive"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mm }
            Reponses := array{"Laos", "Thailandia", "Birmania", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_th }
            Reponses := array{"Thailandia", "Sri Lanka", "Brunei", "Filippine"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_la }
            Reponses := array{"Laos", "Sri Lanka", "Indonesia", "Thailandia"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kh }
            Reponses := array{"Cambogia", "Maldive", "Thailandia", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_vn }
            Reponses := array{"Maldive", "Sri Lanka", "Timor Est", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_my }
            Reponses := array{"Cambogia", "Malesia", "Cina", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sg }
            Reponses := array{"Singapore", "Indonesia", "Corea del Sud", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_id }
            Reponses := array{"Sri Lanka", "Cina", "India", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bn }
            Reponses := array{"Corea del Sud", "Bangladesh", "Sri Lanka", "Brunei"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ph }
            Reponses := array{"Corea del Nord", "Indonesia", "Filippine", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tl }
            Reponses := array{"Timor Est", "Sri Lanka", "Singapore", "Pakistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_au }
            Reponses := array{"Micronesia", "Nuova Zelanda", "Australia", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_nz }
            Reponses := array{"Micronesia", "Nuova Zelanda", "Isole Marshall", "Isole Salomone"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pg }
            Reponses := array{"Australia", "Tuvalu", "Samoa", "Papua Nuova Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_fj }
            Reponses := array{"Figi", "Isole Marshall", "Palau", "Nuova Zelanda"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sb }
            Reponses := array{"Isole Salomone", "Palau", "Samoa", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_vu }
            Reponses := array{"Vanuatu", "Samoa", "Micronesia", "Isole Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ws }
            Reponses := array{"Nuova Zelanda", "Samoa", "Papua Nuova Guinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_to }
            Reponses := array{"Figi", "Tonga", "Isole Salomone", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tv }
            Reponses := array{"Samoa", "Nuova Zelanda", "Vanuatu", "Tuvalu"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ki }
            Reponses := array{"Tonga", "Kiribati", "Tuvalu", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_nr }
            Reponses := array{"Papua Nuova Guinea", "Isole Salomone", "Nauru", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pw }
            Reponses := array{"Palau", "Micronesia", "Vanuatu", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_fm }
            Reponses := array{"Australia", "Micronesia", "Nauru", "Nuova Zelanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mh }
            Reponses := array{"Palau", "Papua Nuova Guinea", "Isole Marshall", "Tuvalu"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ma }
            Reponses := array{"Togo", "Repubblica Centrafricana", "Marocco", "Guinea-Bissau"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_dz }
            Reponses := array{"Ruanda", "Sierra Leone", "Algeria", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tn }
            Reponses := array{"Mauritius", "Egitto", "Capo Verde", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ly }
            Reponses := array{"RD Congo", "Sierra Leone", "Sudafrica", "Libia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_eg }
            Reponses := array{"Egitto", "Congo", "Madagascar", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sd }
            Reponses := array{"Togo", "Sudan", "Mali", "Ghana"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ss }
            Reponses := array{"Sudan del Sud", "Kenya", "Malawi", "Senegal"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_et }
            Reponses := array{"Ruanda", "Lesotho", "Gambia", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_er }
            Reponses := array{"Egitto", "Eritrea", "Liberia", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_dj }
            Reponses := array{"Seychelles", "Malawi", "Ghana", "Gibuti"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_so }
            Reponses := array{"Gambia", "Algeria", "Togo", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ke }
            Reponses := array{"Kenya", "Algeria", "Somalia", "Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ug }
            Reponses := array{"Repubblica Centrafricana", "Uganda", "Guinea", "Madagascar"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tz }
            Reponses := array{"Mozambico", "Sierra Leone", "Tanzania", "Tunisia"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_rw }
            Reponses := array{"Ruanda", "Zimbabwe", "Marocco", "Liberia"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bi }
            Reponses := array{"Madagascar", "Eswatini", "Guinea", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cd }
            Reponses := array{"Tunisia", "Gambia", "RD Congo", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cg }
            Reponses := array{"Libia", "Mozambico", "Congo", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ga }
            Reponses := array{"Gabon", "Eritrea", "Somalia", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gq }
            Reponses := array{"Guinea Equatoriale", "Ruanda", "Algeria", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cm }
            Reponses := array{"Senegal", "Ciad", "Zimbabwe", "Camerun"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cf }
            Reponses := array{"Ciad", "Togo", "Angola", "Repubblica Centrafricana"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_td }
            Reponses := array{"Capo Verde", "Ciad", "Gibuti", "Mozambico"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ne }
            Reponses := array{"Gambia", "Niger", "Libia", "Camerun"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ng }
            Reponses := array{"Zambia", "Nigeria", "Guinea", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bj }
            Reponses := array{"Burundi", "Benin", "Eritrea", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tg }
            Reponses := array{"Madagascar", "Liberia", "Togo", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gh }
            Reponses := array{"Ghana", "Repubblica Centrafricana", "Madagascar", "Sao Tome e Principe"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ci }
            Reponses := array{"Comore", "Costa d'Avorio", "Lesotho", "Liberia"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lr }
            Reponses := array{"Nigeria", "Mozambico", "Liberia", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sl }
            Reponses := array{"Tanzania", "Gabon", "Sierra Leone", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gn }
            Reponses := array{"Namibia", "Guinea", "Nigeria", "Burundi"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gw }
            Reponses := array{"Tanzania", "Mozambico", "Burundi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sn }
            Reponses := array{"Seychelles", "Mozambico", "Senegal", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gm }
            Reponses := array{"Gambia", "Ruanda", "Mauritania", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ml }
            Reponses := array{"Namibia", "Mali", "Eswatini", "Etiopia"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bf }
            Reponses := array{"Burkina Faso", "Eritrea", "RD Congo", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mr }
            Reponses := array{"Sao Tome e Principe", "Marocco", "Mauritania", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cv }
            Reponses := array{"Gabon", "Capo Verde", "Somalia", "Ruanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_st }
            Reponses := array{"Sao Tome e Principe", "Sierra Leone", "Togo", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ao }
            Reponses := array{"Niger", "Angola", "Ghana", "Sao Tome e Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_zm }
            Reponses := array{"Zambia", "Zimbabwe", "Costa d'Avorio", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_zw }
            Reponses := array{"Guinea", "Kenya", "Zimbabwe", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mw }
            Reponses := array{"Etiopia", "Benin", "Malawi", "Ghana"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mz }
            Reponses := array{"Kenya", "Sudan del Sud", "Algeria", "Mozambico"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mg }
            Reponses := array{"Madagascar", "Seychelles", "Uganda", "Sudafrica"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_km }
            Reponses := array{"Comore", "Malawi", "Gabon", "Mali"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mu }
            Reponses := array{"RD Congo", "Lesotho", "Mauritius", "Costa d'Avorio"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sc }
            Reponses := array{"Ciad", "Sudan del Sud", "Seychelles", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_za }
            Reponses := array{"Sudafrica", "Ruanda", "Etiopia", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_na }
            Reponses := array{"Marocco", "Namibia", "Botswana", "Ciad"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bw }
            Reponses := array{"Seychelles", "Tanzania", "Botswana", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ls }
            Reponses := array{"Seychelles", "Lesotho", "Kenya", "Botswana"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sz }
            Reponses := array{"Guinea Equatoriale", "Eswatini", "Sudan", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_us }
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Benin"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ca }
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Siria"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_mx }
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gt }
            Reponses := array{"El Salvador", "Nicaragua", "Haiti", "Guatemala"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bz }
            Reponses := array{"El Salvador", "Bahamas", "Trinidad e Tobago", "Belize"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_hn }
            Reponses := array{"Bahamas", "Panama", "Honduras", "Saint Kitts e Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sv }
            Reponses := array{"Antigua e Barbuda", "El Salvador", "Belize", "Nicaragua"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ni }
            Reponses := array{"Repubblica Dominicana", "Panama", "Nicaragua", "Saint Kitts e Nevis"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cr }
            Reponses := array{"Bahamas", "Costa Rica", "Saint Kitts e Nevis", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pa }
            Reponses := array{"Panama", "Honduras", "Haiti", "Repubblica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bs }
            Reponses := array{"Grenada", "Bahamas", "Nicaragua", "Costa Rica"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cu }
            Reponses := array{"El Salvador", "Bahamas", "Antigua e Barbuda", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_jm }
            Reponses := array{"Giamaica", "Belize", "Repubblica Dominicana", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ht }
            Reponses := array{"Saint Kitts e Nevis", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_do }
            Reponses := array{"Guatemala", "Repubblica Dominicana", "Antigua e Barbuda", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_kn }
            Reponses := array{"Saint Kitts e Nevis", "Bahamas", "Panama", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ag }
            Reponses := array{"Antigua e Barbuda", "Saint Vincent", "Guatemala", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_dm }
            Reponses := array{"Dominica", "Bahamas", "Costa Rica", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_lc }
            Reponses := array{"Santa Lucia", "Repubblica Dominicana", "Trinidad e Tobago", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_vc }
            Reponses := array{"Trinidad e Tobago", "Saint Vincent", "Guatemala", "Giamaica"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bb }
            Reponses := array{"Belize", "Barbados", "Panama", "Trinidad e Tobago"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gd }
            Reponses := array{"Grenada", "Dominica", "Trinidad e Tobago", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_tt }
            Reponses := array{"Cuba", "Saint Kitts e Nevis", "Trinidad e Tobago", "Repubblica Dominicana"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_co }
            Reponses := array{"Ecuador", "Colombia", "Suriname", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ve }
            Reponses := array{"Suriname", "Cile", "Guyana", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_gy }
            Reponses := array{"Guyana", "Uruguay", "Bolivia", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_sr }
            Reponses := array{"Colombia", "Cile", "Suriname", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ec }
            Reponses := array{"Argentina", "Ecuador", "Bolivia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_pe }
            Reponses := array{"Bolivia", "Peru", "Ecuador", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_br }
            Reponses := array{"Brasile", "Guyana", "Venezuela", "Cile"}
            BonneReponse := 0
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_bo }
            Reponses := array{"Brasile", "Colombia", "Bolivia", "Cile"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_py }
            Reponses := array{"Argentina", "Bolivia", "Paraguay", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_uy }
            Reponses := array{"Cile", "Paraguay", "Uruguay", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_cl }
            Reponses := array{"Uruguay", "Ecuador", "Suriname", "Cile"}
            BonneReponse := 3
        question:
            Enonce := "Quale bandiera (pixelata) e questa?"
            Image := option{ flags_pixel.fpx_ar }
            Reponses := array{"Paraguay", "Colombia", "Argentina", "Ecuador"}
            BonneReponse := 2
