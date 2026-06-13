# Quizz RECORDS GEO (population/superficie, donnees REST Countries)
# GENERE par tools/build_records.py — NE PAS EDITER A LA MAIN.

RecordsDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 1, 2, 1, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 0, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 2, 1, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 1, 2, 1, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 0, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 0, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 2, 1, 0, 1, 1, 2, 0, 1, 1, 1, 1, 2, 0, 0, 1, 1, 1, 2, 1, 1, 0, 2, 2, 1, 1, 2, 1, 2, 2, 2, 1, 2, 2, 2, 2, 1, 1, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 1, 1, 2, 1, 2, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 1, 0, 2, 2, 1, 2, 2, 1, 1, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 1, 1, 2, 1, 1, 0}

MakeRecordsQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Irlande", "France", "Autriche", "Suisse"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Belgique", "Danemark", "Islande", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Suede", "Portugal", "Autriche", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Autriche", "Malte", "Suede", "Espagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Islande", "Luxembourg", "Portugal", "Norvege"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Royaume-Uni", "Saint-Marin", "Suede", "Malte"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Marin", "Monaco", "Malte", "Irlande"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Belgique", "Vatican", "Finlande", "Islande"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Malte", "Irlande", "Finlande", "Pays-Bas"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Marin", "Luxembourg", "Andorre", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Luxembourg", "Liechtenstein", "Suisse", "Norvege"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Autriche", "Finlande", "Vatican", "Luxembourg"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Palaos", "Vatican", "Nauru", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Monaco", "Saint-Marin", "Andorre", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Vatican", "Liechtenstein", "Tuvalu", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Vatican", "Saint-Marin", "Nauru", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Andorre", "Malte", "Liechtenstein", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Monaco", "Vatican", "Islande", "Andorre"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Monaco", "Islande", "Vatican", "Norvege"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Andorre", "Saint-Marin", "Suede", "Danemark"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Danemark", "Monaco", "Islande", "Saint-Marin"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Luxembourg", "Finlande", "Saint-Marin", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tchequie", "Macedoine du Nord", "Roumanie", "Pologne"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bosnie-Herzegovine", "Slovenie", "Tchequie", "Moldavie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bosnie-Herzegovine", "Macedoine du Nord", "Slovaquie", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Croatie", "Hongrie", "Lettonie", "Moldavie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Barbade", "Montenegro", "Chypre", "Slovenie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lettonie", "Estonie", "Macedoine du Nord", "Croatie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bosnie-Herzegovine", "Montenegro", "Lettonie", "Chypre"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bosnie-Herzegovine", "Serbie", "Lituanie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Liechtenstein", "Montenegro", "Tonga", "Antigua-et-Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Montenegro", "Macedoine du Nord", "Chypre", "Vatican"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Albanie", "Montenegro", "Chypre", "Estonie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lituanie", "Grece", "Chypre", "Albanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Croatie", "Moldavie", "Bulgarie", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bulgarie", "Grece", "Roumanie", "Macedoine du Nord"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Chypre", "Estonie", "Montenegro", "Moldavie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Chypre", "Tchequie", "Hongrie", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Slovaquie", "Bielorussie", "Croatie", "Bosnie-Herzegovine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Russie", "Tchequie", "Roumanie", "Lettonie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Islande", "Montenegro", "Tonga", "Estonie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lettonie", "Montenegro", "Cap-Vert", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Montenegro", "Estonie", "Chypre", "Lituanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Chypre", "Montenegro", "Seychelles", "Malte"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Liban", "Georgie", "Irak", "Turquie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Koweit", "Palestine", "Israel", "Georgie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Palestine", "Bahrein", "Qatar", "Antigua-et-Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Georgie", "Koweit", "Liban", "Bahrein"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Azerbaidjan", "Syrie", "Israel", "Jordanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Armenie", "Jordanie", "Bahrein", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Irak", "Liban", "Bahrein", "Syrie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Jordanie", "Israel", "Koweit", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Azerbaidjan", "Israel", "Arabie saoudite", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Koweit", "Israel", "Georgie", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Oman", "Bahrein", "Armenie", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Emirats arabes unis", "Oman", "Koweit", "Georgie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bahrein", "Qatar", "Trinite-et-Tobago", "Maldives"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Micronesie", "Islande", "Cap-Vert", "Bahrein"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bahrein", "Koweit", "Kiribati", "Saint-Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Bahrein", "Guyana", "Georgie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Armenie", "Bahrein", "Micronesie", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Azerbaidjan", "Armenie", "Koweit", "Georgie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tadjikistan", "Turkmenistan", "Mongolie", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Kazakhstan", "Turkmenistan", "Ouzbekistan", "Tadjikistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Turkmenistan", "Mongolie", "Seychelles", "Moldavie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Mongolie", "Kirghizistan", "Slovenie", "Dominique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Vatican", "Mongolie", "Armenie", "Tadjikistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Kazakhstan", "Tadjikistan", "Turkmenistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Mongolie", "Djibouti", "Maldives", "Chypre"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Pakistan", "Brunei", "Maldives", "Chine"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Laos", "Japon", "Sri Lanka", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Laos", "Cambodge", "Nepal", "Coree du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Timor oriental", "Laos", "Coree du Nord", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Birmanie", "Inde", "Bhoutan", "Malaisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bhoutan", "Nepal", "Cambodge", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Malaisie", "Bangladesh", "Bhoutan", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sri Lanka", "Maldives", "Brunei", "Singapour"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Laos", "Nepal", "Brunei", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Islande", "Brunei", "Bahamas", "Bhoutan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Maldives", "Samoa", "Nauru", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bhoutan", "Malaisie", "Maldives", "Birmanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Thailande", "Nepal", "Sri Lanka", "Bhoutan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Brunei", "Bhoutan", "Timor oriental", "Laos"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bhoutan", "Cambodge", "Singapour", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Timor oriental", "Singapour", "Sri Lanka", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cambodge", "Bhoutan", "Laos", "Malaisie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Timor oriental", "Singapour", "Brunei", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bangladesh", "Japon", "Bhoutan", "Indonesie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Brunei", "Vatican", "Kiribati", "Saint-Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Philippines", "Coree du Nord", "Singapour", "Timor oriental"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bhoutan", "Maldives", "Brunei", "Timor oriental"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Australie", "Iles Marshall", "Fidji"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Micronesie", "Samoa", "Palaos", "Nouvelle-Zelande"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Palaos", "Fidji", "Tonga", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Iles Marshall", "Fidji", "Tonga", "Micronesie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Samoa", "Iles Salomon", "Micronesie", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tuvalu", "Palaos", "Micronesie", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Kiribati", "Micronesie", "Tuvalu", "Samoa"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tonga", "Palaos", "Nauru", "Iles Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Nauru", "Iles Marshall", "Tuvalu", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tuvalu", "Palaos", "Nauru", "Micronesie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Tuvalu", "Palaos", "Nauru", "Iles Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Malawi", "Centrafrique", "Maroc", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Zambie", "Maurice", "Algerie", "Centrafrique"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Botswana", "Guinee equatoriale", "Erythree", "Tunisie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Djibouti", "Gambie", "Libye", "Cap-Vert"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Algerie", "Egypte", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Soudan", "Eswatini", "Senegal", "Comores"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Soudan du Sud", "Maurice", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Liberia", "Libye", "Ethiopie", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Erythree", "Seychelles", "Guinee-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Djibouti", "Sao Tome-et-Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sao Tome-et-Principe", "Somalie", "Comores", "Gambie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Gabon", "Tunisie", "Kenya", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Djibouti", "Madagascar", "Ouganda", "Zambie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Liberia", "Tanzanie", "Tchad", "Tunisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Rwanda", "Mauritanie", "Sao Tome-et-Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Guinee-Bissau", "Liberia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Malawi", "RD Congo", "Soudan", "Tunisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Congo", "Lesotho", "Guinee equatoriale", "Comores"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Cap-Vert", "Sao Tome-et-Principe", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Guinee equatoriale", "Sao Tome-et-Principe", "Cap-Vert"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Eswatini", "Cameroun", "Libye", "Tunisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sao Tome-et-Principe", "Centrafrique", "Djibouti", "Guinee-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lesotho", "Congo", "Tchad", "Centrafrique"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Botswana", "Niger", "Libye", "Guinee"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Burundi", "Algerie", "Egypte", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Eswatini", "Benin", "Comores", "Gambie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Guinee-Bissau", "Eswatini", "Namibie", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Libye", "Ghana", "Tchad", "Guinee equatoriale"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lesotho", "Gabon", "Liberia", "Cote d'Ivoire"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Liberia", "Sao Tome-et-Principe", "Lesotho", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sierra Leone", "Centrafrique", "Gabon", "Comores"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Guinee", "Sao Tome-et-Principe", "Liberia", "Mauritanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sao Tome-et-Principe", "Eswatini", "Guinee-Bissau", "Cap-Vert"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Botswana", "Erythree", "Senegal"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Gambie", "Cap-Vert", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Congo", "Mali", "Botswana", "Erythree"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Botswana", "Erythree", "Mauritanie", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Mauritanie", "Cap-Vert", "Seychelles", "Maurice"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Sao Tome-et-Principe", "Seychelles", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Seychelles", "Sao Tome-et-Principe", "Saint-Kitts-et-Nevis", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Angola", "Gabon", "Centrafrique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Libye", "Eswatini", "Seychelles", "Zambie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Djibouti", "Liberia", "Sierra Leone", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Centrafrique", "Comores", "Gabon", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Soudan du Sud", "Libye", "Benin", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Botswana", "Madagascar", "Somalie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Seychelles", "Sao Tome-et-Principe", "Palaos"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Sao Tome-et-Principe", "Cap-Vert", "Maurice", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Iles Marshall", "Monaco", "Saint-Kitts-et-Nevis", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Rwanda", "Cameroun", "Zimbabwe", "Afrique du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Comores", "Djibouti", "Maurice", "Namibie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Botswana", "Sao Tome-et-Principe", "Maurice", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Lesotho", "Comores", "Sao Tome-et-Principe", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Cap-Vert", "Sao Tome-et-Principe", "Eswatini", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Mexique", "Etats-Unis", "Canada", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Canada", "Barbade", "Rwanda", "Kazakhstan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Mexique", "Canada", "Malte", "Cambodge"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Panama", "Guatemala", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Belize", "Antigua-et-Barbuda", "Dominique", "Saint-Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Honduras", "Barbade", "Antigua-et-Barbuda", "Bahamas"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Barbade", "Sainte-Lucie", "Salvador", "Dominique"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Grenade", "Nicaragua", "Sainte-Lucie", "Saint-Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Trinite-et-Tobago", "Costa Rica", "Jamaique", "Antigua-et-Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Panama", "Barbade", "Antigua-et-Barbuda", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bahamas", "Antigua-et-Barbuda", "Dominique", "Grenade"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Antigua-et-Barbuda", "Salvador", "Saint-Vincent", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Vincent", "Jamaique", "Grenade", "Sainte-Lucie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Belize", "Haiti", "Salvador", "Grenade"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Nicaragua", "Saint-Kitts-et-Nevis", "Republique dominicaine", "Saint-Vincent"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Vatican", "Saint-Kitts-et-Nevis", "Palaos", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Nauru", "Saint-Kitts-et-Nevis", "Antigua-et-Barbuda", "Iles Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Marin", "Dominique", "Monaco", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Dominique", "Sainte-Lucie", "Antigua-et-Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Vincent", "Saint-Kitts-et-Nevis", "Tuvalu", "Palaos"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Barbade", "Antigua-et-Barbuda", "Saint-Vincent", "Grenade"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Iles Marshall", "Saint-Kitts-et-Nevis", "Grenade", "Vatican"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Antigua-et-Barbuda", "Saint-Kitts-et-Nevis", "Sainte-Lucie", "Trinite-et-Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Colombie", "Chili", "Equateur", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Guyana", "Uruguay", "Venezuela", "Equateur"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Vatican", "Iles Marshall", "Saint-Kitts-et-Nevis", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Barbade", "Suriname", "Palaos"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Suriname", "Paraguay", "Equateur", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Suriname", "Chili", "Perou", "Equateur"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Argentine", "Bresil", "Paraguay", "Colombie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bolivie", "Uruguay", "Suriname", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Paraguay", "Suriname", "Guyana", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Guyana", "Suriname", "Uruguay", "Saint-Marin"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Bolivie", "Guyana", "Suriname", "Chili"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus grande population ?"
            Reponses := array{"Paraguay", "Uruguay", "Argentine", "Bolivie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Nigeria", "Etats-Unis", "France"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bresil", "Bangladesh", "Allemagne", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Inde", "Nigeria", "Italie", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Espagne", "Allemagne", "Iran", "Russie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Portugal", "Italie", "France", "Pays-Bas"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chine", "Ethiopie", "Russie", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Espagne", "Portugal", "Irlande", "Suede"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Belgique", "Italie", "France", "Royaume-Uni"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Italie", "France", "Espagne", "Pays-Bas"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Autriche", "Italie", "Luxembourg", "Suede"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Suisse", "Royaume-Uni", "Allemagne", "Espagne"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"France", "Allemagne", "Espagne", "Autriche"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Allemagne", "Monaco", "Islande", "Italie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"France", "Finlande", "Andorre", "Espagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Portugal", "Norvege", "Finlande", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Finlande", "Saint-Marin", "Allemagne", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Autriche", "Vatican", "Portugal", "Islande"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Belgique", "Pays-Bas", "Malte", "France"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Portugal", "Luxembourg", "Islande", "Finlande"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Norvege", "Royaume-Uni", "Espagne", "Suede"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Royaume-Uni", "Suede", "Pays-Bas", "Espagne"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Portugal", "Espagne", "Danemark", "Italie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Suede", "Royaume-Uni", "Finlande", "Belgique"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Pologne", "Iran", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ukraine", "Pologne", "Russie", "Tchequie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Grece", "Hongrie", "Slovaquie", "Pologne"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Roumanie", "Russie", "Pologne", "Hongrie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Slovaquie", "Slovenie", "Tchequie", "Bulgarie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Croatie", "Bulgarie", "Russie", "Roumanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Hongrie", "Bosnie-Herzegovine", "Bielorussie", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pologne", "Roumanie", "Serbie", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ukraine", "Albanie", "Serbie", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Serbie", "Bulgarie", "Macedoine du Nord", "Croatie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pologne", "Albanie", "Ukraine", "Grece"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Grece", "Ukraine", "Russie", "Pologne"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ukraine", "Roumanie", "Pologne", "Bulgarie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Pologne", "Ukraine", "Roumanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ukraine", "Moldavie", "Bielorussie", "Slovaquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Ukraine", "Bresil", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Ukraine", "Bielorussie", "Roumanie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Etats-Unis", "Indonesie", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bosnie-Herzegovine", "Bulgarie", "Bielorussie", "Estonie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Hongrie", "Tchequie", "Lettonie", "Croatie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Roumanie", "Russie", "Lituanie", "Bielorussie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pologne", "Moldavie", "Chypre", "Bulgarie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pakistan", "Turquie", "Nigeria", "Russie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Yemen", "Syrie", "Israel", "Arabie saoudite"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Palestine", "Turquie", "Yemen", "Azerbaidjan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Yemen", "Liban", "Turquie", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Turquie", "Syrie", "Irak", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Jordanie", "Turquie", "Irak", "Syrie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Turquie", "Irak", "Iran", "Mexique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pakistan", "Iran", "Etats-Unis", "Inde"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Turquie", "Arabie saoudite", "Iran", "France"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Yemen", "Iran", "Turquie", "Russie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Turquie", "Yemen", "Arabie saoudite", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Arabie saoudite", "Emirats arabes unis", "Syrie", "Turquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Emirats arabes unis", "Azerbaidjan", "Arabie saoudite", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Liban", "Bahrein", "Qatar", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Iran", "Turquie", "Azerbaidjan", "Koweit"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Georgie", "Israel", "Emirats arabes unis", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Armenie", "Yemen", "Iran", "Emirats arabes unis"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Yemen", "Syrie", "Turquie", "Azerbaidjan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ghana", "Ouzbekistan", "Afghanistan", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Inde", "Pakistan", "Russie", "Ouzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Afghanistan", "Turkmenistan", "Kazakhstan", "Ouzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Kazakhstan", "Kirghizistan", "Ouzbekistan", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Kazakhstan", "Tadjikistan", "Afghanistan", "Ouzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Royaume-Uni", "France", "Afghanistan", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Afghanistan", "Kirghizistan", "Turkmenistan", "Mongolie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Japon", "Pakistan", "Chine", "Indonesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Indonesie", "Chine", "Coree du Sud", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pakistan", "Philippines", "Thailande", "Coree du Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bangladesh", "Inde", "Indonesie", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Vietnam", "Japon", "Sri Lanka", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Birmanie", "Philippines", "Japon", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chine", "Thailande", "Bhoutan", "Nepal"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Timor oriental", "Chine", "Cambodge", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Philippines", "Birmanie", "Indonesie", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Inde", "Thailande", "Japon", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Laos", "Chine", "Sri Lanka", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cambodge", "Vietnam", "Birmanie", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chine", "Pakistan", "Vietnam", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Malaisie", "Birmanie", "Philippines", "Inde"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Singapour", "Coree du Nord", "Thailande", "Birmanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chine", "Brunei", "Thailande", "Japon"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Inde", "Indonesie", "Chine", "Philippines"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Pakistan", "Japon", "Laos", "Timor oriental"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"France", "Australie", "Vietnam", "Royaume-Uni"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nouvelle-Zelande", "Australie", "Papouasie-Nouvelle-Guinee", "Ouzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Australie", "Senegal", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Nouvelle-Zelande", "Fidji", "Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Australie", "Nouvelle-Zelande", "Papouasie-Nouvelle-Guinee", "Iles Salomon"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Fidji", "Australie", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Samoa", "Australie", "Nouvelle-Zelande", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tonga", "Samoa", "Vanuatu", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Micronesie", "Fidji", "Tuvalu", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Vanuatu", "Kiribati", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Australie", "Papouasie-Nouvelle-Guinee", "Nauru", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Kiribati", "Vanuatu", "Palaos", "Iles Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nouvelle-Zelande", "Australie", "Micronesie", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Fidji", "Samoa", "Tonga", "Iles Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ethiopie", "RD Congo", "Egypte", "Maroc"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Egypte", "RD Congo", "Algerie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Madagascar", "Algerie", "Tunisie", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tanzanie", "Libye", "Benin", "Tchad"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Egypte", "Nigeria", "Etats-Unis", "Indonesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Ethiopie", "Soudan", "Egypte"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Mali", "Egypte", "Soudan du Sud", "Cote d'Ivoire"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Indonesie", "Nigeria", "Pakistan", "Ethiopie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Zimbabwe", "Erythree", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cote d'Ivoire", "Djibouti", "Centrafrique", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Angola", "RD Congo", "Nigeria", "Somalie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Egypte", "Kenya", "Ethiopie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ethiopie", "Ouganda", "Nigeria", "Egypte"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ethiopie", "Egypte", "Nigeria", "Tanzanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cameroun", "Madagascar", "Kenya", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cote d'Ivoire", "Egypte", "Burkina Faso", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bangladesh", "Nigeria", "RD Congo", "Chine"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Soudan", "Egypte", "Maroc", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Gabon", "Burkina Faso", "Soudan du Sud", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Mali", "Guinee equatoriale", "Liberia", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cameroun", "Ouganda", "Tanzanie", "Algerie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Soudan", "Centrafrique", "Sierra Leone", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tchad", "Madagascar", "Cote d'Ivoire", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Niger", "Kenya", "Afrique du Sud", "Tanzanie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chine", "Nigeria", "Inde", "Etats-Unis"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Afrique du Sud", "Algerie", "Benin", "Soudan"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Burkina Faso", "Ouganda", "Togo", "Algerie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tanzanie", "Egypte", "Ghana", "Ethiopie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Afrique du Sud", "Kenya", "Ethiopie", "Cote d'Ivoire"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Zimbabwe", "Mozambique", "Liberia", "Cote d'Ivoire"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cote d'Ivoire", "Egypte", "Soudan", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Algerie", "Tanzanie", "Soudan", "Guinee"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Senegal", "Benin", "Malawi", "Guinee-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Soudan", "Ouganda", "Senegal", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ghana", "Gambie", "Burundi", "Erythree"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"RD Congo", "Soudan", "Kenya", "Mali"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Burkina Faso", "Soudan", "RD Congo", "Ethiopie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Mauritanie", "Ouganda", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Kenya", "Guinee", "Ethiopie", "Cap-Vert"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Malawi", "Rwanda", "Sao Tome-et-Principe", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Angola", "Kenya", "Ethiopie", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"RD Congo", "Tanzanie", "Egypte", "Zambie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tanzanie", "Ethiopie", "Ouganda", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Tanzanie", "Malawi", "Egypte", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nigeria", "Egypte", "Mozambique", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Egypte", "RD Congo", "Madagascar", "Ouganda"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Comores", "Tunisie", "Maroc", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Erythree", "Maurice", "Egypte", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Cap-Vert", "Madagascar", "Seychelles", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Egypte", "Ethiopie", "Nigeria", "Afrique du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Ouganda", "Togo", "Namibie", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Madagascar", "Niger", "Algerie", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Madagascar", "Egypte", "Lesotho", "Zambie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Zambie", "Liberia", "Tanzanie", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Turquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Inde", "Etats-Unis", "Chine", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Guatemala", "Mexique", "Afghanistan", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Belize", "Haiti", "Guatemala", "Jamaique"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Birmanie", "Guatemala", "Nigeria", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Guatemala", "Haiti", "Republique dominicaine", "Salvador"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Republique dominicaine", "Nicaragua", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Costa Rica", "Honduras", "Guatemala", "Cuba"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Panama", "Cuba", "Haiti", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Panama", "Bahamas", "Trinite-et-Tobago", "Republique dominicaine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Russie", "Bangladesh", "Allemagne", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Jamaique", "Republique dominicaine", "Salvador", "Costa Rica"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Thailande", "Ouzbekistan", "Haiti", "Japon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Coree du Sud", "Yemen", "Republique dominicaine", "Ethiopie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Honduras", "Trinite-et-Tobago", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Salvador", "Republique dominicaine", "Nicaragua", "Antigua-et-Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Republique dominicaine", "Dominique", "Nicaragua", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Sainte-Lucie", "Trinite-et-Tobago", "Cuba", "Republique dominicaine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Saint-Vincent", "Bahamas", "Sainte-Lucie", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Nicaragua", "Barbade", "Jamaique", "Haiti"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Guatemala", "Jamaique", "Grenade", "Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Haiti", "Honduras", "Trinite-et-Tobago", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Colombie", "Bresil", "Japon", "Indonesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Colombie", "Bresil", "Venezuela", "Afrique du Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Chili", "Perou", "Argentine", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Suriname", "Bolivie", "Paraguay", "Chili"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bresil", "Argentine", "Perou", "Equateur"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Bresil", "Perou", "Allemagne", "Inde"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Argentine", "Perou", "Bresil", "Bolivie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Paraguay", "Argentine", "Equateur", "Colombie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Colombie", "Uruguay", "Bresil", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Argentine", "Bresil", "Colombie", "Chili"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays a la plus petite population ?"
            Reponses := array{"Argentine", "Bresil", "Chine", "Etats-Unis"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Allemagne", "France", "Belgique", "Andorre"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Portugal", "Liechtenstein", "Islande", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Autriche", "Italie", "Saint-Marin", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Espagne", "Suisse", "Italie", "Autriche"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Luxembourg", "Saint-Marin", "Portugal", "Vatican"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Pays-Bas", "Malte", "Suisse", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vatican", "Malte", "Irlande", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Liechtenstein", "Belgique", "Luxembourg", "Malte"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Monaco", "Pays-Bas", "Vatican", "Andorre"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Malte", "Andorre", "Luxembourg", "Saint-Marin"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Monaco", "Vatican", "Suisse", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Belgique", "Luxembourg", "Danemark", "Autriche"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Liechtenstein", "Monaco", "Saint-Marin", "Andorre"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Liechtenstein", "Monaco", "Vatican", "Saint-Marin"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Marin", "Vatican", "Monaco", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vatican", "Liechtenstein", "Saint-Marin", "Malte"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vatican", "Islande", "Saint-Marin", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Luxembourg", "Norvege", "Irlande", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Belgique", "Vatican", "Suede", "Irlande"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Danemark", "Saint-Marin", "Andorre", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Finlande", "Danemark", "Islande", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Pologne", "Lituanie", "Bosnie-Herzegovine", "Tchequie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Moldavie", "Tchequie", "Chypre", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Montenegro", "Slovaquie", "Albanie", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Montenegro", "Slovenie", "Croatie", "Hongrie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Chypre", "Slovenie", "Tuvalu", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Slovenie", "Croatie", "Macedoine du Nord", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Slovenie", "Bosnie-Herzegovine", "Macedoine du Nord", "Albanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Montenegro", "Chypre", "Macedoine du Nord", "Serbie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Montenegro", "Chypre", "Palaos", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Macedoine du Nord", "Chypre", "Montenegro", "Palestine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Chypre", "Montenegro", "Albanie", "Cap-Vert"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Macedoine du Nord", "Grece", "Slovaquie", "Slovenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bulgarie", "Lituanie", "Slovenie", "Slovaquie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Hongrie", "Roumanie", "Lituanie", "Lettonie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Chypre", "Moldavie", "Montenegro", "Slovenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bosnie-Herzegovine", "Lituanie", "Ukraine", "Bielorussie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Croatie", "Bielorussie", "Slovaquie", "Moldavie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Serbie", "Bulgarie", "Lituanie", "Russie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Albanie", "Estonie", "Macedoine du Nord", "Chypre"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Albanie", "Lettonie", "Moldavie", "Slovenie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Moldavie", "Lituanie", "Chypre", "Macedoine du Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bahrein", "Andorre", "Monaco", "Chypre"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Turquie", "Azerbaidjan", "Emirats arabes unis", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Qatar", "Bahrein", "Israel", "Liban"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Antigua-et-Barbuda", "Bahrein", "Sao Tome-et-Principe", "Palestine"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Palaos", "Palestine", "Bahrein", "Liban"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Georgie", "Azerbaidjan", "Syrie", "Bahrein"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Liban", "Jordanie", "Koweit", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Jordanie", "Emirats arabes unis", "Irak", "Georgie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Oman", "Iran", "Georgie", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Koweit", "Yemen", "Palestine", "Arabie saoudite"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Azerbaidjan", "Yemen", "Jordanie", "Liban"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Oman", "Koweit", "Bahrein", "Georgie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Qatar", "Israel", "Emirats arabes unis", "Koweit"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bahrein", "Palestine", "Qatar", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vatican", "Maldives", "Bahrein", "Saint-Marin"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bahrein", "Koweit", "Liban", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Georgie", "Palestine", "Qatar", "Bahrein"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Palestine", "Qatar", "Armenie", "Koweit"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Qatar", "Azerbaidjan", "Israel", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Turkmenistan", "Mongolie", "Afghanistan", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Ouzbekistan", "Tadjikistan", "Kirghizistan", "Guinee equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Kirghizistan", "Turkmenistan", "Tadjikistan", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Singapour", "Kirghizistan", "Suisse", "Estonie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Andorre", "Suisse", "Tadjikistan", "Barbade"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Moldavie", "Kirghizistan", "Tadjikistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Mongolie", "Kirghizistan", "Afghanistan", "Ouzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bhoutan", "Indonesie", "Chine", "Cambodge"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Coree du Sud", "Japon", "Cambodge", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Coree du Sud", "Timor oriental", "Maldives", "Singapour"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Singapour", "Coree du Nord", "Timor oriental", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cambodge", "Malaisie", "Singapour", "Inde"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Coree du Sud", "Bangladesh", "Singapour", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maldives", "Bangladesh", "Sri Lanka", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Singapour", "Timor oriental", "Brunei", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sri Lanka", "Nepal", "Maldives", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Timor oriental", "Brunei", "Bhoutan", "Singapour"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maldives", "Tuvalu", "Saint-Marin", "Vatican"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sri Lanka", "Birmanie", "Bangladesh", "Malaisie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Nepal", "Brunei", "Coree du Sud", "Thailande"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Coree du Sud", "Laos", "Sri Lanka", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sri Lanka", "Brunei", "Singapour", "Cambodge"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sri Lanka", "Cambodge", "Bangladesh", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Coree du Sud", "Timor oriental", "Nepal", "Malaisie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maldives", "Singapour", "Iles Marshall", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Philippines", "Sri Lanka", "Indonesie", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Singapour", "Brunei", "Maldives", "Sainte-Lucie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bangladesh", "Philippines", "Nepal", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Brunei", "Maldives", "Timor oriental", "Singapour"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Fidji", "Nouvelle-Zelande", "Iles Marshall", "Australie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Iles Marshall", "Samoa", "Micronesie", "Nouvelle-Zelande"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Tonga", "Palaos", "Papouasie-Nouvelle-Guinee", "Nauru"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Fidji", "Kiribati", "Micronesie", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Iles Salomon", "Nauru", "Palaos", "Micronesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Tuvalu", "Samoa", "Vanuatu", "Micronesie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Iles Marshall", "Samoa", "Kiribati", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Nauru", "Tuvalu", "Iles Marshall", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Kiribati", "Palaos", "Iles Marshall", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Palaos", "Iles Marshall", "Tuvalu", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Micronesie", "Nauru", "Iles Marshall", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Iles Marshall", "Nauru", "Tuvalu", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guinee-Bissau", "Maroc", "Cote d'Ivoire", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Botswana", "Malawi", "Algerie", "Namibie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Burundi", "Tunisie", "Eswatini", "Maurice"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Libye", "Burundi", "Togo", "Soudan du Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guinee", "Lesotho", "Egypte", "Cote d'Ivoire"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Tanzanie", "Egypte", "Soudan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Soudan du Sud", "Sierra Leone", "Malawi", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Ethiopie", "Kenya", "Madagascar", "Cameroun"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sierra Leone", "Sao Tome-et-Principe", "Guinee equatoriale", "Erythree"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sao Tome-et-Principe", "Gambie", "Maurice", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Malawi", "Comores", "Somalie", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Kenya", "Guinee equatoriale", "Congo", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Malawi", "Comores", "Ouganda", "Maurice"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Tanzanie", "Guinee equatoriale", "Ghana", "Erythree"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Maurice", "Cap-Vert", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maurice", "Gambie", "Comores", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maroc", "Madagascar", "Benin", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Rwanda", "Congo", "Sierra Leone", "Guinee equatoriale"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guinee-Bissau", "Malawi", "Benin", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guinee equatoriale", "Sao Tome-et-Principe", "Gambie", "Cap-Vert"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cameroun", "Gambie", "Erythree", "Cap-Vert"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Lesotho", "Centrafrique", "Guinee equatoriale", "Gabon"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Zambie", "Congo", "Tchad", "Tunisie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cameroun", "Burundi", "Niger", "Centrafrique"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Nigeria", "Cap-Vert", "Benin", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sao Tome-et-Principe", "Benin", "Togo", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maurice", "Gambie", "Comores", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Ghana", "Liberia", "Sierra Leone", "Maurice"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cote d'Ivoire", "Comores", "Djibouti", "Lesotho"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Togo", "Liberia", "Guinee-Bissau", "Sao Tome-et-Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Djibouti", "Lesotho", "Seychelles", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Guinee", "Togo", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guinee-Bissau", "Sao Tome-et-Principe", "Gambie", "Maurice"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Guinee equatoriale", "Senegal", "Liberia"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cap-Vert", "Gambie", "Sao Tome-et-Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Mali", "Guinee", "Centrafrique", "Mozambique"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Gambie", "Guinee-Bissau", "Burkina Faso", "Sao Tome-et-Principe"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Togo", "Sierra Leone", "Guinee-Bissau", "Mauritanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cap-Vert", "Sao Tome-et-Principe", "Maurice", "Comores"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Sao Tome-et-Principe", "Saint-Marin", "Vatican"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Angola", "Maurice", "Gambie", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Zambie", "Burkina Faso", "Maurice", "Sao Tome-et-Principe"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Lesotho", "Rwanda", "Liberia", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sierra Leone", "Malawi", "Gambie", "Sao Tome-et-Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Mozambique", "Seychelles", "Rwanda", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cap-Vert", "Malawi", "Madagascar", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sainte-Lucie", "Seychelles", "Sao Tome-et-Principe", "Comores"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Marin", "Sao Tome-et-Principe", "Seychelles", "Maurice"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Seychelles", "Iles Marshall", "Liechtenstein", "Saint-Kitts-et-Nevis"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Soudan du Sud", "Madagascar", "Afrique du Sud", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cote d'Ivoire", "Namibie", "Liberia", "Guinee-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Eswatini", "Malawi", "Botswana", "Guinee equatoriale"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Maurice", "Lesotho", "Seychelles", "Eswatini"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Eswatini", "Cap-Vert", "Comores", "Gambie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Mexique", "Etats-Unis", "Tchad", "Albanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Liberia", "Mexique", "Honduras", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sierra Leone", "Colombie", "Mexique", "Croatie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Republique dominicaine", "Saint-Kitts-et-Nevis", "Guatemala", "Antigua-et-Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Vincent", "Belize", "Grenade", "Jamaique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Haiti", "Honduras", "Dominique", "Sainte-Lucie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Dominique", "Salvador", "Grenade", "Sainte-Lucie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Antigua-et-Barbuda", "Republique dominicaine", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Barbade", "Costa Rica", "Saint-Kitts-et-Nevis", "Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Belize", "Dominique", "Antigua-et-Barbuda", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Dominique", "Saint-Vincent", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Cuba", "Bahamas", "Haiti", "Trinite-et-Tobago"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Jamaique", "Barbade", "Antigua-et-Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Haiti", "Trinite-et-Tobago", "Grenade", "Dominique"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Sainte-Lucie", "Saint-Kitts-et-Nevis", "Saint-Vincent", "Republique dominicaine"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Vatican", "Monaco", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vatican", "Saint-Kitts-et-Nevis", "Tuvalu", "Antigua-et-Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Dominique", "Barbade", "Saint-Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Grenade", "Saint-Kitts-et-Nevis", "Saint-Vincent", "Sainte-Lucie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Saint-Vincent", "Saint-Marin", "Maldives", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Monaco", "Saint-Kitts-et-Nevis", "Barbade", "Iles Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Grenade", "Nauru", "Monaco", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Grenade", "Barbade", "Antigua-et-Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guyana", "Uruguay", "Equateur", "Colombie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guyana", "Paraguay", "Equateur", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guyana", "Togo", "Sierra Leone", "Bosnie-Herzegovine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Lituanie", "Qatar", "Jamaique", "Suriname"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Vanuatu", "Suriname", "Brunei", "Equateur"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Perou", "Chili", "Uruguay", "Equateur"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Paraguay", "Uruguay", "Bresil", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Bolivie", "Guyana", "Paraguay", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Paraguay", "Uruguay", "Suriname", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Uruguay", "Salvador", "Armenie", "Palestine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Suriname", "Chili", "Equateur", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus grand (superficie) ?"
            Reponses := array{"Guyana", "Argentine", "Colombie", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Kazakhstan", "France", "Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Allemagne", "France", "Zambie", "Angola"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chili", "Espagne", "France", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Espagne", "Venezuela", "Argentine", "Perou"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Portugal", "Italie", "Allemagne", "France"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"France", "Royaume-Uni", "Espagne", "Suede"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Royaume-Uni", "France", "Irlande", "Italie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Belgique", "Autriche", "Italie", "Suede"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Allemagne", "Pays-Bas", "Suede", "Irlande"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Islande", "Suisse", "Luxembourg", "France"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Portugal", "Irlande", "Suisse", "Islande"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Espagne", "Royaume-Uni", "Italie", "Autriche"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Monaco", "France", "Royaume-Uni", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Islande", "Italie", "Belgique", "Andorre"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Islande", "Malte", "Andorre", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Luxembourg", "Saint-Marin", "Allemagne", "Irlande"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Vatican", "Saint-Marin", "Islande", "Irlande"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Danemark", "Irlande", "Suisse", "Malte"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Islande", "Suede", "Italie", "France"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Australie", "France", "Chine", "Norvege"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Argentine", "Suede", "Australie", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Italie", "Finlande", "Autriche", "Danemark"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Perou", "France", "Russie", "Finlande"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pologne", "Russie", "Ukraine", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Grece", "Tchequie", "Ukraine", "Pologne"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Grece", "Slovaquie", "Serbie", "Tchequie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Roumanie", "Russie", "Hongrie", "Bielorussie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Lituanie", "Roumanie", "Slovenie", "Pologne"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Russie", "Croatie", "Bulgarie", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pologne", "Hongrie", "Bosnie-Herzegovine", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pologne", "Serbie", "Grece", "Russie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Estonie", "Albanie", "Montenegro", "Lettonie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Macedoine du Nord", "Slovaquie", "Bosnie-Herzegovine", "Russie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Croatie", "Bosnie-Herzegovine", "Albanie", "Lettonie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pologne", "Roumanie", "Grece", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ukraine", "Roumanie", "Russie", "Bulgarie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Russie", "Roumanie", "Ukraine", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Grece", "Lituanie", "Roumanie", "Moldavie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Mali", "Russie", "Ukraine", "Argentine"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ukraine", "Bielorussie", "Russie", "Bolivie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ukraine", "Grece", "Pologne", "Estonie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Roumanie", "Bielorussie", "Lettonie", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bulgarie", "Grece", "Bielorussie", "Lituanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Estonie", "Pologne", "Macedoine du Nord", "Chypre"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bresil", "Arabie saoudite", "Iran", "Turquie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Turquie", "Oman", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Liban", "Jordanie", "Palestine", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Georgie", "Liban", "Yemen", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Syrie", "Oman", "Irak", "Arabie saoudite"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Iran", "Turquie", "Oman", "Jordanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Irak", "Arabie saoudite", "Iran", "Turquie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Iran", "Argentine", "Bresil", "Russie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Russie", "Etats-Unis", "Chine", "Arabie saoudite"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Arabie saoudite", "Yemen", "Iran", "Turquie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Turquie", "Arabie saoudite", "Oman", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Emirats arabes unis", "Yemen", "Turquie", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Georgie", "Emirats arabes unis", "Israel", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bahrein", "Azerbaidjan", "Georgie", "Koweit"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Syrie", "Turquie", "Koweit", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Yemen", "Syrie", "Georgie", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Armenie", "Arabie saoudite", "Irak", "Syrie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Oman", "Azerbaidjan", "Syrie", "Arabie saoudite"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bresil", "Australie", "Etats-Unis", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ouzbekistan", "Mongolie", "Kazakhstan", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Turkmenistan", "Mongolie", "Kazakhstan", "Bolivie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Afghanistan", "Kirghizistan", "Mongolie", "Ouzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Kazakhstan", "Tadjikistan", "Turkmenistan", "Mongolie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Canada", "Mongolie", "Kazakhstan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Kazakhstan", "Mongolie", "Chine", "Etats-Unis"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pakistan", "Japon", "Inde", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Coree du Sud", "Laos", "Japon", "Indonesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pakistan", "Vietnam", "Inde", "Coree du Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Russie", "Chine", "Bresil", "Inde"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Pakistan", "Inde", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bangladesh", "Japon", "Philippines", "Indonesie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Sri Lanka", "Cambodge", "Birmanie", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Birmanie", "Philippines", "Nepal", "Malaisie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Pakistan", "Vietnam", "Bangladesh", "Bhoutan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Maldives", "Cambodge", "Pakistan", "Timor oriental"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Chine", "Inde", "Birmanie"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Chine", "Thailande", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Inde", "Thailande", "Laos", "Indonesie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chine", "Philippines", "Inde", "Cambodge"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Inde", "Vietnam", "Chine", "Birmanie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Malaisie", "Inde", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Laos", "Singapour", "Inde", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Inde", "Chine", "Indonesie", "Russie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bhoutan", "Brunei", "Cambodge", "Japon"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Indonesie", "Pakistan", "Inde", "Philippines"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Laos", "Timor oriental", "Cambodge", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Australie", "Nouvelle-Zelande", "Papouasie-Nouvelle-Guinee", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Papouasie-Nouvelle-Guinee", "Australie", "RD Congo", "Libye"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Nouvelle-Zelande", "Fidji", "Papouasie-Nouvelle-Guinee", "Australie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Australie", "Nouvelle-Zelande", "Iles Salomon", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Iles Salomon", "Nouvelle-Zelande", "Australie", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Samoa", "Vanuatu", "Iles Salomon", "Australie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Iles Salomon", "Papouasie-Nouvelle-Guinee", "Tonga", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Samoa", "Vanuatu", "Tuvalu", "Iles Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Australie", "Vanuatu", "Nouvelle-Zelande", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Palaos", "Nauru", "Kiribati", "Vanuatu"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Palaos", "Iles Salomon", "Fidji", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Nouvelle-Zelande", "Micronesie", "Samoa", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Kiribati", "Papouasie-Nouvelle-Guinee", "Iles Marshall", "Micronesie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Soudan", "Mauritanie", "RD Congo", "Maroc"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Etats-Unis", "Bresil", "Algerie", "Canada"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"RD Congo", "Tunisie", "Mozambique", "Zambie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Russie", "Libye", "Chine", "Canada"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Egypte", "RD Congo", "Algerie", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bresil", "Australie", "Russie", "Soudan"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Libye", "Ethiopie", "Afrique du Sud", "Soudan du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"RD Congo", "Ethiopie", "Soudan", "Algerie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Erythree", "Afrique du Sud", "Ethiopie", "Libye"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Mauritanie", "Djibouti", "Benin", "Tchad"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Somalie", "Soudan", "Nigeria", "Egypte"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Niger", "Kenya", "Tanzanie", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ethiopie", "Soudan du Sud", "Ouganda", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Soudan", "Algerie", "Tanzanie", "Libye"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Congo", "Liberia", "Kenya", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Egypte", "Burundi", "Tchad", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Australie", "RD Congo", "Russie", "Etats-Unis"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "Niger", "Congo", "Botswana"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"RD Congo", "Botswana", "Gabon", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Sierra Leone", "Senegal", "Guinee equatoriale", "Mauritanie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Tanzanie", "Cameroun", "Egypte", "Zambie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "RD Congo", "Centrafrique", "Soudan"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Algerie", "RD Congo", "Tchad", "Inde"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Niger", "RD Congo", "Algerie", "Argentine"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Libye", "Soudan", "Nigeria", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Niger", "Benin", "Angola", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Maroc", "Togo", "Afrique du Sud", "Somalie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ghana", "Nigeria", "Afrique du Sud", "Ethiopie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Cote d'Ivoire", "Soudan du Sud", "Centrafrique", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Senegal", "Liberia", "Congo", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Somalie", "Sierra Leone", "Namibie", "Cote d'Ivoire"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Niger", "Guinee", "Kenya", "Soudan du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Zambie", "Guinee-Bissau", "Ouganda", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Somalie", "Niger", "Senegal", "Zambie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Afrique du Sud", "Soudan du Sud", "Gambie", "Algerie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"RD Congo", "Mali", "Algerie", "Inde"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Afrique du Sud", "Burkina Faso", "Soudan du Sud", "Algerie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Algerie", "Soudan", "Mauritanie", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Libye", "Ouganda", "Cap-Vert", "Afrique du Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Mozambique", "Nigeria", "Rwanda", "Sao Tome-et-Principe"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "Algerie", "RD Congo", "Inde"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "Afrique du Sud", "Zambie", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Zimbabwe", "Nigeria", "Algerie", "Namibie"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Kenya", "Soudan du Sud", "Mali", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Libye", "Soudan", "Mozambique", "Algerie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Mauritanie", "Egypte", "Madagascar", "Libye"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Tanzanie", "Comores", "Madagascar", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Burkina Faso", "Maurice", "Mali", "Somalie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Afrique du Sud", "Senegal", "Namibie", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Algerie", "Afrique du Sud", "RD Congo", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Algerie", "Namibie", "Libye", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "Algerie", "Botswana", "Egypte"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Lesotho", "Ouganda", "Cameroun", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Ethiopie", "Eswatini", "Tunisie", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Inde", "Etats-Unis", "Canada", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Angola", "Cambodge", "Guatemala", "Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Panama", "Nicaragua", "Belize", "Republique dominicaine"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Guyana", "Honduras", "Perou", "Pologne"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Costa Rica", "Cuba", "Salvador", "Panama"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Turquie", "Canada", "Nicaragua", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Guatemala", "Nicaragua", "Costa Rica", "Honduras"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Panama", "Nicaragua", "Espagne", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Guatemala", "Salvador", "Haiti", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Venezuela", "Mexique", "Cuba", "Espagne"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Costa Rica", "Salvador", "Jamaique", "Haiti"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Nicaragua", "Haiti", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Guatemala", "Republique dominicaine", "Cuba", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Trinite-et-Tobago", "Republique dominicaine", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Dominique", "Cuba", "Panama", "Antigua-et-Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Honduras", "Salvador", "Dominique"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Panama", "Sainte-Lucie", "Cuba", "Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bahamas", "Jamaique", "Saint-Vincent", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Jamaique", "Belize", "Guatemala", "Barbade"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Grenade", "Haiti", "Salvador", "Panama"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Trinite-et-Tobago", "Belize", "Bahamas", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Colombie", "Argentine", "Bresil", "Soudan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Venezuela", "Argentine", "Bresil", "Kazakhstan"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chili", "Argentine", "Bresil", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Equateur", "Suriname", "Venezuela", "Bresil"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bolivie", "Argentine", "Equateur", "Perou"}
            BonneReponse := 2
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bresil", "Perou", "Argentine", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Bresil", "Bolivie", "Argentine", "Algerie"}
            BonneReponse := 1
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Colombie", "Bresil", "Perou", "Paraguay"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chili", "Venezuela", "Argentine", "Uruguay"}
            BonneReponse := 3
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chili", "Colombie", "Argentine", "Perou"}
            BonneReponse := 0
        question:
            Enonce := "Quel pays est le plus petit (superficie) ?"
            Reponses := array{"Chine", "Bresil", "Argentine", "Russie"}
            BonneReponse := 2

MakeRecordsQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Ireland", "France", "Austria", "Switzerland"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Belgium", "Denmark", "Iceland", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sweden", "Portugal", "Austria", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Austria", "Malta", "Sweden", "Spain"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Iceland", "Luxembourg", "Portugal", "Norway"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"United Kingdom", "San Marino", "Sweden", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"San Marino", "Monaco", "Malta", "Ireland"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Belgium", "Vatican City", "Finland", "Iceland"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Malta", "Ireland", "Finland", "Netherlands"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"San Marino", "Luxembourg", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Luxembourg", "Liechtenstein", "Switzerland", "Norway"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Austria", "Finland", "Vatican City", "Luxembourg"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Palau", "Vatican City", "Nauru", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Monaco", "San Marino", "Andorra", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Vatican City", "Liechtenstein", "Tuvalu", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Vatican City", "San Marino", "Nauru", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Andorra", "Malta", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Monaco", "Vatican City", "Iceland", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Monaco", "Iceland", "Vatican City", "Norway"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Andorra", "San Marino", "Sweden", "Denmark"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Denmark", "Monaco", "Iceland", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Luxembourg", "Finland", "San Marino", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Czechia", "North Macedonia", "Romania", "Poland"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bosnia and Herzegovina", "Slovenia", "Czechia", "Moldova"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bosnia and Herzegovina", "North Macedonia", "Slovakia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Croatia", "Hungary", "Latvia", "Moldova"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Barbados", "Montenegro", "Cyprus", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Latvia", "Estonia", "North Macedonia", "Croatia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bosnia and Herzegovina", "Montenegro", "Latvia", "Cyprus"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bosnia and Herzegovina", "Serbia", "Lithuania", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Liechtenstein", "Montenegro", "Tonga", "Antigua and Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Montenegro", "North Macedonia", "Cyprus", "Vatican City"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Albania", "Montenegro", "Cyprus", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Lithuania", "Greece", "Cyprus", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Croatia", "Moldova", "Bulgaria", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bulgaria", "Greece", "Romania", "North Macedonia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cyprus", "Estonia", "Montenegro", "Moldova"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cyprus", "Czechia", "Hungary", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Slovakia", "Belarus", "Croatia", "Bosnia and Herzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Russia", "Czechia", "Romania", "Latvia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Iceland", "Montenegro", "Tonga", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Latvia", "Montenegro", "Cape Verde", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Montenegro", "Estonia", "Cyprus", "Lithuania"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cyprus", "Montenegro", "Seychelles", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Lebanon", "Georgia", "Iraq", "Turkey"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Kuwait", "Palestine", "Israel", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Palestine", "Bahrain", "Qatar", "Antigua and Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Georgia", "Kuwait", "Lebanon", "Bahrain"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Azerbaijan", "Syria", "Israel", "Jordan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Armenia", "Jordan", "Bahrain", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Iraq", "Lebanon", "Bahrain", "Syria"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Jordan", "Israel", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Azerbaijan", "Israel", "Saudi Arabia", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Kuwait", "Israel", "Georgia", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Oman", "Bahrain", "Armenia", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"United Arab Emirates", "Oman", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bahrain", "Qatar", "Trinidad and Tobago", "Maldives"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Micronesia", "Iceland", "Cape Verde", "Bahrain"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bahrain", "Kuwait", "Kiribati", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Bahrain", "Guyana", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Armenia", "Bahrain", "Micronesia", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Azerbaijan", "Armenia", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Tajikistan", "Turkmenistan", "Mongolia", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Kazakhstan", "Turkmenistan", "Uzbekistan", "Tajikistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Turkmenistan", "Mongolia", "Seychelles", "Moldova"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Mongolia", "Kyrgyzstan", "Slovenia", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Vatican City", "Mongolia", "Armenia", "Tajikistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Kazakhstan", "Tajikistan", "Turkmenistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Mongolia", "Djibouti", "Maldives", "Cyprus"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Pakistan", "Brunei", "Maldives", "China"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Laos", "Japan", "Sri Lanka", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Laos", "Cambodia", "Nepal", "South Korea"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"East Timor", "Laos", "North Korea", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Myanmar", "India", "Bhutan", "Malaysia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bhutan", "Nepal", "Cambodia", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Malaysia", "Bangladesh", "Bhutan", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sri Lanka", "Maldives", "Brunei", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Laos", "Nepal", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Iceland", "Brunei", "Bahamas", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Maldives", "Samoa", "Nauru", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bhutan", "Malaysia", "Maldives", "Myanmar"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Thailand", "Nepal", "Sri Lanka", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Brunei", "Bhutan", "East Timor", "Laos"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bhutan", "Cambodia", "Singapore", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"East Timor", "Singapore", "Sri Lanka", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cambodia", "Bhutan", "Laos", "Malaysia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"East Timor", "Singapore", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bangladesh", "Japan", "Bhutan", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Brunei", "Vatican City", "Kiribati", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Philippines", "North Korea", "Singapore", "East Timor"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bhutan", "Maldives", "Brunei", "East Timor"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Papua New Guinea", "Australia", "Marshall Islands", "Fiji"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Micronesia", "Samoa", "Palau", "New Zealand"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Palau", "Fiji", "Tonga", "Papua New Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Marshall Islands", "Fiji", "Tonga", "Micronesia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Samoa", "Solomon Islands", "Micronesia", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Tuvalu", "Palau", "Micronesia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Kiribati", "Micronesia", "Tuvalu", "Samoa"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Tonga", "Palau", "Nauru", "Marshall Islands"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Nauru", "Marshall Islands", "Tuvalu", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Marshall Islands"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Malawi", "Central African Republic", "Morocco", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Zambia", "Mauritius", "Algeria", "Central African Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Botswana", "Equatorial Guinea", "Eritrea", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Djibouti", "Gambia", "Libya", "Cape Verde"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "Algeria", "Egypt", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sudan", "Eswatini", "Senegal", "Comoros"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "South Sudan", "Mauritius", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Liberia", "Libya", "Ethiopia", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Eritrea", "Seychelles", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Djibouti", "Sao Tome and Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sao Tome and Principe", "Somalia", "Comoros", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Gabon", "Tunisia", "Kenya", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Djibouti", "Madagascar", "Uganda", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Liberia", "Tanzania", "Chad", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "Rwanda", "Mauritania", "Sao Tome and Principe"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Guinea-Bissau", "Liberia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Malawi", "DR Congo", "Sudan", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Congo", "Lesotho", "Equatorial Guinea", "Comoros"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "Cape Verde", "Sao Tome and Principe", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "Equatorial Guinea", "Sao Tome and Principe", "Cape Verde"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Eswatini", "Cameroon", "Libya", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sao Tome and Principe", "Central African Republic", "Djibouti", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Lesotho", "Congo", "Chad", "Central African Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Botswana", "Niger", "Libya", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Burundi", "Algeria", "Egypt", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Eswatini", "Benin", "Comoros", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Guinea-Bissau", "Eswatini", "Namibia", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Libya", "Ghana", "Chad", "Equatorial Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Lesotho", "Gabon", "Liberia", "Ivory Coast"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Liberia", "Sao Tome and Principe", "Lesotho", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sierra Leone", "Central African Republic", "Gabon", "Comoros"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Guinea", "Sao Tome and Principe", "Liberia", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sao Tome and Principe", "Eswatini", "Guinea-Bissau", "Cape Verde"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Botswana", "Eritrea", "Senegal"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Gambia", "Cape Verde", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Congo", "Mali", "Botswana", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Botswana", "Eritrea", "Mauritania", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Mauritania", "Cape Verde", "Seychelles", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Sao Tome and Principe", "Seychelles", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Seychelles", "Sao Tome and Principe", "Saint Kitts and Nevis", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Angola", "Gabon", "Central African Republic"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Libya", "Eswatini", "Seychelles", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Djibouti", "Liberia", "Sierra Leone", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Central African Republic", "Comoros", "Gabon", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"South Sudan", "Libya", "Benin", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Botswana", "Madagascar", "Somalia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Seychelles", "Sao Tome and Principe", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Sao Tome and Principe", "Cape Verde", "Mauritius", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Marshall Islands", "Monaco", "Saint Kitts and Nevis", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Rwanda", "Cameroon", "Zimbabwe", "South Africa"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Comoros", "Djibouti", "Mauritius", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Botswana", "Sao Tome and Principe", "Mauritius", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Lesotho", "Comoros", "Sao Tome and Principe", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Cape Verde", "Sao Tome and Principe", "Eswatini", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Mexico", "United States", "Canada", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Canada", "Barbados", "Rwanda", "Kazakhstan"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Mexico", "Canada", "Malta", "Cambodia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Saint Kitts and Nevis", "Panama", "Guatemala", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Belize", "Antigua and Barbuda", "Dominica", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Honduras", "Barbados", "Antigua and Barbuda", "Bahamas"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Barbados", "Saint Lucia", "El Salvador", "Dominica"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Grenada", "Nicaragua", "Saint Lucia", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Trinidad and Tobago", "Costa Rica", "Jamaica", "Antigua and Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Panama", "Barbados", "Antigua and Barbuda", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bahamas", "Antigua and Barbuda", "Dominica", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Antigua and Barbuda", "El Salvador", "Saint Vincent", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Saint Vincent", "Jamaica", "Grenada", "Saint Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Belize", "Haiti", "El Salvador", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Nicaragua", "Saint Kitts and Nevis", "Dominican Republic", "Saint Vincent"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Vatican City", "Saint Kitts and Nevis", "Palau", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Nauru", "Saint Kitts and Nevis", "Antigua and Barbuda", "Marshall Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"San Marino", "Dominica", "Monaco", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Saint Kitts and Nevis", "Dominica", "Saint Lucia", "Antigua and Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Saint Vincent", "Saint Kitts and Nevis", "Tuvalu", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Barbados", "Antigua and Barbuda", "Saint Vincent", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Marshall Islands", "Saint Kitts and Nevis", "Grenada", "Vatican City"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Antigua and Barbuda", "Saint Kitts and Nevis", "Saint Lucia", "Trinidad and Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Colombia", "Chile", "Ecuador", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Guyana", "Uruguay", "Venezuela", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Vatican City", "Marshall Islands", "Saint Kitts and Nevis", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Saint Kitts and Nevis", "Barbados", "Suriname", "Palau"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Suriname", "Paraguay", "Ecuador", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Suriname", "Chile", "Peru", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Argentina", "Brazil", "Paraguay", "Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bolivia", "Uruguay", "Suriname", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Paraguay", "Suriname", "Guyana", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Guyana", "Suriname", "Uruguay", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Bolivia", "Guyana", "Suriname", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the largest population?"
            Reponses := array{"Paraguay", "Uruguay", "Argentina", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Nigeria", "United States", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Brazil", "Bangladesh", "Germany", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"India", "Nigeria", "Italy", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Spain", "Germany", "Iran", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Portugal", "Italy", "France", "Netherlands"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"China", "Ethiopia", "Russia", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Spain", "Portugal", "Ireland", "Sweden"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Belgium", "Italy", "France", "United Kingdom"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Italy", "France", "Spain", "Netherlands"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Austria", "Italy", "Luxembourg", "Sweden"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Switzerland", "United Kingdom", "Germany", "Spain"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"France", "Germany", "Spain", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Germany", "Monaco", "Iceland", "Italy"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"France", "Finland", "Andorra", "Spain"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Portugal", "Norway", "Finland", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Finland", "San Marino", "Germany", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Austria", "Vatican City", "Portugal", "Iceland"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Belgium", "Netherlands", "Malta", "France"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Portugal", "Luxembourg", "Iceland", "Finland"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Norway", "United Kingdom", "Spain", "Sweden"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"United Kingdom", "Sweden", "Netherlands", "Spain"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Portugal", "Spain", "Denmark", "Italy"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Sweden", "United Kingdom", "Finland", "Belgium"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Poland", "Iran", "DR Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ukraine", "Poland", "Russia", "Czechia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Greece", "Hungary", "Slovakia", "Poland"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Romania", "Russia", "Poland", "Hungary"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Slovakia", "Slovenia", "Czechia", "Bulgaria"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Croatia", "Bulgaria", "Russia", "Romania"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Hungary", "Bosnia and Herzegovina", "Belarus", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Poland", "Romania", "Serbia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ukraine", "Albania", "Serbia", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Serbia", "Bulgaria", "North Macedonia", "Croatia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Poland", "Albania", "Ukraine", "Greece"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Greece", "Ukraine", "Russia", "Poland"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ukraine", "Romania", "Poland", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Poland", "Ukraine", "Romania"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ukraine", "Moldova", "Belarus", "Slovakia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Ukraine", "Brazil", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Ukraine", "Belarus", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "United States", "Indonesia", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Bosnia and Herzegovina", "Bulgaria", "Belarus", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Hungary", "Czechia", "Latvia", "Croatia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Romania", "Russia", "Lithuania", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Poland", "Moldova", "Cyprus", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Pakistan", "Turkey", "Nigeria", "Russia"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Yemen", "Syria", "Israel", "Saudi Arabia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Palestine", "Turkey", "Yemen", "Azerbaijan"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Yemen", "Lebanon", "Turkey", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Turkey", "Syria", "Iraq", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Jordan", "Turkey", "Iraq", "Syria"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Turkey", "Iraq", "Iran", "Mexico"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Pakistan", "Iran", "United States", "India"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Turkey", "Saudi Arabia", "Iran", "France"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Yemen", "Iran", "Turkey", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Turkey", "Yemen", "Saudi Arabia", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Saudi Arabia", "United Arab Emirates", "Syria", "Turkey"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"United Arab Emirates", "Azerbaijan", "Saudi Arabia", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Lebanon", "Bahrain", "Qatar", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Iran", "Turkey", "Azerbaijan", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Georgia", "Israel", "United Arab Emirates", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Armenia", "Yemen", "Iran", "United Arab Emirates"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Yemen", "Syria", "Turkey", "Azerbaijan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ghana", "Uzbekistan", "Afghanistan", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"India", "Pakistan", "Russia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Afghanistan", "Turkmenistan", "Kazakhstan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Kazakhstan", "Kyrgyzstan", "Uzbekistan", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Kazakhstan", "Tajikistan", "Afghanistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"United Kingdom", "France", "Afghanistan", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Afghanistan", "Kyrgyzstan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Japan", "Pakistan", "China", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Indonesia", "China", "South Korea", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Pakistan", "Philippines", "Thailand", "North Korea"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Bangladesh", "India", "Indonesia", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Vietnam", "Japan", "Sri Lanka", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Myanmar", "Philippines", "Japan", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"China", "Thailand", "Bhutan", "Nepal"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"East Timor", "China", "Cambodia", "Maldives"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Philippines", "Myanmar", "Indonesia", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"India", "Thailand", "Japan", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Laos", "China", "Sri Lanka", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Cambodia", "Vietnam", "Myanmar", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"China", "Pakistan", "Vietnam", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Malaysia", "Myanmar", "Philippines", "India"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Singapore", "North Korea", "Thailand", "Myanmar"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"China", "Brunei", "Thailand", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"India", "Indonesia", "China", "Philippines"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Pakistan", "Japan", "Laos", "East Timor"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"France", "Australia", "Vietnam", "United Kingdom"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"New Zealand", "Australia", "Papua New Guinea", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Papua New Guinea", "Australia", "Senegal", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Papua New Guinea", "New Zealand", "Fiji", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Australia", "New Zealand", "Papua New Guinea", "Solomon Islands"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Papua New Guinea", "Fiji", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Samoa", "Australia", "New Zealand", "Papua New Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Tonga", "Samoa", "Vanuatu", "Papua New Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Micronesia", "Fiji", "Tuvalu", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Papua New Guinea", "Vanuatu", "Kiribati", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Australia", "Papua New Guinea", "Nauru", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Kiribati", "Vanuatu", "Palau", "Solomon Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"New Zealand", "Australia", "Micronesia", "Papua New Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Fiji", "Samoa", "Tonga", "Marshall Islands"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ethiopia", "DR Congo", "Egypt", "Morocco"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Egypt", "DR Congo", "Algeria"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Madagascar", "Algeria", "Tunisia", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Tanzania", "Libya", "Benin", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Egypt", "Nigeria", "United States", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Ethiopia", "Sudan", "Egypt"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Mali", "Egypt", "South Sudan", "Ivory Coast"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Indonesia", "Nigeria", "Pakistan", "Ethiopia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Zimbabwe", "Eritrea", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ivory Coast", "Djibouti", "Central African Republic", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Angola", "DR Congo", "Nigeria", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Egypt", "Kenya", "Ethiopia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ethiopia", "Uganda", "Nigeria", "Egypt"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ethiopia", "Egypt", "Nigeria", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Cameroon", "Madagascar", "Kenya", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ivory Coast", "Egypt", "Burkina Faso", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Bangladesh", "Nigeria", "DR Congo", "China"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Sudan", "Egypt", "Morocco", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Gabon", "Burkina Faso", "South Sudan", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Mali", "Equatorial Guinea", "Liberia", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Cameroon", "Uganda", "Tanzania", "Algeria"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Sudan", "Central African Republic", "Sierra Leone", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Chad", "Madagascar", "Ivory Coast", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Niger", "Kenya", "South Africa", "Tanzania"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"China", "Nigeria", "India", "United States"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"South Africa", "Algeria", "Benin", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Burkina Faso", "Uganda", "Togo", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Tanzania", "Egypt", "Ghana", "Ethiopia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"South Africa", "Kenya", "Ethiopia", "Ivory Coast"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Zimbabwe", "Mozambique", "Liberia", "Ivory Coast"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ivory Coast", "Egypt", "Sudan", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Algeria", "Tanzania", "Sudan", "Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Senegal", "Benin", "Malawi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Sudan", "Uganda", "Senegal", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Ghana", "Gambia", "Burundi", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"DR Congo", "Sudan", "Kenya", "Mali"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Burkina Faso", "Sudan", "DR Congo", "Ethiopia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Mauritania", "Uganda", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Kenya", "Guinea", "Ethiopia", "Cape Verde"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Malawi", "Rwanda", "Sao Tome and Principe", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Angola", "Kenya", "Ethiopia", "DR Congo"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"DR Congo", "Tanzania", "Egypt", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Tanzania", "Ethiopia", "Uganda", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Tanzania", "Malawi", "Egypt", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nigeria", "Egypt", "Mozambique", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Egypt", "DR Congo", "Madagascar", "Uganda"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Comoros", "Tunisia", "Morocco", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Eritrea", "Mauritius", "Egypt", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Cape Verde", "Madagascar", "Seychelles", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Egypt", "Ethiopia", "Nigeria", "South Africa"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Uganda", "Togo", "Namibia", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Madagascar", "Niger", "Algeria", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Madagascar", "Egypt", "Lesotho", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Zambia", "Liberia", "Tanzania", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Mexico", "Canada", "United States", "Turkey"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"India", "United States", "China", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Guatemala", "Mexico", "Afghanistan", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Belize", "Haiti", "Guatemala", "Jamaica"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Myanmar", "Guatemala", "Nigeria", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Guatemala", "Haiti", "Dominican Republic", "El Salvador"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Dominican Republic", "Nicaragua", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Costa Rica", "Honduras", "Guatemala", "Cuba"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Panama", "Cuba", "Haiti", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Panama", "Bahamas", "Trinidad and Tobago", "Dominican Republic"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Russia", "Bangladesh", "Germany", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Jamaica", "Dominican Republic", "El Salvador", "Costa Rica"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Thailand", "Uzbekistan", "Haiti", "Japan"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"South Korea", "Yemen", "Dominican Republic", "Ethiopia"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Saint Kitts and Nevis", "Honduras", "Trinidad and Tobago", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"El Salvador", "Dominican Republic", "Nicaragua", "Antigua and Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Dominican Republic", "Dominica", "Nicaragua", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Saint Lucia", "Trinidad and Tobago", "Cuba", "Dominican Republic"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Saint Vincent", "Bahamas", "Saint Lucia", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Nicaragua", "Barbados", "Jamaica", "Haiti"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Guatemala", "Jamaica", "Grenada", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Haiti", "Honduras", "Trinidad and Tobago", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Colombia", "Brazil", "Japan", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Colombia", "Brazil", "Venezuela", "South Africa"}
            BonneReponse := 2
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Chile", "Peru", "Argentina", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Suriname", "Bolivia", "Paraguay", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Brazil", "Argentina", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Brazil", "Peru", "Germany", "India"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Argentina", "Peru", "Brazil", "Bolivia"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Paraguay", "Argentina", "Ecuador", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Colombia", "Uruguay", "Brazil", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Argentina", "Brazil", "Colombia", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Which country has the smallest population?"
            Reponses := array{"Argentina", "Brazil", "China", "United States"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Germany", "France", "Belgium", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Portugal", "Liechtenstein", "Iceland", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Austria", "Italy", "San Marino", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Spain", "Switzerland", "Italy", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Luxembourg", "San Marino", "Portugal", "Vatican City"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Netherlands", "Malta", "Switzerland", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vatican City", "Malta", "Ireland", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Liechtenstein", "Belgium", "Luxembourg", "Malta"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Monaco", "Netherlands", "Vatican City", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Malta", "Andorra", "Luxembourg", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Monaco", "Vatican City", "Switzerland", "Luxembourg"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Belgium", "Luxembourg", "Denmark", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Liechtenstein", "Monaco", "San Marino", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Liechtenstein", "Monaco", "Vatican City", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"San Marino", "Vatican City", "Monaco", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vatican City", "Liechtenstein", "San Marino", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vatican City", "Iceland", "San Marino", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Luxembourg", "Norway", "Ireland", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Belgium", "Vatican City", "Sweden", "Ireland"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Denmark", "San Marino", "Andorra", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Finland", "Denmark", "Iceland", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Poland", "Lithuania", "Bosnia and Herzegovina", "Czechia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Moldova", "Czechia", "Cyprus", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Montenegro", "Slovakia", "Albania", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Montenegro", "Slovenia", "Croatia", "Hungary"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cyprus", "Slovenia", "Tuvalu", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Slovenia", "Croatia", "North Macedonia", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Slovenia", "Bosnia and Herzegovina", "North Macedonia", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Montenegro", "Cyprus", "North Macedonia", "Serbia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Montenegro", "Cyprus", "Palau", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"North Macedonia", "Cyprus", "Montenegro", "Palestine"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cyprus", "Montenegro", "Albania", "Cape Verde"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"North Macedonia", "Greece", "Slovakia", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bulgaria", "Lithuania", "Slovenia", "Slovakia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Hungary", "Romania", "Lithuania", "Latvia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cyprus", "Moldova", "Montenegro", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bosnia and Herzegovina", "Lithuania", "Ukraine", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Croatia", "Belarus", "Slovakia", "Moldova"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Serbia", "Bulgaria", "Lithuania", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Albania", "Estonia", "North Macedonia", "Cyprus"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Albania", "Latvia", "Moldova", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Moldova", "Lithuania", "Cyprus", "North Macedonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bahrain", "Andorra", "Monaco", "Cyprus"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Turkey", "Azerbaijan", "United Arab Emirates", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Qatar", "Bahrain", "Israel", "Lebanon"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Antigua and Barbuda", "Bahrain", "Sao Tome and Principe", "Palestine"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Palau", "Palestine", "Bahrain", "Lebanon"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Georgia", "Azerbaijan", "Syria", "Bahrain"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Lebanon", "Jordan", "Kuwait", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Jordan", "United Arab Emirates", "Iraq", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Oman", "Iran", "Georgia", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Kuwait", "Yemen", "Palestine", "Saudi Arabia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Azerbaijan", "Yemen", "Jordan", "Lebanon"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Oman", "Kuwait", "Bahrain", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Qatar", "Israel", "United Arab Emirates", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bahrain", "Palestine", "Qatar", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vatican City", "Maldives", "Bahrain", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bahrain", "Kuwait", "Lebanon", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Georgia", "Palestine", "Qatar", "Bahrain"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Palestine", "Qatar", "Armenia", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Qatar", "Azerbaijan", "Israel", "Palestine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Turkmenistan", "Mongolia", "Afghanistan", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Uzbekistan", "Tajikistan", "Kyrgyzstan", "Equatorial Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Kyrgyzstan", "Turkmenistan", "Tajikistan", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Singapore", "Kyrgyzstan", "Switzerland", "Estonia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Andorra", "Switzerland", "Tajikistan", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Moldova", "Kyrgyzstan", "Tajikistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mongolia", "Kyrgyzstan", "Afghanistan", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bhutan", "Indonesia", "China", "Cambodia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Korea", "Japan", "Cambodia", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Korea", "East Timor", "Maldives", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Singapore", "North Korea", "East Timor", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cambodia", "Malaysia", "Singapore", "India"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Korea", "Bangladesh", "Singapore", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Maldives", "Bangladesh", "Sri Lanka", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Singapore", "East Timor", "Brunei", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sri Lanka", "Nepal", "Maldives", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"East Timor", "Brunei", "Bhutan", "Singapore"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Maldives", "Tuvalu", "San Marino", "Vatican City"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sri Lanka", "Myanmar", "Bangladesh", "Malaysia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Nepal", "Brunei", "South Korea", "Thailand"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Korea", "Laos", "Sri Lanka", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sri Lanka", "Brunei", "Singapore", "Cambodia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sri Lanka", "Cambodia", "Bangladesh", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Korea", "East Timor", "Nepal", "Malaysia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Maldives", "Singapore", "Marshall Islands", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Philippines", "Sri Lanka", "Indonesia", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Singapore", "Brunei", "Maldives", "Saint Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bangladesh", "Philippines", "Nepal", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Brunei", "Maldives", "East Timor", "Singapore"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Fiji", "New Zealand", "Marshall Islands", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Marshall Islands", "Samoa", "Micronesia", "New Zealand"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Tonga", "Palau", "Papua New Guinea", "Nauru"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Fiji", "Kiribati", "Micronesia", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Solomon Islands", "Nauru", "Palau", "Micronesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Tuvalu", "Samoa", "Vanuatu", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Marshall Islands", "Samoa", "Kiribati", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Nauru", "Tuvalu", "Marshall Islands", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Kiribati", "Palau", "Marshall Islands", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Palau", "Marshall Islands", "Tuvalu", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Micronesia", "Nauru", "Marshall Islands", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Marshall Islands", "Nauru", "Tuvalu", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guinea-Bissau", "Morocco", "Ivory Coast", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Botswana", "Malawi", "Algeria", "Namibia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Burundi", "Tunisia", "Eswatini", "Mauritius"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Libya", "Burundi", "Togo", "South Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guinea", "Lesotho", "Egypt", "Ivory Coast"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Tanzania", "Egypt", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Sudan", "Sierra Leone", "Malawi", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Ethiopia", "Kenya", "Madagascar", "Cameroon"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sierra Leone", "Sao Tome and Principe", "Equatorial Guinea", "Eritrea"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sao Tome and Principe", "Gambia", "Mauritius", "Djibouti"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Malawi", "Comoros", "Somalia", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Kenya", "Equatorial Guinea", "Congo", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Malawi", "Comoros", "Uganda", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Tanzania", "Equatorial Guinea", "Ghana", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Mauritius", "Cape Verde", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mauritius", "Gambia", "Comoros", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Morocco", "Madagascar", "Benin", "DR Congo"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Rwanda", "Congo", "Sierra Leone", "Equatorial Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guinea-Bissau", "Malawi", "Benin", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Equatorial Guinea", "Sao Tome and Principe", "Gambia", "Cape Verde"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cameroon", "Gambia", "Eritrea", "Cape Verde"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Lesotho", "Central African Republic", "Equatorial Guinea", "Gabon"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Zambia", "Congo", "Chad", "Tunisia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cameroon", "Burundi", "Niger", "Central African Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Nigeria", "Cape Verde", "Benin", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sao Tome and Principe", "Benin", "Togo", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mauritius", "Gambia", "Comoros", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Ghana", "Liberia", "Sierra Leone", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Ivory Coast", "Comoros", "Djibouti", "Lesotho"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Togo", "Liberia", "Guinea-Bissau", "Sao Tome and Principe"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Djibouti", "Lesotho", "Seychelles", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Guinea", "Togo", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guinea-Bissau", "Sao Tome and Principe", "Gambia", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Equatorial Guinea", "Senegal", "Liberia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cape Verde", "Gambia", "Sao Tome and Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mali", "Guinea", "Central African Republic", "Mozambique"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Gambia", "Guinea-Bissau", "Burkina Faso", "Sao Tome and Principe"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Togo", "Sierra Leone", "Guinea-Bissau", "Mauritania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cape Verde", "Sao Tome and Principe", "Mauritius", "Comoros"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Sao Tome and Principe", "San Marino", "Vatican City"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Angola", "Mauritius", "Gambia", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Zambia", "Burkina Faso", "Mauritius", "Sao Tome and Principe"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Lesotho", "Rwanda", "Liberia", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sierra Leone", "Malawi", "Gambia", "Sao Tome and Principe"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mozambique", "Seychelles", "Rwanda", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cape Verde", "Malawi", "Madagascar", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Lucia", "Seychelles", "Sao Tome and Principe", "Comoros"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"San Marino", "Sao Tome and Principe", "Seychelles", "Mauritius"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Seychelles", "Marshall Islands", "Liechtenstein", "Saint Kitts and Nevis"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"South Sudan", "Madagascar", "South Africa", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Ivory Coast", "Namibia", "Liberia", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Eswatini", "Malawi", "Botswana", "Equatorial Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mauritius", "Lesotho", "Seychelles", "Eswatini"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Eswatini", "Cape Verde", "Comoros", "Gambia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Mexico", "United States", "Chad", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Liberia", "Mexico", "Honduras", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Sierra Leone", "Colombia", "Mexico", "Croatia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Dominican Republic", "Saint Kitts and Nevis", "Guatemala", "Antigua and Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Vincent", "Belize", "Grenada", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Haiti", "Honduras", "Dominica", "Saint Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Dominica", "El Salvador", "Grenada", "Saint Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Trinidad and Tobago", "Antigua and Barbuda", "Dominican Republic", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Barbados", "Costa Rica", "Saint Kitts and Nevis", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Belize", "Dominica", "Antigua and Barbuda", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Trinidad and Tobago", "Dominica", "Saint Vincent", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Cuba", "Bahamas", "Haiti", "Trinidad and Tobago"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Trinidad and Tobago", "Jamaica", "Barbados", "Antigua and Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Haiti", "Trinidad and Tobago", "Grenada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Lucia", "Saint Kitts and Nevis", "Saint Vincent", "Dominican Republic"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Kitts and Nevis", "Vatican City", "Monaco", "Maldives"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vatican City", "Saint Kitts and Nevis", "Tuvalu", "Antigua and Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Kitts and Nevis", "Dominica", "Barbados", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Grenada", "Saint Kitts and Nevis", "Saint Vincent", "Saint Lucia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Saint Vincent", "San Marino", "Maldives", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Monaco", "Saint Kitts and Nevis", "Barbados", "Marshall Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Grenada", "Nauru", "Monaco", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Trinidad and Tobago", "Grenada", "Barbados", "Antigua and Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guyana", "Uruguay", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guyana", "Paraguay", "Ecuador", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guyana", "Togo", "Sierra Leone", "Bosnia and Herzegovina"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Lithuania", "Qatar", "Jamaica", "Suriname"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Vanuatu", "Suriname", "Brunei", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Peru", "Chile", "Uruguay", "Ecuador"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Paraguay", "Uruguay", "Brazil", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Bolivia", "Guyana", "Paraguay", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Paraguay", "Uruguay", "Suriname", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Uruguay", "El Salvador", "Armenia", "Palestine"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Suriname", "Chile", "Ecuador", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the largest by area?"
            Reponses := array{"Guyana", "Argentina", "Colombia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "Kazakhstan", "France", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Germany", "France", "Zambia", "Angola"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Chile", "Spain", "France", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Spain", "Venezuela", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Portugal", "Italy", "Germany", "France"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"France", "United Kingdom", "Spain", "Sweden"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"United Kingdom", "France", "Ireland", "Italy"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Belgium", "Austria", "Italy", "Sweden"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Germany", "Netherlands", "Sweden", "Ireland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iceland", "Switzerland", "Luxembourg", "France"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Portugal", "Ireland", "Switzerland", "Iceland"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Spain", "United Kingdom", "Italy", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Monaco", "France", "United Kingdom", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iceland", "Italy", "Belgium", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iceland", "Malta", "Andorra", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Luxembourg", "San Marino", "Germany", "Ireland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Vatican City", "San Marino", "Iceland", "Ireland"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Denmark", "Ireland", "Switzerland", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iceland", "Sweden", "Italy", "France"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Australia", "France", "China", "Norway"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Argentina", "Sweden", "Australia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Italy", "Finland", "Austria", "Denmark"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Peru", "France", "Russia", "Finland"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Poland", "Russia", "Ukraine", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Greece", "Czechia", "Ukraine", "Poland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Greece", "Slovakia", "Serbia", "Czechia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Romania", "Russia", "Hungary", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Lithuania", "Romania", "Slovenia", "Poland"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Russia", "Croatia", "Bulgaria", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Poland", "Hungary", "Bosnia and Herzegovina", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Poland", "Serbia", "Greece", "Russia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Estonia", "Albania", "Montenegro", "Latvia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"North Macedonia", "Slovakia", "Bosnia and Herzegovina", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Croatia", "Bosnia and Herzegovina", "Albania", "Latvia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Poland", "Romania", "Greece", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ukraine", "Romania", "Russia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Russia", "Romania", "Ukraine", "Iraq"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Greece", "Lithuania", "Romania", "Moldova"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Mali", "Russia", "Ukraine", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ukraine", "Belarus", "Russia", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ukraine", "Greece", "Poland", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Romania", "Belarus", "Latvia", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bulgaria", "Greece", "Belarus", "Lithuania"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Estonia", "Poland", "North Macedonia", "Cyprus"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Brazil", "Saudi Arabia", "Iran", "Turkey"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Turkey", "Oman", "Israel", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Lebanon", "Jordan", "Palestine", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Georgia", "Lebanon", "Yemen", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Syria", "Oman", "Iraq", "Saudi Arabia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iran", "Turkey", "Oman", "Jordan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iraq", "Saudi Arabia", "Iran", "Turkey"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Iran", "Argentina", "Brazil", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Russia", "United States", "China", "Saudi Arabia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Saudi Arabia", "Yemen", "Iran", "Turkey"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Turkey", "Saudi Arabia", "Oman", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"United Arab Emirates", "Yemen", "Turkey", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Georgia", "United Arab Emirates", "Israel", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bahrain", "Azerbaijan", "Georgia", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Syria", "Turkey", "Kuwait", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Yemen", "Syria", "Georgia", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Armenia", "Saudi Arabia", "Iraq", "Syria"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Oman", "Azerbaijan", "Syria", "Saudi Arabia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Brazil", "Australia", "United States", "Kazakhstan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Uzbekistan", "Mongolia", "Kazakhstan", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Turkmenistan", "Mongolia", "Kazakhstan", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Afghanistan", "Kyrgyzstan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Kazakhstan", "Tajikistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Canada", "Mongolia", "Kazakhstan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Kazakhstan", "Mongolia", "China", "United States"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Pakistan", "Japan", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"South Korea", "Laos", "Japan", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Pakistan", "Vietnam", "India", "North Korea"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Russia", "China", "Brazil", "India"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "Pakistan", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bangladesh", "Japan", "Philippines", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Sri Lanka", "Cambodia", "Myanmar", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Myanmar", "Philippines", "Nepal", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Pakistan", "Vietnam", "Bangladesh", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Maldives", "Cambodia", "Pakistan", "East Timor"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "China", "India", "Myanmar"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "China", "Thailand", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"India", "Thailand", "Laos", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"China", "Philippines", "India", "Cambodia"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"India", "Vietnam", "China", "Myanmar"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "Malaysia", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Laos", "Singapore", "India", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"India", "China", "Indonesia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bhutan", "Brunei", "Cambodia", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Indonesia", "Pakistan", "India", "Philippines"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Laos", "East Timor", "Cambodia", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Australia", "New Zealand", "Papua New Guinea", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Papua New Guinea", "Australia", "DR Congo", "Libya"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"New Zealand", "Fiji", "Papua New Guinea", "Australia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Australia", "New Zealand", "Solomon Islands", "Papua New Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Solomon Islands", "New Zealand", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Samoa", "Vanuatu", "Solomon Islands", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Solomon Islands", "Papua New Guinea", "Tonga", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Samoa", "Vanuatu", "Tuvalu", "Solomon Islands"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Australia", "Vanuatu", "New Zealand", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Palau", "Nauru", "Kiribati", "Vanuatu"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Palau", "Solomon Islands", "Fiji", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"New Zealand", "Micronesia", "Samoa", "Papua New Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Kiribati", "Papua New Guinea", "Marshall Islands", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Sudan", "Mauritania", "DR Congo", "Morocco"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"United States", "Brazil", "Algeria", "Canada"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"DR Congo", "Tunisia", "Mozambique", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Russia", "Libya", "China", "Canada"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Egypt", "DR Congo", "Algeria", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Brazil", "Australia", "Russia", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Libya", "Ethiopia", "South Africa", "South Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"DR Congo", "Ethiopia", "Sudan", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Eritrea", "South Africa", "Ethiopia", "Libya"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Mauritania", "Djibouti", "Benin", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Somalia", "Sudan", "Nigeria", "Egypt"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Niger", "Kenya", "Tanzania", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ethiopia", "South Sudan", "Uganda", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Sudan", "Algeria", "Tanzania", "Libya"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Congo", "Liberia", "Kenya", "Rwanda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Egypt", "Burundi", "Chad", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Australia", "DR Congo", "Russia", "United States"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "Niger", "Congo", "Botswana"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"DR Congo", "Botswana", "Gabon", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Sierra Leone", "Senegal", "Equatorial Guinea", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Tanzania", "Cameroon", "Egypt", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "DR Congo", "Central African Republic", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Algeria", "DR Congo", "Chad", "India"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Niger", "DR Congo", "Algeria", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Libya", "Sudan", "Nigeria", "DR Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Niger", "Benin", "Angola", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Morocco", "Togo", "South Africa", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ghana", "Nigeria", "South Africa", "Ethiopia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ivory Coast", "South Sudan", "Central African Republic", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Senegal", "Liberia", "Congo", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Somalia", "Sierra Leone", "Namibia", "Ivory Coast"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Niger", "Guinea", "Kenya", "South Sudan"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Zambia", "Guinea-Bissau", "Uganda", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Somalia", "Niger", "Senegal", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"South Africa", "South Sudan", "Gambia", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"DR Congo", "Mali", "Algeria", "India"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"South Africa", "Burkina Faso", "South Sudan", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Algeria", "Sudan", "Mauritania", "DR Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Libya", "Uganda", "Cape Verde", "South Africa"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Mozambique", "Nigeria", "Rwanda", "Sao Tome and Principe"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "Algeria", "DR Congo", "India"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "South Africa", "Zambia", "DR Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Zimbabwe", "Nigeria", "Algeria", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Kenya", "South Sudan", "Mali", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Libya", "Sudan", "Mozambique", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Mauritania", "Egypt", "Madagascar", "Libya"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Tanzania", "Comoros", "Madagascar", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Burkina Faso", "Mauritius", "Mali", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"South Africa", "Senegal", "Namibia", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Algeria", "South Africa", "DR Congo", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Algeria", "Namibia", "Libya", "DR Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "Algeria", "Botswana", "Egypt"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Lesotho", "Uganda", "Cameroon", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ethiopia", "Eswatini", "Tunisia", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"India", "United States", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Angola", "Cambodia", "Guatemala", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Panama", "Nicaragua", "Belize", "Dominican Republic"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Guyana", "Honduras", "Peru", "Poland"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Costa Rica", "Cuba", "El Salvador", "Panama"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Turkey", "Canada", "Nicaragua", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Guatemala", "Nicaragua", "Costa Rica", "Honduras"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Panama", "Nicaragua", "Spain", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Guatemala", "El Salvador", "Haiti", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Venezuela", "Mexico", "Cuba", "Spain"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Costa Rica", "El Salvador", "Jamaica", "Haiti"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Nicaragua", "Haiti", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Guatemala", "Dominican Republic", "Cuba", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Saint Kitts and Nevis", "Trinidad and Tobago", "Dominican Republic", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Dominica", "Cuba", "Panama", "Antigua and Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Trinidad and Tobago", "Honduras", "El Salvador", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Panama", "Saint Lucia", "Cuba", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bahamas", "Jamaica", "Saint Vincent", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Jamaica", "Belize", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Grenada", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Trinidad and Tobago", "Belize", "Bahamas", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Colombia", "Argentina", "Brazil", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Venezuela", "Argentina", "Brazil", "Kazakhstan"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Chile", "Argentina", "Brazil", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Ecuador", "Suriname", "Venezuela", "Brazil"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Bolivia", "Argentina", "Ecuador", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Brazil", "Peru", "Argentina", "DR Congo"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Brazil", "Bolivia", "Argentina", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Colombia", "Brazil", "Peru", "Paraguay"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Chile", "Venezuela", "Argentina", "Uruguay"}
            BonneReponse := 3
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"Chile", "Colombia", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Which country is the smallest by area?"
            Reponses := array{"China", "Brazil", "Argentina", "Russia"}
            BonneReponse := 2

MakeRecordsQuestionsES() : []question =
    array:
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Irlanda", "Francia", "Austria", "Suiza"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Belgica", "Dinamarca", "Islandia", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Suecia", "Portugal", "Austria", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Austria", "Malta", "Suecia", "Espana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islandia", "Luxemburgo", "Portugal", "Noruega"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Reino Unido", "San Marino", "Suecia", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Marino", "Monaco", "Malta", "Irlanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Belgica", "Ciudad del Vaticano", "Finlandia", "Islandia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Malta", "Irlanda", "Finlandia", "Paises Bajos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Marino", "Luxemburgo", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Luxemburgo", "Liechtenstein", "Suiza", "Noruega"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Austria", "Finlandia", "Ciudad del Vaticano", "Luxemburgo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Palaos", "Ciudad del Vaticano", "Nauru", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Monaco", "San Marino", "Andorra", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ciudad del Vaticano", "Liechtenstein", "Tuvalu", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ciudad del Vaticano", "San Marino", "Nauru", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Andorra", "Malta", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Monaco", "Ciudad del Vaticano", "Islandia", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Monaco", "Islandia", "Ciudad del Vaticano", "Noruega"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Andorra", "San Marino", "Suecia", "Dinamarca"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Dinamarca", "Monaco", "Islandia", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Luxemburgo", "Finlandia", "San Marino", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Chequia", "Macedonia del Norte", "Rumania", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bosnia y Herzegovina", "Eslovenia", "Chequia", "Moldavia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bosnia y Herzegovina", "Macedonia del Norte", "Eslovaquia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Croacia", "Hungria", "Letonia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Barbados", "Montenegro", "Chipre", "Eslovenia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Letonia", "Estonia", "Macedonia del Norte", "Croacia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bosnia y Herzegovina", "Montenegro", "Letonia", "Chipre"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bosnia y Herzegovina", "Serbia", "Lituania", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Liechtenstein", "Montenegro", "Tonga", "Antigua y Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Montenegro", "Macedonia del Norte", "Chipre", "Ciudad del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Albania", "Montenegro", "Chipre", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Lituania", "Grecia", "Chipre", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Croacia", "Moldavia", "Bulgaria", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bulgaria", "Grecia", "Rumania", "Macedonia del Norte"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Chipre", "Estonia", "Montenegro", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Chipre", "Chequia", "Hungria", "Ucrania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Eslovaquia", "Bielorrusia", "Croacia", "Bosnia y Herzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Rusia", "Chequia", "Rumania", "Letonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islandia", "Montenegro", "Tonga", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Letonia", "Montenegro", "Cabo Verde", "Belice"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Montenegro", "Estonia", "Chipre", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Chipre", "Montenegro", "Seychelles", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Libano", "Georgia", "Irak", "Turquia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Kuwait", "Palestina", "Israel", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Palestina", "Barein", "Catar", "Antigua y Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Georgia", "Kuwait", "Libano", "Barein"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Azerbaiyan", "Siria", "Israel", "Jordania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Armenia", "Jordania", "Barein", "Catar"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Irak", "Libano", "Barein", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Jordania", "Israel", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Azerbaiyan", "Israel", "Arabia Saudita", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Kuwait", "Israel", "Georgia", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Oman", "Barein", "Armenia", "Catar"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Emiratos Arabes Unidos", "Oman", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Barein", "Catar", "Trinidad y Tobago", "Maldivas"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Micronesia", "Islandia", "Cabo Verde", "Barein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Barein", "Kuwait", "Kiribati", "San Vicente"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Barein", "Guyana", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Armenia", "Barein", "Micronesia", "Maldivas"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Azerbaiyan", "Armenia", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tayikistan", "Turkmenistan", "Mongolia", "Kazajistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Kazajistan", "Turkmenistan", "Uzbekistan", "Tayikistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Turkmenistan", "Mongolia", "Seychelles", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Mongolia", "Kirguistan", "Eslovenia", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ciudad del Vaticano", "Mongolia", "Armenia", "Tayikistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Kazajistan", "Tayikistan", "Turkmenistan", "Afganistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Mongolia", "Yibuti", "Maldivas", "Chipre"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Pakistan", "Brunei", "Maldivas", "China"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Laos", "Japon", "Sri Lanka", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Laos", "Camboya", "Nepal", "Corea del Sur"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Timor Oriental", "Laos", "Corea del Norte", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Birmania", "India", "Butan", "Malasia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Butan", "Nepal", "Camboya", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Malasia", "Banglades", "Butan", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Sri Lanka", "Maldivas", "Brunei", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Laos", "Nepal", "Brunei", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islandia", "Brunei", "Bahamas", "Butan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Maldivas", "Samoa", "Nauru", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Butan", "Malasia", "Maldivas", "Birmania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tailandia", "Nepal", "Sri Lanka", "Butan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Brunei", "Butan", "Timor Oriental", "Laos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Butan", "Camboya", "Singapur", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Timor Oriental", "Singapur", "Sri Lanka", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Camboya", "Butan", "Laos", "Malasia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Timor Oriental", "Singapur", "Brunei", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Banglades", "Japon", "Butan", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Brunei", "Ciudad del Vaticano", "Kiribati", "San Vicente"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Filipinas", "Corea del Norte", "Singapur", "Timor Oriental"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Butan", "Maldivas", "Brunei", "Timor Oriental"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Papua Nueva Guinea", "Australia", "Islas Marshall", "Fiyi"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Micronesia", "Samoa", "Palaos", "Nueva Zelanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Palaos", "Fiyi", "Tonga", "Papua Nueva Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islas Marshall", "Fiyi", "Tonga", "Micronesia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Samoa", "Islas Salomon", "Micronesia", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tuvalu", "Palaos", "Micronesia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Kiribati", "Micronesia", "Tuvalu", "Samoa"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tonga", "Palaos", "Nauru", "Islas Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Nauru", "Islas Marshall", "Tuvalu", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tuvalu", "Palaos", "Nauru", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Tuvalu", "Palaos", "Nauru", "Islas Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Malaui", "Republica Centroafricana", "Marruecos", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Zambia", "Mauricio", "Argelia", "Republica Centroafricana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Botsuana", "Guinea Ecuatorial", "Eritrea", "Tunez"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Yibuti", "Gambia", "Libia", "Cabo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Argelia", "Egipto", "Lesoto"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Sudan", "Esuatini", "Senegal", "Comoras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Sudan del Sur", "Mauricio", "Lesoto"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Liberia", "Libia", "Etiopia", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Eritrea", "Seychelles", "Guinea-Bisau"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Yibuti", "Santo Tome y Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Santo Tome y Principe", "Somalia", "Comoras", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Gabon", "Tunez", "Kenia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Yibuti", "Madagascar", "Uganda", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Liberia", "Tanzania", "Chad", "Tunez"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Ruanda", "Mauritania", "Santo Tome y Principe"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Guinea-Bisau", "Liberia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Malaui", "RD del Congo", "Sudan", "Tunez"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Congo", "Lesoto", "Guinea Ecuatorial", "Comoras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Cabo Verde", "Santo Tome y Principe", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Guinea Ecuatorial", "Santo Tome y Principe", "Cabo Verde"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Esuatini", "Camerun", "Libia", "Tunez"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Santo Tome y Principe", "Republica Centroafricana", "Yibuti", "Guinea-Bisau"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Lesoto", "Congo", "Chad", "Republica Centroafricana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Botsuana", "Niger", "Libia", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Burundi", "Argelia", "Egipto", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Esuatini", "Benin", "Comoras", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Guinea-Bisau", "Esuatini", "Namibia", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Libia", "Ghana", "Chad", "Guinea Ecuatorial"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Lesoto", "Gabon", "Liberia", "Costa de Marfil"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Liberia", "Santo Tome y Principe", "Lesoto", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Sierra Leona", "Republica Centroafricana", "Gabon", "Comoras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Guinea", "Santo Tome y Principe", "Liberia", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Santo Tome y Principe", "Esuatini", "Guinea-Bisau", "Cabo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Botsuana", "Eritrea", "Senegal"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Gambia", "Cabo Verde", "Yibuti"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Congo", "Mali", "Botsuana", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Botsuana", "Eritrea", "Mauritania", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Mauritania", "Cabo Verde", "Seychelles", "Mauricio"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Santo Tome y Principe", "Seychelles", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Seychelles", "Santo Tome y Principe", "San Cristobal y Nieves", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Angola", "Gabon", "Republica Centroafricana"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Libia", "Esuatini", "Seychelles", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Yibuti", "Liberia", "Sierra Leona", "Zimbabue"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Republica Centroafricana", "Comoras", "Gabon", "Malaui"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Sudan del Sur", "Libia", "Benin", "Mozambique"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Botsuana", "Madagascar", "Somalia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Seychelles", "Santo Tome y Principe", "Palaos"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Santo Tome y Principe", "Cabo Verde", "Mauricio", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islas Marshall", "Monaco", "San Cristobal y Nieves", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ruanda", "Camerun", "Zimbabue", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Comoras", "Yibuti", "Mauricio", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Botsuana", "Santo Tome y Principe", "Mauricio", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Lesoto", "Comoras", "Santo Tome y Principe", "Esuatini"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Cabo Verde", "Santo Tome y Principe", "Esuatini", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Mexico", "Estados Unidos", "Canada", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Canada", "Barbados", "Ruanda", "Kazajistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Mexico", "Canada", "Malta", "Camboya"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Cristobal y Nieves", "Panama", "Guatemala", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Belice", "Antigua y Barbuda", "Dominica", "San Vicente"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Honduras", "Barbados", "Antigua y Barbuda", "Bahamas"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Barbados", "Santa Lucia", "El Salvador", "Dominica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Granada", "Nicaragua", "Santa Lucia", "San Vicente"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Trinidad y Tobago", "Costa Rica", "Jamaica", "Antigua y Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Panama", "Barbados", "Antigua y Barbuda", "Belice"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bahamas", "Antigua y Barbuda", "Dominica", "Granada"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Antigua y Barbuda", "El Salvador", "San Vicente", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Vicente", "Jamaica", "Granada", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Belice", "Haiti", "El Salvador", "Granada"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Nicaragua", "San Cristobal y Nieves", "Republica Dominicana", "San Vicente"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ciudad del Vaticano", "San Cristobal y Nieves", "Palaos", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Nauru", "San Cristobal y Nieves", "Antigua y Barbuda", "Islas Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Marino", "Dominica", "Monaco", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Cristobal y Nieves", "Dominica", "Santa Lucia", "Antigua y Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Vicente", "San Cristobal y Nieves", "Tuvalu", "Palaos"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Barbados", "Antigua y Barbuda", "San Vicente", "Granada"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Islas Marshall", "San Cristobal y Nieves", "Granada", "Ciudad del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Antigua y Barbuda", "San Cristobal y Nieves", "Santa Lucia", "Trinidad y Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Colombia", "Chile", "Ecuador", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Guyana", "Uruguay", "Venezuela", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Ciudad del Vaticano", "Islas Marshall", "San Cristobal y Nieves", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"San Cristobal y Nieves", "Barbados", "Surinam", "Palaos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Surinam", "Paraguay", "Ecuador", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Surinam", "Chile", "Peru", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Argentina", "Brasil", "Paraguay", "Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bolivia", "Uruguay", "Surinam", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Paraguay", "Surinam", "Guyana", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Guyana", "Surinam", "Uruguay", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Bolivia", "Guyana", "Surinam", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene mayor poblacion?"
            Reponses := array{"Paraguay", "Uruguay", "Argentina", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Nigeria", "Estados Unidos", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Brasil", "Banglades", "Alemania", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"India", "Nigeria", "Italia", "Filipinas"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Espana", "Alemania", "Iran", "Rusia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Portugal", "Italia", "Francia", "Paises Bajos"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"China", "Etiopia", "Rusia", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Espana", "Portugal", "Irlanda", "Suecia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Belgica", "Italia", "Francia", "Reino Unido"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Italia", "Francia", "Espana", "Paises Bajos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Austria", "Italia", "Luxemburgo", "Suecia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Suiza", "Reino Unido", "Alemania", "Espana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Francia", "Alemania", "Espana", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Alemania", "Monaco", "Islandia", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Francia", "Finlandia", "Andorra", "Espana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Portugal", "Noruega", "Finlandia", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Finlandia", "San Marino", "Alemania", "Luxemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Austria", "Ciudad del Vaticano", "Portugal", "Islandia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Belgica", "Paises Bajos", "Malta", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Portugal", "Luxemburgo", "Islandia", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Noruega", "Reino Unido", "Espana", "Suecia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Reino Unido", "Suecia", "Paises Bajos", "Espana"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Portugal", "Espana", "Dinamarca", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Suecia", "Reino Unido", "Finlandia", "Belgica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Polonia", "Iran", "RD del Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ucrania", "Polonia", "Rusia", "Chequia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Grecia", "Hungria", "Eslovaquia", "Polonia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rumania", "Rusia", "Polonia", "Hungria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Eslovaquia", "Eslovenia", "Chequia", "Bulgaria"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Croacia", "Bulgaria", "Rusia", "Rumania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Hungria", "Bosnia y Herzegovina", "Bielorrusia", "Ucrania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Polonia", "Rumania", "Serbia", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ucrania", "Albania", "Serbia", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Serbia", "Bulgaria", "Macedonia del Norte", "Croacia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Polonia", "Albania", "Ucrania", "Grecia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Grecia", "Ucrania", "Rusia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ucrania", "Rumania", "Polonia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Polonia", "Ucrania", "Rumania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ucrania", "Moldavia", "Bielorrusia", "Eslovaquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Ucrania", "Brasil", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Ucrania", "Bielorrusia", "Rumania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Estados Unidos", "Indonesia", "China"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Bosnia y Herzegovina", "Bulgaria", "Bielorrusia", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Hungria", "Chequia", "Letonia", "Croacia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rumania", "Rusia", "Lituania", "Bielorrusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Polonia", "Moldavia", "Chipre", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Pakistan", "Turquia", "Nigeria", "Rusia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Yemen", "Siria", "Israel", "Arabia Saudita"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Palestina", "Turquia", "Yemen", "Azerbaiyan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Yemen", "Libano", "Turquia", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Turquia", "Siria", "Irak", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Jordania", "Turquia", "Irak", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Turquia", "Irak", "Iran", "Mexico"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Pakistan", "Iran", "Estados Unidos", "India"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Turquia", "Arabia Saudita", "Iran", "Francia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Yemen", "Iran", "Turquia", "Rusia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Turquia", "Yemen", "Arabia Saudita", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Arabia Saudita", "Emiratos Arabes Unidos", "Siria", "Turquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Emiratos Arabes Unidos", "Azerbaiyan", "Arabia Saudita", "Catar"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Libano", "Barein", "Catar", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Iran", "Turquia", "Azerbaiyan", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Georgia", "Israel", "Emiratos Arabes Unidos", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Armenia", "Yemen", "Iran", "Emiratos Arabes Unidos"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Yemen", "Siria", "Turquia", "Azerbaiyan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ghana", "Uzbekistan", "Afganistan", "Kazajistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"India", "Pakistan", "Rusia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Afganistan", "Turkmenistan", "Kazajistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Kazajistan", "Kirguistan", "Uzbekistan", "Afganistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Kazajistan", "Tayikistan", "Afganistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Reino Unido", "Francia", "Afganistan", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Afganistan", "Kirguistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Japon", "Pakistan", "China", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Indonesia", "China", "Corea del Sur", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Pakistan", "Filipinas", "Tailandia", "Corea del Norte"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Banglades", "India", "Indonesia", "China"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Vietnam", "Japon", "Sri Lanka", "Filipinas"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Birmania", "Filipinas", "Japon", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"China", "Tailandia", "Butan", "Nepal"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Timor Oriental", "China", "Camboya", "Maldivas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Filipinas", "Birmania", "Indonesia", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"India", "Tailandia", "Japon", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Laos", "China", "Sri Lanka", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Camboya", "Vietnam", "Birmania", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"China", "Pakistan", "Vietnam", "Banglades"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Malasia", "Birmania", "Filipinas", "India"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Singapur", "Corea del Norte", "Tailandia", "Birmania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"China", "Brunei", "Tailandia", "Japon"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"India", "Indonesia", "China", "Filipinas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Pakistan", "Japon", "Laos", "Timor Oriental"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Francia", "Australia", "Vietnam", "Reino Unido"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nueva Zelanda", "Australia", "Papua Nueva Guinea", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Papua Nueva Guinea", "Australia", "Senegal", "Banglades"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Papua Nueva Guinea", "Nueva Zelanda", "Fiyi", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Australia", "Nueva Zelanda", "Papua Nueva Guinea", "Islas Salomon"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Papua Nueva Guinea", "Fiyi", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Samoa", "Australia", "Nueva Zelanda", "Papua Nueva Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tonga", "Samoa", "Vanuatu", "Papua Nueva Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Micronesia", "Fiyi", "Tuvalu", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Papua Nueva Guinea", "Vanuatu", "Kiribati", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Australia", "Papua Nueva Guinea", "Nauru", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Kiribati", "Vanuatu", "Palaos", "Islas Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nueva Zelanda", "Australia", "Micronesia", "Papua Nueva Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Fiyi", "Samoa", "Tonga", "Islas Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Etiopia", "RD del Congo", "Egipto", "Marruecos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Egipto", "RD del Congo", "Argelia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Madagascar", "Argelia", "Tunez", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tanzania", "Libia", "Benin", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Egipto", "Nigeria", "Estados Unidos", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Etiopia", "Sudan", "Egipto"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Mali", "Egipto", "Sudan del Sur", "Costa de Marfil"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Indonesia", "Nigeria", "Pakistan", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Zimbabue", "Eritrea", "Kenia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Costa de Marfil", "Yibuti", "Republica Centroafricana", "Lesoto"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Angola", "RD del Congo", "Nigeria", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Egipto", "Kenia", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Etiopia", "Uganda", "Nigeria", "Egipto"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Etiopia", "Egipto", "Nigeria", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Camerun", "Madagascar", "Kenia", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Costa de Marfil", "Egipto", "Burkina Faso", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Banglades", "Nigeria", "RD del Congo", "China"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Sudan", "Egipto", "Marruecos", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Gabon", "Burkina Faso", "Sudan del Sur", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Mali", "Guinea Ecuatorial", "Liberia", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Camerun", "Uganda", "Tanzania", "Argelia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Sudan", "Republica Centroafricana", "Sierra Leona", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Chad", "Madagascar", "Costa de Marfil", "Kenia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Niger", "Kenia", "Sudafrica", "Tanzania"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"China", "Nigeria", "India", "Estados Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Sudafrica", "Argelia", "Benin", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Burkina Faso", "Uganda", "Togo", "Argelia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tanzania", "Egipto", "Ghana", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Sudafrica", "Kenia", "Etiopia", "Costa de Marfil"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Zimbabue", "Mozambique", "Liberia", "Costa de Marfil"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Costa de Marfil", "Egipto", "Sudan", "Sierra Leona"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Argelia", "Tanzania", "Sudan", "Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Senegal", "Benin", "Malaui", "Guinea-Bisau"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Sudan", "Uganda", "Senegal", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Ghana", "Gambia", "Burundi", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"RD del Congo", "Sudan", "Kenia", "Mali"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Burkina Faso", "Sudan", "RD del Congo", "Etiopia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Mauritania", "Uganda", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Kenia", "Guinea", "Etiopia", "Cabo Verde"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Malaui", "Ruanda", "Santo Tome y Principe", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Angola", "Kenia", "Etiopia", "RD del Congo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"RD del Congo", "Tanzania", "Egipto", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tanzania", "Etiopia", "Uganda", "Zimbabue"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tanzania", "Malaui", "Egipto", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nigeria", "Egipto", "Mozambique", "Kenia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Egipto", "RD del Congo", "Madagascar", "Uganda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Comoras", "Tunez", "Marruecos", "Zimbabue"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Eritrea", "Mauricio", "Egipto", "Zimbabue"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Cabo Verde", "Madagascar", "Seychelles", "Zimbabue"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Egipto", "Etiopia", "Nigeria", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Uganda", "Togo", "Namibia", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Madagascar", "Niger", "Argelia", "Botsuana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Madagascar", "Egipto", "Lesoto", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Zambia", "Liberia", "Tanzania", "Esuatini"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Turquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"India", "Estados Unidos", "China", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Guatemala", "Mexico", "Afganistan", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Belice", "Haiti", "Guatemala", "Jamaica"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Birmania", "Guatemala", "Nigeria", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Guatemala", "Haiti", "Republica Dominicana", "El Salvador"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Republica Dominicana", "Nicaragua", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Costa Rica", "Honduras", "Guatemala", "Cuba"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Panama", "Cuba", "Haiti", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Panama", "Bahamas", "Trinidad y Tobago", "Republica Dominicana"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Rusia", "Banglades", "Alemania", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Jamaica", "Republica Dominicana", "El Salvador", "Costa Rica"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Tailandia", "Uzbekistan", "Haiti", "Japon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Corea del Sur", "Yemen", "Republica Dominicana", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"San Cristobal y Nieves", "Honduras", "Trinidad y Tobago", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"El Salvador", "Republica Dominicana", "Nicaragua", "Antigua y Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Republica Dominicana", "Dominica", "Nicaragua", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Santa Lucia", "Trinidad y Tobago", "Cuba", "Republica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"San Vicente", "Bahamas", "Santa Lucia", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Nicaragua", "Barbados", "Jamaica", "Haiti"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Guatemala", "Jamaica", "Granada", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Haiti", "Honduras", "Trinidad y Tobago", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Colombia", "Brasil", "Japon", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Colombia", "Brasil", "Venezuela", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Chile", "Peru", "Argentina", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Surinam", "Bolivia", "Paraguay", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Brasil", "Argentina", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Brasil", "Peru", "Alemania", "India"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Argentina", "Peru", "Brasil", "Bolivia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Paraguay", "Argentina", "Ecuador", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Colombia", "Uruguay", "Brasil", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Argentina", "Brasil", "Colombia", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Que pais tiene menor poblacion?"
            Reponses := array{"Argentina", "Brasil", "China", "Estados Unidos"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Alemania", "Francia", "Belgica", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Portugal", "Liechtenstein", "Islandia", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Austria", "Italia", "San Marino", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Espana", "Suiza", "Italia", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Luxemburgo", "San Marino", "Portugal", "Ciudad del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Paises Bajos", "Malta", "Suiza", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "Malta", "Irlanda", "Luxemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Liechtenstein", "Belgica", "Luxemburgo", "Malta"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Monaco", "Paises Bajos", "Ciudad del Vaticano", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Malta", "Andorra", "Luxemburgo", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Monaco", "Ciudad del Vaticano", "Suiza", "Luxemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Belgica", "Luxemburgo", "Dinamarca", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Liechtenstein", "Monaco", "San Marino", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Liechtenstein", "Monaco", "Ciudad del Vaticano", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Marino", "Ciudad del Vaticano", "Monaco", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "Liechtenstein", "San Marino", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "Islandia", "San Marino", "Luxemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Luxemburgo", "Noruega", "Irlanda", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Belgica", "Ciudad del Vaticano", "Suecia", "Irlanda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Dinamarca", "San Marino", "Andorra", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Finlandia", "Dinamarca", "Islandia", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Polonia", "Lituania", "Bosnia y Herzegovina", "Chequia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Moldavia", "Chequia", "Chipre", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Montenegro", "Eslovaquia", "Albania", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Montenegro", "Eslovenia", "Croacia", "Hungria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Chipre", "Eslovenia", "Tuvalu", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Eslovenia", "Croacia", "Macedonia del Norte", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Eslovenia", "Bosnia y Herzegovina", "Macedonia del Norte", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Montenegro", "Chipre", "Macedonia del Norte", "Serbia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Montenegro", "Chipre", "Palaos", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Macedonia del Norte", "Chipre", "Montenegro", "Palestina"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Chipre", "Montenegro", "Albania", "Cabo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Macedonia del Norte", "Grecia", "Eslovaquia", "Eslovenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Bulgaria", "Lituania", "Eslovenia", "Eslovaquia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Hungria", "Rumania", "Lituania", "Letonia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Chipre", "Moldavia", "Montenegro", "Eslovenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Bosnia y Herzegovina", "Lituania", "Ucrania", "Bielorrusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Croacia", "Bielorrusia", "Eslovaquia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Serbia", "Bulgaria", "Lituania", "Rusia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Albania", "Estonia", "Macedonia del Norte", "Chipre"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Albania", "Letonia", "Moldavia", "Eslovenia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Moldavia", "Lituania", "Chipre", "Macedonia del Norte"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Barein", "Andorra", "Monaco", "Chipre"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Turquia", "Azerbaiyan", "Emiratos Arabes Unidos", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Catar", "Barein", "Israel", "Libano"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Antigua y Barbuda", "Barein", "Santo Tome y Principe", "Palestina"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Palaos", "Palestina", "Barein", "Libano"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Georgia", "Azerbaiyan", "Siria", "Barein"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Libano", "Jordania", "Kuwait", "Barein"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Jordania", "Emiratos Arabes Unidos", "Irak", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Oman", "Iran", "Georgia", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Kuwait", "Yemen", "Palestina", "Arabia Saudita"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Azerbaiyan", "Yemen", "Jordania", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Oman", "Kuwait", "Barein", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Catar", "Israel", "Emiratos Arabes Unidos", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Barein", "Palestina", "Catar", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "Maldivas", "Barein", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Barein", "Kuwait", "Libano", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Georgia", "Palestina", "Catar", "Barein"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Palestina", "Catar", "Armenia", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Catar", "Azerbaiyan", "Israel", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Turkmenistan", "Mongolia", "Afganistan", "Kazajistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Uzbekistan", "Tayikistan", "Kirguistan", "Guinea Ecuatorial"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Kirguistan", "Turkmenistan", "Tayikistan", "Sierra Leona"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Singapur", "Kirguistan", "Suiza", "Estonia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Andorra", "Suiza", "Tayikistan", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Moldavia", "Kirguistan", "Tayikistan", "Afganistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mongolia", "Kirguistan", "Afganistan", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Butan", "Indonesia", "China", "Camboya"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Corea del Sur", "Japon", "Camboya", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Corea del Sur", "Timor Oriental", "Maldivas", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Singapur", "Corea del Norte", "Timor Oriental", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Camboya", "Malasia", "Singapur", "India"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Corea del Sur", "Banglades", "Singapur", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Maldivas", "Banglades", "Sri Lanka", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Singapur", "Timor Oriental", "Brunei", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sri Lanka", "Nepal", "Maldivas", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Timor Oriental", "Brunei", "Butan", "Singapur"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Maldivas", "Tuvalu", "San Marino", "Ciudad del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sri Lanka", "Birmania", "Banglades", "Malasia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Nepal", "Brunei", "Corea del Sur", "Tailandia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Corea del Sur", "Laos", "Sri Lanka", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sri Lanka", "Brunei", "Singapur", "Camboya"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sri Lanka", "Camboya", "Banglades", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Corea del Sur", "Timor Oriental", "Nepal", "Malasia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Maldivas", "Singapur", "Islas Marshall", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Filipinas", "Sri Lanka", "Indonesia", "Banglades"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Singapur", "Brunei", "Maldivas", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Banglades", "Filipinas", "Nepal", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Brunei", "Maldivas", "Timor Oriental", "Singapur"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Fiyi", "Nueva Zelanda", "Islas Marshall", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Islas Marshall", "Samoa", "Micronesia", "Nueva Zelanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Tonga", "Palaos", "Papua Nueva Guinea", "Nauru"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Fiyi", "Kiribati", "Micronesia", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Islas Salomon", "Nauru", "Palaos", "Micronesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Tuvalu", "Samoa", "Vanuatu", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Islas Marshall", "Samoa", "Kiribati", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Nauru", "Tuvalu", "Islas Marshall", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Kiribati", "Palaos", "Islas Marshall", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Palaos", "Islas Marshall", "Tuvalu", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Micronesia", "Nauru", "Islas Marshall", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Islas Marshall", "Nauru", "Tuvalu", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guinea-Bisau", "Marruecos", "Costa de Marfil", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Botsuana", "Malaui", "Argelia", "Namibia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Burundi", "Tunez", "Esuatini", "Mauricio"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Libia", "Burundi", "Togo", "Sudan del Sur"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guinea", "Lesoto", "Egipto", "Costa de Marfil"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Tanzania", "Egipto", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sudan del Sur", "Sierra Leona", "Malaui", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Etiopia", "Kenia", "Madagascar", "Camerun"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sierra Leona", "Santo Tome y Principe", "Guinea Ecuatorial", "Eritrea"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Santo Tome y Principe", "Gambia", "Mauricio", "Yibuti"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Malaui", "Comoras", "Somalia", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Kenia", "Guinea Ecuatorial", "Congo", "Esuatini"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Malaui", "Comoras", "Uganda", "Mauricio"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Tanzania", "Guinea Ecuatorial", "Ghana", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Mauricio", "Cabo Verde", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mauricio", "Gambia", "Comoras", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Marruecos", "Madagascar", "Benin", "RD del Congo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ruanda", "Congo", "Sierra Leona", "Guinea Ecuatorial"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guinea-Bisau", "Malaui", "Benin", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guinea Ecuatorial", "Santo Tome y Principe", "Gambia", "Cabo Verde"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Camerun", "Gambia", "Eritrea", "Cabo Verde"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Lesoto", "Republica Centroafricana", "Guinea Ecuatorial", "Gabon"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Zambia", "Congo", "Chad", "Tunez"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Camerun", "Burundi", "Niger", "Republica Centroafricana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Nigeria", "Cabo Verde", "Benin", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Santo Tome y Principe", "Benin", "Togo", "Sierra Leona"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mauricio", "Gambia", "Comoras", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ghana", "Liberia", "Sierra Leona", "Mauricio"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Costa de Marfil", "Comoras", "Yibuti", "Lesoto"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Togo", "Liberia", "Guinea-Bisau", "Santo Tome y Principe"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Yibuti", "Lesoto", "Seychelles", "Sierra Leona"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Guinea", "Togo", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guinea-Bisau", "Santo Tome y Principe", "Gambia", "Mauricio"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Guinea Ecuatorial", "Senegal", "Liberia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Cabo Verde", "Gambia", "Santo Tome y Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mali", "Guinea", "Republica Centroafricana", "Mozambique"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Gambia", "Guinea-Bisau", "Burkina Faso", "Santo Tome y Principe"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Togo", "Sierra Leona", "Guinea-Bisau", "Mauritania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Cabo Verde", "Santo Tome y Principe", "Mauricio", "Comoras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Santo Tome y Principe", "San Marino", "Ciudad del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Angola", "Mauricio", "Gambia", "Zimbabue"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Zambia", "Burkina Faso", "Mauricio", "Santo Tome y Principe"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Lesoto", "Ruanda", "Liberia", "Zimbabue"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sierra Leona", "Malaui", "Gambia", "Santo Tome y Principe"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mozambique", "Seychelles", "Ruanda", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Cabo Verde", "Malaui", "Madagascar", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Santa Lucia", "Seychelles", "Santo Tome y Principe", "Comoras"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Marino", "Santo Tome y Principe", "Seychelles", "Mauricio"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Seychelles", "Islas Marshall", "Liechtenstein", "San Cristobal y Nieves"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sudan del Sur", "Madagascar", "Sudafrica", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Costa de Marfil", "Namibia", "Liberia", "Guinea-Bisau"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Esuatini", "Malaui", "Botsuana", "Guinea Ecuatorial"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mauricio", "Lesoto", "Seychelles", "Esuatini"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Esuatini", "Cabo Verde", "Comoras", "Gambia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Mexico", "Estados Unidos", "Chad", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Liberia", "Mexico", "Honduras", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Sierra Leona", "Colombia", "Mexico", "Croacia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Republica Dominicana", "San Cristobal y Nieves", "Guatemala", "Antigua y Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Vicente", "Belice", "Granada", "Jamaica"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Haiti", "Honduras", "Dominica", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Dominica", "El Salvador", "Granada", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Antigua y Barbuda", "Republica Dominicana", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Barbados", "Costa Rica", "San Cristobal y Nieves", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Belice", "Dominica", "Antigua y Barbuda", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Dominica", "San Vicente", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Cuba", "Bahamas", "Haiti", "Trinidad y Tobago"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Jamaica", "Barbados", "Antigua y Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Haiti", "Trinidad y Tobago", "Granada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Santa Lucia", "San Cristobal y Nieves", "San Vicente", "Republica Dominicana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Cristobal y Nieves", "Ciudad del Vaticano", "Monaco", "Maldivas"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "San Cristobal y Nieves", "Tuvalu", "Antigua y Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Cristobal y Nieves", "Dominica", "Barbados", "San Vicente"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Granada", "San Cristobal y Nieves", "San Vicente", "Santa Lucia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"San Vicente", "San Marino", "Maldivas", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Monaco", "San Cristobal y Nieves", "Barbados", "Islas Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Granada", "Nauru", "Monaco", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Granada", "Barbados", "Antigua y Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guyana", "Uruguay", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guyana", "Paraguay", "Ecuador", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guyana", "Togo", "Sierra Leona", "Bosnia y Herzegovina"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Lituania", "Catar", "Jamaica", "Surinam"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Vanuatu", "Surinam", "Brunei", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Peru", "Chile", "Uruguay", "Ecuador"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Paraguay", "Uruguay", "Brasil", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Bolivia", "Guyana", "Paraguay", "Surinam"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Paraguay", "Uruguay", "Surinam", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Uruguay", "El Salvador", "Armenia", "Palestina"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Surinam", "Chile", "Ecuador", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas grande (superficie)?"
            Reponses := array{"Guyana", "Argentina", "Colombia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "Kazajistan", "Francia", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Alemania", "Francia", "Zambia", "Angola"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Chile", "Espana", "Francia", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Espana", "Venezuela", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Portugal", "Italia", "Alemania", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Francia", "Reino Unido", "Espana", "Suecia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Reino Unido", "Francia", "Irlanda", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Belgica", "Austria", "Italia", "Suecia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Alemania", "Paises Bajos", "Suecia", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islandia", "Suiza", "Luxemburgo", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Portugal", "Irlanda", "Suiza", "Islandia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Espana", "Reino Unido", "Italia", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Monaco", "Francia", "Reino Unido", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islandia", "Italia", "Belgica", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islandia", "Malta", "Andorra", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Luxemburgo", "San Marino", "Alemania", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ciudad del Vaticano", "San Marino", "Islandia", "Irlanda"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Dinamarca", "Irlanda", "Suiza", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islandia", "Suecia", "Italia", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Australia", "Francia", "China", "Noruega"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Argentina", "Suecia", "Australia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Italia", "Finlandia", "Austria", "Dinamarca"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Peru", "Francia", "Rusia", "Finlandia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Polonia", "Rusia", "Ucrania", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Grecia", "Chequia", "Ucrania", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Grecia", "Eslovaquia", "Serbia", "Chequia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rumania", "Rusia", "Hungria", "Bielorrusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Lituania", "Rumania", "Eslovenia", "Polonia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rusia", "Croacia", "Bulgaria", "Ucrania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Polonia", "Hungria", "Bosnia y Herzegovina", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Polonia", "Serbia", "Grecia", "Rusia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Estonia", "Albania", "Montenegro", "Letonia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Macedonia del Norte", "Eslovaquia", "Bosnia y Herzegovina", "Rusia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Croacia", "Bosnia y Herzegovina", "Albania", "Letonia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Polonia", "Rumania", "Grecia", "Ucrania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ucrania", "Rumania", "Rusia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rusia", "Rumania", "Ucrania", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Grecia", "Lituania", "Rumania", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Mali", "Rusia", "Ucrania", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ucrania", "Bielorrusia", "Rusia", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ucrania", "Grecia", "Polonia", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rumania", "Bielorrusia", "Letonia", "Ucrania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Bulgaria", "Grecia", "Bielorrusia", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Estonia", "Polonia", "Macedonia del Norte", "Chipre"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Brasil", "Arabia Saudita", "Iran", "Turquia"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Turquia", "Oman", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Libano", "Jordania", "Palestina", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Georgia", "Libano", "Yemen", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Siria", "Oman", "Irak", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Iran", "Turquia", "Oman", "Jordania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Irak", "Arabia Saudita", "Iran", "Turquia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Iran", "Argentina", "Brasil", "Rusia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rusia", "Estados Unidos", "China", "Arabia Saudita"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Arabia Saudita", "Yemen", "Iran", "Turquia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Turquia", "Arabia Saudita", "Oman", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Emiratos Arabes Unidos", "Yemen", "Turquia", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Georgia", "Emiratos Arabes Unidos", "Israel", "Catar"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Barein", "Azerbaiyan", "Georgia", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Siria", "Turquia", "Kuwait", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Yemen", "Siria", "Georgia", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Armenia", "Arabia Saudita", "Irak", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Oman", "Azerbaiyan", "Siria", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Brasil", "Australia", "Estados Unidos", "Kazajistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Uzbekistan", "Mongolia", "Kazajistan", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Turkmenistan", "Mongolia", "Kazajistan", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Afganistan", "Kirguistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Kazajistan", "Tayikistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Canada", "Mongolia", "Kazajistan", "Afganistan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Kazajistan", "Mongolia", "China", "Estados Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Pakistan", "Japon", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Corea del Sur", "Laos", "Japon", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Pakistan", "Vietnam", "India", "Corea del Norte"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rusia", "China", "Brasil", "India"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "Pakistan", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Banglades", "Japon", "Filipinas", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sri Lanka", "Camboya", "Birmania", "China"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Birmania", "Filipinas", "Nepal", "Malasia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Pakistan", "Vietnam", "Banglades", "Butan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Maldivas", "Camboya", "Pakistan", "Timor Oriental"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "China", "India", "Birmania"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "China", "Tailandia", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"India", "Tailandia", "Laos", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"China", "Filipinas", "India", "Camboya"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"India", "Vietnam", "China", "Birmania"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "Malasia", "India", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Laos", "Singapur", "India", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"India", "China", "Indonesia", "Rusia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Butan", "Brunei", "Camboya", "Japon"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Indonesia", "Pakistan", "India", "Filipinas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Laos", "Timor Oriental", "Camboya", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Australia", "Nueva Zelanda", "Papua Nueva Guinea", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Papua Nueva Guinea", "Australia", "RD del Congo", "Libia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Nueva Zelanda", "Fiyi", "Papua Nueva Guinea", "Australia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Australia", "Nueva Zelanda", "Islas Salomon", "Papua Nueva Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islas Salomon", "Nueva Zelanda", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Samoa", "Vanuatu", "Islas Salomon", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Islas Salomon", "Papua Nueva Guinea", "Tonga", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Samoa", "Vanuatu", "Tuvalu", "Islas Salomon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Australia", "Vanuatu", "Nueva Zelanda", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Palaos", "Nauru", "Kiribati", "Vanuatu"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Palaos", "Islas Salomon", "Fiyi", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Nueva Zelanda", "Micronesia", "Samoa", "Papua Nueva Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Kiribati", "Papua Nueva Guinea", "Islas Marshall", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sudan", "Mauritania", "RD del Congo", "Marruecos"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Estados Unidos", "Brasil", "Argelia", "Canada"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"RD del Congo", "Tunez", "Mozambique", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Rusia", "Libia", "China", "Canada"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Egipto", "RD del Congo", "Argelia", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Brasil", "Australia", "Rusia", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Libia", "Etiopia", "Sudafrica", "Sudan del Sur"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"RD del Congo", "Etiopia", "Sudan", "Argelia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Eritrea", "Sudafrica", "Etiopia", "Libia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Mauritania", "Yibuti", "Benin", "Chad"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Somalia", "Sudan", "Nigeria", "Egipto"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Niger", "Kenia", "Tanzania", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Etiopia", "Sudan del Sur", "Uganda", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sudan", "Argelia", "Tanzania", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Congo", "Liberia", "Kenia", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Egipto", "Burundi", "Chad", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Australia", "RD del Congo", "Rusia", "Estados Unidos"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "Niger", "Congo", "Botsuana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"RD del Congo", "Botsuana", "Gabon", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sierra Leona", "Senegal", "Guinea Ecuatorial", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Tanzania", "Camerun", "Egipto", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "RD del Congo", "Republica Centroafricana", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Argelia", "RD del Congo", "Chad", "India"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Niger", "RD del Congo", "Argelia", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Libia", "Sudan", "Nigeria", "RD del Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Niger", "Benin", "Angola", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Marruecos", "Togo", "Sudafrica", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ghana", "Nigeria", "Sudafrica", "Etiopia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Costa de Marfil", "Sudan del Sur", "Republica Centroafricana", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Senegal", "Liberia", "Congo", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Somalia", "Sierra Leona", "Namibia", "Costa de Marfil"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Niger", "Guinea", "Kenia", "Sudan del Sur"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Zambia", "Guinea-Bisau", "Uganda", "Malaui"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Somalia", "Niger", "Senegal", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sudafrica", "Sudan del Sur", "Gambia", "Argelia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"RD del Congo", "Mali", "Argelia", "India"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sudafrica", "Burkina Faso", "Sudan del Sur", "Argelia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Argelia", "Sudan", "Mauritania", "RD del Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Libia", "Uganda", "Cabo Verde", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Mozambique", "Nigeria", "Ruanda", "Santo Tome y Principe"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "Argelia", "RD del Congo", "India"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "Sudafrica", "Zambia", "RD del Congo"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Zimbabue", "Nigeria", "Argelia", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Kenia", "Sudan del Sur", "Mali", "Malaui"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Libia", "Sudan", "Mozambique", "Argelia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Mauritania", "Egipto", "Madagascar", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Tanzania", "Comoras", "Madagascar", "Mozambique"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Burkina Faso", "Mauricio", "Mali", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Sudafrica", "Senegal", "Namibia", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Argelia", "Sudafrica", "RD del Congo", "China"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Argelia", "Namibia", "Libia", "RD del Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "Argelia", "Botsuana", "Egipto"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Lesoto", "Uganda", "Camerun", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Etiopia", "Esuatini", "Tunez", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"India", "Estados Unidos", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Angola", "Camboya", "Guatemala", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Panama", "Nicaragua", "Belice", "Republica Dominicana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Guyana", "Honduras", "Peru", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Costa Rica", "Cuba", "El Salvador", "Panama"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Turquia", "Canada", "Nicaragua", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Guatemala", "Nicaragua", "Costa Rica", "Honduras"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Panama", "Nicaragua", "Espana", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Guatemala", "El Salvador", "Haiti", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Venezuela", "Mexico", "Cuba", "Espana"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Costa Rica", "El Salvador", "Jamaica", "Haiti"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Nicaragua", "Haiti", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Guatemala", "Republica Dominicana", "Cuba", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"San Cristobal y Nieves", "Trinidad y Tobago", "Republica Dominicana", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Dominica", "Cuba", "Panama", "Antigua y Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Honduras", "El Salvador", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Panama", "Santa Lucia", "Cuba", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Bahamas", "Jamaica", "San Vicente", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Jamaica", "Belice", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Granada", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Trinidad y Tobago", "Belice", "Bahamas", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Colombia", "Argentina", "Brasil", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Venezuela", "Argentina", "Brasil", "Kazajistan"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Chile", "Argentina", "Brasil", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Ecuador", "Surinam", "Venezuela", "Brasil"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Bolivia", "Argentina", "Ecuador", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Brasil", "Peru", "Argentina", "RD del Congo"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Brasil", "Bolivia", "Argentina", "Argelia"}
            BonneReponse := 1
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Colombia", "Brasil", "Peru", "Paraguay"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Chile", "Venezuela", "Argentina", "Uruguay"}
            BonneReponse := 3
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"Chile", "Colombia", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Que pais es el mas pequeno (superficie)?"
            Reponses := array{"China", "Brasil", "Argentina", "Rusia"}
            BonneReponse := 2

MakeRecordsQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Irland", "Frankreich", "Oesterreich", "Schweiz"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Belgien", "Daenemark", "Island", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Schweden", "Portugal", "Oesterreich", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Oesterreich", "Malta", "Schweden", "Spanien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Island", "Luxemburg", "Portugal", "Norwegen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vereinigtes Koenigreich", "San Marino", "Schweden", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"San Marino", "Monaco", "Malta", "Irland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Belgien", "Vatikanstadt", "Finnland", "Island"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Malta", "Irland", "Finnland", "Niederlande"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"San Marino", "Luxemburg", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Luxemburg", "Liechtenstein", "Schweiz", "Norwegen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Oesterreich", "Finnland", "Vatikanstadt", "Luxemburg"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Palau", "Vatikanstadt", "Nauru", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Monaco", "San Marino", "Andorra", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vatikanstadt", "Liechtenstein", "Tuvalu", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vatikanstadt", "San Marino", "Nauru", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Andorra", "Malta", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Monaco", "Vatikanstadt", "Island", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Monaco", "Island", "Vatikanstadt", "Norwegen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Andorra", "San Marino", "Schweden", "Daenemark"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Daenemark", "Monaco", "Island", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Luxemburg", "Finnland", "San Marino", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tschechien", "Nordmazedonien", "Rumaenien", "Polen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bosnien und Herzegowina", "Slowenien", "Tschechien", "Moldau"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bosnien und Herzegowina", "Nordmazedonien", "Slowakei", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kroatien", "Ungarn", "Lettland", "Moldau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Barbados", "Montenegro", "Zypern", "Slowenien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Lettland", "Estland", "Nordmazedonien", "Kroatien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bosnien und Herzegowina", "Montenegro", "Lettland", "Zypern"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bosnien und Herzegowina", "Serbien", "Litauen", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Liechtenstein", "Montenegro", "Tonga", "Antigua und Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Montenegro", "Nordmazedonien", "Zypern", "Vatikanstadt"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Albanien", "Montenegro", "Zypern", "Estland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Litauen", "Griechenland", "Zypern", "Albanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kroatien", "Moldau", "Bulgarien", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bulgarien", "Griechenland", "Rumaenien", "Nordmazedonien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Zypern", "Estland", "Montenegro", "Moldau"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Zypern", "Tschechien", "Ungarn", "Ukraine"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Slowakei", "Belarus", "Kroatien", "Bosnien und Herzegowina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Russland", "Tschechien", "Rumaenien", "Lettland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Island", "Montenegro", "Tonga", "Estland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Lettland", "Montenegro", "Kap Verde", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Montenegro", "Estland", "Zypern", "Litauen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Zypern", "Montenegro", "Seychellen", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Libanon", "Georgien", "Irak", "Tuerkei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kuwait", "Palaestina", "Israel", "Georgien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Palaestina", "Bahrain", "Katar", "Antigua und Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Georgien", "Kuwait", "Libanon", "Bahrain"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Aserbaidschan", "Syrien", "Israel", "Jordanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Armenien", "Jordanien", "Bahrain", "Katar"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Irak", "Libanon", "Bahrain", "Syrien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Jordanien", "Israel", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Aserbaidschan", "Israel", "Saudi-Arabien", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kuwait", "Israel", "Georgien", "Jemen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Oman", "Bahrain", "Armenien", "Katar"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vereinigte Arabische Emirate", "Oman", "Kuwait", "Georgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bahrain", "Katar", "Trinidad und Tobago", "Malediven"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mikronesien", "Island", "Kap Verde", "Bahrain"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bahrain", "Kuwait", "Kiribati", "St. Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Bahrain", "Guyana", "Georgien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Armenien", "Bahrain", "Mikronesien", "Malediven"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Aserbaidschan", "Armenien", "Kuwait", "Georgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tadschikistan", "Turkmenistan", "Mongolei", "Kasachstan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kasachstan", "Turkmenistan", "Usbekistan", "Tadschikistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Turkmenistan", "Mongolei", "Seychellen", "Moldau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mongolei", "Kirgisistan", "Slowenien", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vatikanstadt", "Mongolei", "Armenien", "Tadschikistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kasachstan", "Tadschikistan", "Turkmenistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mongolei", "Dschibuti", "Malediven", "Zypern"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Pakistan", "Brunei", "Malediven", "China"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Laos", "Japan", "Sri Lanka", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Laos", "Kambodscha", "Nepal", "Suedkorea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Osttimor", "Laos", "Nordkorea", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Myanmar", "Indien", "Bhutan", "Malaysia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bhutan", "Nepal", "Kambodscha", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Malaysia", "Bangladesch", "Bhutan", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sri Lanka", "Malediven", "Brunei", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Laos", "Nepal", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Island", "Brunei", "Bahamas", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Malediven", "Samoa", "Nauru", "Seychellen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bhutan", "Malaysia", "Malediven", "Myanmar"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Thailand", "Nepal", "Sri Lanka", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Brunei", "Bhutan", "Osttimor", "Laos"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bhutan", "Kambodscha", "Singapur", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Osttimor", "Singapur", "Sri Lanka", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kambodscha", "Bhutan", "Laos", "Malaysia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Osttimor", "Singapur", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bangladesch", "Japan", "Bhutan", "Indonesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Brunei", "Vatikanstadt", "Kiribati", "St. Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Philippinen", "Nordkorea", "Singapur", "Osttimor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bhutan", "Malediven", "Brunei", "Osttimor"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Papua-Neuguinea", "Australien", "Marshallinseln", "Fidschi"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mikronesien", "Samoa", "Palau", "Neuseeland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Palau", "Fidschi", "Tonga", "Papua-Neuguinea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Marshallinseln", "Fidschi", "Tonga", "Mikronesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Samoa", "Salomonen", "Mikronesien", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tuvalu", "Palau", "Mikronesien", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kiribati", "Mikronesien", "Tuvalu", "Samoa"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tonga", "Palau", "Nauru", "Marshallinseln"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Nauru", "Marshallinseln", "Tuvalu", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Mikronesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Marshallinseln"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Malawi", "Zentralafrikanische Republik", "Marokko", "Gabun"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sambia", "Mauritius", "Algerien", "Zentralafrikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Botswana", "Aequatorialguinea", "Eritrea", "Tunesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Dschibuti", "Gambia", "Libyen", "Kap Verde"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Algerien", "Aegypten", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sudan", "Eswatini", "Senegal", "Komoren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Suedsudan", "Mauritius", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Liberia", "Libyen", "Aethiopien", "Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Eritrea", "Seychellen", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Dschibuti", "Sao Tome und Principe", "Seychellen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sao Tome und Principe", "Somalia", "Komoren", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Gabun", "Tunesien", "Kenia", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Dschibuti", "Madagaskar", "Uganda", "Sambia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Liberia", "Tansania", "Tschad", "Tunesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Ruanda", "Mauretanien", "Sao Tome und Principe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Guinea-Bissau", "Liberia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Malawi", "DR Kongo", "Sudan", "Tunesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kongo", "Lesotho", "Aequatorialguinea", "Komoren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Kap Verde", "Sao Tome und Principe", "Gabun"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Aequatorialguinea", "Sao Tome und Principe", "Kap Verde"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Eswatini", "Kamerun", "Libyen", "Tunesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sao Tome und Principe", "Zentralafrikanische Republik", "Dschibuti", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Lesotho", "Kongo", "Tschad", "Zentralafrikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Botswana", "Niger", "Libyen", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Burundi", "Algerien", "Aegypten", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Eswatini", "Benin", "Komoren", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Guinea-Bissau", "Eswatini", "Namibia", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Libyen", "Ghana", "Tschad", "Aequatorialguinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Lesotho", "Gabun", "Liberia", "Elfenbeinkueste"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Liberia", "Sao Tome und Principe", "Lesotho", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sierra Leone", "Zentralafrikanische Republik", "Gabun", "Komoren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Guinea", "Sao Tome und Principe", "Liberia", "Mauretanien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sao Tome und Principe", "Eswatini", "Guinea-Bissau", "Kap Verde"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Botswana", "Eritrea", "Senegal"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Gambia", "Kap Verde", "Dschibuti"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kongo", "Mali", "Botswana", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Botswana", "Eritrea", "Mauretanien", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mauretanien", "Kap Verde", "Seychellen", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Sao Tome und Principe", "Seychellen", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Seychellen", "Sao Tome und Principe", "St. Kitts und Nevis", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Angola", "Gabun", "Zentralafrikanische Republik"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Libyen", "Eswatini", "Seychellen", "Sambia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Dschibuti", "Liberia", "Sierra Leone", "Simbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Zentralafrikanische Republik", "Komoren", "Gabun", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Suedsudan", "Libyen", "Benin", "Mosambik"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Botswana", "Madagaskar", "Somalia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Seychellen", "Sao Tome und Principe", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Sao Tome und Principe", "Kap Verde", "Mauritius", "Seychellen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Marshallinseln", "Monaco", "St. Kitts und Nevis", "Seychellen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Ruanda", "Kamerun", "Simbabwe", "Suedafrika"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Komoren", "Dschibuti", "Mauritius", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Botswana", "Sao Tome und Principe", "Mauritius", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Lesotho", "Komoren", "Sao Tome und Principe", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Sao Tome und Principe", "Eswatini", "Seychellen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mexiko", "Vereinigte Staaten", "Kanada", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kanada", "Barbados", "Ruanda", "Kasachstan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Mexiko", "Kanada", "Malta", "Kambodscha"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"St. Kitts und Nevis", "Panama", "Guatemala", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Belize", "Antigua und Barbuda", "Dominica", "St. Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Honduras", "Barbados", "Antigua und Barbuda", "Bahamas"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Barbados", "St. Lucia", "El Salvador", "Dominica"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Grenada", "Nicaragua", "St. Lucia", "St. Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Trinidad und Tobago", "Costa Rica", "Jamaika", "Antigua und Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Panama", "Barbados", "Antigua und Barbuda", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bahamas", "Antigua und Barbuda", "Dominica", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Antigua und Barbuda", "El Salvador", "St. Vincent", "Kuba"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"St. Vincent", "Jamaika", "Grenada", "St. Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Belize", "Haiti", "El Salvador", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Nicaragua", "St. Kitts und Nevis", "Dominikanische Republik", "St. Vincent"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vatikanstadt", "St. Kitts und Nevis", "Palau", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Nauru", "St. Kitts und Nevis", "Antigua und Barbuda", "Marshallinseln"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"San Marino", "Dominica", "Monaco", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"St. Kitts und Nevis", "Dominica", "St. Lucia", "Antigua und Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"St. Vincent", "St. Kitts und Nevis", "Tuvalu", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Barbados", "Antigua und Barbuda", "St. Vincent", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Marshallinseln", "St. Kitts und Nevis", "Grenada", "Vatikanstadt"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Antigua und Barbuda", "St. Kitts und Nevis", "St. Lucia", "Trinidad und Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Kolumbien", "Chile", "Ecuador", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Guyana", "Uruguay", "Venezuela", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Vatikanstadt", "Marshallinseln", "St. Kitts und Nevis", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"St. Kitts und Nevis", "Barbados", "Suriname", "Palau"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Suriname", "Paraguay", "Ecuador", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Suriname", "Chile", "Peru", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Argentinien", "Brasilien", "Paraguay", "Kolumbien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bolivien", "Uruguay", "Suriname", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Paraguay", "Suriname", "Guyana", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Guyana", "Suriname", "Uruguay", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Bolivien", "Guyana", "Suriname", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die groesste Bevoelkerung?"
            Reponses := array{"Paraguay", "Uruguay", "Argentinien", "Bolivien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Nigeria", "Vereinigte Staaten", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Brasilien", "Bangladesch", "Deutschland", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indien", "Nigeria", "Italien", "Philippinen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Spanien", "Deutschland", "Iran", "Russland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Portugal", "Italien", "Frankreich", "Niederlande"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"China", "Aethiopien", "Russland", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Spanien", "Portugal", "Irland", "Schweden"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Belgien", "Italien", "Frankreich", "Vereinigtes Koenigreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Italien", "Frankreich", "Spanien", "Niederlande"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Oesterreich", "Italien", "Luxemburg", "Schweden"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Schweiz", "Vereinigtes Koenigreich", "Deutschland", "Spanien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Frankreich", "Deutschland", "Spanien", "Oesterreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Deutschland", "Monaco", "Island", "Italien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Frankreich", "Finnland", "Andorra", "Spanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Portugal", "Norwegen", "Finnland", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Finnland", "San Marino", "Deutschland", "Luxemburg"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Oesterreich", "Vatikanstadt", "Portugal", "Island"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Belgien", "Niederlande", "Malta", "Frankreich"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Portugal", "Luxemburg", "Island", "Finnland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Norwegen", "Vereinigtes Koenigreich", "Spanien", "Schweden"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Vereinigtes Koenigreich", "Schweden", "Niederlande", "Spanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Portugal", "Spanien", "Daenemark", "Italien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Schweden", "Vereinigtes Koenigreich", "Finnland", "Belgien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Polen", "Iran", "DR Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ukraine", "Polen", "Russland", "Tschechien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Griechenland", "Ungarn", "Slowakei", "Polen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Rumaenien", "Russland", "Polen", "Ungarn"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Slowakei", "Slowenien", "Tschechien", "Bulgarien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kroatien", "Bulgarien", "Russland", "Rumaenien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ungarn", "Bosnien und Herzegowina", "Belarus", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Polen", "Rumaenien", "Serbien", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ukraine", "Albanien", "Serbien", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Serbien", "Bulgarien", "Nordmazedonien", "Kroatien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Polen", "Albanien", "Ukraine", "Griechenland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Griechenland", "Ukraine", "Russland", "Polen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ukraine", "Rumaenien", "Polen", "Bulgarien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Polen", "Ukraine", "Rumaenien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ukraine", "Moldau", "Belarus", "Slowakei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Ukraine", "Brasilien", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Ukraine", "Belarus", "Rumaenien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Vereinigte Staaten", "Indonesien", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Bosnien und Herzegowina", "Bulgarien", "Belarus", "Estland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ungarn", "Tschechien", "Lettland", "Kroatien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Rumaenien", "Russland", "Litauen", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Polen", "Moldau", "Zypern", "Bulgarien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Pakistan", "Tuerkei", "Nigeria", "Russland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jemen", "Syrien", "Israel", "Saudi-Arabien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Palaestina", "Tuerkei", "Jemen", "Aserbaidschan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jemen", "Libanon", "Tuerkei", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tuerkei", "Syrien", "Irak", "Jemen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jordanien", "Tuerkei", "Irak", "Syrien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tuerkei", "Irak", "Iran", "Mexiko"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Pakistan", "Iran", "Vereinigte Staaten", "Indien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tuerkei", "Saudi-Arabien", "Iran", "Frankreich"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jemen", "Iran", "Tuerkei", "Russland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tuerkei", "Jemen", "Saudi-Arabien", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Saudi-Arabien", "Vereinigte Arabische Emirate", "Syrien", "Tuerkei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Vereinigte Arabische Emirate", "Aserbaidschan", "Saudi-Arabien", "Katar"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Libanon", "Bahrain", "Katar", "Palaestina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Iran", "Tuerkei", "Aserbaidschan", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Georgien", "Israel", "Vereinigte Arabische Emirate", "Jemen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Armenien", "Jemen", "Iran", "Vereinigte Arabische Emirate"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jemen", "Syrien", "Tuerkei", "Aserbaidschan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ghana", "Usbekistan", "Afghanistan", "Kasachstan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indien", "Pakistan", "Russland", "Usbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Afghanistan", "Turkmenistan", "Kasachstan", "Usbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kasachstan", "Kirgisistan", "Usbekistan", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kasachstan", "Tadschikistan", "Afghanistan", "Usbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Vereinigtes Koenigreich", "Frankreich", "Afghanistan", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Afghanistan", "Kirgisistan", "Turkmenistan", "Mongolei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Japan", "Pakistan", "China", "Indonesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indonesien", "China", "Suedkorea", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Pakistan", "Philippinen", "Thailand", "Nordkorea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Bangladesch", "Indien", "Indonesien", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Vietnam", "Japan", "Sri Lanka", "Philippinen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Myanmar", "Philippinen", "Japan", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"China", "Thailand", "Bhutan", "Nepal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Osttimor", "China", "Kambodscha", "Malediven"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Philippinen", "Myanmar", "Indonesien", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indien", "Thailand", "Japan", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Laos", "China", "Sri Lanka", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kambodscha", "Vietnam", "Myanmar", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"China", "Pakistan", "Vietnam", "Bangladesch"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Malaysia", "Myanmar", "Philippinen", "Indien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Singapur", "Nordkorea", "Thailand", "Myanmar"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"China", "Brunei", "Thailand", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indien", "Indonesien", "China", "Philippinen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Pakistan", "Japan", "Laos", "Osttimor"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Frankreich", "Australien", "Vietnam", "Vereinigtes Koenigreich"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Neuseeland", "Australien", "Papua-Neuguinea", "Usbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Papua-Neuguinea", "Australien", "Senegal", "Bangladesch"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Papua-Neuguinea", "Neuseeland", "Fidschi", "Australien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Australien", "Neuseeland", "Papua-Neuguinea", "Salomonen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Papua-Neuguinea", "Fidschi", "Australien", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Samoa", "Australien", "Neuseeland", "Papua-Neuguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tonga", "Samoa", "Vanuatu", "Papua-Neuguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Mikronesien", "Fidschi", "Tuvalu", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Papua-Neuguinea", "Vanuatu", "Kiribati", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Australien", "Papua-Neuguinea", "Nauru", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kiribati", "Vanuatu", "Palau", "Salomonen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Neuseeland", "Australien", "Mikronesien", "Papua-Neuguinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Fidschi", "Samoa", "Tonga", "Marshallinseln"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aethiopien", "DR Kongo", "Aegypten", "Marokko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Aegypten", "DR Kongo", "Algerien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Madagaskar", "Algerien", "Tunesien", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tansania", "Libyen", "Benin", "Tschad"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aegypten", "Nigeria", "Vereinigte Staaten", "Indonesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Aethiopien", "Sudan", "Aegypten"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Mali", "Aegypten", "Suedsudan", "Elfenbeinkueste"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indonesien", "Nigeria", "Pakistan", "Aethiopien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Simbabwe", "Eritrea", "Kenia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Elfenbeinkueste", "Dschibuti", "Zentralafrikanische Republik", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Angola", "DR Kongo", "Nigeria", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Aegypten", "Kenia", "Aethiopien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aethiopien", "Uganda", "Nigeria", "Aegypten"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aethiopien", "Aegypten", "Nigeria", "Tansania"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kamerun", "Madagaskar", "Kenia", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Elfenbeinkueste", "Aegypten", "Burkina Faso", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Bangladesch", "Nigeria", "DR Kongo", "China"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Sudan", "Aegypten", "Marokko", "Kongo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Gabun", "Burkina Faso", "Suedsudan", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Mali", "Aequatorialguinea", "Liberia", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kamerun", "Uganda", "Tansania", "Algerien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Sudan", "Zentralafrikanische Republik", "Sierra Leone", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tschad", "Madagaskar", "Elfenbeinkueste", "Kenia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Niger", "Kenia", "Suedafrika", "Tansania"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"China", "Nigeria", "Indien", "Vereinigte Staaten"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Suedafrika", "Algerien", "Benin", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Burkina Faso", "Uganda", "Togo", "Algerien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tansania", "Aegypten", "Ghana", "Aethiopien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Suedafrika", "Kenia", "Aethiopien", "Elfenbeinkueste"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Simbabwe", "Mosambik", "Liberia", "Elfenbeinkueste"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Elfenbeinkueste", "Aegypten", "Sudan", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Algerien", "Tansania", "Sudan", "Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Senegal", "Benin", "Malawi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Sudan", "Uganda", "Senegal", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Ghana", "Gambia", "Burundi", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"DR Kongo", "Sudan", "Kenia", "Mali"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Burkina Faso", "Sudan", "DR Kongo", "Aethiopien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Mauretanien", "Uganda", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kenia", "Guinea", "Aethiopien", "Kap Verde"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Malawi", "Ruanda", "Sao Tome und Principe", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Angola", "Kenia", "Aethiopien", "DR Kongo"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"DR Kongo", "Tansania", "Aegypten", "Sambia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tansania", "Aethiopien", "Uganda", "Simbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Tansania", "Malawi", "Aegypten", "Mosambik"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nigeria", "Aegypten", "Mosambik", "Kenia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aegypten", "DR Kongo", "Madagaskar", "Uganda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Komoren", "Tunesien", "Marokko", "Simbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Eritrea", "Mauritius", "Aegypten", "Simbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kap Verde", "Madagaskar", "Seychellen", "Simbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Aegypten", "Aethiopien", "Nigeria", "Suedafrika"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Uganda", "Togo", "Namibia", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Madagaskar", "Niger", "Algerien", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Madagaskar", "Aegypten", "Lesotho", "Sambia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Sambia", "Liberia", "Tansania", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Tuerkei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Indien", "Vereinigte Staaten", "China", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Guatemala", "Mexiko", "Afghanistan", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Belize", "Haiti", "Guatemala", "Jamaika"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Myanmar", "Guatemala", "Nigeria", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Guatemala", "Haiti", "Dominikanische Republik", "El Salvador"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Dominikanische Republik", "Nicaragua", "Kuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Costa Rica", "Honduras", "Guatemala", "Kuba"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Panama", "Kuba", "Haiti", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Panama", "Bahamas", "Trinidad und Tobago", "Dominikanische Republik"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Russland", "Bangladesch", "Deutschland", "Kuba"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Jamaika", "Dominikanische Republik", "El Salvador", "Costa Rica"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Thailand", "Usbekistan", "Haiti", "Japan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Suedkorea", "Jemen", "Dominikanische Republik", "Aethiopien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"St. Kitts und Nevis", "Honduras", "Trinidad und Tobago", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"El Salvador", "Dominikanische Republik", "Nicaragua", "Antigua und Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Dominikanische Republik", "Dominica", "Nicaragua", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"St. Lucia", "Trinidad und Tobago", "Kuba", "Dominikanische Republik"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"St. Vincent", "Bahamas", "St. Lucia", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Nicaragua", "Barbados", "Jamaika", "Haiti"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Guatemala", "Jamaika", "Grenada", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Haiti", "Honduras", "Trinidad und Tobago", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kolumbien", "Brasilien", "Japan", "Indonesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kolumbien", "Brasilien", "Venezuela", "Suedafrika"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Chile", "Peru", "Argentinien", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Suriname", "Bolivien", "Paraguay", "Chile"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Brasilien", "Argentinien", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Brasilien", "Peru", "Deutschland", "Indien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Argentinien", "Peru", "Brasilien", "Bolivien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Paraguay", "Argentinien", "Ecuador", "Kolumbien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Kolumbien", "Uruguay", "Brasilien", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Argentinien", "Brasilien", "Kolumbien", "Chile"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land hat die kleinste Bevoelkerung?"
            Reponses := array{"Argentinien", "Brasilien", "China", "Vereinigte Staaten"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Deutschland", "Frankreich", "Belgien", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Portugal", "Liechtenstein", "Island", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Oesterreich", "Italien", "San Marino", "Portugal"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Spanien", "Schweiz", "Italien", "Oesterreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Luxemburg", "San Marino", "Portugal", "Vatikanstadt"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Niederlande", "Malta", "Schweiz", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "Malta", "Irland", "Luxemburg"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Liechtenstein", "Belgien", "Luxemburg", "Malta"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Monaco", "Niederlande", "Vatikanstadt", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malta", "Andorra", "Luxemburg", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Monaco", "Vatikanstadt", "Schweiz", "Luxemburg"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Belgien", "Luxemburg", "Daenemark", "Oesterreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Liechtenstein", "Monaco", "San Marino", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Liechtenstein", "Monaco", "Vatikanstadt", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"San Marino", "Vatikanstadt", "Monaco", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "Liechtenstein", "San Marino", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "Island", "San Marino", "Luxemburg"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Luxemburg", "Norwegen", "Irland", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Belgien", "Vatikanstadt", "Schweden", "Irland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Daenemark", "San Marino", "Andorra", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Finnland", "Daenemark", "Island", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Polen", "Litauen", "Bosnien und Herzegowina", "Tschechien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Moldau", "Tschechien", "Zypern", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Montenegro", "Slowakei", "Albanien", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Montenegro", "Slowenien", "Kroatien", "Ungarn"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Zypern", "Slowenien", "Tuvalu", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Slowenien", "Kroatien", "Nordmazedonien", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Slowenien", "Bosnien und Herzegowina", "Nordmazedonien", "Albanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Montenegro", "Zypern", "Nordmazedonien", "Serbien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Montenegro", "Zypern", "Palau", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Nordmazedonien", "Zypern", "Montenegro", "Palaestina"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Zypern", "Montenegro", "Albanien", "Kap Verde"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Nordmazedonien", "Griechenland", "Slowakei", "Slowenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bulgarien", "Litauen", "Slowenien", "Slowakei"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Ungarn", "Rumaenien", "Litauen", "Lettland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Zypern", "Moldau", "Montenegro", "Slowenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bosnien und Herzegowina", "Litauen", "Ukraine", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kroatien", "Belarus", "Slowakei", "Moldau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Serbien", "Bulgarien", "Litauen", "Russland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Albanien", "Estland", "Nordmazedonien", "Zypern"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Albanien", "Lettland", "Moldau", "Slowenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Moldau", "Litauen", "Zypern", "Nordmazedonien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bahrain", "Andorra", "Monaco", "Zypern"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Tuerkei", "Aserbaidschan", "Vereinigte Arabische Emirate", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Katar", "Bahrain", "Israel", "Libanon"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Antigua und Barbuda", "Bahrain", "Sao Tome und Principe", "Palaestina"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Palau", "Palaestina", "Bahrain", "Libanon"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Georgien", "Aserbaidschan", "Syrien", "Bahrain"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Libanon", "Jordanien", "Kuwait", "Bahrain"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Jordanien", "Vereinigte Arabische Emirate", "Irak", "Georgien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Oman", "Iran", "Georgien", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kuwait", "Jemen", "Palaestina", "Saudi-Arabien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Aserbaidschan", "Jemen", "Jordanien", "Libanon"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Oman", "Kuwait", "Bahrain", "Georgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Katar", "Israel", "Vereinigte Arabische Emirate", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bahrain", "Palaestina", "Katar", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "Malediven", "Bahrain", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bahrain", "Kuwait", "Libanon", "Palaestina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Georgien", "Palaestina", "Katar", "Bahrain"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Palaestina", "Katar", "Armenien", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Katar", "Aserbaidschan", "Israel", "Palaestina"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Turkmenistan", "Mongolei", "Afghanistan", "Kasachstan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Usbekistan", "Tadschikistan", "Kirgisistan", "Aequatorialguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kirgisistan", "Turkmenistan", "Tadschikistan", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Singapur", "Kirgisistan", "Schweiz", "Estland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Andorra", "Schweiz", "Tadschikistan", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Moldau", "Kirgisistan", "Tadschikistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mongolei", "Kirgisistan", "Afghanistan", "Usbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bhutan", "Indonesien", "China", "Kambodscha"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedkorea", "Japan", "Kambodscha", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedkorea", "Osttimor", "Malediven", "Singapur"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Singapur", "Nordkorea", "Osttimor", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kambodscha", "Malaysia", "Singapur", "Indien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedkorea", "Bangladesch", "Singapur", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malediven", "Bangladesch", "Sri Lanka", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Singapur", "Osttimor", "Brunei", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sri Lanka", "Nepal", "Malediven", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Osttimor", "Brunei", "Bhutan", "Singapur"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malediven", "Tuvalu", "San Marino", "Vatikanstadt"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sri Lanka", "Myanmar", "Bangladesch", "Malaysia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Nepal", "Brunei", "Suedkorea", "Thailand"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedkorea", "Laos", "Sri Lanka", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sri Lanka", "Brunei", "Singapur", "Kambodscha"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sri Lanka", "Kambodscha", "Bangladesch", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedkorea", "Osttimor", "Nepal", "Malaysia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malediven", "Singapur", "Marshallinseln", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Philippinen", "Sri Lanka", "Indonesien", "Bangladesch"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Singapur", "Brunei", "Malediven", "St. Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bangladesch", "Philippinen", "Nepal", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Brunei", "Malediven", "Osttimor", "Singapur"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Fidschi", "Neuseeland", "Marshallinseln", "Australien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Marshallinseln", "Samoa", "Mikronesien", "Neuseeland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Tonga", "Palau", "Papua-Neuguinea", "Nauru"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Fidschi", "Kiribati", "Mikronesien", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Salomonen", "Nauru", "Palau", "Mikronesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Tuvalu", "Samoa", "Vanuatu", "Mikronesien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Marshallinseln", "Samoa", "Kiribati", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Nauru", "Tuvalu", "Marshallinseln", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kiribati", "Palau", "Marshallinseln", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Palau", "Marshallinseln", "Tuvalu", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mikronesien", "Nauru", "Marshallinseln", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Marshallinseln", "Nauru", "Tuvalu", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guinea-Bissau", "Marokko", "Elfenbeinkueste", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Botswana", "Malawi", "Algerien", "Namibia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Burundi", "Tunesien", "Eswatini", "Mauritius"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Libyen", "Burundi", "Togo", "Suedsudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guinea", "Lesotho", "Aegypten", "Elfenbeinkueste"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Tansania", "Aegypten", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedsudan", "Sierra Leone", "Malawi", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Aethiopien", "Kenia", "Madagaskar", "Kamerun"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sierra Leone", "Sao Tome und Principe", "Aequatorialguinea", "Eritrea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sao Tome und Principe", "Gambia", "Mauritius", "Dschibuti"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malawi", "Komoren", "Somalia", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kenia", "Aequatorialguinea", "Kongo", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Malawi", "Komoren", "Uganda", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Tansania", "Aequatorialguinea", "Ghana", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Mauritius", "Kap Verde", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mauritius", "Gambia", "Komoren", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Marokko", "Madagaskar", "Benin", "DR Kongo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Ruanda", "Kongo", "Sierra Leone", "Aequatorialguinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guinea-Bissau", "Malawi", "Benin", "Gabun"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Aequatorialguinea", "Sao Tome und Principe", "Gambia", "Kap Verde"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kamerun", "Gambia", "Eritrea", "Kap Verde"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Lesotho", "Zentralafrikanische Republik", "Aequatorialguinea", "Gabun"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sambia", "Kongo", "Tschad", "Tunesien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kamerun", "Burundi", "Niger", "Zentralafrikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Nigeria", "Kap Verde", "Benin", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sao Tome und Principe", "Benin", "Togo", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mauritius", "Gambia", "Komoren", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Ghana", "Liberia", "Sierra Leone", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Elfenbeinkueste", "Komoren", "Dschibuti", "Lesotho"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Togo", "Liberia", "Guinea-Bissau", "Sao Tome und Principe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Dschibuti", "Lesotho", "Seychellen", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Guinea", "Togo", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guinea-Bissau", "Sao Tome und Principe", "Gambia", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Aequatorialguinea", "Senegal", "Liberia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kap Verde", "Gambia", "Sao Tome und Principe", "Seychellen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mali", "Guinea", "Zentralafrikanische Republik", "Mosambik"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Gambia", "Guinea-Bissau", "Burkina Faso", "Sao Tome und Principe"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Togo", "Sierra Leone", "Guinea-Bissau", "Mauretanien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kap Verde", "Sao Tome und Principe", "Mauritius", "Komoren"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Sao Tome und Principe", "San Marino", "Vatikanstadt"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Angola", "Mauritius", "Gambia", "Simbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sambia", "Burkina Faso", "Mauritius", "Sao Tome und Principe"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Lesotho", "Ruanda", "Liberia", "Simbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sierra Leone", "Malawi", "Gambia", "Sao Tome und Principe"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mosambik", "Seychellen", "Ruanda", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kap Verde", "Malawi", "Madagaskar", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Lucia", "Seychellen", "Sao Tome und Principe", "Komoren"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"San Marino", "Sao Tome und Principe", "Seychellen", "Mauritius"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Seychellen", "Marshallinseln", "Liechtenstein", "St. Kitts und Nevis"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suedsudan", "Madagaskar", "Suedafrika", "Gabun"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Elfenbeinkueste", "Namibia", "Liberia", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Eswatini", "Malawi", "Botswana", "Aequatorialguinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mauritius", "Lesotho", "Seychellen", "Eswatini"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Eswatini", "Kap Verde", "Komoren", "Gambia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Mexiko", "Vereinigte Staaten", "Tschad", "Albanien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Liberia", "Mexiko", "Honduras", "Kanada"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Sierra Leone", "Kolumbien", "Mexiko", "Kroatien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Dominikanische Republik", "St. Kitts und Nevis", "Guatemala", "Antigua und Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Vincent", "Belize", "Grenada", "Jamaika"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Haiti", "Honduras", "Dominica", "St. Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Dominica", "El Salvador", "Grenada", "St. Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Antigua und Barbuda", "Dominikanische Republik", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Barbados", "Costa Rica", "St. Kitts und Nevis", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Belize", "Dominica", "Antigua und Barbuda", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Dominica", "St. Vincent", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Kuba", "Bahamas", "Haiti", "Trinidad und Tobago"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Jamaika", "Barbados", "Antigua und Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Haiti", "Trinidad und Tobago", "Grenada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Lucia", "St. Kitts und Nevis", "St. Vincent", "Dominikanische Republik"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Kitts und Nevis", "Vatikanstadt", "Monaco", "Malediven"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "St. Kitts und Nevis", "Tuvalu", "Antigua und Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Kitts und Nevis", "Dominica", "Barbados", "St. Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Grenada", "St. Kitts und Nevis", "St. Vincent", "St. Lucia"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"St. Vincent", "San Marino", "Malediven", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Monaco", "St. Kitts und Nevis", "Barbados", "Marshallinseln"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Grenada", "Nauru", "Monaco", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Grenada", "Barbados", "Antigua und Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guyana", "Uruguay", "Ecuador", "Kolumbien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guyana", "Paraguay", "Ecuador", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guyana", "Togo", "Sierra Leone", "Bosnien und Herzegowina"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Litauen", "Katar", "Jamaika", "Suriname"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Vanuatu", "Suriname", "Brunei", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Peru", "Chile", "Uruguay", "Ecuador"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Paraguay", "Uruguay", "Brasilien", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Bolivien", "Guyana", "Paraguay", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Paraguay", "Uruguay", "Suriname", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Uruguay", "El Salvador", "Armenien", "Palaestina"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Suriname", "Chile", "Ecuador", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das groesste (Flaeche)?"
            Reponses := array{"Guyana", "Argentinien", "Kolumbien", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "Kasachstan", "Frankreich", "Australien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Deutschland", "Frankreich", "Sambia", "Angola"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Chile", "Spanien", "Frankreich", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Spanien", "Venezuela", "Argentinien", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Portugal", "Italien", "Deutschland", "Frankreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Frankreich", "Vereinigtes Koenigreich", "Spanien", "Schweden"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Vereinigtes Koenigreich", "Frankreich", "Irland", "Italien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Belgien", "Oesterreich", "Italien", "Schweden"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Deutschland", "Niederlande", "Schweden", "Irland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Island", "Schweiz", "Luxemburg", "Frankreich"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Portugal", "Irland", "Schweiz", "Island"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Spanien", "Vereinigtes Koenigreich", "Italien", "Oesterreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Monaco", "Frankreich", "Vereinigtes Koenigreich", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Island", "Italien", "Belgien", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Island", "Malta", "Andorra", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Luxemburg", "San Marino", "Deutschland", "Irland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Vatikanstadt", "San Marino", "Island", "Irland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Daenemark", "Irland", "Schweiz", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Island", "Schweden", "Italien", "Frankreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Australien", "Frankreich", "China", "Norwegen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Argentinien", "Schweden", "Australien", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Italien", "Finnland", "Oesterreich", "Daenemark"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Peru", "Frankreich", "Russland", "Finnland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Polen", "Russland", "Ukraine", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Griechenland", "Tschechien", "Ukraine", "Polen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Griechenland", "Slowakei", "Serbien", "Tschechien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Rumaenien", "Russland", "Ungarn", "Belarus"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Litauen", "Rumaenien", "Slowenien", "Polen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Russland", "Kroatien", "Bulgarien", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Polen", "Ungarn", "Bosnien und Herzegowina", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Polen", "Serbien", "Griechenland", "Russland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Estland", "Albanien", "Montenegro", "Lettland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Nordmazedonien", "Slowakei", "Bosnien und Herzegowina", "Russland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kroatien", "Bosnien und Herzegowina", "Albanien", "Lettland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Polen", "Rumaenien", "Griechenland", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Ukraine", "Rumaenien", "Russland", "Bulgarien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Russland", "Rumaenien", "Ukraine", "Irak"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Griechenland", "Litauen", "Rumaenien", "Moldau"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Mali", "Russland", "Ukraine", "Argentinien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Ukraine", "Belarus", "Russland", "Bolivien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Ukraine", "Griechenland", "Polen", "Estland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Rumaenien", "Belarus", "Lettland", "Ukraine"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bulgarien", "Griechenland", "Belarus", "Litauen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Estland", "Polen", "Nordmazedonien", "Zypern"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Brasilien", "Saudi-Arabien", "Iran", "Tuerkei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Tuerkei", "Oman", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Libanon", "Jordanien", "Palaestina", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Georgien", "Libanon", "Jemen", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Syrien", "Oman", "Irak", "Saudi-Arabien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Iran", "Tuerkei", "Oman", "Jordanien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Irak", "Saudi-Arabien", "Iran", "Tuerkei"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Iran", "Argentinien", "Brasilien", "Russland"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Russland", "Vereinigte Staaten", "China", "Saudi-Arabien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Saudi-Arabien", "Jemen", "Iran", "Tuerkei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Tuerkei", "Saudi-Arabien", "Oman", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Vereinigte Arabische Emirate", "Jemen", "Tuerkei", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Georgien", "Vereinigte Arabische Emirate", "Israel", "Katar"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bahrain", "Aserbaidschan", "Georgien", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Syrien", "Tuerkei", "Kuwait", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Jemen", "Syrien", "Georgien", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Armenien", "Saudi-Arabien", "Irak", "Syrien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Oman", "Aserbaidschan", "Syrien", "Saudi-Arabien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Brasilien", "Australien", "Vereinigte Staaten", "Kasachstan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Usbekistan", "Mongolei", "Kasachstan", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Turkmenistan", "Mongolei", "Kasachstan", "Bolivien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Afghanistan", "Kirgisistan", "Mongolei", "Usbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kasachstan", "Tadschikistan", "Turkmenistan", "Mongolei"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kanada", "Mongolei", "Kasachstan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kasachstan", "Mongolei", "China", "Vereinigte Staaten"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Pakistan", "Japan", "Indien", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Suedkorea", "Laos", "Japan", "Indonesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Pakistan", "Vietnam", "Indien", "Nordkorea"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Russland", "China", "Brasilien", "Indien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "Pakistan", "Indien", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bangladesch", "Japan", "Philippinen", "Indonesien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Sri Lanka", "Kambodscha", "Myanmar", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Myanmar", "Philippinen", "Nepal", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Pakistan", "Vietnam", "Bangladesch", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Malediven", "Kambodscha", "Pakistan", "Osttimor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "China", "Indien", "Myanmar"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "China", "Thailand", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indien", "Thailand", "Laos", "Indonesien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"China", "Philippinen", "Indien", "Kambodscha"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indien", "Vietnam", "China", "Myanmar"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "Malaysia", "Indien", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Laos", "Singapur", "Indien", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indien", "China", "Indonesien", "Russland"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bhutan", "Brunei", "Kambodscha", "Japan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indonesien", "Pakistan", "Indien", "Philippinen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Laos", "Osttimor", "Kambodscha", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Australien", "Neuseeland", "Papua-Neuguinea", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Papua-Neuguinea", "Australien", "DR Kongo", "Libyen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Neuseeland", "Fidschi", "Papua-Neuguinea", "Australien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Australien", "Neuseeland", "Salomonen", "Papua-Neuguinea"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Salomonen", "Neuseeland", "Australien", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Samoa", "Vanuatu", "Salomonen", "Australien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Salomonen", "Papua-Neuguinea", "Tonga", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Samoa", "Vanuatu", "Tuvalu", "Salomonen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Australien", "Vanuatu", "Neuseeland", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Palau", "Nauru", "Kiribati", "Vanuatu"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Palau", "Salomonen", "Fidschi", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Neuseeland", "Mikronesien", "Samoa", "Papua-Neuguinea"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kiribati", "Papua-Neuguinea", "Marshallinseln", "Mikronesien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Sudan", "Mauretanien", "DR Kongo", "Marokko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Vereinigte Staaten", "Brasilien", "Algerien", "Kanada"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"DR Kongo", "Tunesien", "Mosambik", "Sambia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Russland", "Libyen", "China", "Kanada"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Aegypten", "DR Kongo", "Algerien", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Brasilien", "Australien", "Russland", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Libyen", "Aethiopien", "Suedafrika", "Suedsudan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"DR Kongo", "Aethiopien", "Sudan", "Algerien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Eritrea", "Suedafrika", "Aethiopien", "Libyen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Mauretanien", "Dschibuti", "Benin", "Tschad"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Somalia", "Sudan", "Nigeria", "Aegypten"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Niger", "Kenia", "Tansania", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Aethiopien", "Suedsudan", "Uganda", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Sudan", "Algerien", "Tansania", "Libyen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kongo", "Liberia", "Kenia", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Aegypten", "Burundi", "Tschad", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Australien", "DR Kongo", "Russland", "Vereinigte Staaten"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "Niger", "Kongo", "Botswana"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"DR Kongo", "Botswana", "Gabun", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Sierra Leone", "Senegal", "Aequatorialguinea", "Mauretanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Tansania", "Kamerun", "Aegypten", "Sambia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "DR Kongo", "Zentralafrikanische Republik", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Algerien", "DR Kongo", "Tschad", "Indien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Niger", "DR Kongo", "Algerien", "Argentinien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Libyen", "Sudan", "Nigeria", "DR Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Niger", "Benin", "Angola", "Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Marokko", "Togo", "Suedafrika", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Ghana", "Nigeria", "Suedafrika", "Aethiopien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Elfenbeinkueste", "Suedsudan", "Zentralafrikanische Republik", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Senegal", "Liberia", "Kongo", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Somalia", "Sierra Leone", "Namibia", "Elfenbeinkueste"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Niger", "Guinea", "Kenia", "Suedsudan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Sambia", "Guinea-Bissau", "Uganda", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Somalia", "Niger", "Senegal", "Sambia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Suedafrika", "Suedsudan", "Gambia", "Algerien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"DR Kongo", "Mali", "Algerien", "Indien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Suedafrika", "Burkina Faso", "Suedsudan", "Algerien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Algerien", "Sudan", "Mauretanien", "DR Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Libyen", "Uganda", "Kap Verde", "Suedafrika"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Mosambik", "Nigeria", "Ruanda", "Sao Tome und Principe"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "Algerien", "DR Kongo", "Indien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "Suedafrika", "Sambia", "DR Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Simbabwe", "Nigeria", "Algerien", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kenia", "Suedsudan", "Mali", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Libyen", "Sudan", "Mosambik", "Algerien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Mauretanien", "Aegypten", "Madagaskar", "Libyen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Tansania", "Komoren", "Madagaskar", "Mosambik"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Burkina Faso", "Mauritius", "Mali", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Suedafrika", "Senegal", "Namibia", "Seychellen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Algerien", "Suedafrika", "DR Kongo", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Algerien", "Namibia", "Libyen", "DR Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "Algerien", "Botswana", "Aegypten"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Lesotho", "Uganda", "Kamerun", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Aethiopien", "Eswatini", "Tunesien", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Indien", "Vereinigte Staaten", "Kanada", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Angola", "Kambodscha", "Guatemala", "Australien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Panama", "Nicaragua", "Belize", "Dominikanische Republik"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Guyana", "Honduras", "Peru", "Polen"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Costa Rica", "Kuba", "El Salvador", "Panama"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Tuerkei", "Kanada", "Nicaragua", "Gabun"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Guatemala", "Nicaragua", "Costa Rica", "Honduras"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Panama", "Nicaragua", "Spanien", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Guatemala", "El Salvador", "Haiti", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Venezuela", "Mexiko", "Kuba", "Spanien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Costa Rica", "El Salvador", "Jamaika", "Haiti"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Nicaragua", "Haiti", "Kuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Guatemala", "Dominikanische Republik", "Kuba", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"St. Kitts und Nevis", "Trinidad und Tobago", "Dominikanische Republik", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Dominica", "Kuba", "Panama", "Antigua und Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Honduras", "El Salvador", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Panama", "St. Lucia", "Kuba", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bahamas", "Jamaika", "St. Vincent", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Jamaika", "Belize", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Grenada", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Trinidad und Tobago", "Belize", "Bahamas", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kolumbien", "Argentinien", "Brasilien", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Venezuela", "Argentinien", "Brasilien", "Kasachstan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Chile", "Argentinien", "Brasilien", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Ecuador", "Suriname", "Venezuela", "Brasilien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Bolivien", "Argentinien", "Ecuador", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Brasilien", "Peru", "Argentinien", "DR Kongo"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Brasilien", "Bolivien", "Argentinien", "Algerien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Kolumbien", "Brasilien", "Peru", "Paraguay"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Chile", "Venezuela", "Argentinien", "Uruguay"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"Chile", "Kolumbien", "Argentinien", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land ist das kleinste (Flaeche)?"
            Reponses := array{"China", "Brasilien", "Argentinien", "Russland"}
            BonneReponse := 2

MakeRecordsQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Irlanda", "Francia", "Austria", "Svizzera"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Belgio", "Danimarca", "Islanda", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Svezia", "Portogallo", "Austria", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Austria", "Malta", "Svezia", "Spagna"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Islanda", "Lussemburgo", "Portogallo", "Norvegia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Regno Unito", "San Marino", "Svezia", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"San Marino", "Monaco", "Malta", "Irlanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Belgio", "Citta del Vaticano", "Finlandia", "Islanda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Malta", "Irlanda", "Finlandia", "Paesi Bassi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"San Marino", "Lussemburgo", "Andorra", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lussemburgo", "Liechtenstein", "Svizzera", "Norvegia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Austria", "Finlandia", "Citta del Vaticano", "Lussemburgo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Palau", "Citta del Vaticano", "Nauru", "Monaco"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Monaco", "San Marino", "Andorra", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Citta del Vaticano", "Liechtenstein", "Tuvalu", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Citta del Vaticano", "San Marino", "Nauru", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Andorra", "Malta", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Monaco", "Citta del Vaticano", "Islanda", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Monaco", "Islanda", "Citta del Vaticano", "Norvegia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Andorra", "San Marino", "Svezia", "Danimarca"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Danimarca", "Monaco", "Islanda", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lussemburgo", "Finlandia", "San Marino", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Cechia", "Macedonia del Nord", "Romania", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bosnia ed Erzegovina", "Slovenia", "Cechia", "Moldavia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bosnia ed Erzegovina", "Macedonia del Nord", "Slovacchia", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Croazia", "Ungheria", "Lettonia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Barbados", "Montenegro", "Cipro", "Slovenia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lettonia", "Estonia", "Macedonia del Nord", "Croazia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bosnia ed Erzegovina", "Montenegro", "Lettonia", "Cipro"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bosnia ed Erzegovina", "Serbia", "Lituania", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Liechtenstein", "Montenegro", "Tonga", "Antigua e Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Montenegro", "Macedonia del Nord", "Cipro", "Citta del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Albania", "Montenegro", "Cipro", "Estonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lituania", "Grecia", "Cipro", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Croazia", "Moldavia", "Bulgaria", "Montenegro"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bulgaria", "Grecia", "Romania", "Macedonia del Nord"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Cipro", "Estonia", "Montenegro", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Cipro", "Cechia", "Ungheria", "Ucraina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Slovacchia", "Bielorussia", "Croazia", "Bosnia ed Erzegovina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Russia", "Cechia", "Romania", "Lettonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Islanda", "Montenegro", "Tonga", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lettonia", "Montenegro", "Capo Verde", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Montenegro", "Estonia", "Cipro", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Cipro", "Montenegro", "Seychelles", "Malta"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Libano", "Georgia", "Iraq", "Turchia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Kuwait", "Palestina", "Israele", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Palestina", "Bahrein", "Qatar", "Antigua e Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Georgia", "Kuwait", "Libano", "Bahrein"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Azerbaigian", "Siria", "Israele", "Giordania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Armenia", "Giordania", "Bahrein", "Qatar"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Iraq", "Libano", "Bahrein", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Giordania", "Israele", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Azerbaigian", "Israele", "Arabia Saudita", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Kuwait", "Israele", "Georgia", "Yemen"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Oman", "Bahrein", "Armenia", "Qatar"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Emirati Arabi Uniti", "Oman", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bahrein", "Qatar", "Trinidad e Tobago", "Maldive"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Micronesia", "Islanda", "Capo Verde", "Bahrein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bahrein", "Kuwait", "Kiribati", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Bahrein", "Guyana", "Georgia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Armenia", "Bahrein", "Micronesia", "Maldive"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Azerbaigian", "Armenia", "Kuwait", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Tagikistan", "Turkmenistan", "Mongolia", "Kazakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Kazakistan", "Turkmenistan", "Uzbekistan", "Tagikistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Turkmenistan", "Mongolia", "Seychelles", "Moldavia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Mongolia", "Kirghizistan", "Slovenia", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Citta del Vaticano", "Mongolia", "Armenia", "Tagikistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Kazakistan", "Tagikistan", "Turkmenistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Mongolia", "Gibuti", "Maldive", "Cipro"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Pakistan", "Brunei", "Maldive", "Cina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Laos", "Giappone", "Sri Lanka", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Laos", "Cambogia", "Nepal", "Corea del Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Timor Est", "Laos", "Corea del Nord", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Birmania", "India", "Bhutan", "Malesia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bhutan", "Nepal", "Cambogia", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Malesia", "Bangladesh", "Bhutan", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sri Lanka", "Maldive", "Brunei", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Laos", "Nepal", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Islanda", "Brunei", "Bahamas", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Maldive", "Samoa", "Nauru", "Seychelles"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bhutan", "Malesia", "Maldive", "Birmania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Thailandia", "Nepal", "Sri Lanka", "Bhutan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Brunei", "Bhutan", "Timor Est", "Laos"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bhutan", "Cambogia", "Singapore", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Timor Est", "Singapore", "Sri Lanka", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Cambogia", "Bhutan", "Laos", "Malesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Timor Est", "Singapore", "Brunei", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bangladesh", "Giappone", "Bhutan", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Brunei", "Citta del Vaticano", "Kiribati", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Filippine", "Corea del Nord", "Singapore", "Timor Est"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bhutan", "Maldive", "Brunei", "Timor Est"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Papua Nuova Guinea", "Australia", "Isole Marshall", "Figi"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Micronesia", "Samoa", "Palau", "Nuova Zelanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Palau", "Figi", "Tonga", "Papua Nuova Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Isole Marshall", "Figi", "Tonga", "Micronesia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Samoa", "Isole Salomone", "Micronesia", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Tuvalu", "Palau", "Micronesia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Kiribati", "Micronesia", "Tuvalu", "Samoa"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Tonga", "Palau", "Nauru", "Isole Marshall"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Nauru", "Isole Marshall", "Tuvalu", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Micronesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Tuvalu", "Palau", "Nauru", "Isole Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Malawi", "Repubblica Centrafricana", "Marocco", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Zambia", "Mauritius", "Algeria", "Repubblica Centrafricana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Botswana", "Guinea Equatoriale", "Eritrea", "Tunisia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Gibuti", "Gambia", "Libia", "Capo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Algeria", "Egitto", "Lesotho"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sudan", "Eswatini", "Senegal", "Comore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Sudan del Sud", "Mauritius", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Liberia", "Libia", "Etiopia", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Eritrea", "Seychelles", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Gibuti", "Sao Tome e Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sao Tome e Principe", "Somalia", "Comore", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Gabon", "Tunisia", "Kenya", "Benin"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Gibuti", "Madagascar", "Uganda", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Liberia", "Tanzania", "Ciad", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Ruanda", "Mauritania", "Sao Tome e Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Guinea-Bissau", "Liberia", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Malawi", "RD Congo", "Sudan", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Congo", "Lesotho", "Guinea Equatoriale", "Comore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Capo Verde", "Sao Tome e Principe", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Guinea Equatoriale", "Sao Tome e Principe", "Capo Verde"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Eswatini", "Camerun", "Libia", "Tunisia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sao Tome e Principe", "Repubblica Centrafricana", "Gibuti", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lesotho", "Congo", "Ciad", "Repubblica Centrafricana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Botswana", "Niger", "Libia", "Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Burundi", "Algeria", "Egitto", "Nigeria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Eswatini", "Benin", "Comore", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Guinea-Bissau", "Eswatini", "Namibia", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Libia", "Ghana", "Ciad", "Guinea Equatoriale"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lesotho", "Gabon", "Liberia", "Costa d'Avorio"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Liberia", "Sao Tome e Principe", "Lesotho", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sierra Leone", "Repubblica Centrafricana", "Gabon", "Comore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Guinea", "Sao Tome e Principe", "Liberia", "Mauritania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sao Tome e Principe", "Eswatini", "Guinea-Bissau", "Capo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Botswana", "Eritrea", "Senegal"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Gambia", "Capo Verde", "Gibuti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Congo", "Mali", "Botswana", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Botswana", "Eritrea", "Mauritania", "Burkina Faso"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Mauritania", "Capo Verde", "Seychelles", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Sao Tome e Principe", "Seychelles", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Seychelles", "Sao Tome e Principe", "Saint Kitts e Nevis", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Angola", "Gabon", "Repubblica Centrafricana"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Libia", "Eswatini", "Seychelles", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Gibuti", "Liberia", "Sierra Leone", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Repubblica Centrafricana", "Comore", "Gabon", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sudan del Sud", "Libia", "Benin", "Mozambico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Botswana", "Madagascar", "Somalia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Seychelles", "Sao Tome e Principe", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Sao Tome e Principe", "Capo Verde", "Mauritius", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Isole Marshall", "Monaco", "Saint Kitts e Nevis", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Ruanda", "Camerun", "Zimbabwe", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Comore", "Gibuti", "Mauritius", "Namibia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Botswana", "Sao Tome e Principe", "Mauritius", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Lesotho", "Comore", "Sao Tome e Principe", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Capo Verde", "Sao Tome e Principe", "Eswatini", "Seychelles"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Messico", "Stati Uniti", "Canada", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Canada", "Barbados", "Ruanda", "Kazakistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Messico", "Canada", "Malta", "Cambogia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Saint Kitts e Nevis", "Panama", "Guatemala", "Costa Rica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Belize", "Antigua e Barbuda", "Dominica", "Saint Vincent"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Honduras", "Barbados", "Antigua e Barbuda", "Bahamas"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Barbados", "Santa Lucia", "El Salvador", "Dominica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Grenada", "Nicaragua", "Santa Lucia", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Trinidad e Tobago", "Costa Rica", "Giamaica", "Antigua e Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Panama", "Barbados", "Antigua e Barbuda", "Belize"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bahamas", "Antigua e Barbuda", "Dominica", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Antigua e Barbuda", "El Salvador", "Saint Vincent", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Saint Vincent", "Giamaica", "Grenada", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Belize", "Haiti", "El Salvador", "Grenada"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Nicaragua", "Saint Kitts e Nevis", "Repubblica Dominicana", "Saint Vincent"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Citta del Vaticano", "Saint Kitts e Nevis", "Palau", "Tuvalu"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Nauru", "Saint Kitts e Nevis", "Antigua e Barbuda", "Isole Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"San Marino", "Dominica", "Monaco", "Liechtenstein"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Saint Kitts e Nevis", "Dominica", "Santa Lucia", "Antigua e Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Saint Vincent", "Saint Kitts e Nevis", "Tuvalu", "Palau"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Barbados", "Antigua e Barbuda", "Saint Vincent", "Grenada"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Isole Marshall", "Saint Kitts e Nevis", "Grenada", "Citta del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Antigua e Barbuda", "Saint Kitts e Nevis", "Santa Lucia", "Trinidad e Tobago"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Colombia", "Cile", "Ecuador", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Guyana", "Uruguay", "Venezuela", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Citta del Vaticano", "Isole Marshall", "Saint Kitts e Nevis", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Saint Kitts e Nevis", "Barbados", "Suriname", "Palau"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Suriname", "Paraguay", "Ecuador", "Guyana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Suriname", "Cile", "Peru", "Ecuador"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Argentina", "Brasile", "Paraguay", "Colombia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bolivia", "Uruguay", "Suriname", "Paraguay"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Paraguay", "Suriname", "Guyana", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Guyana", "Suriname", "Uruguay", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Bolivia", "Guyana", "Suriname", "Cile"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu grande?"
            Reponses := array{"Paraguay", "Uruguay", "Argentina", "Bolivia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Nigeria", "Stati Uniti", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Brasile", "Bangladesh", "Germania", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"India", "Nigeria", "Italia", "Filippine"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Spagna", "Germania", "Iran", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Portogallo", "Italia", "Francia", "Paesi Bassi"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cina", "Etiopia", "Russia", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Spagna", "Portogallo", "Irlanda", "Svezia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Belgio", "Italia", "Francia", "Regno Unito"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Italia", "Francia", "Spagna", "Paesi Bassi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Austria", "Italia", "Lussemburgo", "Svezia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Svizzera", "Regno Unito", "Germania", "Spagna"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Francia", "Germania", "Spagna", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Germania", "Monaco", "Islanda", "Italia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Francia", "Finlandia", "Andorra", "Spagna"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Portogallo", "Norvegia", "Finlandia", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Finlandia", "San Marino", "Germania", "Lussemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Austria", "Citta del Vaticano", "Portogallo", "Islanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Belgio", "Paesi Bassi", "Malta", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Portogallo", "Lussemburgo", "Islanda", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Norvegia", "Regno Unito", "Spagna", "Svezia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Regno Unito", "Svezia", "Paesi Bassi", "Spagna"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Portogallo", "Spagna", "Danimarca", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Svezia", "Regno Unito", "Finlandia", "Belgio"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Polonia", "Iran", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ucraina", "Polonia", "Russia", "Cechia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Grecia", "Ungheria", "Slovacchia", "Polonia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Romania", "Russia", "Polonia", "Ungheria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Slovacchia", "Slovenia", "Cechia", "Bulgaria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Croazia", "Bulgaria", "Russia", "Romania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ungheria", "Bosnia ed Erzegovina", "Bielorussia", "Ucraina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Polonia", "Romania", "Serbia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ucraina", "Albania", "Serbia", "Montenegro"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Serbia", "Bulgaria", "Macedonia del Nord", "Croazia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Polonia", "Albania", "Ucraina", "Grecia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Grecia", "Ucraina", "Russia", "Polonia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ucraina", "Romania", "Polonia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Polonia", "Ucraina", "Romania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ucraina", "Moldavia", "Bielorussia", "Slovacchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Ucraina", "Brasile", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Ucraina", "Bielorussia", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Stati Uniti", "Indonesia", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Bosnia ed Erzegovina", "Bulgaria", "Bielorussia", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ungheria", "Cechia", "Lettonia", "Croazia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Romania", "Russia", "Lituania", "Bielorussia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Polonia", "Moldavia", "Cipro", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Pakistan", "Turchia", "Nigeria", "Russia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Yemen", "Siria", "Israele", "Arabia Saudita"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Palestina", "Turchia", "Yemen", "Azerbaigian"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Yemen", "Libano", "Turchia", "Iran"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Turchia", "Siria", "Iraq", "Yemen"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Giordania", "Turchia", "Iraq", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Turchia", "Iraq", "Iran", "Messico"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Pakistan", "Iran", "Stati Uniti", "India"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Turchia", "Arabia Saudita", "Iran", "Francia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Yemen", "Iran", "Turchia", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Turchia", "Yemen", "Arabia Saudita", "Oman"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Arabia Saudita", "Emirati Arabi Uniti", "Siria", "Turchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Emirati Arabi Uniti", "Azerbaigian", "Arabia Saudita", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Libano", "Bahrein", "Qatar", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Iran", "Turchia", "Azerbaigian", "Kuwait"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Georgia", "Israele", "Emirati Arabi Uniti", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Armenia", "Yemen", "Iran", "Emirati Arabi Uniti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Yemen", "Siria", "Turchia", "Azerbaigian"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ghana", "Uzbekistan", "Afghanistan", "Kazakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"India", "Pakistan", "Russia", "Uzbekistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Afghanistan", "Turkmenistan", "Kazakistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Kazakistan", "Kirghizistan", "Uzbekistan", "Afghanistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Kazakistan", "Tagikistan", "Afghanistan", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Regno Unito", "Francia", "Afghanistan", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Afghanistan", "Kirghizistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Giappone", "Pakistan", "Cina", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Indonesia", "Cina", "Corea del Sud", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Pakistan", "Filippine", "Thailandia", "Corea del Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Bangladesh", "India", "Indonesia", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Vietnam", "Giappone", "Sri Lanka", "Filippine"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Birmania", "Filippine", "Giappone", "Nepal"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cina", "Thailandia", "Bhutan", "Nepal"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Timor Est", "Cina", "Cambogia", "Maldive"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Filippine", "Birmania", "Indonesia", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"India", "Thailandia", "Giappone", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Laos", "Cina", "Sri Lanka", "Giappone"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cambogia", "Vietnam", "Birmania", "Nepal"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cina", "Pakistan", "Vietnam", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Malesia", "Birmania", "Filippine", "India"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Singapore", "Corea del Nord", "Thailandia", "Birmania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cina", "Brunei", "Thailandia", "Giappone"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"India", "Indonesia", "Cina", "Filippine"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Pakistan", "Giappone", "Laos", "Timor Est"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Francia", "Australia", "Vietnam", "Regno Unito"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nuova Zelanda", "Australia", "Papua Nuova Guinea", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Papua Nuova Guinea", "Australia", "Senegal", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Papua Nuova Guinea", "Nuova Zelanda", "Figi", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Australia", "Nuova Zelanda", "Papua Nuova Guinea", "Isole Salomone"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Papua Nuova Guinea", "Figi", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Samoa", "Australia", "Nuova Zelanda", "Papua Nuova Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Tonga", "Samoa", "Vanuatu", "Papua Nuova Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Micronesia", "Figi", "Tuvalu", "Kiribati"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Papua Nuova Guinea", "Vanuatu", "Kiribati", "Samoa"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Australia", "Papua Nuova Guinea", "Nauru", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Kiribati", "Vanuatu", "Palau", "Isole Salomone"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nuova Zelanda", "Australia", "Micronesia", "Papua Nuova Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Figi", "Samoa", "Tonga", "Isole Marshall"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Etiopia", "RD Congo", "Egitto", "Marocco"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Egitto", "RD Congo", "Algeria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Madagascar", "Algeria", "Tunisia", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Tanzania", "Libia", "Benin", "Ciad"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Egitto", "Nigeria", "Stati Uniti", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Etiopia", "Sudan", "Egitto"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Mali", "Egitto", "Sudan del Sud", "Costa d'Avorio"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Indonesia", "Nigeria", "Pakistan", "Etiopia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Zimbabwe", "Eritrea", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Costa d'Avorio", "Gibuti", "Repubblica Centrafricana", "Lesotho"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Angola", "RD Congo", "Nigeria", "Somalia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Egitto", "Kenya", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Etiopia", "Uganda", "Nigeria", "Egitto"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Etiopia", "Egitto", "Nigeria", "Tanzania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Camerun", "Madagascar", "Kenya", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Costa d'Avorio", "Egitto", "Burkina Faso", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Bangladesh", "Nigeria", "RD Congo", "Cina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Sudan", "Egitto", "Marocco", "Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Gabon", "Burkina Faso", "Sudan del Sud", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Mali", "Guinea Equatoriale", "Liberia", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Camerun", "Uganda", "Tanzania", "Algeria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Sudan", "Repubblica Centrafricana", "Sierra Leone", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ciad", "Madagascar", "Costa d'Avorio", "Kenya"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Niger", "Kenya", "Sudafrica", "Tanzania"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cina", "Nigeria", "India", "Stati Uniti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Sudafrica", "Algeria", "Benin", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Burkina Faso", "Uganda", "Togo", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Tanzania", "Egitto", "Ghana", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Sudafrica", "Kenya", "Etiopia", "Costa d'Avorio"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Zimbabwe", "Mozambico", "Liberia", "Costa d'Avorio"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Costa d'Avorio", "Egitto", "Sudan", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Algeria", "Tanzania", "Sudan", "Guinea"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Senegal", "Benin", "Malawi", "Guinea-Bissau"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Sudan", "Uganda", "Senegal", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Ghana", "Gambia", "Burundi", "Eritrea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"RD Congo", "Sudan", "Kenya", "Mali"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Burkina Faso", "Sudan", "RD Congo", "Etiopia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Mauritania", "Uganda", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Kenya", "Guinea", "Etiopia", "Capo Verde"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Malawi", "Ruanda", "Sao Tome e Principe", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Angola", "Kenya", "Etiopia", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"RD Congo", "Tanzania", "Egitto", "Zambia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Tanzania", "Etiopia", "Uganda", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Tanzania", "Malawi", "Egitto", "Mozambico"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nigeria", "Egitto", "Mozambico", "Kenya"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Egitto", "RD Congo", "Madagascar", "Uganda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Comore", "Tunisia", "Marocco", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Eritrea", "Mauritius", "Egitto", "Zimbabwe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Capo Verde", "Madagascar", "Seychelles", "Zimbabwe"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Egitto", "Etiopia", "Nigeria", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Uganda", "Togo", "Namibia", "Mali"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Madagascar", "Niger", "Algeria", "Botswana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Madagascar", "Egitto", "Lesotho", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Zambia", "Liberia", "Tanzania", "Eswatini"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Turchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"India", "Stati Uniti", "Cina", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Guatemala", "Messico", "Afghanistan", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Belize", "Haiti", "Guatemala", "Giamaica"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Birmania", "Guatemala", "Nigeria", "Honduras"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Guatemala", "Haiti", "Repubblica Dominicana", "El Salvador"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Repubblica Dominicana", "Nicaragua", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Costa Rica", "Honduras", "Guatemala", "Cuba"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Panama", "Cuba", "Haiti", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Panama", "Bahamas", "Trinidad e Tobago", "Repubblica Dominicana"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Russia", "Bangladesh", "Germania", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Giamaica", "Repubblica Dominicana", "El Salvador", "Costa Rica"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Thailandia", "Uzbekistan", "Haiti", "Giappone"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Corea del Sud", "Yemen", "Repubblica Dominicana", "Etiopia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Saint Kitts e Nevis", "Honduras", "Trinidad e Tobago", "Guatemala"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"El Salvador", "Repubblica Dominicana", "Nicaragua", "Antigua e Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Repubblica Dominicana", "Dominica", "Nicaragua", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Santa Lucia", "Trinidad e Tobago", "Cuba", "Repubblica Dominicana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Saint Vincent", "Bahamas", "Santa Lucia", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Nicaragua", "Barbados", "Giamaica", "Haiti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Guatemala", "Giamaica", "Grenada", "El Salvador"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Haiti", "Honduras", "Trinidad e Tobago", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Colombia", "Brasile", "Giappone", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Colombia", "Brasile", "Venezuela", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Cile", "Peru", "Argentina", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Suriname", "Bolivia", "Paraguay", "Cile"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Brasile", "Argentina", "Peru", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Brasile", "Peru", "Germania", "India"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Argentina", "Peru", "Brasile", "Bolivia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Paraguay", "Argentina", "Ecuador", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Colombia", "Uruguay", "Brasile", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Argentina", "Brasile", "Colombia", "Cile"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha la popolazione piu piccola?"
            Reponses := array{"Argentina", "Brasile", "Cina", "Stati Uniti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Germania", "Francia", "Belgio", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Portogallo", "Liechtenstein", "Islanda", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Austria", "Italia", "San Marino", "Portogallo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Spagna", "Svizzera", "Italia", "Austria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Lussemburgo", "San Marino", "Portogallo", "Citta del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Paesi Bassi", "Malta", "Svizzera", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Citta del Vaticano", "Malta", "Irlanda", "Lussemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Liechtenstein", "Belgio", "Lussemburgo", "Malta"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Monaco", "Paesi Bassi", "Citta del Vaticano", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Malta", "Andorra", "Lussemburgo", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Monaco", "Citta del Vaticano", "Svizzera", "Lussemburgo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Belgio", "Lussemburgo", "Danimarca", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Liechtenstein", "Monaco", "San Marino", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Liechtenstein", "Monaco", "Citta del Vaticano", "San Marino"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"San Marino", "Citta del Vaticano", "Monaco", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Citta del Vaticano", "Liechtenstein", "San Marino", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Citta del Vaticano", "Islanda", "San Marino", "Lussemburgo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Lussemburgo", "Norvegia", "Irlanda", "Monaco"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Belgio", "Citta del Vaticano", "Svezia", "Irlanda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Danimarca", "San Marino", "Andorra", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Finlandia", "Danimarca", "Islanda", "Liechtenstein"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Polonia", "Lituania", "Bosnia ed Erzegovina", "Cechia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Moldavia", "Cechia", "Cipro", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Montenegro", "Slovacchia", "Albania", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Montenegro", "Slovenia", "Croazia", "Ungheria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Cipro", "Slovenia", "Tuvalu", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Slovenia", "Croazia", "Macedonia del Nord", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Slovenia", "Bosnia ed Erzegovina", "Macedonia del Nord", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Montenegro", "Cipro", "Macedonia del Nord", "Serbia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Montenegro", "Cipro", "Palau", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Macedonia del Nord", "Cipro", "Montenegro", "Palestina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Cipro", "Montenegro", "Albania", "Capo Verde"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Macedonia del Nord", "Grecia", "Slovacchia", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bulgaria", "Lituania", "Slovenia", "Slovacchia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Ungheria", "Romania", "Lituania", "Lettonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Cipro", "Moldavia", "Montenegro", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bosnia ed Erzegovina", "Lituania", "Ucraina", "Bielorussia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Croazia", "Bielorussia", "Slovacchia", "Moldavia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Serbia", "Bulgaria", "Lituania", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Albania", "Estonia", "Macedonia del Nord", "Cipro"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Albania", "Lettonia", "Moldavia", "Slovenia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Moldavia", "Lituania", "Cipro", "Macedonia del Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bahrein", "Andorra", "Monaco", "Cipro"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Turchia", "Azerbaigian", "Emirati Arabi Uniti", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Qatar", "Bahrein", "Israele", "Libano"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Antigua e Barbuda", "Bahrein", "Sao Tome e Principe", "Palestina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Palau", "Palestina", "Bahrein", "Libano"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Georgia", "Azerbaigian", "Siria", "Bahrein"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Libano", "Giordania", "Kuwait", "Bahrein"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Giordania", "Emirati Arabi Uniti", "Iraq", "Georgia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Oman", "Iran", "Georgia", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Kuwait", "Yemen", "Palestina", "Arabia Saudita"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Azerbaigian", "Yemen", "Giordania", "Libano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Oman", "Kuwait", "Bahrein", "Georgia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Qatar", "Israele", "Emirati Arabi Uniti", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bahrein", "Palestina", "Qatar", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Citta del Vaticano", "Maldive", "Bahrein", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bahrein", "Kuwait", "Libano", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Georgia", "Palestina", "Qatar", "Bahrein"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Palestina", "Qatar", "Armenia", "Kuwait"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Qatar", "Azerbaigian", "Israele", "Palestina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Turkmenistan", "Mongolia", "Afghanistan", "Kazakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Uzbekistan", "Tagikistan", "Kirghizistan", "Guinea Equatoriale"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Kirghizistan", "Turkmenistan", "Tagikistan", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Singapore", "Kirghizistan", "Svizzera", "Estonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Andorra", "Svizzera", "Tagikistan", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Moldavia", "Kirghizistan", "Tagikistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mongolia", "Kirghizistan", "Afghanistan", "Uzbekistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bhutan", "Indonesia", "Cina", "Cambogia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Corea del Sud", "Giappone", "Cambogia", "Laos"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Corea del Sud", "Timor Est", "Maldive", "Singapore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Singapore", "Corea del Nord", "Timor Est", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Cambogia", "Malesia", "Singapore", "India"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Corea del Sud", "Bangladesh", "Singapore", "Pakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Maldive", "Bangladesh", "Sri Lanka", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Singapore", "Timor Est", "Brunei", "Sri Lanka"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sri Lanka", "Nepal", "Maldive", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Timor Est", "Brunei", "Bhutan", "Singapore"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Maldive", "Tuvalu", "San Marino", "Citta del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sri Lanka", "Birmania", "Bangladesh", "Malesia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Nepal", "Brunei", "Corea del Sud", "Thailandia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Corea del Sud", "Laos", "Sri Lanka", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sri Lanka", "Brunei", "Singapore", "Cambogia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sri Lanka", "Cambogia", "Bangladesh", "Vietnam"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Corea del Sud", "Timor Est", "Nepal", "Malesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Maldive", "Singapore", "Isole Marshall", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Filippine", "Sri Lanka", "Indonesia", "Bangladesh"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Singapore", "Brunei", "Maldive", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bangladesh", "Filippine", "Nepal", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Brunei", "Maldive", "Timor Est", "Singapore"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Figi", "Nuova Zelanda", "Isole Marshall", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Isole Marshall", "Samoa", "Micronesia", "Nuova Zelanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Tonga", "Palau", "Papua Nuova Guinea", "Nauru"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Figi", "Kiribati", "Micronesia", "Tonga"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Isole Salomone", "Nauru", "Palau", "Micronesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Tuvalu", "Samoa", "Vanuatu", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Isole Marshall", "Samoa", "Kiribati", "Nauru"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Nauru", "Tuvalu", "Isole Marshall", "Tonga"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Kiribati", "Palau", "Isole Marshall", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Palau", "Isole Marshall", "Tuvalu", "Nauru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Micronesia", "Nauru", "Isole Marshall", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Isole Marshall", "Nauru", "Tuvalu", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guinea-Bissau", "Marocco", "Costa d'Avorio", "Togo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Botswana", "Malawi", "Algeria", "Namibia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Burundi", "Tunisia", "Eswatini", "Mauritius"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Libia", "Burundi", "Togo", "Sudan del Sud"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guinea", "Lesotho", "Egitto", "Costa d'Avorio"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Tanzania", "Egitto", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sudan del Sud", "Sierra Leone", "Malawi", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Etiopia", "Kenya", "Madagascar", "Camerun"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sierra Leone", "Sao Tome e Principe", "Guinea Equatoriale", "Eritrea"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sao Tome e Principe", "Gambia", "Mauritius", "Gibuti"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Malawi", "Comore", "Somalia", "Senegal"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Kenya", "Guinea Equatoriale", "Congo", "Eswatini"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Malawi", "Comore", "Uganda", "Mauritius"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Tanzania", "Guinea Equatoriale", "Ghana", "Eritrea"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Mauritius", "Capo Verde", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mauritius", "Gambia", "Comore", "Burundi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Marocco", "Madagascar", "Benin", "RD Congo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Ruanda", "Congo", "Sierra Leone", "Guinea Equatoriale"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guinea-Bissau", "Malawi", "Benin", "Gabon"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guinea Equatoriale", "Sao Tome e Principe", "Gambia", "Capo Verde"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Camerun", "Gambia", "Eritrea", "Capo Verde"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Lesotho", "Repubblica Centrafricana", "Guinea Equatoriale", "Gabon"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Zambia", "Congo", "Ciad", "Tunisia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Camerun", "Burundi", "Niger", "Repubblica Centrafricana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Nigeria", "Capo Verde", "Benin", "Togo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sao Tome e Principe", "Benin", "Togo", "Sierra Leone"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mauritius", "Gambia", "Comore", "Togo"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Ghana", "Liberia", "Sierra Leone", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Costa d'Avorio", "Comore", "Gibuti", "Lesotho"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Togo", "Liberia", "Guinea-Bissau", "Sao Tome e Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Gibuti", "Lesotho", "Seychelles", "Sierra Leone"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Guinea", "Togo", "Benin"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guinea-Bissau", "Sao Tome e Principe", "Gambia", "Mauritius"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Guinea Equatoriale", "Senegal", "Liberia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Capo Verde", "Gambia", "Sao Tome e Principe", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mali", "Guinea", "Repubblica Centrafricana", "Mozambico"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Gambia", "Guinea-Bissau", "Burkina Faso", "Sao Tome e Principe"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Togo", "Sierra Leone", "Guinea-Bissau", "Mauritania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Capo Verde", "Sao Tome e Principe", "Mauritius", "Comore"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Sao Tome e Principe", "San Marino", "Citta del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Angola", "Mauritius", "Gambia", "Zimbabwe"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Zambia", "Burkina Faso", "Mauritius", "Sao Tome e Principe"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Lesotho", "Ruanda", "Liberia", "Zimbabwe"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sierra Leone", "Malawi", "Gambia", "Sao Tome e Principe"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mozambico", "Seychelles", "Ruanda", "Ghana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Capo Verde", "Malawi", "Madagascar", "Togo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Santa Lucia", "Seychelles", "Sao Tome e Principe", "Comore"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"San Marino", "Sao Tome e Principe", "Seychelles", "Mauritius"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Seychelles", "Isole Marshall", "Liechtenstein", "Saint Kitts e Nevis"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sudan del Sud", "Madagascar", "Sudafrica", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Costa d'Avorio", "Namibia", "Liberia", "Guinea-Bissau"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Eswatini", "Malawi", "Botswana", "Guinea Equatoriale"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Mauritius", "Lesotho", "Seychelles", "Eswatini"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Eswatini", "Capo Verde", "Comore", "Gambia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Messico", "Stati Uniti", "Ciad", "Albania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Liberia", "Messico", "Honduras", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Sierra Leone", "Colombia", "Messico", "Croazia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Repubblica Dominicana", "Saint Kitts e Nevis", "Guatemala", "Antigua e Barbuda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Saint Vincent", "Belize", "Grenada", "Giamaica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Haiti", "Honduras", "Dominica", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Dominica", "El Salvador", "Grenada", "Santa Lucia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Antigua e Barbuda", "Repubblica Dominicana", "Nicaragua"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Barbados", "Costa Rica", "Saint Kitts e Nevis", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Belize", "Dominica", "Antigua e Barbuda", "Panama"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Dominica", "Saint Vincent", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Cuba", "Bahamas", "Haiti", "Trinidad e Tobago"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Giamaica", "Barbados", "Antigua e Barbuda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Haiti", "Trinidad e Tobago", "Grenada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Santa Lucia", "Saint Kitts e Nevis", "Saint Vincent", "Repubblica Dominicana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Saint Kitts e Nevis", "Citta del Vaticano", "Monaco", "Maldive"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Citta del Vaticano", "Saint Kitts e Nevis", "Tuvalu", "Antigua e Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Saint Kitts e Nevis", "Dominica", "Barbados", "Saint Vincent"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Grenada", "Saint Kitts e Nevis", "Saint Vincent", "Santa Lucia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Saint Vincent", "San Marino", "Maldive", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Monaco", "Saint Kitts e Nevis", "Barbados", "Isole Marshall"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Grenada", "Nauru", "Monaco", "Tuvalu"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Grenada", "Barbados", "Antigua e Barbuda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guyana", "Uruguay", "Ecuador", "Colombia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guyana", "Paraguay", "Ecuador", "Venezuela"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guyana", "Togo", "Sierra Leone", "Bosnia ed Erzegovina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Lituania", "Qatar", "Giamaica", "Suriname"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Vanuatu", "Suriname", "Brunei", "Ecuador"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Peru", "Cile", "Uruguay", "Ecuador"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Paraguay", "Uruguay", "Brasile", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Bolivia", "Guyana", "Paraguay", "Suriname"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Paraguay", "Uruguay", "Suriname", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Uruguay", "El Salvador", "Armenia", "Palestina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Suriname", "Cile", "Ecuador", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu grande (superficie)?"
            Reponses := array{"Guyana", "Argentina", "Colombia", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Kazakistan", "Francia", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Germania", "Francia", "Zambia", "Angola"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cile", "Spagna", "Francia", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Spagna", "Venezuela", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Portogallo", "Italia", "Germania", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Francia", "Regno Unito", "Spagna", "Svezia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Regno Unito", "Francia", "Irlanda", "Italia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Belgio", "Austria", "Italia", "Svezia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Germania", "Paesi Bassi", "Svezia", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Islanda", "Svizzera", "Lussemburgo", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Portogallo", "Irlanda", "Svizzera", "Islanda"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Spagna", "Regno Unito", "Italia", "Austria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Monaco", "Francia", "Regno Unito", "Portogallo"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Islanda", "Italia", "Belgio", "Andorra"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Islanda", "Malta", "Andorra", "Liechtenstein"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Lussemburgo", "San Marino", "Germania", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Citta del Vaticano", "San Marino", "Islanda", "Irlanda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Danimarca", "Irlanda", "Svizzera", "Malta"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Islanda", "Svezia", "Italia", "Francia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Australia", "Francia", "Cina", "Norvegia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Argentina", "Svezia", "Australia", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Italia", "Finlandia", "Austria", "Danimarca"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Peru", "Francia", "Russia", "Finlandia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Polonia", "Russia", "Ucraina", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Grecia", "Cechia", "Ucraina", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Grecia", "Slovacchia", "Serbia", "Cechia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Romania", "Russia", "Ungheria", "Bielorussia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Lituania", "Romania", "Slovenia", "Polonia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Russia", "Croazia", "Bulgaria", "Ucraina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Polonia", "Ungheria", "Bosnia ed Erzegovina", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Polonia", "Serbia", "Grecia", "Russia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Estonia", "Albania", "Montenegro", "Lettonia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Macedonia del Nord", "Slovacchia", "Bosnia ed Erzegovina", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Croazia", "Bosnia ed Erzegovina", "Albania", "Lettonia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Polonia", "Romania", "Grecia", "Ucraina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Ucraina", "Romania", "Russia", "Bulgaria"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Russia", "Romania", "Ucraina", "Iraq"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Grecia", "Lituania", "Romania", "Moldavia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Mali", "Russia", "Ucraina", "Argentina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Ucraina", "Bielorussia", "Russia", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Ucraina", "Grecia", "Polonia", "Estonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Romania", "Bielorussia", "Lettonia", "Ucraina"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bulgaria", "Grecia", "Bielorussia", "Lituania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Estonia", "Polonia", "Macedonia del Nord", "Cipro"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Brasile", "Arabia Saudita", "Iran", "Turchia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Turchia", "Oman", "Israele", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Libano", "Giordania", "Palestina", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Georgia", "Libano", "Yemen", "Oman"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Siria", "Oman", "Iraq", "Arabia Saudita"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Iran", "Turchia", "Oman", "Giordania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Iraq", "Arabia Saudita", "Iran", "Turchia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Iran", "Argentina", "Brasile", "Russia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Russia", "Stati Uniti", "Cina", "Arabia Saudita"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Arabia Saudita", "Yemen", "Iran", "Turchia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Turchia", "Arabia Saudita", "Oman", "Iran"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Emirati Arabi Uniti", "Yemen", "Turchia", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Georgia", "Emirati Arabi Uniti", "Israele", "Qatar"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bahrein", "Azerbaigian", "Georgia", "Kuwait"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Siria", "Turchia", "Kuwait", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Yemen", "Siria", "Georgia", "Oman"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Armenia", "Arabia Saudita", "Iraq", "Siria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Oman", "Azerbaigian", "Siria", "Arabia Saudita"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Brasile", "Australia", "Stati Uniti", "Kazakistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Uzbekistan", "Mongolia", "Kazakistan", "Iran"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Turkmenistan", "Mongolia", "Kazakistan", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Afghanistan", "Kirghizistan", "Mongolia", "Uzbekistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Kazakistan", "Tagikistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Canada", "Mongolia", "Kazakistan", "Afghanistan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Kazakistan", "Mongolia", "Cina", "Stati Uniti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Pakistan", "Giappone", "India", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Corea del Sud", "Laos", "Giappone", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Pakistan", "Vietnam", "India", "Corea del Nord"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Russia", "Cina", "Brasile", "India"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Pakistan", "India", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bangladesh", "Giappone", "Filippine", "Indonesia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sri Lanka", "Cambogia", "Birmania", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Birmania", "Filippine", "Nepal", "Malesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Pakistan", "Vietnam", "Bangladesh", "Bhutan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Maldive", "Cambogia", "Pakistan", "Timor Est"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Cina", "India", "Birmania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Cina", "Thailandia", "Pakistan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"India", "Thailandia", "Laos", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cina", "Filippine", "India", "Cambogia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"India", "Vietnam", "Cina", "Birmania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Malesia", "India", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Laos", "Singapore", "India", "Nepal"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"India", "Cina", "Indonesia", "Russia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bhutan", "Brunei", "Cambogia", "Giappone"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Indonesia", "Pakistan", "India", "Filippine"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Laos", "Timor Est", "Cambogia", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Australia", "Nuova Zelanda", "Papua Nuova Guinea", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Papua Nuova Guinea", "Australia", "RD Congo", "Libia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Nuova Zelanda", "Figi", "Papua Nuova Guinea", "Australia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Australia", "Nuova Zelanda", "Isole Salomone", "Papua Nuova Guinea"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Isole Salomone", "Nuova Zelanda", "Australia", "Vanuatu"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Samoa", "Vanuatu", "Isole Salomone", "Australia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Isole Salomone", "Papua Nuova Guinea", "Tonga", "Vanuatu"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Samoa", "Vanuatu", "Tuvalu", "Isole Salomone"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Australia", "Vanuatu", "Nuova Zelanda", "Kiribati"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Palau", "Nauru", "Kiribati", "Vanuatu"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Palau", "Isole Salomone", "Figi", "Samoa"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Nuova Zelanda", "Micronesia", "Samoa", "Papua Nuova Guinea"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Kiribati", "Papua Nuova Guinea", "Isole Marshall", "Micronesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sudan", "Mauritania", "RD Congo", "Marocco"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Stati Uniti", "Brasile", "Algeria", "Canada"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"RD Congo", "Tunisia", "Mozambico", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Russia", "Libia", "Cina", "Canada"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Egitto", "RD Congo", "Algeria", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Brasile", "Australia", "Russia", "Sudan"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Libia", "Etiopia", "Sudafrica", "Sudan del Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"RD Congo", "Etiopia", "Sudan", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Eritrea", "Sudafrica", "Etiopia", "Libia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Mauritania", "Gibuti", "Benin", "Ciad"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Somalia", "Sudan", "Nigeria", "Egitto"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Niger", "Kenya", "Tanzania", "Angola"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Etiopia", "Sudan del Sud", "Uganda", "Angola"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sudan", "Algeria", "Tanzania", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Congo", "Liberia", "Kenya", "Ruanda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Egitto", "Burundi", "Ciad", "Mali"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Australia", "RD Congo", "Russia", "Stati Uniti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "Niger", "Congo", "Botswana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"RD Congo", "Botswana", "Gabon", "Nigeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sierra Leone", "Senegal", "Guinea Equatoriale", "Mauritania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Tanzania", "Camerun", "Egitto", "Zambia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "RD Congo", "Repubblica Centrafricana", "Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Algeria", "RD Congo", "Ciad", "India"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Niger", "RD Congo", "Algeria", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Libia", "Sudan", "Nigeria", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Niger", "Benin", "Angola", "Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Marocco", "Togo", "Sudafrica", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Ghana", "Nigeria", "Sudafrica", "Etiopia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Costa d'Avorio", "Sudan del Sud", "Repubblica Centrafricana", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Senegal", "Liberia", "Congo", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Somalia", "Sierra Leone", "Namibia", "Costa d'Avorio"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Niger", "Guinea", "Kenya", "Sudan del Sud"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Zambia", "Guinea-Bissau", "Uganda", "Malawi"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Somalia", "Niger", "Senegal", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sudafrica", "Sudan del Sud", "Gambia", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"RD Congo", "Mali", "Algeria", "India"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sudafrica", "Burkina Faso", "Sudan del Sud", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Algeria", "Sudan", "Mauritania", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Libia", "Uganda", "Capo Verde", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Mozambico", "Nigeria", "Ruanda", "Sao Tome e Principe"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "Algeria", "RD Congo", "India"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "Sudafrica", "Zambia", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Zimbabwe", "Nigeria", "Algeria", "Namibia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Kenya", "Sudan del Sud", "Mali", "Malawi"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Libia", "Sudan", "Mozambico", "Algeria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Mauritania", "Egitto", "Madagascar", "Libia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Tanzania", "Comore", "Madagascar", "Mozambico"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Burkina Faso", "Mauritius", "Mali", "Somalia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Sudafrica", "Senegal", "Namibia", "Seychelles"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Algeria", "Sudafrica", "RD Congo", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Algeria", "Namibia", "Libia", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "Algeria", "Botswana", "Egitto"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Lesotho", "Uganda", "Camerun", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Etiopia", "Eswatini", "Tunisia", "Burkina Faso"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"India", "Stati Uniti", "Canada", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Angola", "Cambogia", "Guatemala", "Australia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Panama", "Nicaragua", "Belize", "Repubblica Dominicana"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Guyana", "Honduras", "Peru", "Polonia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Costa Rica", "Cuba", "El Salvador", "Panama"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Turchia", "Canada", "Nicaragua", "Gabon"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Guatemala", "Nicaragua", "Costa Rica", "Honduras"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Panama", "Nicaragua", "Spagna", "Giappone"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Guatemala", "El Salvador", "Haiti", "Bahamas"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Venezuela", "Messico", "Cuba", "Spagna"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Costa Rica", "El Salvador", "Giamaica", "Haiti"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Nicaragua", "Haiti", "Cuba", "Guatemala"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Guatemala", "Repubblica Dominicana", "Cuba", "Honduras"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Saint Kitts e Nevis", "Trinidad e Tobago", "Repubblica Dominicana", "Honduras"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Dominica", "Cuba", "Panama", "Antigua e Barbuda"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Honduras", "El Salvador", "Dominica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Panama", "Santa Lucia", "Cuba", "El Salvador"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bahamas", "Giamaica", "Saint Vincent", "Nicaragua"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Giamaica", "Belize", "Guatemala", "Barbados"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Grenada", "Haiti", "El Salvador", "Panama"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Trinidad e Tobago", "Belize", "Bahamas", "Haiti"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Colombia", "Argentina", "Brasile", "Sudan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Venezuela", "Argentina", "Brasile", "Kazakistan"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cile", "Argentina", "Brasile", "Guyana"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Ecuador", "Suriname", "Venezuela", "Brasile"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Bolivia", "Argentina", "Ecuador", "Peru"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Brasile", "Peru", "Argentina", "RD Congo"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Brasile", "Bolivia", "Argentina", "Algeria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Colombia", "Brasile", "Peru", "Paraguay"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cile", "Venezuela", "Argentina", "Uruguay"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cile", "Colombia", "Argentina", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese e il piu piccolo (superficie)?"
            Reponses := array{"Cina", "Brasile", "Argentina", "Russia"}
            BonneReponse := 2

MakeRecordsQuestions() : []question =
    MakeRecordsQuestionsFR()
