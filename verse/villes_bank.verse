using { /Verse.org/Assets }

# villes_bank.verse — Quizz VILLES (dans quel pays...)
# GENERE — NE PAS EDITER A LA MAIN.

VillesDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeVillesQuestionsFR() : []question =
    array:
        question:
            Enonce := "Dans quel pays se trouve New York ?"
            Reponses := array{"Nigeria", "Canada", "Mexique", "Etats-Unis"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Londres ?"
            Reponses := array{"Liechtenstein", "Allemagne", "Royaume-Uni", "Andorre"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Tokyo ?"
            Reponses := array{"Sri Lanka", "Laos", "Japon", "Thailande"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Rome ?"
            Reponses := array{"Italie", "Danemark", "Suede", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Madrid ?"
            Reponses := array{"Norvege", "Espagne", "Allemagne", "Finlande"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Berlin ?"
            Reponses := array{"Italie", "Allemagne", "Monaco", "Andorre"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Moscou ?"
            Reponses := array{"Slovenie", "Albanie", "Russie", "Roumanie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Pekin ?"
            Reponses := array{"Chine", "Birmanie", "Thailande", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Sydney ?"
            Reponses := array{"Fidji", "Samoa", "Iles Marshall", "Australie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Rio de Janeiro ?"
            Reponses := array{"Bresil", "Colombie", "Equateur", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Toronto ?"
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Namibie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Barcelone ?"
            Reponses := array{"Espagne", "Suisse", "Andorre", "Norvege"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Venise ?"
            Reponses := array{"Royaume-Uni", "Suisse", "Vatican", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Amsterdam ?"
            Reponses := array{"Norvege", "Pays-Bas", "Italie", "Vatican"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Lisbonne ?"
            Reponses := array{"Royaume-Uni", "Pays-Bas", "Portugal", "Finlande"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Athenes ?"
            Reponses := array{"Macedoine du Nord", "Tchequie", "Grece", "Bulgarie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Le Caire ?"
            Reponses := array{"Rwanda", "Afrique du Sud", "Egypte", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Dubai ?"
            Reponses := array{"Qatar", "Emirats arabes unis", "Georgie", "Koweit"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Istanbul ?"
            Reponses := array{"Liban", "Turquie", "Emirats arabes unis", "Jordanie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Mumbai ?"
            Reponses := array{"Brunei", "Chine", "Singapour", "Inde"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Los Angeles ?"
            Reponses := array{"Canada", "Mexique", "Etats-Unis", "France"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Las Vegas ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Malawi"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Miami ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Djibouti"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Marrakech ?"
            Reponses := array{"Cameroun", "Maroc", "Kenya", "Afrique du Sud"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Geneve ?"
            Reponses := array{"Suisse", "Norvege", "Irlande", "Islande"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Hong Kong ?"
            Reponses := array{"Bangladesh", "Malaisie", "Chine", "Birmanie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Shanghai ?"
            Reponses := array{"Chine", "Pakistan", "Thailande", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Kyoto ?"
            Reponses := array{"Chine", "Japon", "Coree du Nord", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Osaka ?"
            Reponses := array{"Japon", "Brunei", "Nepal", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Seoul ?"
            Reponses := array{"Sri Lanka", "Nepal", "Chine", "Coree du Sud"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Bangkok ?"
            Reponses := array{"Brunei", "Inde", "Thailande", "Indonesie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Hanoi ?"
            Reponses := array{"Timor oriental", "Chine", "Vietnam", "Sri Lanka"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Jakarta ?"
            Reponses := array{"Inde", "Timor oriental", "Singapour", "Indonesie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Manille ?"
            Reponses := array{"Chine", "Philippines", "Maldives", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Saint-Petersbourg ?"
            Reponses := array{"Hongrie", "Serbie", "Russie", "Slovenie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Cracovie ?"
            Reponses := array{"Montenegro", "Hongrie", "Bielorussie", "Pologne"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Munich ?"
            Reponses := array{"Allemagne", "Irlande", "Royaume-Uni", "Italie"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Hambourg ?"
            Reponses := array{"Finlande", "Allemagne", "Espagne", "Royaume-Uni"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Milan ?"
            Reponses := array{"Italie", "Islande", "Luxembourg", "Royaume-Uni"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Naples ?"
            Reponses := array{"Irlande", "Suisse", "Luxembourg", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Florence ?"
            Reponses := array{"Liechtenstein", "Pays-Bas", "Allemagne", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Seville ?"
            Reponses := array{"Monaco", "Espagne", "Finlande", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Valence ?"
            Reponses := array{"Finlande", "Malte", "Espagne", "Vatican"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Porto ?"
            Reponses := array{"Italie", "Belgique", "Portugal", "France"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Edimbourg ?"
            Reponses := array{"Allemagne", "Royaume-Uni", "Vatican", "Danemark"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Zurich ?"
            Reponses := array{"Vatican", "Irlande", "Suisse", "Autriche"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Chicago ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Dominique"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve San Francisco ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Sao Tome-et-Principe"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Boston ?"
            Reponses := array{"Belgique", "Mexique", "Canada", "Etats-Unis"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Seattle ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Maroc"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve La Nouvelle-Orleans ?"
            Reponses := array{"Canada", "Mexique", "Etats-Unis", "Zambie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Vancouver ?"
            Reponses := array{"Maurice", "Mexique", "Etats-Unis", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Montreal ?"
            Reponses := array{"Mexique", "Etats-Unis", "Canada", "Malaisie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Sao Paulo ?"
            Reponses := array{"Bresil", "Perou", "Bolivie", "Colombie"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Medellin ?"
            Reponses := array{"Chili", "Bolivie", "Colombie", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Cusco ?"
            Reponses := array{"Perou", "Uruguay", "Bolivie", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Casablanca ?"
            Reponses := array{"Rwanda", "Congo", "Madagascar", "Maroc"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Le Cap ?"
            Reponses := array{"Afrique du Sud", "Botswana", "Ethiopie", "Somalie"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Johannesburg ?"
            Reponses := array{"Botswana", "Afrique du Sud", "Djibouti", "Namibie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Melbourne ?"
            Reponses := array{"Samoa", "Kiribati", "Vanuatu", "Australie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Auckland ?"
            Reponses := array{"Nouvelle-Zelande", "Kiribati", "Palaos", "Iles Salomon"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Bilbao ?"
            Reponses := array{"Finlande", "Espagne", "Portugal", "Pays-Bas"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Bruges ?"
            Reponses := array{"Suisse", "Autriche", "Liechtenstein", "Belgique"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Anvers ?"
            Reponses := array{"Monaco", "Belgique", "Finlande", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Rotterdam ?"
            Reponses := array{"Allemagne", "Pays-Bas", "Italie", "Andorre"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Goteborg ?"
            Reponses := array{"Belgique", "Islande", "Suede", "Saint-Marin"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Bergen ?"
            Reponses := array{"Norvege", "Espagne", "Danemark", "Pays-Bas"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Salzbourg ?"
            Reponses := array{"Pays-Bas", "Autriche", "Malte", "Suede"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Innsbruck ?"
            Reponses := array{"Autriche", "Irlande", "Suisse", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Lausanne ?"
            Reponses := array{"Norvege", "Suisse", "Finlande", "Irlande"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Dresde ?"
            Reponses := array{"Allemagne", "Autriche", "Royaume-Uni", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Cologne ?"
            Reponses := array{"Danemark", "Italie", "Allemagne", "Vatican"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Francfort ?"
            Reponses := array{"Allemagne", "Norvege", "Liechtenstein", "Danemark"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Turin ?"
            Reponses := array{"Monaco", "Belgique", "Italie", "Autriche"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Bologne ?"
            Reponses := array{"Danemark", "Liechtenstein", "Italie", "Andorre"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Palerme ?"
            Reponses := array{"Vatican", "Italie", "Saint-Marin", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Verone ?"
            Reponses := array{"Monaco", "Royaume-Uni", "Allemagne", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Salonique ?"
            Reponses := array{"Croatie", "Grece", "Albanie", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Izmir ?"
            Reponses := array{"Israel", "Turquie", "Syrie", "Jordanie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Fes ?"
            Reponses := array{"Seychelles", "Congo", "Comores", "Maroc"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Tanger ?"
            Reponses := array{"Erythree", "Maroc", "Mozambique", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Mombasa ?"
            Reponses := array{"Mauritanie", "Angola", "Kenya", "Cameroun"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Zanzibar ?"
            Reponses := array{"Guinee", "Tanzanie", "Somalie", "Maroc"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Tombouctou ?"
            Reponses := array{"Erythree", "Djibouti", "Mali", "Tchad"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Lagos ?"
            Reponses := array{"Nigeria", "Soudan du Sud", "Algerie", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Kolkata ?"
            Reponses := array{"Malaisie", "Chine", "Maldives", "Inde"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Varanasi ?"
            Reponses := array{"Philippines", "Inde", "Pakistan", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Chiang Mai ?"
            Reponses := array{"Japon", "Brunei", "Thailande", "Maldives"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Da Nang ?"
            Reponses := array{"Pakistan", "Vietnam", "Timor oriental", "Singapour"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Busan ?"
            Reponses := array{"Inde", "Philippines", "Coree du Sud", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Sapporo ?"
            Reponses := array{"Thailande", "Cambodge", "Japon", "Indonesie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Nagoya ?"
            Reponses := array{"Chine", "Philippines", "Birmanie", "Japon"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Canton ?"
            Reponses := array{"Bhoutan", "Chine", "Vietnam", "Indonesie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Macao ?"
            Reponses := array{"Chine", "Thailande", "Bangladesh", "Birmanie"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Cebu ?"
            Reponses := array{"Philippines", "Bhoutan", "Indonesie", "Laos"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Perth ?"
            Reponses := array{"Australie", "Iles Marshall", "Samoa", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Brisbane ?"
            Reponses := array{"Vanuatu", "Australie", "Papouasie-Nouvelle-Guinee", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Christchurch ?"
            Reponses := array{"Nouvelle-Zelande", "Iles Marshall", "Samoa", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Guadalajara ?"
            Reponses := array{"Namibie", "Etats-Unis", "Canada", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Monterrey ?"
            Reponses := array{"Slovenie", "Canada", "Etats-Unis", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel pays se trouve Carthagene ?"
            Reponses := array{"Argentine", "Bolivie", "Colombie", "Suriname"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Valparaiso ?"
            Reponses := array{"Argentine", "Chili", "Colombie", "Guyana"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Mendoza ?"
            Reponses := array{"Equateur", "Argentine", "Venezuela", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Recife ?"
            Reponses := array{"Bolivie", "Bresil", "Argentine", "Chili"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Detroit ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Houston ?"
            Reponses := array{"Canada", "Etats-Unis", "Mexique", "Ethiopie"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel pays se trouve Dallas ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel pays se trouve Philadelphie ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Roumanie"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Denver ?"
            Reponses := array{"Canada", "Mexique", "Etats-Unis", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays se trouve Calgary ?"
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Birmanie"}
            BonneReponse := 1

MakeVillesQuestionsEN() : []question =
    array:
        question:
            Enonce := "In which country is New York?"
            Reponses := array{"Nigeria", "Canada", "Mexico", "United States"}
            BonneReponse := 3
        question:
            Enonce := "In which country is London?"
            Reponses := array{"Liechtenstein", "Germany", "United Kingdom", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Tokyo?"
            Reponses := array{"Sri Lanka", "Laos", "Japan", "Thailand"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Rome?"
            Reponses := array{"Italy", "Denmark", "Sweden", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Madrid?"
            Reponses := array{"Norway", "Spain", "Germany", "Finland"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Berlin?"
            Reponses := array{"Italy", "Germany", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Moscow?"
            Reponses := array{"Slovenia", "Albania", "Russia", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Beijing?"
            Reponses := array{"China", "Myanmar", "Thailand", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Sydney?"
            Reponses := array{"Fiji", "Samoa", "Marshall Islands", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Rio de Janeiro?"
            Reponses := array{"Brazil", "Colombia", "Ecuador", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Toronto?"
            Reponses := array{"United States", "Canada", "Mexico", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Barcelona?"
            Reponses := array{"Spain", "Switzerland", "Andorra", "Norway"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Venice?"
            Reponses := array{"United Kingdom", "Switzerland", "Vatican City", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Amsterdam?"
            Reponses := array{"Norway", "Netherlands", "Italy", "Vatican City"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Lisbon?"
            Reponses := array{"United Kingdom", "Netherlands", "Portugal", "Finland"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Athens?"
            Reponses := array{"North Macedonia", "Czechia", "Greece", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Cairo?"
            Reponses := array{"Rwanda", "South Africa", "Egypt", "DR Congo"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Dubai?"
            Reponses := array{"Qatar", "United Arab Emirates", "Georgia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Istanbul?"
            Reponses := array{"Lebanon", "Turkey", "United Arab Emirates", "Jordan"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Mumbai?"
            Reponses := array{"Brunei", "China", "Singapore", "India"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Los Angeles?"
            Reponses := array{"Canada", "Mexico", "United States", "France"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Las Vegas?"
            Reponses := array{"United States", "Mexico", "Canada", "Malawi"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Miami?"
            Reponses := array{"Mexico", "Canada", "United States", "Djibouti"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Marrakech?"
            Reponses := array{"Cameroon", "Morocco", "Kenya", "South Africa"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Geneva?"
            Reponses := array{"Switzerland", "Norway", "Ireland", "Iceland"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Hong Kong?"
            Reponses := array{"Bangladesh", "Malaysia", "China", "Myanmar"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Shanghai?"
            Reponses := array{"China", "Pakistan", "Thailand", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Kyoto?"
            Reponses := array{"China", "Japan", "North Korea", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Osaka?"
            Reponses := array{"Japan", "Brunei", "Nepal", "China"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Seoul?"
            Reponses := array{"Sri Lanka", "Nepal", "China", "South Korea"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Bangkok?"
            Reponses := array{"Brunei", "India", "Thailand", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Hanoi?"
            Reponses := array{"East Timor", "China", "Vietnam", "Sri Lanka"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Jakarta?"
            Reponses := array{"India", "East Timor", "Singapore", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Manila?"
            Reponses := array{"China", "Philippines", "Maldives", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Saint Petersburg?"
            Reponses := array{"Hungary", "Serbia", "Russia", "Slovenia"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Krakow?"
            Reponses := array{"Montenegro", "Hungary", "Belarus", "Poland"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Munich?"
            Reponses := array{"Germany", "Ireland", "United Kingdom", "Italy"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Hamburg?"
            Reponses := array{"Finland", "Germany", "Spain", "United Kingdom"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Milan?"
            Reponses := array{"Italy", "Iceland", "Luxembourg", "United Kingdom"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Naples?"
            Reponses := array{"Ireland", "Switzerland", "Luxembourg", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Florence?"
            Reponses := array{"Liechtenstein", "Netherlands", "Germany", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Seville?"
            Reponses := array{"Monaco", "Spain", "Finland", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Valencia?"
            Reponses := array{"Finland", "Malta", "Spain", "Vatican City"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Porto?"
            Reponses := array{"Italy", "Belgium", "Portugal", "France"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Edinburgh?"
            Reponses := array{"Germany", "United Kingdom", "Vatican City", "Denmark"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Zurich?"
            Reponses := array{"Vatican City", "Ireland", "Switzerland", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Chicago?"
            Reponses := array{"United States", "Mexico", "Canada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "In which country is San Francisco?"
            Reponses := array{"United States", "Mexico", "Canada", "Sao Tome and Principe"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Boston?"
            Reponses := array{"Belgium", "Mexico", "Canada", "United States"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Seattle?"
            Reponses := array{"Mexico", "Canada", "United States", "Morocco"}
            BonneReponse := 2
        question:
            Enonce := "In which country is New Orleans?"
            Reponses := array{"Canada", "Mexico", "United States", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Vancouver?"
            Reponses := array{"Mauritius", "Mexico", "United States", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Montreal?"
            Reponses := array{"Mexico", "United States", "Canada", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Sao Paulo?"
            Reponses := array{"Brazil", "Peru", "Bolivia", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Medellin?"
            Reponses := array{"Chile", "Bolivia", "Colombia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Cusco?"
            Reponses := array{"Peru", "Uruguay", "Bolivia", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Casablanca?"
            Reponses := array{"Rwanda", "Congo", "Madagascar", "Morocco"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Cape Town?"
            Reponses := array{"South Africa", "Botswana", "Ethiopia", "Somalia"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Johannesburg?"
            Reponses := array{"Botswana", "South Africa", "Djibouti", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Melbourne?"
            Reponses := array{"Samoa", "Kiribati", "Vanuatu", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Auckland?"
            Reponses := array{"New Zealand", "Kiribati", "Palau", "Solomon Islands"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Bilbao?"
            Reponses := array{"Finland", "Spain", "Portugal", "Netherlands"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Bruges?"
            Reponses := array{"Switzerland", "Austria", "Liechtenstein", "Belgium"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Antwerp?"
            Reponses := array{"Monaco", "Belgium", "Finland", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Rotterdam?"
            Reponses := array{"Germany", "Netherlands", "Italy", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Gothenburg?"
            Reponses := array{"Belgium", "Iceland", "Sweden", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Bergen?"
            Reponses := array{"Norway", "Spain", "Denmark", "Netherlands"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Salzburg?"
            Reponses := array{"Netherlands", "Austria", "Malta", "Sweden"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Innsbruck?"
            Reponses := array{"Austria", "Ireland", "Switzerland", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Lausanne?"
            Reponses := array{"Norway", "Switzerland", "Finland", "Ireland"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Dresden?"
            Reponses := array{"Germany", "Austria", "United Kingdom", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Cologne?"
            Reponses := array{"Denmark", "Italy", "Germany", "Vatican City"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Frankfurt?"
            Reponses := array{"Germany", "Norway", "Liechtenstein", "Denmark"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Turin?"
            Reponses := array{"Monaco", "Belgium", "Italy", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Bologna?"
            Reponses := array{"Denmark", "Liechtenstein", "Italy", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Palermo?"
            Reponses := array{"Vatican City", "Italy", "San Marino", "Luxembourg"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Verona?"
            Reponses := array{"Monaco", "United Kingdom", "Germany", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Thessaloniki?"
            Reponses := array{"Croatia", "Greece", "Albania", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Izmir?"
            Reponses := array{"Israel", "Turkey", "Syria", "Jordan"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Fez?"
            Reponses := array{"Seychelles", "Congo", "Comoros", "Morocco"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Tangier?"
            Reponses := array{"Eritrea", "Morocco", "Mozambique", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Mombasa?"
            Reponses := array{"Mauritania", "Angola", "Kenya", "Cameroon"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Zanzibar?"
            Reponses := array{"Guinea", "Tanzania", "Somalia", "Morocco"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Timbuktu?"
            Reponses := array{"Eritrea", "Djibouti", "Mali", "Chad"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Lagos?"
            Reponses := array{"Nigeria", "South Sudan", "Algeria", "DR Congo"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Kolkata?"
            Reponses := array{"Malaysia", "China", "Maldives", "India"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Varanasi?"
            Reponses := array{"Philippines", "India", "Pakistan", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Chiang Mai?"
            Reponses := array{"Japan", "Brunei", "Thailand", "Maldives"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Da Nang?"
            Reponses := array{"Pakistan", "Vietnam", "East Timor", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Busan?"
            Reponses := array{"India", "Philippines", "South Korea", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Sapporo?"
            Reponses := array{"Thailand", "Cambodia", "Japan", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Nagoya?"
            Reponses := array{"China", "Philippines", "Myanmar", "Japan"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Guangzhou?"
            Reponses := array{"Bhutan", "China", "Vietnam", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Macao?"
            Reponses := array{"China", "Thailand", "Bangladesh", "Myanmar"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Cebu?"
            Reponses := array{"Philippines", "Bhutan", "Indonesia", "Laos"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Perth?"
            Reponses := array{"Australia", "Marshall Islands", "Samoa", "Papua New Guinea"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Brisbane?"
            Reponses := array{"Vanuatu", "Australia", "Papua New Guinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Christchurch?"
            Reponses := array{"New Zealand", "Marshall Islands", "Samoa", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Guadalajara?"
            Reponses := array{"Namibia", "United States", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Monterrey?"
            Reponses := array{"Slovenia", "Canada", "United States", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "In which country is Cartagena?"
            Reponses := array{"Argentina", "Bolivia", "Colombia", "Suriname"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Valparaiso?"
            Reponses := array{"Argentina", "Chile", "Colombia", "Guyana"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Mendoza?"
            Reponses := array{"Ecuador", "Argentina", "Venezuela", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Recife?"
            Reponses := array{"Bolivia", "Brazil", "Argentina", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Detroit?"
            Reponses := array{"Mexico", "Canada", "United States", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Houston?"
            Reponses := array{"Canada", "United States", "Mexico", "Ethiopia"}
            BonneReponse := 1
        question:
            Enonce := "In which country is Dallas?"
            Reponses := array{"United States", "Mexico", "Canada", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "In which country is Philadelphia?"
            Reponses := array{"Mexico", "Canada", "United States", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Denver?"
            Reponses := array{"Canada", "Mexico", "United States", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "In which country is Calgary?"
            Reponses := array{"United States", "Canada", "Mexico", "Myanmar"}
            BonneReponse := 1

MakeVillesQuestionsES() : []question =
    array:
        question:
            Enonce := "En que pais esta New York?"
            Reponses := array{"Nigeria", "Canada", "Mexico", "Estados Unidos"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Londres?"
            Reponses := array{"Liechtenstein", "Alemania", "Reino Unido", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Tokyo?"
            Reponses := array{"Sri Lanka", "Laos", "Japon", "Tailandia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Roma?"
            Reponses := array{"Italia", "Dinamarca", "Suecia", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Madrid?"
            Reponses := array{"Noruega", "Espana", "Alemania", "Finlandia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Berlin?"
            Reponses := array{"Italia", "Alemania", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Moscu?"
            Reponses := array{"Eslovenia", "Albania", "Rusia", "Rumania"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Pekin?"
            Reponses := array{"China", "Birmania", "Tailandia", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Sydney?"
            Reponses := array{"Fiyi", "Samoa", "Islas Marshall", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Rio de Janeiro?"
            Reponses := array{"Brasil", "Colombia", "Ecuador", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Toronto?"
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Barcelona?"
            Reponses := array{"Espana", "Suiza", "Andorra", "Noruega"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Venecia?"
            Reponses := array{"Reino Unido", "Suiza", "Ciudad del Vaticano", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Amsterdam?"
            Reponses := array{"Noruega", "Paises Bajos", "Italia", "Ciudad del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Lisboa?"
            Reponses := array{"Reino Unido", "Paises Bajos", "Portugal", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Atenas?"
            Reponses := array{"Macedonia del Norte", "Chequia", "Grecia", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta El Cairo?"
            Reponses := array{"Ruanda", "Sudafrica", "Egipto", "RD del Congo"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Dubai?"
            Reponses := array{"Catar", "Emiratos Arabes Unidos", "Georgia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Istanbul?"
            Reponses := array{"Libano", "Turquia", "Emiratos Arabes Unidos", "Jordania"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Mumbai?"
            Reponses := array{"Brunei", "China", "Singapur", "India"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Los Angeles?"
            Reponses := array{"Canada", "Mexico", "Estados Unidos", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Las Vegas?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Malaui"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Miami?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Yibuti"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Marrakech?"
            Reponses := array{"Camerun", "Marruecos", "Kenia", "Sudafrica"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Ginebra?"
            Reponses := array{"Suiza", "Noruega", "Irlanda", "Islandia"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Hong Kong?"
            Reponses := array{"Banglades", "Malasia", "China", "Birmania"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Shanghai?"
            Reponses := array{"China", "Pakistan", "Tailandia", "Banglades"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Kyoto?"
            Reponses := array{"China", "Japon", "Corea del Norte", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Osaka?"
            Reponses := array{"Japon", "Brunei", "Nepal", "China"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Seoul?"
            Reponses := array{"Sri Lanka", "Nepal", "China", "Corea del Sur"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Bangkok?"
            Reponses := array{"Brunei", "India", "Tailandia", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Hanoi?"
            Reponses := array{"Timor Oriental", "China", "Vietnam", "Sri Lanka"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Jakarta?"
            Reponses := array{"India", "Timor Oriental", "Singapur", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Manila?"
            Reponses := array{"China", "Filipinas", "Maldivas", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta San Petersburgo?"
            Reponses := array{"Hungria", "Serbia", "Rusia", "Eslovenia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Cracovia?"
            Reponses := array{"Montenegro", "Hungria", "Bielorrusia", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Munich?"
            Reponses := array{"Alemania", "Irlanda", "Reino Unido", "Italia"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Hamburgo?"
            Reponses := array{"Finlandia", "Alemania", "Espana", "Reino Unido"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Milan?"
            Reponses := array{"Italia", "Islandia", "Luxemburgo", "Reino Unido"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Napoles?"
            Reponses := array{"Irlanda", "Suiza", "Luxemburgo", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Florencia?"
            Reponses := array{"Liechtenstein", "Paises Bajos", "Alemania", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Sevilla?"
            Reponses := array{"Monaco", "Espana", "Finlandia", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Valencia?"
            Reponses := array{"Finlandia", "Malta", "Espana", "Ciudad del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Porto?"
            Reponses := array{"Italia", "Belgica", "Portugal", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Edimburgo?"
            Reponses := array{"Alemania", "Reino Unido", "Ciudad del Vaticano", "Dinamarca"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Zurich?"
            Reponses := array{"Ciudad del Vaticano", "Irlanda", "Suiza", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Chicago?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta San Francisco?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Santo Tome y Principe"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Boston?"
            Reponses := array{"Belgica", "Mexico", "Canada", "Estados Unidos"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Seattle?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Marruecos"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Nueva Orleans?"
            Reponses := array{"Canada", "Mexico", "Estados Unidos", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Vancouver?"
            Reponses := array{"Mauricio", "Mexico", "Estados Unidos", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Montreal?"
            Reponses := array{"Mexico", "Estados Unidos", "Canada", "Malasia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Sao Paulo?"
            Reponses := array{"Brasil", "Peru", "Bolivia", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Medellin?"
            Reponses := array{"Chile", "Bolivia", "Colombia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Cusco?"
            Reponses := array{"Peru", "Uruguay", "Bolivia", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Casablanca?"
            Reponses := array{"Ruanda", "Congo", "Madagascar", "Marruecos"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Ciudad del Cabo?"
            Reponses := array{"Sudafrica", "Botsuana", "Etiopia", "Somalia"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Johannesburg?"
            Reponses := array{"Botsuana", "Sudafrica", "Yibuti", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Melbourne?"
            Reponses := array{"Samoa", "Kiribati", "Vanuatu", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Auckland?"
            Reponses := array{"Nueva Zelanda", "Kiribati", "Palaos", "Islas Salomon"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Bilbao?"
            Reponses := array{"Finlandia", "Espana", "Portugal", "Paises Bajos"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Bruges?"
            Reponses := array{"Suiza", "Austria", "Liechtenstein", "Belgica"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Amberes?"
            Reponses := array{"Monaco", "Belgica", "Finlandia", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Rotterdam?"
            Reponses := array{"Alemania", "Paises Bajos", "Italia", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Gotemburgo?"
            Reponses := array{"Belgica", "Islandia", "Suecia", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Bergen?"
            Reponses := array{"Noruega", "Espana", "Dinamarca", "Paises Bajos"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Salzburgo?"
            Reponses := array{"Paises Bajos", "Austria", "Malta", "Suecia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Innsbruck?"
            Reponses := array{"Austria", "Irlanda", "Suiza", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Lausanne?"
            Reponses := array{"Noruega", "Suiza", "Finlandia", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Dresde?"
            Reponses := array{"Alemania", "Austria", "Reino Unido", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Colonia?"
            Reponses := array{"Dinamarca", "Italia", "Alemania", "Ciudad del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Francfort?"
            Reponses := array{"Alemania", "Noruega", "Liechtenstein", "Dinamarca"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Turin?"
            Reponses := array{"Monaco", "Belgica", "Italia", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Bolonia?"
            Reponses := array{"Dinamarca", "Liechtenstein", "Italia", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Palermo?"
            Reponses := array{"Ciudad del Vaticano", "Italia", "San Marino", "Luxemburgo"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Verona?"
            Reponses := array{"Monaco", "Reino Unido", "Alemania", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Salonica?"
            Reponses := array{"Croacia", "Grecia", "Albania", "Ucrania"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Izmir?"
            Reponses := array{"Israel", "Turquia", "Siria", "Jordania"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Fez?"
            Reponses := array{"Seychelles", "Congo", "Comoras", "Marruecos"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Tanger?"
            Reponses := array{"Eritrea", "Marruecos", "Mozambique", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Mombasa?"
            Reponses := array{"Mauritania", "Angola", "Kenia", "Camerun"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Zanzibar?"
            Reponses := array{"Guinea", "Tanzania", "Somalia", "Marruecos"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Tombuctu?"
            Reponses := array{"Eritrea", "Yibuti", "Mali", "Chad"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Lagos?"
            Reponses := array{"Nigeria", "Sudan del Sur", "Argelia", "RD del Congo"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Kolkata?"
            Reponses := array{"Malasia", "China", "Maldivas", "India"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Varanasi?"
            Reponses := array{"Filipinas", "India", "Pakistan", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Chiang Mai?"
            Reponses := array{"Japon", "Brunei", "Tailandia", "Maldivas"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Da Nang?"
            Reponses := array{"Pakistan", "Vietnam", "Timor Oriental", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Busan?"
            Reponses := array{"India", "Filipinas", "Corea del Sur", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Sapporo?"
            Reponses := array{"Tailandia", "Camboya", "Japon", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Nagoya?"
            Reponses := array{"China", "Filipinas", "Birmania", "Japon"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Canton?"
            Reponses := array{"Butan", "China", "Vietnam", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Macao?"
            Reponses := array{"China", "Tailandia", "Banglades", "Birmania"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Cebu?"
            Reponses := array{"Filipinas", "Butan", "Indonesia", "Laos"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Perth?"
            Reponses := array{"Australia", "Islas Marshall", "Samoa", "Papua Nueva Guinea"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Brisbane?"
            Reponses := array{"Vanuatu", "Australia", "Papua Nueva Guinea", "Palaos"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Christchurch?"
            Reponses := array{"Nueva Zelanda", "Islas Marshall", "Samoa", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Guadalajara?"
            Reponses := array{"Namibia", "Estados Unidos", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Monterrey?"
            Reponses := array{"Eslovenia", "Canada", "Estados Unidos", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "En que pais esta Cartagena?"
            Reponses := array{"Argentina", "Bolivia", "Colombia", "Surinam"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Valparaiso?"
            Reponses := array{"Argentina", "Chile", "Colombia", "Guyana"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Mendoza?"
            Reponses := array{"Ecuador", "Argentina", "Venezuela", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Recife?"
            Reponses := array{"Bolivia", "Brasil", "Argentina", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Detroit?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Houston?"
            Reponses := array{"Canada", "Estados Unidos", "Mexico", "Etiopia"}
            BonneReponse := 1
        question:
            Enonce := "En que pais esta Dallas?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "En que pais esta Filadelfia?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Rumania"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Denver?"
            Reponses := array{"Canada", "Mexico", "Estados Unidos", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "En que pais esta Calgary?"
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Birmania"}
            BonneReponse := 1

MakeVillesQuestionsDE() : []question =
    array:
        question:
            Enonce := "In welchem Land liegt New York?"
            Reponses := array{"Nigeria", "Kanada", "Mexiko", "Vereinigte Staaten"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt London?"
            Reponses := array{"Liechtenstein", "Deutschland", "Vereinigtes Koenigreich", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Tokyo?"
            Reponses := array{"Sri Lanka", "Laos", "Japan", "Thailand"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Rom?"
            Reponses := array{"Italien", "Daenemark", "Schweden", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Madrid?"
            Reponses := array{"Norwegen", "Spanien", "Deutschland", "Finnland"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Berlin?"
            Reponses := array{"Italien", "Deutschland", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Moskau?"
            Reponses := array{"Slowenien", "Albanien", "Russland", "Rumaenien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Peking?"
            Reponses := array{"China", "Myanmar", "Thailand", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Sydney?"
            Reponses := array{"Fidschi", "Samoa", "Marshallinseln", "Australien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Rio de Janeiro?"
            Reponses := array{"Brasilien", "Kolumbien", "Ecuador", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Toronto?"
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Barcelona?"
            Reponses := array{"Spanien", "Schweiz", "Andorra", "Norwegen"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Venedig?"
            Reponses := array{"Vereinigtes Koenigreich", "Schweiz", "Vatikanstadt", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Amsterdam?"
            Reponses := array{"Norwegen", "Niederlande", "Italien", "Vatikanstadt"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Lissabon?"
            Reponses := array{"Vereinigtes Koenigreich", "Niederlande", "Portugal", "Finnland"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Athen?"
            Reponses := array{"Nordmazedonien", "Tschechien", "Griechenland", "Bulgarien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Kairo?"
            Reponses := array{"Ruanda", "Suedafrika", "Aegypten", "DR Kongo"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Dubai?"
            Reponses := array{"Katar", "Vereinigte Arabische Emirate", "Georgien", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Istanbul?"
            Reponses := array{"Libanon", "Tuerkei", "Vereinigte Arabische Emirate", "Jordanien"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Mumbai?"
            Reponses := array{"Brunei", "China", "Singapur", "Indien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Los Angeles?"
            Reponses := array{"Kanada", "Mexiko", "Vereinigte Staaten", "Frankreich"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Las Vegas?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Malawi"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Miami?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Dschibuti"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Marrakech?"
            Reponses := array{"Kamerun", "Marokko", "Kenia", "Suedafrika"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Genf?"
            Reponses := array{"Schweiz", "Norwegen", "Irland", "Island"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Hong Kong?"
            Reponses := array{"Bangladesch", "Malaysia", "China", "Myanmar"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Shanghai?"
            Reponses := array{"China", "Pakistan", "Thailand", "Bangladesch"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Kyoto?"
            Reponses := array{"China", "Japan", "Nordkorea", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Osaka?"
            Reponses := array{"Japan", "Brunei", "Nepal", "China"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Seoul?"
            Reponses := array{"Sri Lanka", "Nepal", "China", "Suedkorea"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Bangkok?"
            Reponses := array{"Brunei", "Indien", "Thailand", "Indonesien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Hanoi?"
            Reponses := array{"Osttimor", "China", "Vietnam", "Sri Lanka"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Jakarta?"
            Reponses := array{"Indien", "Osttimor", "Singapur", "Indonesien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Manila?"
            Reponses := array{"China", "Philippinen", "Malediven", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Sankt Petersburg?"
            Reponses := array{"Ungarn", "Serbien", "Russland", "Slowenien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Krakau?"
            Reponses := array{"Montenegro", "Ungarn", "Belarus", "Polen"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Muenchen?"
            Reponses := array{"Deutschland", "Irland", "Vereinigtes Koenigreich", "Italien"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Hamburg?"
            Reponses := array{"Finnland", "Deutschland", "Spanien", "Vereinigtes Koenigreich"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Mailand?"
            Reponses := array{"Italien", "Island", "Luxemburg", "Vereinigtes Koenigreich"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Neapel?"
            Reponses := array{"Irland", "Schweiz", "Luxemburg", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Florenz?"
            Reponses := array{"Liechtenstein", "Niederlande", "Deutschland", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Sevilla?"
            Reponses := array{"Monaco", "Spanien", "Finnland", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Valencia?"
            Reponses := array{"Finnland", "Malta", "Spanien", "Vatikanstadt"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Porto?"
            Reponses := array{"Italien", "Belgien", "Portugal", "Frankreich"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Edinburgh?"
            Reponses := array{"Deutschland", "Vereinigtes Koenigreich", "Vatikanstadt", "Daenemark"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Zurich?"
            Reponses := array{"Vatikanstadt", "Irland", "Schweiz", "Oesterreich"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Chicago?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt San Francisco?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Sao Tome und Principe"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Boston?"
            Reponses := array{"Belgien", "Mexiko", "Kanada", "Vereinigte Staaten"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Seattle?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Marokko"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt New Orleans?"
            Reponses := array{"Kanada", "Mexiko", "Vereinigte Staaten", "Sambia"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Vancouver?"
            Reponses := array{"Mauritius", "Mexiko", "Vereinigte Staaten", "Kanada"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Montreal?"
            Reponses := array{"Mexiko", "Vereinigte Staaten", "Kanada", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Sao Paulo?"
            Reponses := array{"Brasilien", "Peru", "Bolivien", "Kolumbien"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Medellin?"
            Reponses := array{"Chile", "Bolivien", "Kolumbien", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Cusco?"
            Reponses := array{"Peru", "Uruguay", "Bolivien", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Casablanca?"
            Reponses := array{"Ruanda", "Kongo", "Madagaskar", "Marokko"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Kapstadt?"
            Reponses := array{"Suedafrika", "Botswana", "Aethiopien", "Somalia"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Johannesburg?"
            Reponses := array{"Botswana", "Suedafrika", "Dschibuti", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Melbourne?"
            Reponses := array{"Samoa", "Kiribati", "Vanuatu", "Australien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Auckland?"
            Reponses := array{"Neuseeland", "Kiribati", "Palau", "Salomonen"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Bilbao?"
            Reponses := array{"Finnland", "Spanien", "Portugal", "Niederlande"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Bruges?"
            Reponses := array{"Schweiz", "Oesterreich", "Liechtenstein", "Belgien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Antwerpen?"
            Reponses := array{"Monaco", "Belgien", "Finnland", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Rotterdam?"
            Reponses := array{"Deutschland", "Niederlande", "Italien", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Goeteborg?"
            Reponses := array{"Belgien", "Island", "Schweden", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Bergen?"
            Reponses := array{"Norwegen", "Spanien", "Daenemark", "Niederlande"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Salzburg?"
            Reponses := array{"Niederlande", "Oesterreich", "Malta", "Schweden"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Innsbruck?"
            Reponses := array{"Oesterreich", "Irland", "Schweiz", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Lausanne?"
            Reponses := array{"Norwegen", "Schweiz", "Finnland", "Irland"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Dresden?"
            Reponses := array{"Deutschland", "Oesterreich", "Vereinigtes Koenigreich", "Portugal"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Koeln?"
            Reponses := array{"Daenemark", "Italien", "Deutschland", "Vatikanstadt"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Frankfurt?"
            Reponses := array{"Deutschland", "Norwegen", "Liechtenstein", "Daenemark"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Turin?"
            Reponses := array{"Monaco", "Belgien", "Italien", "Oesterreich"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Bologna?"
            Reponses := array{"Daenemark", "Liechtenstein", "Italien", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Palermo?"
            Reponses := array{"Vatikanstadt", "Italien", "San Marino", "Luxemburg"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Verona?"
            Reponses := array{"Monaco", "Vereinigtes Koenigreich", "Deutschland", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Thessaloniki?"
            Reponses := array{"Kroatien", "Griechenland", "Albanien", "Ukraine"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Izmir?"
            Reponses := array{"Israel", "Tuerkei", "Syrien", "Jordanien"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Fes?"
            Reponses := array{"Seychellen", "Kongo", "Komoren", "Marokko"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Tanger?"
            Reponses := array{"Eritrea", "Marokko", "Mosambik", "Seychellen"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Mombasa?"
            Reponses := array{"Mauretanien", "Angola", "Kenia", "Kamerun"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Zanzibar?"
            Reponses := array{"Guinea", "Tansania", "Somalia", "Marokko"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Timbuktu?"
            Reponses := array{"Eritrea", "Dschibuti", "Mali", "Tschad"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Lagos?"
            Reponses := array{"Nigeria", "Suedsudan", "Algerien", "DR Kongo"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Kolkata?"
            Reponses := array{"Malaysia", "China", "Malediven", "Indien"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Varanasi?"
            Reponses := array{"Philippinen", "Indien", "Pakistan", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Chiang Mai?"
            Reponses := array{"Japan", "Brunei", "Thailand", "Malediven"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Da Nang?"
            Reponses := array{"Pakistan", "Vietnam", "Osttimor", "Singapur"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Busan?"
            Reponses := array{"Indien", "Philippinen", "Suedkorea", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Sapporo?"
            Reponses := array{"Thailand", "Kambodscha", "Japan", "Indonesien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Nagoya?"
            Reponses := array{"China", "Philippinen", "Myanmar", "Japan"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Guangzhou?"
            Reponses := array{"Bhutan", "China", "Vietnam", "Indonesien"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Macao?"
            Reponses := array{"China", "Thailand", "Bangladesch", "Myanmar"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Cebu?"
            Reponses := array{"Philippinen", "Bhutan", "Indonesien", "Laos"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Perth?"
            Reponses := array{"Australien", "Marshallinseln", "Samoa", "Papua-Neuguinea"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Brisbane?"
            Reponses := array{"Vanuatu", "Australien", "Papua-Neuguinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Christchurch?"
            Reponses := array{"Neuseeland", "Marshallinseln", "Samoa", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Guadalajara?"
            Reponses := array{"Namibia", "Vereinigte Staaten", "Kanada", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Monterrey?"
            Reponses := array{"Slowenien", "Kanada", "Vereinigte Staaten", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Land liegt Cartagena?"
            Reponses := array{"Argentinien", "Bolivien", "Kolumbien", "Suriname"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Valparaiso?"
            Reponses := array{"Argentinien", "Chile", "Kolumbien", "Guyana"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Mendoza?"
            Reponses := array{"Ecuador", "Argentinien", "Venezuela", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Recife?"
            Reponses := array{"Bolivien", "Brasilien", "Argentinien", "Chile"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Detroit?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Houston?"
            Reponses := array{"Kanada", "Vereinigte Staaten", "Mexiko", "Aethiopien"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Land liegt Dallas?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Madagaskar"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Land liegt Philadelphia?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Rumaenien"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Denver?"
            Reponses := array{"Kanada", "Mexiko", "Vereinigte Staaten", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land liegt Calgary?"
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Myanmar"}
            BonneReponse := 1

MakeVillesQuestionsIT() : []question =
    array:
        question:
            Enonce := "In quale paese si trova New York?"
            Reponses := array{"Nigeria", "Canada", "Messico", "Stati Uniti"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Londra?"
            Reponses := array{"Liechtenstein", "Germania", "Regno Unito", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Tokyo?"
            Reponses := array{"Sri Lanka", "Laos", "Giappone", "Thailandia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Roma?"
            Reponses := array{"Italia", "Danimarca", "Svezia", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Madrid?"
            Reponses := array{"Norvegia", "Spagna", "Germania", "Finlandia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Berlin?"
            Reponses := array{"Italia", "Germania", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Mosca?"
            Reponses := array{"Slovenia", "Albania", "Russia", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Pechino?"
            Reponses := array{"Cina", "Birmania", "Thailandia", "Giappone"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Sydney?"
            Reponses := array{"Figi", "Samoa", "Isole Marshall", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Rio de Janeiro?"
            Reponses := array{"Brasile", "Colombia", "Ecuador", "Uruguay"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Toronto?"
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Barcellona?"
            Reponses := array{"Spagna", "Svizzera", "Andorra", "Norvegia"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Venezia?"
            Reponses := array{"Regno Unito", "Svizzera", "Citta del Vaticano", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Amsterdam?"
            Reponses := array{"Norvegia", "Paesi Bassi", "Italia", "Citta del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Lisbona?"
            Reponses := array{"Regno Unito", "Paesi Bassi", "Portogallo", "Finlandia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Atene?"
            Reponses := array{"Macedonia del Nord", "Cechia", "Grecia", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Il Cairo?"
            Reponses := array{"Ruanda", "Sudafrica", "Egitto", "RD Congo"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Dubai?"
            Reponses := array{"Qatar", "Emirati Arabi Uniti", "Georgia", "Kuwait"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Istanbul?"
            Reponses := array{"Libano", "Turchia", "Emirati Arabi Uniti", "Giordania"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Mumbai?"
            Reponses := array{"Brunei", "Cina", "Singapore", "India"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Los Angeles?"
            Reponses := array{"Canada", "Messico", "Stati Uniti", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Las Vegas?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Malawi"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Miami?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Gibuti"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Marrakech?"
            Reponses := array{"Camerun", "Marocco", "Kenya", "Sudafrica"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Ginevra?"
            Reponses := array{"Svizzera", "Norvegia", "Irlanda", "Islanda"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Hong Kong?"
            Reponses := array{"Bangladesh", "Malesia", "Cina", "Birmania"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Shanghai?"
            Reponses := array{"Cina", "Pakistan", "Thailandia", "Bangladesh"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Kyoto?"
            Reponses := array{"Cina", "Giappone", "Corea del Nord", "Brunei"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Osaka?"
            Reponses := array{"Giappone", "Brunei", "Nepal", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Seoul?"
            Reponses := array{"Sri Lanka", "Nepal", "Cina", "Corea del Sud"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Bangkok?"
            Reponses := array{"Brunei", "India", "Thailandia", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Hanoi?"
            Reponses := array{"Timor Est", "Cina", "Vietnam", "Sri Lanka"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Jakarta?"
            Reponses := array{"India", "Timor Est", "Singapore", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Manila?"
            Reponses := array{"Cina", "Filippine", "Maldive", "Sri Lanka"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova San Pietroburgo?"
            Reponses := array{"Ungheria", "Serbia", "Russia", "Slovenia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Cracovia?"
            Reponses := array{"Montenegro", "Ungheria", "Bielorussia", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Monaco di Baviera?"
            Reponses := array{"Germania", "Irlanda", "Regno Unito", "Italia"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Amburgo?"
            Reponses := array{"Finlandia", "Germania", "Spagna", "Regno Unito"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Milano?"
            Reponses := array{"Italia", "Islanda", "Lussemburgo", "Regno Unito"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Napoli?"
            Reponses := array{"Irlanda", "Svizzera", "Lussemburgo", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Firenze?"
            Reponses := array{"Liechtenstein", "Paesi Bassi", "Germania", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Siviglia?"
            Reponses := array{"Monaco", "Spagna", "Finlandia", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Valencia?"
            Reponses := array{"Finlandia", "Malta", "Spagna", "Citta del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Porto?"
            Reponses := array{"Italia", "Belgio", "Portogallo", "Francia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Edimburgo?"
            Reponses := array{"Germania", "Regno Unito", "Citta del Vaticano", "Danimarca"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Zurich?"
            Reponses := array{"Citta del Vaticano", "Irlanda", "Svizzera", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Chicago?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Dominica"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova San Francisco?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Sao Tome e Principe"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Boston?"
            Reponses := array{"Belgio", "Messico", "Canada", "Stati Uniti"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Seattle?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Marocco"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova New Orleans?"
            Reponses := array{"Canada", "Messico", "Stati Uniti", "Zambia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Vancouver?"
            Reponses := array{"Mauritius", "Messico", "Stati Uniti", "Canada"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Montreal?"
            Reponses := array{"Messico", "Stati Uniti", "Canada", "Malesia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Sao Paulo?"
            Reponses := array{"Brasile", "Peru", "Bolivia", "Colombia"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Medellin?"
            Reponses := array{"Cile", "Bolivia", "Colombia", "Paraguay"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Cusco?"
            Reponses := array{"Peru", "Uruguay", "Bolivia", "Guyana"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Casablanca?"
            Reponses := array{"Ruanda", "Congo", "Madagascar", "Marocco"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Citta del Capo?"
            Reponses := array{"Sudafrica", "Botswana", "Etiopia", "Somalia"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Johannesburg?"
            Reponses := array{"Botswana", "Sudafrica", "Gibuti", "Namibia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Melbourne?"
            Reponses := array{"Samoa", "Kiribati", "Vanuatu", "Australia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Auckland?"
            Reponses := array{"Nuova Zelanda", "Kiribati", "Palau", "Isole Salomone"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Bilbao?"
            Reponses := array{"Finlandia", "Spagna", "Portogallo", "Paesi Bassi"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Bruges?"
            Reponses := array{"Svizzera", "Austria", "Liechtenstein", "Belgio"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Anversa?"
            Reponses := array{"Monaco", "Belgio", "Finlandia", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Rotterdam?"
            Reponses := array{"Germania", "Paesi Bassi", "Italia", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Goteborg?"
            Reponses := array{"Belgio", "Islanda", "Svezia", "San Marino"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Bergen?"
            Reponses := array{"Norvegia", "Spagna", "Danimarca", "Paesi Bassi"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Salisburgo?"
            Reponses := array{"Paesi Bassi", "Austria", "Malta", "Svezia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Innsbruck?"
            Reponses := array{"Austria", "Irlanda", "Svizzera", "Portogallo"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Lausanne?"
            Reponses := array{"Norvegia", "Svizzera", "Finlandia", "Irlanda"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Dresda?"
            Reponses := array{"Germania", "Austria", "Regno Unito", "Portogallo"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Colonia?"
            Reponses := array{"Danimarca", "Italia", "Germania", "Citta del Vaticano"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Francoforte?"
            Reponses := array{"Germania", "Norvegia", "Liechtenstein", "Danimarca"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Torino?"
            Reponses := array{"Monaco", "Belgio", "Italia", "Austria"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Bologna?"
            Reponses := array{"Danimarca", "Liechtenstein", "Italia", "Andorra"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Palermo?"
            Reponses := array{"Citta del Vaticano", "Italia", "San Marino", "Lussemburgo"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Verona?"
            Reponses := array{"Monaco", "Regno Unito", "Germania", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Salonicco?"
            Reponses := array{"Croazia", "Grecia", "Albania", "Ucraina"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Izmir?"
            Reponses := array{"Israele", "Turchia", "Siria", "Giordania"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Fes?"
            Reponses := array{"Seychelles", "Congo", "Comore", "Marocco"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Tangeri?"
            Reponses := array{"Eritrea", "Marocco", "Mozambico", "Seychelles"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Mombasa?"
            Reponses := array{"Mauritania", "Angola", "Kenya", "Camerun"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Zanzibar?"
            Reponses := array{"Guinea", "Tanzania", "Somalia", "Marocco"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Timbuctu?"
            Reponses := array{"Eritrea", "Gibuti", "Mali", "Ciad"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Lagos?"
            Reponses := array{"Nigeria", "Sudan del Sud", "Algeria", "RD Congo"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Kolkata?"
            Reponses := array{"Malesia", "Cina", "Maldive", "India"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Varanasi?"
            Reponses := array{"Filippine", "India", "Pakistan", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Chiang Mai?"
            Reponses := array{"Giappone", "Brunei", "Thailandia", "Maldive"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Da Nang?"
            Reponses := array{"Pakistan", "Vietnam", "Timor Est", "Singapore"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Busan?"
            Reponses := array{"India", "Filippine", "Corea del Sud", "Brunei"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Sapporo?"
            Reponses := array{"Thailandia", "Cambogia", "Giappone", "Indonesia"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Nagoya?"
            Reponses := array{"Cina", "Filippine", "Birmania", "Giappone"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Canton?"
            Reponses := array{"Bhutan", "Cina", "Vietnam", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Macao?"
            Reponses := array{"Cina", "Thailandia", "Bangladesh", "Birmania"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Cebu?"
            Reponses := array{"Filippine", "Bhutan", "Indonesia", "Laos"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Perth?"
            Reponses := array{"Australia", "Isole Marshall", "Samoa", "Papua Nuova Guinea"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Brisbane?"
            Reponses := array{"Vanuatu", "Australia", "Papua Nuova Guinea", "Palau"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Christchurch?"
            Reponses := array{"Nuova Zelanda", "Isole Marshall", "Samoa", "Vanuatu"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Guadalajara?"
            Reponses := array{"Namibia", "Stati Uniti", "Canada", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Monterrey?"
            Reponses := array{"Slovenia", "Canada", "Stati Uniti", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "In quale paese si trova Cartagena?"
            Reponses := array{"Argentina", "Bolivia", "Colombia", "Suriname"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Valparaiso?"
            Reponses := array{"Argentina", "Cile", "Colombia", "Guyana"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Mendoza?"
            Reponses := array{"Ecuador", "Argentina", "Venezuela", "Paraguay"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Recife?"
            Reponses := array{"Bolivia", "Brasile", "Argentina", "Cile"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Detroit?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Bahamas"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Houston?"
            Reponses := array{"Canada", "Stati Uniti", "Messico", "Etiopia"}
            BonneReponse := 1
        question:
            Enonce := "In quale paese si trova Dallas?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Madagascar"}
            BonneReponse := 0
        question:
            Enonce := "In quale paese si trova Filadelfia?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Romania"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Denver?"
            Reponses := array{"Canada", "Messico", "Stati Uniti", "Turkmenistan"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese si trova Calgary?"
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Birmania"}
            BonneReponse := 1

MakeVillesQuestions() : []question =
    MakeVillesQuestionsFR()
