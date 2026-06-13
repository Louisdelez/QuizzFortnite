using { /Verse.org/Assets }

# dirigeants_bank.verse — Quizz DIRIGEANTS (rois & presidents)
# GENERE — NE PAS EDITER A LA MAIN.

DirigeantsDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeDirigeantsQuestionsFR() : []question =
    array:
        question:
            Enonce := "De quel pays Emmanuel Macron est-il/elle une figure dirigeante ?"
            Reponses := array{"Belgique", "Malte", "France", "Suede"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Donald Trump est-il/elle une figure dirigeante ?"
            Reponses := array{"Canada", "Etats-Unis", "Mexique", "Argentine"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Vladimir Poutine est-il/elle une figure dirigeante ?"
            Reponses := array{"Bosnie-Herzegovine", "Chypre", "Russie", "Bulgarie"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Xi Jinping est-il/elle une figure dirigeante ?"
            Reponses := array{"Chine", "Bhoutan", "Coree du Sud", "Timor oriental"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Charles III est-il/elle une figure dirigeante ?"
            Reponses := array{"Royaume-Uni", "Vatican", "Monaco", "Suisse"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Narendra Modi est-il/elle une figure dirigeante ?"
            Reponses := array{"Vietnam", "Maldives", "Inde", "Malaisie"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Justin Trudeau est-il/elle une figure dirigeante ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Lula est-il/elle une figure dirigeante ?"
            Reponses := array{"Equateur", "Bresil", "Bolivie", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Volodymyr Zelensky est-il/elle une figure dirigeante ?"
            Reponses := array{"Serbie", "Ukraine", "Chypre", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Recep Tayyip Erdogan est-il/elle une figure dirigeante ?"
            Reponses := array{"Oman", "Israel", "Syrie", "Turquie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Benjamin Netanyahou est-il/elle une figure dirigeante ?"
            Reponses := array{"Jordanie", "Israel", "Oman", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Kim Jong-un est-il/elle une figure dirigeante ?"
            Reponses := array{"Indonesie", "Coree du Nord", "Bangladesh", "Bhoutan"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Javier Milei est-il/elle une figure dirigeante ?"
            Reponses := array{"Venezuela", "Argentine", "Suriname", "Equateur"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Giorgia Meloni est-il/elle une figure dirigeante ?"
            Reponses := array{"Italie", "Saint-Marin", "Royaume-Uni", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Pedro Sanchez est-il/elle une figure dirigeante ?"
            Reponses := array{"Espagne", "Pays-Bas", "Malte", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Olaf Scholz est-il/elle une figure dirigeante ?"
            Reponses := array{"Allemagne", "Portugal", "Monaco", "Belgique"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Andres Manuel Lopez Obrador est-il/elle une figure dirigeante ?"
            Reponses := array{"Saint-Kitts-et-Nevis", "Etats-Unis", "Canada", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Cyril Ramaphosa est-il/elle une figure dirigeante ?"
            Reponses := array{"Lesotho", "Nigeria", "Afrique du Sud", "Soudan du Sud"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Anthony Albanese est-il/elle une figure dirigeante ?"
            Reponses := array{"Australie", "Vanuatu", "Tonga", "Papouasie-Nouvelle-Guinee"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Mohammed VI est-il/elle une figure dirigeante ?"
            Reponses := array{"Egypte", "Tunisie", "RD Congo", "Maroc"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Abdelmadjid Tebboune est-il/elle une figure dirigeante ?"
            Reponses := array{"Guinee equatoriale", "Niger", "Algerie", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Keir Starmer est-il/elle une figure dirigeante ?"
            Reponses := array{"Irlande", "Espagne", "Autriche", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Felipe VI est-il/elle une figure dirigeante ?"
            Reponses := array{"Espagne", "Luxembourg", "Andorre", "Royaume-Uni"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Sergio Mattarella est-il/elle une figure dirigeante ?"
            Reponses := array{"Suede", "Belgique", "Italie", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Gabriel Boric est-il/elle une figure dirigeante ?"
            Reponses := array{"Chili", "Argentine", "Bolivie", "Perou"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Joe Biden est-il/elle une figure dirigeante ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Fumio Kishida est-il/elle une figure dirigeante ?"
            Reponses := array{"Laos", "Bhoutan", "Vietnam", "Japon"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Angela Merkel est-il/elle une figure dirigeante ?"
            Reponses := array{"Vatican", "Allemagne", "Portugal", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Barack Obama est-il/elle une figure dirigeante ?"
            Reponses := array{"Etats-Unis", "Mexique", "Canada", "Royaume-Uni"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Nelson Mandela est-il/elle une figure dirigeante ?"
            Reponses := array{"Gabon", "Angola", "Algerie", "Afrique du Sud"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Margaret Thatcher est-il/elle une figure dirigeante ?"
            Reponses := array{"Monaco", "Portugal", "Royaume-Uni", "Pays-Bas"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Winston Churchill est-il/elle une figure dirigeante ?"
            Reponses := array{"Danemark", "Belgique", "Saint-Marin", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Charles de Gaulle est-il/elle une figure dirigeante ?"
            Reponses := array{"Autriche", "Pays-Bas", "Suisse", "France"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Napoleon Bonaparte est-il/elle une figure dirigeante ?"
            Reponses := array{"Saint-Marin", "Italie", "Vatican", "France"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Louis XIV est-il/elle une figure dirigeante ?"
            Reponses := array{"France", "Portugal", "Saint-Marin", "Royaume-Uni"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Jules Cesar est-il/elle une figure dirigeante ?"
            Reponses := array{"Allemagne", "Italie", "Belgique", "Autriche"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Mao Zedong est-il/elle une figure dirigeante ?"
            Reponses := array{"Inde", "Japon", "Birmanie", "Chine"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Mahatma Gandhi est-il/elle une figure dirigeante ?"
            Reponses := array{"Inde", "Japon", "Timor oriental", "Chine"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Fidel Castro est-il/elle une figure dirigeante ?"
            Reponses := array{"Costa Rica", "Saint-Vincent", "Dominique", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Hugo Chavez est-il/elle une figure dirigeante ?"
            Reponses := array{"Colombie", "Venezuela", "Guyana", "Bolivie"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Che Guevara est-il/elle une figure dirigeante ?"
            Reponses := array{"Argentine", "Uruguay", "Perou", "Bolivie"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Simon Bolivar est-il/elle une figure dirigeante ?"
            Reponses := array{"Venezuela", "Colombie", "Paraguay", "Perou"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Mustafa Kemal Ataturk est-il/elle une figure dirigeante ?"
            Reponses := array{"Arabie saoudite", "Turquie", "Qatar", "Azerbaidjan"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Mikhail Gorbatchev est-il/elle une figure dirigeante ?"
            Reponses := array{"Russie", "Estonie", "Serbie", "Montenegro"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Joseph Staline est-il/elle une figure dirigeante ?"
            Reponses := array{"Montenegro", "Croatie", "Russie", "Lituanie"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Lenine est-il/elle une figure dirigeante ?"
            Reponses := array{"Hongrie", "Ukraine", "Chypre", "Russie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Benito Mussolini est-il/elle une figure dirigeante ?"
            Reponses := array{"Pays-Bas", "Italie", "Liechtenstein", "Suisse"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Francisco Franco est-il/elle une figure dirigeante ?"
            Reponses := array{"Vatican", "Espagne", "Liechtenstein", "Saint-Marin"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Reine Victoria est-il/elle une figure dirigeante ?"
            Reponses := array{"Royaume-Uni", "Vatican", "Islande", "Italie"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Elizabeth II est-il/elle une figure dirigeante ?"
            Reponses := array{"Suisse", "Norvege", "Andorre", "Royaume-Uni"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Abraham Lincoln est-il/elle une figure dirigeante ?"
            Reponses := array{"Mexique", "Etats-Unis", "Canada", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays George Washington est-il/elle une figure dirigeante ?"
            Reponses := array{"Etats-Unis", "Canada", "Mexique", "Liban"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays John F. Kennedy est-il/elle une figure dirigeante ?"
            Reponses := array{"Mexique", "Etats-Unis", "Canada", "Israel"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Ronald Reagan est-il/elle une figure dirigeante ?"
            Reponses := array{"Canada", "Etats-Unis", "Mexique", "Dominique"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Helmut Kohl est-il/elle une figure dirigeante ?"
            Reponses := array{"Islande", "Irlande", "Allemagne", "Suisse"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Jacques Chirac est-il/elle une figure dirigeante ?"
            Reponses := array{"Saint-Marin", "Royaume-Uni", "Finlande", "France"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Francois Mitterrand est-il/elle une figure dirigeante ?"
            Reponses := array{"Allemagne", "Luxembourg", "Italie", "France"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Silvio Berlusconi est-il/elle une figure dirigeante ?"
            Reponses := array{"Pays-Bas", "Italie", "Norvege", "Vatican"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Tony Blair est-il/elle une figure dirigeante ?"
            Reponses := array{"Irlande", "Royaume-Uni", "Monaco", "Andorre"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Lech Walesa est-il/elle une figure dirigeante ?"
            Reponses := array{"Ukraine", "Serbie", "Tchequie", "Pologne"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Boris Eltsine est-il/elle une figure dirigeante ?"
            Reponses := array{"Lettonie", "Bielorussie", "Russie", "Macedoine du Nord"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Indira Gandhi est-il/elle une figure dirigeante ?"
            Reponses := array{"Birmanie", "Inde", "Thailande", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Golda Meir est-il/elle une figure dirigeante ?"
            Reponses := array{"Yemen", "Palestine", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Otto von Bismarck est-il/elle une figure dirigeante ?"
            Reponses := array{"Allemagne", "Danemark", "Saint-Marin", "Pays-Bas"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Guillaume II est-il/elle une figure dirigeante ?"
            Reponses := array{"France", "Vatican", "Royaume-Uni", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Frederic le Grand est-il/elle une figure dirigeante ?"
            Reponses := array{"Belgique", "Norvege", "France", "Allemagne"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Catherine la Grande est-il/elle une figure dirigeante ?"
            Reponses := array{"Croatie", "Russie", "Bielorussie", "Roumanie"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Pierre le Grand est-il/elle une figure dirigeante ?"
            Reponses := array{"Bielorussie", "Lituanie", "Grece", "Russie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Ivan le Terrible est-il/elle une figure dirigeante ?"
            Reponses := array{"Slovenie", "Hongrie", "Lettonie", "Russie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Henri VIII est-il/elle une figure dirigeante ?"
            Reponses := array{"Finlande", "Royaume-Uni", "Vatican", "Allemagne"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Elizabeth Ire est-il/elle une figure dirigeante ?"
            Reponses := array{"Norvege", "Royaume-Uni", "Italie", "Suede"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Guillaume le Conquerant est-il/elle une figure dirigeante ?"
            Reponses := array{"Autriche", "Pays-Bas", "Royaume-Uni", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Cromwell est-il/elle une figure dirigeante ?"
            Reponses := array{"Luxembourg", "Royaume-Uni", "Vatican", "Islande"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Garibaldi est-il/elle une figure dirigeante ?"
            Reponses := array{"Islande", "Italie", "Monaco", "Suisse"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Victor-Emmanuel II est-il/elle une figure dirigeante ?"
            Reponses := array{"Autriche", "Espagne", "Islande", "Italie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Charlemagne est-il/elle une figure dirigeante ?"
            Reponses := array{"Luxembourg", "Islande", "Monaco", "France"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Clovis est-il/elle une figure dirigeante ?"
            Reponses := array{"France", "Espagne", "Suede", "Vatican"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Robespierre est-il/elle une figure dirigeante ?"
            Reponses := array{"Liechtenstein", "France", "Espagne", "Belgique"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Toussaint Louverture est-il/elle une figure dirigeante ?"
            Reponses := array{"Costa Rica", "Nicaragua", "Haiti", "Barbade"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Pancho Villa est-il/elle une figure dirigeante ?"
            Reponses := array{"Mexique", "Canada", "Etats-Unis", "Bielorussie"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Benito Juarez est-il/elle une figure dirigeante ?"
            Reponses := array{"Salvador", "Canada", "Etats-Unis", "Mexique"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Dom Pedro II est-il/elle une figure dirigeante ?"
            Reponses := array{"Bresil", "Colombie", "Uruguay", "Argentine"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Getulio Vargas est-il/elle une figure dirigeante ?"
            Reponses := array{"Guyana", "Equateur", "Bolivie", "Bresil"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Juan Peron est-il/elle une figure dirigeante ?"
            Reponses := array{"Bresil", "Guyana", "Argentine", "Uruguay"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Augusto Pinochet est-il/elle une figure dirigeante ?"
            Reponses := array{"Uruguay", "Perou", "Chili", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Salvador Allende est-il/elle une figure dirigeante ?"
            Reponses := array{"Suriname", "Chili", "Bresil", "Argentine"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Kwame Nkrumah est-il/elle une figure dirigeante ?"
            Reponses := array{"Ghana", "Lesotho", "Maroc", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Jomo Kenyatta est-il/elle une figure dirigeante ?"
            Reponses := array{"Burundi", "RD Congo", "Kenya", "Afrique du Sud"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Haile Selassie est-il/elle une figure dirigeante ?"
            Reponses := array{"Maroc", "Ethiopie", "Cameroun", "Ouganda"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Gamal Abdel Nasser est-il/elle une figure dirigeante ?"
            Reponses := array{"Botswana", "Egypte", "Lesotho", "Gambie"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Anouar el-Sadate est-il/elle une figure dirigeante ?"
            Reponses := array{"Egypte", "RD Congo", "Djibouti", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Mouammar Kadhafi est-il/elle une figure dirigeante ?"
            Reponses := array{"Libye", "Senegal", "Maurice", "Ouganda"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Saddam Hussein est-il/elle une figure dirigeante ?"
            Reponses := array{"Irak", "Liban", "Emirats arabes unis", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Rouhollah Khomeini est-il/elle une figure dirigeante ?"
            Reponses := array{"Bahrein", "Armenie", "Koweit", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Soliman le Magnifique est-il/elle une figure dirigeante ?"
            Reponses := array{"Turquie", "Israel", "Arabie saoudite", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Hirohito est-il/elle une figure dirigeante ?"
            Reponses := array{"Pakistan", "Vietnam", "Japon", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Sun Yat-sen est-il/elle une figure dirigeante ?"
            Reponses := array{"Chine", "Bhoutan", "Inde", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Tchang Kai-chek est-il/elle une figure dirigeante ?"
            Reponses := array{"Inde", "Chine", "Sri Lanka", "Indonesie"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Ho Chi Minh est-il/elle une figure dirigeante ?"
            Reponses := array{"Vietnam", "Japon", "Bhoutan", "Philippines"}
            BonneReponse := 0
        question:
            Enonce := "De quel pays Pol Pot est-il/elle une figure dirigeante ?"
            Reponses := array{"Birmanie", "Sri Lanka", "Cambodge", "Inde"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Soekarno est-il/elle une figure dirigeante ?"
            Reponses := array{"Nepal", "Pakistan", "Philippines", "Indonesie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Jawaharlal Nehru est-il/elle une figure dirigeante ?"
            Reponses := array{"Bangladesh", "Birmanie", "Philippines", "Inde"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Ashoka est-il/elle une figure dirigeante ?"
            Reponses := array{"Nepal", "Inde", "Pakistan", "Chine"}
            BonneReponse := 1
        question:
            Enonce := "De quel pays Genghis Khan est-il/elle une figure dirigeante ?"
            Reponses := array{"Kirghizistan", "Ouzbekistan", "Turkmenistan", "Mongolie"}
            BonneReponse := 3
        question:
            Enonce := "De quel pays Eva Peron est-il/elle une figure dirigeante ?"
            Reponses := array{"Chili", "Suriname", "Argentine", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "De quel pays Tito est-il/elle une figure dirigeante ?"
            Reponses := array{"Slovenie", "Lettonie", "Ukraine", "Serbie"}
            BonneReponse := 3

MakeDirigeantsQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which country did Emmanuel Macron lead?"
            Reponses := array{"Belgium", "Malta", "France", "Sweden"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Donald Trump lead?"
            Reponses := array{"Canada", "United States", "Mexico", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Vladimir Poutine lead?"
            Reponses := array{"Bosnia and Herzegovina", "Cyprus", "Russia", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Xi Jinping lead?"
            Reponses := array{"China", "Bhutan", "South Korea", "East Timor"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Charles III lead?"
            Reponses := array{"United Kingdom", "Vatican City", "Monaco", "Switzerland"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Narendra Modi lead?"
            Reponses := array{"Vietnam", "Maldives", "India", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Justin Trudeau lead?"
            Reponses := array{"Mexico", "Canada", "United States", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Lula lead?"
            Reponses := array{"Ecuador", "Brazil", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Volodymyr Zelensky lead?"
            Reponses := array{"Serbia", "Ukraine", "Cyprus", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Recep Tayyip Erdogan lead?"
            Reponses := array{"Oman", "Israel", "Syria", "Turkey"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Benjamin Netanyahou lead?"
            Reponses := array{"Jordan", "Israel", "Oman", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Kim Jong-un lead?"
            Reponses := array{"Indonesia", "North Korea", "Bangladesh", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Javier Milei lead?"
            Reponses := array{"Venezuela", "Argentina", "Suriname", "Ecuador"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Giorgia Meloni lead?"
            Reponses := array{"Italy", "San Marino", "United Kingdom", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Pedro Sanchez lead?"
            Reponses := array{"Spain", "Netherlands", "Malta", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Olaf Scholz lead?"
            Reponses := array{"Germany", "Portugal", "Monaco", "Belgium"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Andres Manuel Lopez Obrador lead?"
            Reponses := array{"Saint Kitts and Nevis", "United States", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Cyril Ramaphosa lead?"
            Reponses := array{"Lesotho", "Nigeria", "South Africa", "South Sudan"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Anthony Albanese lead?"
            Reponses := array{"Australia", "Vanuatu", "Tonga", "Papua New Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Mohammed VI lead?"
            Reponses := array{"Egypt", "Tunisia", "DR Congo", "Morocco"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Abdelmadjid Tebboune lead?"
            Reponses := array{"Equatorial Guinea", "Niger", "Algeria", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Keir Starmer lead?"
            Reponses := array{"Ireland", "Spain", "Austria", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Felipe VI lead?"
            Reponses := array{"Spain", "Luxembourg", "Andorra", "United Kingdom"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Sergio Mattarella lead?"
            Reponses := array{"Sweden", "Belgium", "Italy", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Gabriel Boric lead?"
            Reponses := array{"Chile", "Argentina", "Bolivia", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Joe Biden lead?"
            Reponses := array{"United States", "Mexico", "Canada", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Fumio Kishida lead?"
            Reponses := array{"Laos", "Bhutan", "Vietnam", "Japan"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Angela Merkel lead?"
            Reponses := array{"Vatican City", "Germany", "Portugal", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Barack Obama lead?"
            Reponses := array{"United States", "Mexico", "Canada", "United Kingdom"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Nelson Mandela lead?"
            Reponses := array{"Gabon", "Angola", "Algeria", "South Africa"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Margaret Thatcher lead?"
            Reponses := array{"Monaco", "Portugal", "United Kingdom", "Netherlands"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Winston Churchill lead?"
            Reponses := array{"Denmark", "Belgium", "San Marino", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Charles de Gaulle lead?"
            Reponses := array{"Austria", "Netherlands", "Switzerland", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Napoleon Bonaparte lead?"
            Reponses := array{"San Marino", "Italy", "Vatican City", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Louis XIV lead?"
            Reponses := array{"France", "Portugal", "San Marino", "United Kingdom"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Jules Cesar lead?"
            Reponses := array{"Germany", "Italy", "Belgium", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Mao Zedong lead?"
            Reponses := array{"India", "Japan", "Myanmar", "China"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Mahatma Gandhi lead?"
            Reponses := array{"India", "Japan", "East Timor", "China"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Fidel Castro lead?"
            Reponses := array{"Costa Rica", "Saint Vincent", "Dominica", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Hugo Chavez lead?"
            Reponses := array{"Colombia", "Venezuela", "Guyana", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Che Guevara lead?"
            Reponses := array{"Argentina", "Uruguay", "Peru", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Simon Bolivar lead?"
            Reponses := array{"Venezuela", "Colombia", "Paraguay", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Mustafa Kemal Ataturk lead?"
            Reponses := array{"Saudi Arabia", "Turkey", "Qatar", "Azerbaijan"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Mikhail Gorbatchev lead?"
            Reponses := array{"Russia", "Estonia", "Serbia", "Montenegro"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Joseph Staline lead?"
            Reponses := array{"Montenegro", "Croatia", "Russia", "Lithuania"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Lenine lead?"
            Reponses := array{"Hungary", "Ukraine", "Cyprus", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Benito Mussolini lead?"
            Reponses := array{"Netherlands", "Italy", "Liechtenstein", "Switzerland"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Francisco Franco lead?"
            Reponses := array{"Vatican City", "Spain", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Reine Victoria lead?"
            Reponses := array{"United Kingdom", "Vatican City", "Iceland", "Italy"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Elizabeth II lead?"
            Reponses := array{"Switzerland", "Norway", "Andorra", "United Kingdom"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Abraham Lincoln lead?"
            Reponses := array{"Mexico", "United States", "Canada", "Djibouti"}
            BonneReponse := 1
        question:
            Enonce := "Which country did George Washington lead?"
            Reponses := array{"United States", "Canada", "Mexico", "Lebanon"}
            BonneReponse := 0
        question:
            Enonce := "Which country did John F. Kennedy lead?"
            Reponses := array{"Mexico", "United States", "Canada", "Israel"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Ronald Reagan lead?"
            Reponses := array{"Canada", "United States", "Mexico", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Helmut Kohl lead?"
            Reponses := array{"Iceland", "Ireland", "Germany", "Switzerland"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Jacques Chirac lead?"
            Reponses := array{"San Marino", "United Kingdom", "Finland", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Francois Mitterrand lead?"
            Reponses := array{"Germany", "Luxembourg", "Italy", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Silvio Berlusconi lead?"
            Reponses := array{"Netherlands", "Italy", "Norway", "Vatican City"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Tony Blair lead?"
            Reponses := array{"Ireland", "United Kingdom", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Lech Walesa lead?"
            Reponses := array{"Ukraine", "Serbia", "Czechia", "Poland"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Boris Eltsine lead?"
            Reponses := array{"Latvia", "Belarus", "Russia", "North Macedonia"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Indira Gandhi lead?"
            Reponses := array{"Myanmar", "India", "Thailand", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Golda Meir lead?"
            Reponses := array{"Yemen", "Palestine", "Israel", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Otto von Bismarck lead?"
            Reponses := array{"Germany", "Denmark", "San Marino", "Netherlands"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Guillaume II lead?"
            Reponses := array{"France", "Vatican City", "United Kingdom", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Frederic le Grand lead?"
            Reponses := array{"Belgium", "Norway", "France", "Germany"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Catherine la Grande lead?"
            Reponses := array{"Croatia", "Russia", "Belarus", "Romania"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Pierre le Grand lead?"
            Reponses := array{"Belarus", "Lithuania", "Greece", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Ivan le Terrible lead?"
            Reponses := array{"Slovenia", "Hungary", "Latvia", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Henri VIII lead?"
            Reponses := array{"Finland", "United Kingdom", "Vatican City", "Germany"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Elizabeth Ire lead?"
            Reponses := array{"Norway", "United Kingdom", "Italy", "Sweden"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Guillaume le Conquerant lead?"
            Reponses := array{"Austria", "Netherlands", "United Kingdom", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Cromwell lead?"
            Reponses := array{"Luxembourg", "United Kingdom", "Vatican City", "Iceland"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Garibaldi lead?"
            Reponses := array{"Iceland", "Italy", "Monaco", "Switzerland"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Victor-Emmanuel II lead?"
            Reponses := array{"Austria", "Spain", "Iceland", "Italy"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Charlemagne lead?"
            Reponses := array{"Luxembourg", "Iceland", "Monaco", "France"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Clovis lead?"
            Reponses := array{"France", "Spain", "Sweden", "Vatican City"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Robespierre lead?"
            Reponses := array{"Liechtenstein", "France", "Spain", "Belgium"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Toussaint Louverture lead?"
            Reponses := array{"Costa Rica", "Nicaragua", "Haiti", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Pancho Villa lead?"
            Reponses := array{"Mexico", "Canada", "United States", "Belarus"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Benito Juarez lead?"
            Reponses := array{"El Salvador", "Canada", "United States", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Dom Pedro II lead?"
            Reponses := array{"Brazil", "Colombia", "Uruguay", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Getulio Vargas lead?"
            Reponses := array{"Guyana", "Ecuador", "Bolivia", "Brazil"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Juan Peron lead?"
            Reponses := array{"Brazil", "Guyana", "Argentina", "Uruguay"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Augusto Pinochet lead?"
            Reponses := array{"Uruguay", "Peru", "Chile", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Salvador Allende lead?"
            Reponses := array{"Suriname", "Chile", "Brazil", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Kwame Nkrumah lead?"
            Reponses := array{"Ghana", "Lesotho", "Morocco", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Jomo Kenyatta lead?"
            Reponses := array{"Burundi", "DR Congo", "Kenya", "South Africa"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Haile Selassie lead?"
            Reponses := array{"Morocco", "Ethiopia", "Cameroon", "Uganda"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Gamal Abdel Nasser lead?"
            Reponses := array{"Botswana", "Egypt", "Lesotho", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Anouar el-Sadate lead?"
            Reponses := array{"Egypt", "DR Congo", "Djibouti", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Mouammar Kadhafi lead?"
            Reponses := array{"Libya", "Senegal", "Mauritius", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Saddam Hussein lead?"
            Reponses := array{"Iraq", "Lebanon", "United Arab Emirates", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Rouhollah Khomeini lead?"
            Reponses := array{"Bahrain", "Armenia", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Soliman le Magnifique lead?"
            Reponses := array{"Turkey", "Israel", "Saudi Arabia", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Hirohito lead?"
            Reponses := array{"Pakistan", "Vietnam", "Japan", "Philippines"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Sun Yat-sen lead?"
            Reponses := array{"China", "Bhutan", "India", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Tchang Kai-chek lead?"
            Reponses := array{"India", "China", "Sri Lanka", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Ho Chi Minh lead?"
            Reponses := array{"Vietnam", "Japan", "Bhutan", "Philippines"}
            BonneReponse := 0
        question:
            Enonce := "Which country did Pol Pot lead?"
            Reponses := array{"Myanmar", "Sri Lanka", "Cambodia", "India"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Soekarno lead?"
            Reponses := array{"Nepal", "Pakistan", "Philippines", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Jawaharlal Nehru lead?"
            Reponses := array{"Bangladesh", "Myanmar", "Philippines", "India"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Ashoka lead?"
            Reponses := array{"Nepal", "India", "Pakistan", "China"}
            BonneReponse := 1
        question:
            Enonce := "Which country did Genghis Khan lead?"
            Reponses := array{"Kyrgyzstan", "Uzbekistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "Which country did Eva Peron lead?"
            Reponses := array{"Chile", "Suriname", "Argentina", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Which country did Tito lead?"
            Reponses := array{"Slovenia", "Latvia", "Ukraine", "Serbia"}
            BonneReponse := 3

MakeDirigeantsQuestionsES() : []question =
    array:
        question:
            Enonce := "De que pais fue Emmanuel Macron dirigente?"
            Reponses := array{"Belgica", "Malta", "Francia", "Suecia"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Donald Trump dirigente?"
            Reponses := array{"Canada", "Estados Unidos", "Mexico", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Vladimir Poutine dirigente?"
            Reponses := array{"Bosnia y Herzegovina", "Chipre", "Rusia", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Xi Jinping dirigente?"
            Reponses := array{"China", "Butan", "Corea del Sur", "Timor Oriental"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Charles III dirigente?"
            Reponses := array{"Reino Unido", "Ciudad del Vaticano", "Monaco", "Suiza"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Narendra Modi dirigente?"
            Reponses := array{"Vietnam", "Maldivas", "India", "Malasia"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Justin Trudeau dirigente?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Lula dirigente?"
            Reponses := array{"Ecuador", "Brasil", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Volodymyr Zelensky dirigente?"
            Reponses := array{"Serbia", "Ucrania", "Chipre", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Recep Tayyip Erdogan dirigente?"
            Reponses := array{"Oman", "Israel", "Siria", "Turquia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Benjamin Netanyahou dirigente?"
            Reponses := array{"Jordania", "Israel", "Oman", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Kim Jong-un dirigente?"
            Reponses := array{"Indonesia", "Corea del Norte", "Banglades", "Butan"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Javier Milei dirigente?"
            Reponses := array{"Venezuela", "Argentina", "Surinam", "Ecuador"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Giorgia Meloni dirigente?"
            Reponses := array{"Italia", "San Marino", "Reino Unido", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Pedro Sanchez dirigente?"
            Reponses := array{"Espana", "Paises Bajos", "Malta", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Olaf Scholz dirigente?"
            Reponses := array{"Alemania", "Portugal", "Monaco", "Belgica"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Andres Manuel Lopez Obrador dirigente?"
            Reponses := array{"San Cristobal y Nieves", "Estados Unidos", "Canada", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Cyril Ramaphosa dirigente?"
            Reponses := array{"Lesoto", "Nigeria", "Sudafrica", "Sudan del Sur"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Anthony Albanese dirigente?"
            Reponses := array{"Australia", "Vanuatu", "Tonga", "Papua Nueva Guinea"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Mohammed VI dirigente?"
            Reponses := array{"Egipto", "Tunez", "RD del Congo", "Marruecos"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Abdelmadjid Tebboune dirigente?"
            Reponses := array{"Guinea Ecuatorial", "Niger", "Argelia", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Keir Starmer dirigente?"
            Reponses := array{"Irlanda", "Espana", "Austria", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Felipe VI dirigente?"
            Reponses := array{"Espana", "Luxemburgo", "Andorra", "Reino Unido"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Sergio Mattarella dirigente?"
            Reponses := array{"Suecia", "Belgica", "Italia", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Gabriel Boric dirigente?"
            Reponses := array{"Chile", "Argentina", "Bolivia", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Joe Biden dirigente?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Fumio Kishida dirigente?"
            Reponses := array{"Laos", "Butan", "Vietnam", "Japon"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Angela Merkel dirigente?"
            Reponses := array{"Ciudad del Vaticano", "Alemania", "Portugal", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Barack Obama dirigente?"
            Reponses := array{"Estados Unidos", "Mexico", "Canada", "Reino Unido"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Nelson Mandela dirigente?"
            Reponses := array{"Gabon", "Angola", "Argelia", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Margaret Thatcher dirigente?"
            Reponses := array{"Monaco", "Portugal", "Reino Unido", "Paises Bajos"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Winston Churchill dirigente?"
            Reponses := array{"Dinamarca", "Belgica", "San Marino", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Charles de Gaulle dirigente?"
            Reponses := array{"Austria", "Paises Bajos", "Suiza", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Napoleon Bonaparte dirigente?"
            Reponses := array{"San Marino", "Italia", "Ciudad del Vaticano", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Louis XIV dirigente?"
            Reponses := array{"Francia", "Portugal", "San Marino", "Reino Unido"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Jules Cesar dirigente?"
            Reponses := array{"Alemania", "Italia", "Belgica", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Mao Zedong dirigente?"
            Reponses := array{"India", "Japon", "Birmania", "China"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Mahatma Gandhi dirigente?"
            Reponses := array{"India", "Japon", "Timor Oriental", "China"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Fidel Castro dirigente?"
            Reponses := array{"Costa Rica", "San Vicente", "Dominica", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Hugo Chavez dirigente?"
            Reponses := array{"Colombia", "Venezuela", "Guyana", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Che Guevara dirigente?"
            Reponses := array{"Argentina", "Uruguay", "Peru", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Simon Bolivar dirigente?"
            Reponses := array{"Venezuela", "Colombia", "Paraguay", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Mustafa Kemal Ataturk dirigente?"
            Reponses := array{"Arabia Saudita", "Turquia", "Catar", "Azerbaiyan"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Mikhail Gorbatchev dirigente?"
            Reponses := array{"Rusia", "Estonia", "Serbia", "Montenegro"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Joseph Staline dirigente?"
            Reponses := array{"Montenegro", "Croacia", "Rusia", "Lituania"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Lenine dirigente?"
            Reponses := array{"Hungria", "Ucrania", "Chipre", "Rusia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Benito Mussolini dirigente?"
            Reponses := array{"Paises Bajos", "Italia", "Liechtenstein", "Suiza"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Francisco Franco dirigente?"
            Reponses := array{"Ciudad del Vaticano", "Espana", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Reine Victoria dirigente?"
            Reponses := array{"Reino Unido", "Ciudad del Vaticano", "Islandia", "Italia"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Elizabeth II dirigente?"
            Reponses := array{"Suiza", "Noruega", "Andorra", "Reino Unido"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Abraham Lincoln dirigente?"
            Reponses := array{"Mexico", "Estados Unidos", "Canada", "Yibuti"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue George Washington dirigente?"
            Reponses := array{"Estados Unidos", "Canada", "Mexico", "Libano"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue John F. Kennedy dirigente?"
            Reponses := array{"Mexico", "Estados Unidos", "Canada", "Israel"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Ronald Reagan dirigente?"
            Reponses := array{"Canada", "Estados Unidos", "Mexico", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Helmut Kohl dirigente?"
            Reponses := array{"Islandia", "Irlanda", "Alemania", "Suiza"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Jacques Chirac dirigente?"
            Reponses := array{"San Marino", "Reino Unido", "Finlandia", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Francois Mitterrand dirigente?"
            Reponses := array{"Alemania", "Luxemburgo", "Italia", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Silvio Berlusconi dirigente?"
            Reponses := array{"Paises Bajos", "Italia", "Noruega", "Ciudad del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Tony Blair dirigente?"
            Reponses := array{"Irlanda", "Reino Unido", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Lech Walesa dirigente?"
            Reponses := array{"Ucrania", "Serbia", "Chequia", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Boris Eltsine dirigente?"
            Reponses := array{"Letonia", "Bielorrusia", "Rusia", "Macedonia del Norte"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Indira Gandhi dirigente?"
            Reponses := array{"Birmania", "India", "Tailandia", "China"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Golda Meir dirigente?"
            Reponses := array{"Yemen", "Palestina", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Otto von Bismarck dirigente?"
            Reponses := array{"Alemania", "Dinamarca", "San Marino", "Paises Bajos"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Guillaume II dirigente?"
            Reponses := array{"Francia", "Ciudad del Vaticano", "Reino Unido", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Frederic le Grand dirigente?"
            Reponses := array{"Belgica", "Noruega", "Francia", "Alemania"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Catherine la Grande dirigente?"
            Reponses := array{"Croacia", "Rusia", "Bielorrusia", "Rumania"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Pierre le Grand dirigente?"
            Reponses := array{"Bielorrusia", "Lituania", "Grecia", "Rusia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Ivan le Terrible dirigente?"
            Reponses := array{"Eslovenia", "Hungria", "Letonia", "Rusia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Henri VIII dirigente?"
            Reponses := array{"Finlandia", "Reino Unido", "Ciudad del Vaticano", "Alemania"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Elizabeth Ire dirigente?"
            Reponses := array{"Noruega", "Reino Unido", "Italia", "Suecia"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Guillaume le Conquerant dirigente?"
            Reponses := array{"Austria", "Paises Bajos", "Reino Unido", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Cromwell dirigente?"
            Reponses := array{"Luxemburgo", "Reino Unido", "Ciudad del Vaticano", "Islandia"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Garibaldi dirigente?"
            Reponses := array{"Islandia", "Italia", "Monaco", "Suiza"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Victor-Emmanuel II dirigente?"
            Reponses := array{"Austria", "Espana", "Islandia", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Charlemagne dirigente?"
            Reponses := array{"Luxemburgo", "Islandia", "Monaco", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Clovis dirigente?"
            Reponses := array{"Francia", "Espana", "Suecia", "Ciudad del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Robespierre dirigente?"
            Reponses := array{"Liechtenstein", "Francia", "Espana", "Belgica"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Toussaint Louverture dirigente?"
            Reponses := array{"Costa Rica", "Nicaragua", "Haiti", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Pancho Villa dirigente?"
            Reponses := array{"Mexico", "Canada", "Estados Unidos", "Bielorrusia"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Benito Juarez dirigente?"
            Reponses := array{"El Salvador", "Canada", "Estados Unidos", "Mexico"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Dom Pedro II dirigente?"
            Reponses := array{"Brasil", "Colombia", "Uruguay", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Getulio Vargas dirigente?"
            Reponses := array{"Guyana", "Ecuador", "Bolivia", "Brasil"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Juan Peron dirigente?"
            Reponses := array{"Brasil", "Guyana", "Argentina", "Uruguay"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Augusto Pinochet dirigente?"
            Reponses := array{"Uruguay", "Peru", "Chile", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Salvador Allende dirigente?"
            Reponses := array{"Surinam", "Chile", "Brasil", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Kwame Nkrumah dirigente?"
            Reponses := array{"Ghana", "Lesoto", "Marruecos", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Jomo Kenyatta dirigente?"
            Reponses := array{"Burundi", "RD del Congo", "Kenia", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Haile Selassie dirigente?"
            Reponses := array{"Marruecos", "Etiopia", "Camerun", "Uganda"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Gamal Abdel Nasser dirigente?"
            Reponses := array{"Botsuana", "Egipto", "Lesoto", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Anouar el-Sadate dirigente?"
            Reponses := array{"Egipto", "RD del Congo", "Yibuti", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Mouammar Kadhafi dirigente?"
            Reponses := array{"Libia", "Senegal", "Mauricio", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Saddam Hussein dirigente?"
            Reponses := array{"Irak", "Libano", "Emiratos Arabes Unidos", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Rouhollah Khomeini dirigente?"
            Reponses := array{"Barein", "Armenia", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Soliman le Magnifique dirigente?"
            Reponses := array{"Turquia", "Israel", "Arabia Saudita", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Hirohito dirigente?"
            Reponses := array{"Pakistan", "Vietnam", "Japon", "Filipinas"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Sun Yat-sen dirigente?"
            Reponses := array{"China", "Butan", "India", "Japon"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Tchang Kai-chek dirigente?"
            Reponses := array{"India", "China", "Sri Lanka", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Ho Chi Minh dirigente?"
            Reponses := array{"Vietnam", "Japon", "Butan", "Filipinas"}
            BonneReponse := 0
        question:
            Enonce := "De que pais fue Pol Pot dirigente?"
            Reponses := array{"Birmania", "Sri Lanka", "Camboya", "India"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Soekarno dirigente?"
            Reponses := array{"Nepal", "Pakistan", "Filipinas", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Jawaharlal Nehru dirigente?"
            Reponses := array{"Banglades", "Birmania", "Filipinas", "India"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Ashoka dirigente?"
            Reponses := array{"Nepal", "India", "Pakistan", "China"}
            BonneReponse := 1
        question:
            Enonce := "De que pais fue Genghis Khan dirigente?"
            Reponses := array{"Kirguistan", "Uzbekistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "De que pais fue Eva Peron dirigente?"
            Reponses := array{"Chile", "Surinam", "Argentina", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "De que pais fue Tito dirigente?"
            Reponses := array{"Eslovenia", "Letonia", "Ucrania", "Serbia"}
            BonneReponse := 3

MakeDirigeantsQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches Land fuehrte Emmanuel Macron?"
            Reponses := array{"Belgien", "Malta", "Frankreich", "Schweden"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Donald Trump?"
            Reponses := array{"Kanada", "Vereinigte Staaten", "Mexiko", "Argentinien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Vladimir Poutine?"
            Reponses := array{"Bosnien und Herzegowina", "Zypern", "Russland", "Bulgarien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Xi Jinping?"
            Reponses := array{"China", "Bhutan", "Suedkorea", "Osttimor"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Charles III?"
            Reponses := array{"Vereinigtes Koenigreich", "Vatikanstadt", "Monaco", "Schweiz"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Narendra Modi?"
            Reponses := array{"Vietnam", "Malediven", "Indien", "Malaysia"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Justin Trudeau?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Lula?"
            Reponses := array{"Ecuador", "Brasilien", "Bolivien", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Volodymyr Zelensky?"
            Reponses := array{"Serbien", "Ukraine", "Zypern", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Recep Tayyip Erdogan?"
            Reponses := array{"Oman", "Israel", "Syrien", "Tuerkei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Benjamin Netanyahou?"
            Reponses := array{"Jordanien", "Israel", "Oman", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Kim Jong-un?"
            Reponses := array{"Indonesien", "Nordkorea", "Bangladesch", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Javier Milei?"
            Reponses := array{"Venezuela", "Argentinien", "Suriname", "Ecuador"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Giorgia Meloni?"
            Reponses := array{"Italien", "San Marino", "Vereinigtes Koenigreich", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Pedro Sanchez?"
            Reponses := array{"Spanien", "Niederlande", "Malta", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Olaf Scholz?"
            Reponses := array{"Deutschland", "Portugal", "Monaco", "Belgien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Andres Manuel Lopez Obrador?"
            Reponses := array{"St. Kitts und Nevis", "Vereinigte Staaten", "Kanada", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Cyril Ramaphosa?"
            Reponses := array{"Lesotho", "Nigeria", "Suedafrika", "Suedsudan"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Anthony Albanese?"
            Reponses := array{"Australien", "Vanuatu", "Tonga", "Papua-Neuguinea"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Mohammed VI?"
            Reponses := array{"Aegypten", "Tunesien", "DR Kongo", "Marokko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Abdelmadjid Tebboune?"
            Reponses := array{"Aequatorialguinea", "Niger", "Algerien", "Kongo"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Keir Starmer?"
            Reponses := array{"Irland", "Spanien", "Oesterreich", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Felipe VI?"
            Reponses := array{"Spanien", "Luxemburg", "Andorra", "Vereinigtes Koenigreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Sergio Mattarella?"
            Reponses := array{"Schweden", "Belgien", "Italien", "Portugal"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Gabriel Boric?"
            Reponses := array{"Chile", "Argentinien", "Bolivien", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Joe Biden?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Fumio Kishida?"
            Reponses := array{"Laos", "Bhutan", "Vietnam", "Japan"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Angela Merkel?"
            Reponses := array{"Vatikanstadt", "Deutschland", "Portugal", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Barack Obama?"
            Reponses := array{"Vereinigte Staaten", "Mexiko", "Kanada", "Vereinigtes Koenigreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Nelson Mandela?"
            Reponses := array{"Gabun", "Angola", "Algerien", "Suedafrika"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Margaret Thatcher?"
            Reponses := array{"Monaco", "Portugal", "Vereinigtes Koenigreich", "Niederlande"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Winston Churchill?"
            Reponses := array{"Daenemark", "Belgien", "San Marino", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Charles de Gaulle?"
            Reponses := array{"Oesterreich", "Niederlande", "Schweiz", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Napoleon Bonaparte?"
            Reponses := array{"San Marino", "Italien", "Vatikanstadt", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Louis XIV?"
            Reponses := array{"Frankreich", "Portugal", "San Marino", "Vereinigtes Koenigreich"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Jules Cesar?"
            Reponses := array{"Deutschland", "Italien", "Belgien", "Oesterreich"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Mao Zedong?"
            Reponses := array{"Indien", "Japan", "Myanmar", "China"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Mahatma Gandhi?"
            Reponses := array{"Indien", "Japan", "Osttimor", "China"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Fidel Castro?"
            Reponses := array{"Costa Rica", "St. Vincent", "Dominica", "Kuba"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Hugo Chavez?"
            Reponses := array{"Kolumbien", "Venezuela", "Guyana", "Bolivien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Che Guevara?"
            Reponses := array{"Argentinien", "Uruguay", "Peru", "Bolivien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Simon Bolivar?"
            Reponses := array{"Venezuela", "Kolumbien", "Paraguay", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Mustafa Kemal Ataturk?"
            Reponses := array{"Saudi-Arabien", "Tuerkei", "Katar", "Aserbaidschan"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Mikhail Gorbatchev?"
            Reponses := array{"Russland", "Estland", "Serbien", "Montenegro"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Joseph Staline?"
            Reponses := array{"Montenegro", "Kroatien", "Russland", "Litauen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Lenine?"
            Reponses := array{"Ungarn", "Ukraine", "Zypern", "Russland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Benito Mussolini?"
            Reponses := array{"Niederlande", "Italien", "Liechtenstein", "Schweiz"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Francisco Franco?"
            Reponses := array{"Vatikanstadt", "Spanien", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Reine Victoria?"
            Reponses := array{"Vereinigtes Koenigreich", "Vatikanstadt", "Island", "Italien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Elizabeth II?"
            Reponses := array{"Schweiz", "Norwegen", "Andorra", "Vereinigtes Koenigreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Abraham Lincoln?"
            Reponses := array{"Mexiko", "Vereinigte Staaten", "Kanada", "Dschibuti"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte George Washington?"
            Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Libanon"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte John F. Kennedy?"
            Reponses := array{"Mexiko", "Vereinigte Staaten", "Kanada", "Israel"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Ronald Reagan?"
            Reponses := array{"Kanada", "Vereinigte Staaten", "Mexiko", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Helmut Kohl?"
            Reponses := array{"Island", "Irland", "Deutschland", "Schweiz"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Jacques Chirac?"
            Reponses := array{"San Marino", "Vereinigtes Koenigreich", "Finnland", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Francois Mitterrand?"
            Reponses := array{"Deutschland", "Luxemburg", "Italien", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Silvio Berlusconi?"
            Reponses := array{"Niederlande", "Italien", "Norwegen", "Vatikanstadt"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Tony Blair?"
            Reponses := array{"Irland", "Vereinigtes Koenigreich", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Lech Walesa?"
            Reponses := array{"Ukraine", "Serbien", "Tschechien", "Polen"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Boris Eltsine?"
            Reponses := array{"Lettland", "Belarus", "Russland", "Nordmazedonien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Indira Gandhi?"
            Reponses := array{"Myanmar", "Indien", "Thailand", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Golda Meir?"
            Reponses := array{"Jemen", "Palaestina", "Israel", "Irak"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Otto von Bismarck?"
            Reponses := array{"Deutschland", "Daenemark", "San Marino", "Niederlande"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Guillaume II?"
            Reponses := array{"Frankreich", "Vatikanstadt", "Vereinigtes Koenigreich", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Frederic le Grand?"
            Reponses := array{"Belgien", "Norwegen", "Frankreich", "Deutschland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Catherine la Grande?"
            Reponses := array{"Kroatien", "Russland", "Belarus", "Rumaenien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Pierre le Grand?"
            Reponses := array{"Belarus", "Litauen", "Griechenland", "Russland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Ivan le Terrible?"
            Reponses := array{"Slowenien", "Ungarn", "Lettland", "Russland"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Henri VIII?"
            Reponses := array{"Finnland", "Vereinigtes Koenigreich", "Vatikanstadt", "Deutschland"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Elizabeth Ire?"
            Reponses := array{"Norwegen", "Vereinigtes Koenigreich", "Italien", "Schweden"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Guillaume le Conquerant?"
            Reponses := array{"Oesterreich", "Niederlande", "Vereinigtes Koenigreich", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Cromwell?"
            Reponses := array{"Luxemburg", "Vereinigtes Koenigreich", "Vatikanstadt", "Island"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Garibaldi?"
            Reponses := array{"Island", "Italien", "Monaco", "Schweiz"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Victor-Emmanuel II?"
            Reponses := array{"Oesterreich", "Spanien", "Island", "Italien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Charlemagne?"
            Reponses := array{"Luxemburg", "Island", "Monaco", "Frankreich"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Clovis?"
            Reponses := array{"Frankreich", "Spanien", "Schweden", "Vatikanstadt"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Robespierre?"
            Reponses := array{"Liechtenstein", "Frankreich", "Spanien", "Belgien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Toussaint Louverture?"
            Reponses := array{"Costa Rica", "Nicaragua", "Haiti", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Pancho Villa?"
            Reponses := array{"Mexiko", "Kanada", "Vereinigte Staaten", "Belarus"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Benito Juarez?"
            Reponses := array{"El Salvador", "Kanada", "Vereinigte Staaten", "Mexiko"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Dom Pedro II?"
            Reponses := array{"Brasilien", "Kolumbien", "Uruguay", "Argentinien"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Getulio Vargas?"
            Reponses := array{"Guyana", "Ecuador", "Bolivien", "Brasilien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Juan Peron?"
            Reponses := array{"Brasilien", "Guyana", "Argentinien", "Uruguay"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Augusto Pinochet?"
            Reponses := array{"Uruguay", "Peru", "Chile", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Salvador Allende?"
            Reponses := array{"Suriname", "Chile", "Brasilien", "Argentinien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Kwame Nkrumah?"
            Reponses := array{"Ghana", "Lesotho", "Marokko", "Gabun"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Jomo Kenyatta?"
            Reponses := array{"Burundi", "DR Kongo", "Kenia", "Suedafrika"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Haile Selassie?"
            Reponses := array{"Marokko", "Aethiopien", "Kamerun", "Uganda"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Gamal Abdel Nasser?"
            Reponses := array{"Botswana", "Aegypten", "Lesotho", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Anouar el-Sadate?"
            Reponses := array{"Aegypten", "DR Kongo", "Dschibuti", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Mouammar Kadhafi?"
            Reponses := array{"Libyen", "Senegal", "Mauritius", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Saddam Hussein?"
            Reponses := array{"Irak", "Libanon", "Vereinigte Arabische Emirate", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Rouhollah Khomeini?"
            Reponses := array{"Bahrain", "Armenien", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Soliman le Magnifique?"
            Reponses := array{"Tuerkei", "Israel", "Saudi-Arabien", "Jemen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Hirohito?"
            Reponses := array{"Pakistan", "Vietnam", "Japan", "Philippinen"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Sun Yat-sen?"
            Reponses := array{"China", "Bhutan", "Indien", "Japan"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Tchang Kai-chek?"
            Reponses := array{"Indien", "China", "Sri Lanka", "Indonesien"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Ho Chi Minh?"
            Reponses := array{"Vietnam", "Japan", "Bhutan", "Philippinen"}
            BonneReponse := 0
        question:
            Enonce := "Welches Land fuehrte Pol Pot?"
            Reponses := array{"Myanmar", "Sri Lanka", "Kambodscha", "Indien"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Soekarno?"
            Reponses := array{"Nepal", "Pakistan", "Philippinen", "Indonesien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Jawaharlal Nehru?"
            Reponses := array{"Bangladesch", "Myanmar", "Philippinen", "Indien"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Ashoka?"
            Reponses := array{"Nepal", "Indien", "Pakistan", "China"}
            BonneReponse := 1
        question:
            Enonce := "Welches Land fuehrte Genghis Khan?"
            Reponses := array{"Kirgisistan", "Usbekistan", "Turkmenistan", "Mongolei"}
            BonneReponse := 3
        question:
            Enonce := "Welches Land fuehrte Eva Peron?"
            Reponses := array{"Chile", "Suriname", "Argentinien", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Welches Land fuehrte Tito?"
            Reponses := array{"Slowenien", "Lettland", "Ukraine", "Serbien"}
            BonneReponse := 3

MakeDirigeantsQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale paese ha guidato Emmanuel Macron?"
            Reponses := array{"Belgio", "Malta", "Francia", "Svezia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Donald Trump?"
            Reponses := array{"Canada", "Stati Uniti", "Messico", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Vladimir Poutine?"
            Reponses := array{"Bosnia ed Erzegovina", "Cipro", "Russia", "Bulgaria"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Xi Jinping?"
            Reponses := array{"Cina", "Bhutan", "Corea del Sud", "Timor Est"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Charles III?"
            Reponses := array{"Regno Unito", "Citta del Vaticano", "Monaco", "Svizzera"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Narendra Modi?"
            Reponses := array{"Vietnam", "Maldive", "India", "Malesia"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Justin Trudeau?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Pakistan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Lula?"
            Reponses := array{"Ecuador", "Brasile", "Bolivia", "Uruguay"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Volodymyr Zelensky?"
            Reponses := array{"Serbia", "Ucraina", "Cipro", "Montenegro"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Recep Tayyip Erdogan?"
            Reponses := array{"Oman", "Israele", "Siria", "Turchia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Benjamin Netanyahou?"
            Reponses := array{"Giordania", "Israele", "Oman", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Kim Jong-un?"
            Reponses := array{"Indonesia", "Corea del Nord", "Bangladesh", "Bhutan"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Javier Milei?"
            Reponses := array{"Venezuela", "Argentina", "Suriname", "Ecuador"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Giorgia Meloni?"
            Reponses := array{"Italia", "San Marino", "Regno Unito", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Pedro Sanchez?"
            Reponses := array{"Spagna", "Paesi Bassi", "Malta", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Olaf Scholz?"
            Reponses := array{"Germania", "Portogallo", "Monaco", "Belgio"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Andres Manuel Lopez Obrador?"
            Reponses := array{"Saint Kitts e Nevis", "Stati Uniti", "Canada", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Cyril Ramaphosa?"
            Reponses := array{"Lesotho", "Nigeria", "Sudafrica", "Sudan del Sud"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Anthony Albanese?"
            Reponses := array{"Australia", "Vanuatu", "Tonga", "Papua Nuova Guinea"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Mohammed VI?"
            Reponses := array{"Egitto", "Tunisia", "RD Congo", "Marocco"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Abdelmadjid Tebboune?"
            Reponses := array{"Guinea Equatoriale", "Niger", "Algeria", "Congo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Keir Starmer?"
            Reponses := array{"Irlanda", "Spagna", "Austria", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Felipe VI?"
            Reponses := array{"Spagna", "Lussemburgo", "Andorra", "Regno Unito"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Sergio Mattarella?"
            Reponses := array{"Svezia", "Belgio", "Italia", "Portogallo"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Gabriel Boric?"
            Reponses := array{"Cile", "Argentina", "Bolivia", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Joe Biden?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Monaco"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Fumio Kishida?"
            Reponses := array{"Laos", "Bhutan", "Vietnam", "Giappone"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Angela Merkel?"
            Reponses := array{"Citta del Vaticano", "Germania", "Portogallo", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Barack Obama?"
            Reponses := array{"Stati Uniti", "Messico", "Canada", "Regno Unito"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Nelson Mandela?"
            Reponses := array{"Gabon", "Angola", "Algeria", "Sudafrica"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Margaret Thatcher?"
            Reponses := array{"Monaco", "Portogallo", "Regno Unito", "Paesi Bassi"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Winston Churchill?"
            Reponses := array{"Danimarca", "Belgio", "San Marino", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Charles de Gaulle?"
            Reponses := array{"Austria", "Paesi Bassi", "Svizzera", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Napoleon Bonaparte?"
            Reponses := array{"San Marino", "Italia", "Citta del Vaticano", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Louis XIV?"
            Reponses := array{"Francia", "Portogallo", "San Marino", "Regno Unito"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Jules Cesar?"
            Reponses := array{"Germania", "Italia", "Belgio", "Austria"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Mao Zedong?"
            Reponses := array{"India", "Giappone", "Birmania", "Cina"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Mahatma Gandhi?"
            Reponses := array{"India", "Giappone", "Timor Est", "Cina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Fidel Castro?"
            Reponses := array{"Costa Rica", "Saint Vincent", "Dominica", "Cuba"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Hugo Chavez?"
            Reponses := array{"Colombia", "Venezuela", "Guyana", "Bolivia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Che Guevara?"
            Reponses := array{"Argentina", "Uruguay", "Peru", "Bolivia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Simon Bolivar?"
            Reponses := array{"Venezuela", "Colombia", "Paraguay", "Peru"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Mustafa Kemal Ataturk?"
            Reponses := array{"Arabia Saudita", "Turchia", "Qatar", "Azerbaigian"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Mikhail Gorbatchev?"
            Reponses := array{"Russia", "Estonia", "Serbia", "Montenegro"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Joseph Staline?"
            Reponses := array{"Montenegro", "Croazia", "Russia", "Lituania"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Lenine?"
            Reponses := array{"Ungheria", "Ucraina", "Cipro", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Benito Mussolini?"
            Reponses := array{"Paesi Bassi", "Italia", "Liechtenstein", "Svizzera"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Francisco Franco?"
            Reponses := array{"Citta del Vaticano", "Spagna", "Liechtenstein", "San Marino"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Reine Victoria?"
            Reponses := array{"Regno Unito", "Citta del Vaticano", "Islanda", "Italia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Elizabeth II?"
            Reponses := array{"Svizzera", "Norvegia", "Andorra", "Regno Unito"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Abraham Lincoln?"
            Reponses := array{"Messico", "Stati Uniti", "Canada", "Gibuti"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato George Washington?"
            Reponses := array{"Stati Uniti", "Canada", "Messico", "Libano"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato John F. Kennedy?"
            Reponses := array{"Messico", "Stati Uniti", "Canada", "Israele"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Ronald Reagan?"
            Reponses := array{"Canada", "Stati Uniti", "Messico", "Dominica"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Helmut Kohl?"
            Reponses := array{"Islanda", "Irlanda", "Germania", "Svizzera"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Jacques Chirac?"
            Reponses := array{"San Marino", "Regno Unito", "Finlandia", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Francois Mitterrand?"
            Reponses := array{"Germania", "Lussemburgo", "Italia", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Silvio Berlusconi?"
            Reponses := array{"Paesi Bassi", "Italia", "Norvegia", "Citta del Vaticano"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Tony Blair?"
            Reponses := array{"Irlanda", "Regno Unito", "Monaco", "Andorra"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Lech Walesa?"
            Reponses := array{"Ucraina", "Serbia", "Cechia", "Polonia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Boris Eltsine?"
            Reponses := array{"Lettonia", "Bielorussia", "Russia", "Macedonia del Nord"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Indira Gandhi?"
            Reponses := array{"Birmania", "India", "Thailandia", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Golda Meir?"
            Reponses := array{"Yemen", "Palestina", "Israele", "Iraq"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Otto von Bismarck?"
            Reponses := array{"Germania", "Danimarca", "San Marino", "Paesi Bassi"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Guillaume II?"
            Reponses := array{"Francia", "Citta del Vaticano", "Regno Unito", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Frederic le Grand?"
            Reponses := array{"Belgio", "Norvegia", "Francia", "Germania"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Catherine la Grande?"
            Reponses := array{"Croazia", "Russia", "Bielorussia", "Romania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Pierre le Grand?"
            Reponses := array{"Bielorussia", "Lituania", "Grecia", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Ivan le Terrible?"
            Reponses := array{"Slovenia", "Ungheria", "Lettonia", "Russia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Henri VIII?"
            Reponses := array{"Finlandia", "Regno Unito", "Citta del Vaticano", "Germania"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Elizabeth Ire?"
            Reponses := array{"Norvegia", "Regno Unito", "Italia", "Svezia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Guillaume le Conquerant?"
            Reponses := array{"Austria", "Paesi Bassi", "Regno Unito", "Liechtenstein"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Cromwell?"
            Reponses := array{"Lussemburgo", "Regno Unito", "Citta del Vaticano", "Islanda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Garibaldi?"
            Reponses := array{"Islanda", "Italia", "Monaco", "Svizzera"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Victor-Emmanuel II?"
            Reponses := array{"Austria", "Spagna", "Islanda", "Italia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Charlemagne?"
            Reponses := array{"Lussemburgo", "Islanda", "Monaco", "Francia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Clovis?"
            Reponses := array{"Francia", "Spagna", "Svezia", "Citta del Vaticano"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Robespierre?"
            Reponses := array{"Liechtenstein", "Francia", "Spagna", "Belgio"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Toussaint Louverture?"
            Reponses := array{"Costa Rica", "Nicaragua", "Haiti", "Barbados"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Pancho Villa?"
            Reponses := array{"Messico", "Canada", "Stati Uniti", "Bielorussia"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Benito Juarez?"
            Reponses := array{"El Salvador", "Canada", "Stati Uniti", "Messico"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Dom Pedro II?"
            Reponses := array{"Brasile", "Colombia", "Uruguay", "Argentina"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Getulio Vargas?"
            Reponses := array{"Guyana", "Ecuador", "Bolivia", "Brasile"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Juan Peron?"
            Reponses := array{"Brasile", "Guyana", "Argentina", "Uruguay"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Augusto Pinochet?"
            Reponses := array{"Uruguay", "Peru", "Cile", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Salvador Allende?"
            Reponses := array{"Suriname", "Cile", "Brasile", "Argentina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Kwame Nkrumah?"
            Reponses := array{"Ghana", "Lesotho", "Marocco", "Gabon"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Jomo Kenyatta?"
            Reponses := array{"Burundi", "RD Congo", "Kenya", "Sudafrica"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Haile Selassie?"
            Reponses := array{"Marocco", "Etiopia", "Camerun", "Uganda"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Gamal Abdel Nasser?"
            Reponses := array{"Botswana", "Egitto", "Lesotho", "Gambia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Anouar el-Sadate?"
            Reponses := array{"Egitto", "RD Congo", "Gibuti", "Nigeria"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Mouammar Kadhafi?"
            Reponses := array{"Libia", "Senegal", "Mauritius", "Uganda"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Saddam Hussein?"
            Reponses := array{"Iraq", "Libano", "Emirati Arabi Uniti", "Oman"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Rouhollah Khomeini?"
            Reponses := array{"Bahrein", "Armenia", "Kuwait", "Iran"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Soliman le Magnifique?"
            Reponses := array{"Turchia", "Israele", "Arabia Saudita", "Yemen"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Hirohito?"
            Reponses := array{"Pakistan", "Vietnam", "Giappone", "Filippine"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Sun Yat-sen?"
            Reponses := array{"Cina", "Bhutan", "India", "Giappone"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Tchang Kai-chek?"
            Reponses := array{"India", "Cina", "Sri Lanka", "Indonesia"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Ho Chi Minh?"
            Reponses := array{"Vietnam", "Giappone", "Bhutan", "Filippine"}
            BonneReponse := 0
        question:
            Enonce := "Quale paese ha guidato Pol Pot?"
            Reponses := array{"Birmania", "Sri Lanka", "Cambogia", "India"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Soekarno?"
            Reponses := array{"Nepal", "Pakistan", "Filippine", "Indonesia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Jawaharlal Nehru?"
            Reponses := array{"Bangladesh", "Birmania", "Filippine", "India"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Ashoka?"
            Reponses := array{"Nepal", "India", "Pakistan", "Cina"}
            BonneReponse := 1
        question:
            Enonce := "Quale paese ha guidato Genghis Khan?"
            Reponses := array{"Kirghizistan", "Uzbekistan", "Turkmenistan", "Mongolia"}
            BonneReponse := 3
        question:
            Enonce := "Quale paese ha guidato Eva Peron?"
            Reponses := array{"Cile", "Suriname", "Argentina", "Venezuela"}
            BonneReponse := 2
        question:
            Enonce := "Quale paese ha guidato Tito?"
            Reponses := array{"Slovenia", "Lettonia", "Ucraina", "Serbia"}
            BonneReponse := 3

MakeDirigeantsQuestions() : []question =
    MakeDirigeantsQuestionsFR()
