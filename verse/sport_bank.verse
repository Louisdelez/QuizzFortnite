using { /Verse.org/Assets }

# sport_bank.verse — Quizz SPORT (regles, disciplines, JO)
# GENERE — NE PAS EDITER A LA MAIN.

SportDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2}

MakeSportQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel sport se joue avec un ballon rond et 11 joueurs ?"
            Reponses := array{"Le rugby", "Le football", "Le basket", "Le handball"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel sport marque-t-on un panier ?"
            Reponses := array{"Le basket", "Le volley", "Le handball", "Le football"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport se joue avec une raquette et un filet (1 contre 1) ?"
            Reponses := array{"Le tennis", "Le volley", "Le handball", "Le golf"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel sport marque-t-on un essai ?"
            Reponses := array{"Le basket", "Le football", "Le rugby", "Le hockey sur glace"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport se pratique sur la glace avec un palet ?"
            Reponses := array{"Le ski", "Le hockey sur glace", "La natation", "Le football"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel sport frappe-t-on la balle avec une batte (USA) ?"
            Reponses := array{"Le cricket", "Le baseball", "Le golf", "Le tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport consiste a mettre une petite balle dans un trou ?"
            Reponses := array{"Le baseball", "Le tennis", "Le cricket", "Le golf"}
            BonneReponse := 3
        question:
            Enonce := "Dans quel sport se bat-on avec des gants sur un ring ?"
            Reponses := array{"Le rugby", "Le judo", "L'escrime", "La boxe"}
            BonneReponse := 3
        question:
            Enonce := "Quel art martial japonais utilise des prises et un tatami ?"
            Reponses := array{"L'escrime", "La boxe", "Le judo", "Le tennis"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport se pratique avec un fleuret ou une epee ?"
            Reponses := array{"L'escrime", "Le judo", "La boxe", "Le golf"}
            BonneReponse := 0
        question:
            Enonce := "Dans quel sport descend-on une pente enneigee ?"
            Reponses := array{"La natation", "Le ski", "Le cyclisme", "L'aviron"}
            BonneReponse := 1
        question:
            Enonce := "Quel tournoi de tennis se joue sur gazon a Londres ?"
            Reponses := array{"Wimbledon", "Roland-Garros", "l'US Open", "l'Open d'Australie"}
            BonneReponse := 0
        question:
            Enonce := "Quel tournoi de tennis se joue sur terre battue a Paris ?"
            Reponses := array{"l'US Open", "Wimbledon", "Roland-Garros", "l'Open d'Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quelle est la plus grande course cycliste annuelle ?"
            Reponses := array{"Wimbledon", "le Tour de France", "le Super Bowl", "le Ballon d'Or"}
            BonneReponse := 1
        question:
            Enonce := "Quelle finale du football americain est la plus regardee aux USA ?"
            Reponses := array{"le Ballon d'Or", "le Tour de France", "le Super Bowl", "Wimbledon"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel pays sont nes les Jeux olympiques antiques ?"
            Reponses := array{"la Grece", "Paris", "Londres", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "Quelle medaille recompense la 1re place aux JO ?"
            Reponses := array{"L'or", "L'argent", "Le bronze", "Le birdie"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport consiste a parcourir des longueurs dans l'eau ?"
            Reponses := array{"L'aviron", "La natation", "Le cyclisme", "Le ski"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport oppose 6 joueurs de chaque cote d'un filet haut ?"
            Reponses := array{"Le basket", "Le volley", "Le handball", "Le tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport tres populaire en Inde se joue avec une batte plate ?"
            Reponses := array{"Le golf", "Le baseball", "Le cricket", "Le hockey sur glace"}
            BonneReponse := 2
        question:
            Enonce := "Dans quel sport lance-t-on le ballon a la main vers un but ?"
            Reponses := array{"Le handball", "Le football", "Le rugby", "Le volley"}
            BonneReponse := 0
        question:
            Enonce := "Quel tournoi de tennis se joue a New York ?"
            Reponses := array{"Roland-Garros", "Wimbledon", "l'US Open", "l'Open d'Australie"}
            BonneReponse := 2
        question:
            Enonce := "Quel tournoi du Grand Chelem ouvre la saison (janvier) ?"
            Reponses := array{"l'US Open", "l'Open d'Australie", "Wimbledon", "Roland-Garros"}
            BonneReponse := 1
        question:
            Enonce := "Quel trophee recompense le meilleur footballeur de l'annee ?"
            Reponses := array{"le Ballon d'Or", "le Super Bowl", "le Tour de France", "Wimbledon"}
            BonneReponse := 0
        question:
            Enonce := "Quelle medaille recompense la 2e place ?"
            Reponses := array{"Le bronze", "L'or", "L'argent", "L'ace"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on un point gagnant direct au service au tennis ?"
            Reponses := array{"L'ace", "Le birdie", "Le strike", "Le but"}
            BonneReponse := 0
        question:
            Enonce := "Au golf, comment nomme-t-on un trou en un coup sous le par ?"
            Reponses := array{"L'ace", "Le birdie", "Le strike", "Le but"}
            BonneReponse := 1
        question:
            Enonce := "Quelle surface accueille un combat de judo ?"
            Reponses := array{"La piste", "Le ring", "Le court", "Le tatami"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se court sur 42,195 km ?"
            Reponses := array{"L'aviron", "La natation", "Le cyclisme", "L'athletisme"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport olympique consiste a ramer en equipe ?"
            Reponses := array{"Le cyclisme", "La natation", "L'aviron", "Le ski"}
            BonneReponse := 2
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 2016 ?"
            Reponses := array{"Londres", "Rio de Janeiro", "Tokyo", "Pekin"}
            BonneReponse := 1
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 2021 ?"
            Reponses := array{"Pekin", "Rio de Janeiro", "Londres", "Tokyo"}
            BonneReponse := 3
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 2012 ?"
            Reponses := array{"Londres", "Rio de Janeiro", "Tokyo", "Pekin"}
            BonneReponse := 0
        question:
            Enonce := "Quelle est la categorie reine de course automobile ?"
            Reponses := array{"Le golf", "Le cyclisme", "Le ski", "La Formule 1"}
            BonneReponse := 3
        question:
            Enonce := "Quelle medaille recompense la 3e place ?"
            Reponses := array{"Le bronze", "L'or", "L'argent", "L'essai"}
            BonneReponse := 0
        question:
            Enonce := "Au bowling, comment nomme-t-on l'abattage des 10 quilles d'un coup ?"
            Reponses := array{"Le but", "L'ace", "Le birdie", "Le strike"}
            BonneReponse := 3
        question:
            Enonce := "Dans quelle ville se sont tenus les premiers JO modernes (1896) ?"
            Reponses := array{"Athenes", "Paris", "Londres", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 2008 ?"
            Reponses := array{"Pekin", "Tokyo", "Londres", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 1992 ?"
            Reponses := array{"Paris", "Athenes", "Barcelone", "Rio de Janeiro"}
            BonneReponse := 2
        question:
            Enonce := "Quelle ville accueille les JO d'ete 2028 ?"
            Reponses := array{"Los Angeles", "Paris", "Tokyo", "Barcelone"}
            BonneReponse := 0
        question:
            Enonce := "Quelle ville a accueilli les JO d'ete 2024 ?"
            Reponses := array{"Paris", "Los Angeles", "Londres", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "Comment nomme-t-on la fin d'un combat de boxe par mise a terre decomptee ?"
            Reponses := array{"Le strike", "Le KO", "L'ace", "L'essai"}
            BonneReponse := 1
        question:
            Enonce := "Dans quel sport joue-t-on sur des greens et des fairways ?"
            Reponses := array{"Le cricket", "Le golf", "Le baseball", "Le tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport collectif se joue avec une crosse et une balle dure (gazon) ?"
            Reponses := array{"Le cricket", "Le rugby", "Le hockey sur glace", "Le baseball"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on l'unite de score au rugby valant 5 points ?"
            Reponses := array{"Le but", "L'essai", "Le panier", "L'ace"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport de boules se joue surtout dans le sud de la France ?"
            Reponses := array{"Le hockey sur glace", "Le golf", "Le cricket", "La petanque"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se joue avec une petite balle et une raquette sur une table ?"
            Reponses := array{"Le badminton", "Le tennis", "Le tennis de table", "Le golf"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport se pratique sur les vagues avec une planche ?"
            Reponses := array{"Le surf", "Le skateboard", "Le ski", "La natation"}
            BonneReponse := 0
        question:
            Enonce := "Comment appelle-t-on 3 buts marques par le meme joueur ?"
            Reponses := array{"L'ace", "Le penalty", "Le dunk", "Le coup du chapeau"}
            BonneReponse := 3
        question:
            Enonce := "Comment nomme-t-on un tir de reparation au football ?"
            Reponses := array{"Le penalty", "L'essai", "Le but", "L'ace"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport olympique consiste a soulever une barre tres lourde ?"
            Reponses := array{"La boxe", "La lutte", "Le judo", "L'halterophilie"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport combine natation, velo et course a pied ?"
            Reponses := array{"La natation", "Le biathlon", "42 km", "Le triathlon"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport se joue avec un volant et une raquette legere ?"
            Reponses := array{"Le golf", "Le tennis de table", "Le tennis", "Le badminton"}
            BonneReponse := 3
        question:
            Enonce := "Comment nomme-t-on un smash percutant au basket dans le panier ?"
            Reponses := array{"Le strike", "Le panier", "Le dunk", "L'ace"}
            BonneReponse := 2
        question:
            Enonce := "Quel art martial coreen est olympique (coups de pied) ?"
            Reponses := array{"La boxe", "Le judo", "Le taekwondo", "La lutte"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport d'hiver consiste a glisser des pierres vers une cible ?"
            Reponses := array{"Le ski", "Le hockey sur glace", "Le curling", "Le patinage artistique"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport d'hiver melange ski de fond et tir a la carabine ?"
            Reponses := array{"Le triathlon", "Le curling", "Le biathlon", "Le ski"}
            BonneReponse := 2
        question:
            Enonce := "Comment appelle-t-on une serie de jeux remportee au tennis/volley ?"
            Reponses := array{"L'ace", "Le set", "Le but", "Le panier"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport olympique se joue dans l'eau avec un ballon et des buts ?"
            Reponses := array{"Le water-polo", "La natation", "L'aviron", "Le triathlon"}
            BonneReponse := 0
        question:
            Enonce := "Quel sport olympique se pratique a cheval ?"
            Reponses := array{"Le cyclisme", "L'equitation", "L'escrime", "Le tir a l'arc"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport olympique consiste a tirer des fleches sur une cible ?"
            Reponses := array{"L'escrime", "Le tir a l'arc", "Le biathlon", "La lutte"}
            BonneReponse := 1
        question:
            Enonce := "Quel sport de combat olympique consiste a plaquer l'adversaire au sol sans coups ?"
            Reponses := array{"Le judo", "La boxe", "Le taekwondo", "La lutte"}
            BonneReponse := 3
        question:
            Enonce := "Quel sport olympique enchaine sauts et figures sur la glace ?"
            Reponses := array{"Le curling", "Le hockey sur glace", "Le patinage artistique", "Le biathlon"}
            BonneReponse := 2
        question:
            Enonce := "Quel sport olympique enchaine agres, sol et poutre ?"
            Reponses := array{"La gymnastique", "Le patinage artistique", "La lutte", "L'escrime"}
            BonneReponse := 0
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 2000 ?"
            Reponses := array{"Rio de Janeiro", "Athenes", "Pekin", "Sydney"}
            BonneReponse := 3
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 1980 ?"
            Reponses := array{"Berlin", "Moscou", "Rome", "Sydney"}
            BonneReponse := 1
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 1936 ?"
            Reponses := array{"Sydney", "Moscou", "Rome", "Berlin"}
            BonneReponse := 3
        question:
            Enonce := "Dans quelle ville se sont tenus les JO de 1960 ?"
            Reponses := array{"Rome", "Berlin", "Moscou", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Combien de joueurs dans une equipe de football sur le terrain ?"
            Reponses := array{"12", "9", "10", "11"}
            BonneReponse := 3
        question:
            Enonce := "Combien de joueurs dans une equipe de basket sur le terrain ?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "Combien de points vaut un panier a 3 points... combien d'anneaux olympiques ?"
            Reponses := array{"6", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Tous les combien d'annees ont lieu les JO d'ete ?"
            Reponses := array{"4", "2", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Combien de joueurs dans une equipe de volley sur le terrain ?"
            Reponses := array{"8", "5", "7", "6"}
            BonneReponse := 3
        question:
            Enonce := "Combien de joueurs dans une equipe de rugby a XV ?"
            Reponses := array{"13", "15", "14", "16"}
            BonneReponse := 1
        question:
            Enonce := "Combien de trous dans un parcours de golf classique ?"
            Reponses := array{"20", "9", "12", "18"}
            BonneReponse := 3
        question:
            Enonce := "Combien de joueurs dans une equipe de handball sur le terrain ?"
            Reponses := array{"8", "6", "7", "11"}
            BonneReponse := 2
        question:
            Enonce := "Combien de jeux faut-il (en general) pour gagner un set au tennis ?"
            Reponses := array{"4", "6", "5", "7"}
            BonneReponse := 1
        question:
            Enonce := "Combien de joueurs dans une equipe de baseball sur le terrain ?"
            Reponses := array{"11", "8", "10", "9"}
            BonneReponse := 3
        question:
            Enonce := "Combien de joueurs dans une equipe de rugby a XIII ?"
            Reponses := array{"15", "11", "13", "17"}
            BonneReponse := 2
        question:
            Enonce := "Combien de manches (innings) dans un match de baseball ?"
            Reponses := array{"12", "7", "11", "9"}
            BonneReponse := 3
        question:
            Enonce := "Combien de quilles vise-t-on au bowling ?"
            Reponses := array{"8", "10", "9", "12"}
            BonneReponse := 1
        question:
            Enonce := "Combien de points vaut une transformation au rugby ?"
            Reponses := array{"2", "1", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Combien de tours fait-on dans un 800 m sur piste standard ?"
            Reponses := array{"3", "1", "2", "4"}
            BonneReponse := 2

MakeSportQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which sport uses a round ball and 11 players?"
            Reponses := array{"Rugby", "Football", "Basketball", "Handball"}
            BonneReponse := 1
        question:
            Enonce := "In which sport do you score a basket?"
            Reponses := array{"Basketball", "Volleyball", "Handball", "Football"}
            BonneReponse := 0
        question:
            Enonce := "Which sport uses a racket and a net (1v1)?"
            Reponses := array{"Tennis", "Volleyball", "Handball", "Golf"}
            BonneReponse := 0
        question:
            Enonce := "In which sport do you score a try?"
            Reponses := array{"Basketball", "Football", "Rugby", "Ice hockey"}
            BonneReponse := 2
        question:
            Enonce := "Which sport is played on ice with a puck?"
            Reponses := array{"Skiing", "Ice hockey", "Swimming", "Football"}
            BonneReponse := 1
        question:
            Enonce := "In which sport do you hit the ball with a bat (USA)?"
            Reponses := array{"Cricket", "Baseball", "Golf", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Which sport puts a small ball into a hole?"
            Reponses := array{"Baseball", "Tennis", "Cricket", "Golf"}
            BonneReponse := 3
        question:
            Enonce := "In which sport do you fight with gloves on a ring?"
            Reponses := array{"Rugby", "Judo", "Fencing", "Boxing"}
            BonneReponse := 3
        question:
            Enonce := "Which Japanese martial art uses throws and a tatami?"
            Reponses := array{"Fencing", "Boxing", "Judo", "Tennis"}
            BonneReponse := 2
        question:
            Enonce := "Which sport uses a foil or an epee?"
            Reponses := array{"Fencing", "Judo", "Boxing", "Golf"}
            BonneReponse := 0
        question:
            Enonce := "In which sport do you go down a snowy slope?"
            Reponses := array{"Swimming", "Skiing", "Cycling", "Rowing"}
            BonneReponse := 1
        question:
            Enonce := "Which tennis tournament is on grass in London?"
            Reponses := array{"Wimbledon", "Roland Garros", "the US Open", "the Australian Open"}
            BonneReponse := 0
        question:
            Enonce := "Which tennis tournament is on clay in Paris?"
            Reponses := array{"the US Open", "Wimbledon", "Roland Garros", "the Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "What is the biggest annual cycling race?"
            Reponses := array{"Wimbledon", "the Tour de France", "the Super Bowl", "the Ballon d'Or"}
            BonneReponse := 1
        question:
            Enonce := "Which American football final is most watched in the US?"
            Reponses := array{"the Ballon d'Or", "the Tour de France", "the Super Bowl", "Wimbledon"}
            BonneReponse := 2
        question:
            Enonce := "In which country were the ancient Olympics born?"
            Reponses := array{"Greece", "Paris", "London", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "Which medal rewards 1st place at the Olympics?"
            Reponses := array{"Gold", "Silver", "Bronze", "Birdie"}
            BonneReponse := 0
        question:
            Enonce := "Which sport is about doing lengths in water?"
            Reponses := array{"Rowing", "Swimming", "Cycling", "Skiing"}
            BonneReponse := 1
        question:
            Enonce := "Which sport has 6 players each side of a high net?"
            Reponses := array{"Basketball", "Volleyball", "Handball", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Which sport popular in India uses a flat bat?"
            Reponses := array{"Golf", "Baseball", "Cricket", "Ice hockey"}
            BonneReponse := 2
        question:
            Enonce := "In which sport do you throw the ball by hand at a goal?"
            Reponses := array{"Handball", "Football", "Rugby", "Volleyball"}
            BonneReponse := 0
        question:
            Enonce := "Which tennis tournament is held in New York?"
            Reponses := array{"Roland Garros", "Wimbledon", "the US Open", "the Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "Which Grand Slam opens the season (January)?"
            Reponses := array{"the US Open", "the Australian Open", "Wimbledon", "Roland Garros"}
            BonneReponse := 1
        question:
            Enonce := "Which trophy rewards the best footballer of the year?"
            Reponses := array{"the Ballon d'Or", "the Super Bowl", "the Tour de France", "Wimbledon"}
            BonneReponse := 0
        question:
            Enonce := "Which medal rewards 2nd place?"
            Reponses := array{"Bronze", "Gold", "Silver", "The ace"}
            BonneReponse := 2
        question:
            Enonce := "What is a direct winning serve called in tennis?"
            Reponses := array{"The ace", "Birdie", "Strike", "The goal"}
            BonneReponse := 0
        question:
            Enonce := "In golf, a hole one under par is called?"
            Reponses := array{"The ace", "Birdie", "Strike", "The goal"}
            BonneReponse := 1
        question:
            Enonce := "Which surface hosts a judo bout?"
            Reponses := array{"The track", "The ring", "The court", "The tatami"}
            BonneReponse := 3
        question:
            Enonce := "Which event is run over 42.195 km?"
            Reponses := array{"Rowing", "Swimming", "Cycling", "Athletics"}
            BonneReponse := 3
        question:
            Enonce := "Which Olympic sport is rowing as a team?"
            Reponses := array{"Cycling", "Swimming", "Rowing", "Skiing"}
            BonneReponse := 2
        question:
            Enonce := "Which city hosted the 2016 Olympics?"
            Reponses := array{"London", "Rio de Janeiro", "Tokyo", "Beijing"}
            BonneReponse := 1
        question:
            Enonce := "Which city hosted the 2021 Olympics?"
            Reponses := array{"Beijing", "Rio de Janeiro", "London", "Tokyo"}
            BonneReponse := 3
        question:
            Enonce := "Which city hosted the 2012 Olympics?"
            Reponses := array{"London", "Rio de Janeiro", "Tokyo", "Beijing"}
            BonneReponse := 0
        question:
            Enonce := "What is the top class of motor racing?"
            Reponses := array{"Golf", "Cycling", "Skiing", "Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Which medal rewards 3rd place?"
            Reponses := array{"Bronze", "Gold", "Silver", "The try"}
            BonneReponse := 0
        question:
            Enonce := "In bowling, knocking all 10 pins at once is called?"
            Reponses := array{"The goal", "The ace", "Birdie", "Strike"}
            BonneReponse := 3
        question:
            Enonce := "Which city hosted the first modern Olympics (1896)?"
            Reponses := array{"Athens", "Paris", "London", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Which city hosted the 2008 Olympics?"
            Reponses := array{"Beijing", "Tokyo", "London", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Which city hosted the 1992 Olympics?"
            Reponses := array{"Paris", "Athens", "Barcelona", "Rio de Janeiro"}
            BonneReponse := 2
        question:
            Enonce := "Which city hosts the 2028 Summer Olympics?"
            Reponses := array{"Los Angeles", "Paris", "Tokyo", "Barcelona"}
            BonneReponse := 0
        question:
            Enonce := "Which city hosted the 2024 Summer Olympics?"
            Reponses := array{"Paris", "Los Angeles", "London", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "What is the end of a boxing bout by a counted fall called?"
            Reponses := array{"Strike", "Knockout", "The ace", "The try"}
            BonneReponse := 1
        question:
            Enonce := "In which sport do you play on greens and fairways?"
            Reponses := array{"Cricket", "Golf", "Baseball", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Which team sport uses a stick and a hard ball (field)?"
            Reponses := array{"Cricket", "Rugby", "Ice hockey", "Baseball"}
            BonneReponse := 2
        question:
            Enonce := "What rugby score worth 5 points is this?"
            Reponses := array{"The goal", "The try", "The basket", "The ace"}
            BonneReponse := 1
        question:
            Enonce := "Which boules sport is played mostly in southern France?"
            Reponses := array{"Ice hockey", "Golf", "Cricket", "Petanque"}
            BonneReponse := 3
        question:
            Enonce := "Which sport uses a small ball and paddle on a table?"
            Reponses := array{"Badminton", "Tennis", "Table tennis", "Golf"}
            BonneReponse := 2
        question:
            Enonce := "Which sport is done on waves with a board?"
            Reponses := array{"Surfing", "Skateboarding", "Skiing", "Swimming"}
            BonneReponse := 0
        question:
            Enonce := "What are 3 goals by the same player called?"
            Reponses := array{"The ace", "The penalty", "The dunk", "The hat-trick"}
            BonneReponse := 3
        question:
            Enonce := "What is a penalty kick called in football?"
            Reponses := array{"The penalty", "The try", "The goal", "The ace"}
            BonneReponse := 0
        question:
            Enonce := "Which Olympic sport lifts a very heavy bar?"
            Reponses := array{"Boxing", "Wrestling", "Judo", "Weightlifting"}
            BonneReponse := 3
        question:
            Enonce := "Which sport combines swimming, cycling and running?"
            Reponses := array{"Swimming", "Biathlon", "42 km", "Triathlon"}
            BonneReponse := 3
        question:
            Enonce := "Which sport uses a shuttlecock and a light racket?"
            Reponses := array{"Golf", "Table tennis", "Tennis", "Badminton"}
            BonneReponse := 3
        question:
            Enonce := "What is a forceful slam into the basket called?"
            Reponses := array{"Strike", "The basket", "The dunk", "The ace"}
            BonneReponse := 2
        question:
            Enonce := "Which Korean martial art is Olympic (kicks)?"
            Reponses := array{"Boxing", "Judo", "Taekwondo", "Wrestling"}
            BonneReponse := 2
        question:
            Enonce := "Which winter sport slides stones toward a target?"
            Reponses := array{"Skiing", "Ice hockey", "Curling", "Figure skating"}
            BonneReponse := 2
        question:
            Enonce := "Which winter sport mixes cross-country skiing and rifle shooting?"
            Reponses := array{"Triathlon", "Curling", "Biathlon", "Skiing"}
            BonneReponse := 2
        question:
            Enonce := "What is a won group of games in tennis/volley called?"
            Reponses := array{"The ace", "The set", "The goal", "The basket"}
            BonneReponse := 1
        question:
            Enonce := "Which Olympic sport is played in water with a ball and goals?"
            Reponses := array{"Water polo", "Swimming", "Rowing", "Triathlon"}
            BonneReponse := 0
        question:
            Enonce := "Which Olympic sport is done on horseback?"
            Reponses := array{"Cycling", "Equestrian", "Fencing", "Archery"}
            BonneReponse := 1
        question:
            Enonce := "Which Olympic sport shoots arrows at a target?"
            Reponses := array{"Fencing", "Archery", "Biathlon", "Wrestling"}
            BonneReponse := 1
        question:
            Enonce := "Which Olympic combat sport pins the opponent without strikes?"
            Reponses := array{"Judo", "Boxing", "Taekwondo", "Wrestling"}
            BonneReponse := 3
        question:
            Enonce := "Which Olympic sport links jumps and spins on ice?"
            Reponses := array{"Curling", "Ice hockey", "Figure skating", "Biathlon"}
            BonneReponse := 2
        question:
            Enonce := "Which Olympic sport uses apparatus, floor and beam?"
            Reponses := array{"Gymnastics", "Figure skating", "Wrestling", "Fencing"}
            BonneReponse := 0
        question:
            Enonce := "Which city hosted the 2000 Olympics?"
            Reponses := array{"Rio de Janeiro", "Athens", "Beijing", "Sydney"}
            BonneReponse := 3
        question:
            Enonce := "Which city hosted the 1980 Olympics?"
            Reponses := array{"Berlin", "Moscow", "Rome", "Sydney"}
            BonneReponse := 1
        question:
            Enonce := "Which city hosted the 1936 Olympics?"
            Reponses := array{"Sydney", "Moscow", "Rome", "Berlin"}
            BonneReponse := 3
        question:
            Enonce := "Which city hosted the 1960 Olympics?"
            Reponses := array{"Rome", "Berlin", "Moscow", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "How many players per football team on the pitch?"
            Reponses := array{"12", "9", "10", "11"}
            BonneReponse := 3
        question:
            Enonce := "How many players per basketball team on court?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "How many Olympic rings are there?"
            Reponses := array{"6", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Every how many years are the Summer Olympics?"
            Reponses := array{"4", "2", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "How many players per volleyball team on court?"
            Reponses := array{"8", "5", "7", "6"}
            BonneReponse := 3
        question:
            Enonce := "How many players in a rugby union team?"
            Reponses := array{"13", "15", "14", "16"}
            BonneReponse := 1
        question:
            Enonce := "How many holes on a standard golf course?"
            Reponses := array{"20", "9", "12", "18"}
            BonneReponse := 3
        question:
            Enonce := "How many players per handball team on court?"
            Reponses := array{"8", "6", "7", "11"}
            BonneReponse := 2
        question:
            Enonce := "How many games usually win a tennis set?"
            Reponses := array{"4", "6", "5", "7"}
            BonneReponse := 1
        question:
            Enonce := "How many players per baseball team on the field?"
            Reponses := array{"11", "8", "10", "9"}
            BonneReponse := 3
        question:
            Enonce := "How many players in a rugby league team?"
            Reponses := array{"15", "11", "13", "17"}
            BonneReponse := 2
        question:
            Enonce := "How many innings in a baseball game?"
            Reponses := array{"12", "7", "11", "9"}
            BonneReponse := 3
        question:
            Enonce := "How many pins do you aim at in bowling?"
            Reponses := array{"8", "10", "9", "12"}
            BonneReponse := 1
        question:
            Enonce := "How many points is a rugby conversion worth?"
            Reponses := array{"2", "1", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "How many laps in an 800 m on a standard track?"
            Reponses := array{"3", "1", "2", "4"}
            BonneReponse := 2

MakeSportQuestionsES() : []question =
    array:
        question:
            Enonce := "Que deporte usa un balon redondo y 11 jugadores?"
            Reponses := array{"El rugby", "El futbol", "El baloncesto", "El balonmano"}
            BonneReponse := 1
        question:
            Enonce := "En que deporte se anota una canasta?"
            Reponses := array{"El baloncesto", "El voleibol", "El balonmano", "El futbol"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte usa raqueta y red (1 vs 1)?"
            Reponses := array{"El tenis", "El voleibol", "El balonmano", "El golf"}
            BonneReponse := 0
        question:
            Enonce := "En que deporte se marca un ensayo?"
            Reponses := array{"El baloncesto", "El futbol", "El rugby", "El hockey sobre hielo"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte se juega en hielo con un disco?"
            Reponses := array{"El esqui", "El hockey sobre hielo", "La natacion", "El futbol"}
            BonneReponse := 1
        question:
            Enonce := "En que deporte se golpea la pelota con un bate (EEUU)?"
            Reponses := array{"El criquet", "El beisbol", "El golf", "El tenis"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte mete una pelotita en un hoyo?"
            Reponses := array{"El beisbol", "El tenis", "El criquet", "El golf"}
            BonneReponse := 3
        question:
            Enonce := "En que deporte se pelea con guantes en un ring?"
            Reponses := array{"El rugby", "El judo", "La esgrima", "El boxeo"}
            BonneReponse := 3
        question:
            Enonce := "Que arte marcial japones usa proyecciones y un tatami?"
            Reponses := array{"La esgrima", "El boxeo", "El judo", "El tenis"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte usa florete o espada?"
            Reponses := array{"La esgrima", "El judo", "El boxeo", "El golf"}
            BonneReponse := 0
        question:
            Enonce := "En que deporte se baja una pendiente nevada?"
            Reponses := array{"La natacion", "El esqui", "El ciclismo", "El remo"}
            BonneReponse := 1
        question:
            Enonce := "Que torneo de tenis se juega en hierba en Londres?"
            Reponses := array{"Wimbledon", "Roland Garros", "el US Open", "el Abierto de Australia"}
            BonneReponse := 0
        question:
            Enonce := "Que torneo de tenis se juega en tierra batida en Paris?"
            Reponses := array{"el US Open", "Wimbledon", "Roland Garros", "el Abierto de Australia"}
            BonneReponse := 2
        question:
            Enonce := "Cual es la mayor carrera ciclista anual?"
            Reponses := array{"Wimbledon", "el Tour de Francia", "la Super Bowl", "el Balon de Oro"}
            BonneReponse := 1
        question:
            Enonce := "Que final de futbol americano es la mas vista en EEUU?"
            Reponses := array{"el Balon de Oro", "el Tour de Francia", "la Super Bowl", "Wimbledon"}
            BonneReponse := 2
        question:
            Enonce := "En que pais nacieron los Juegos olimpicos antiguos?"
            Reponses := array{"Grecia", "Paris", "Londres", "Tokio"}
            BonneReponse := 0
        question:
            Enonce := "Que medalla premia el 1er puesto en los JJOO?"
            Reponses := array{"El oro", "La plata", "El bronce", "El birdie"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte consiste en hacer largos en el agua?"
            Reponses := array{"El remo", "La natacion", "El ciclismo", "El esqui"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte enfrenta a 6 jugadores por lado de una red alta?"
            Reponses := array{"El baloncesto", "El voleibol", "El balonmano", "El tenis"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte popular en India usa un bate plano?"
            Reponses := array{"El golf", "El beisbol", "El criquet", "El hockey sobre hielo"}
            BonneReponse := 2
        question:
            Enonce := "En que deporte se lanza el balon con la mano a una porteria?"
            Reponses := array{"El balonmano", "El futbol", "El rugby", "El voleibol"}
            BonneReponse := 0
        question:
            Enonce := "Que torneo de tenis se juega en Nueva York?"
            Reponses := array{"Roland Garros", "Wimbledon", "el US Open", "el Abierto de Australia"}
            BonneReponse := 2
        question:
            Enonce := "Que Grand Slam abre la temporada (enero)?"
            Reponses := array{"el US Open", "el Abierto de Australia", "Wimbledon", "Roland Garros"}
            BonneReponse := 1
        question:
            Enonce := "Que trofeo premia al mejor futbolista del ano?"
            Reponses := array{"el Balon de Oro", "la Super Bowl", "el Tour de Francia", "Wimbledon"}
            BonneReponse := 0
        question:
            Enonce := "Que medalla premia el 2o puesto?"
            Reponses := array{"El bronce", "El oro", "La plata", "El ace"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama un saque ganador directo en tenis?"
            Reponses := array{"El ace", "El birdie", "El strike", "El gol"}
            BonneReponse := 0
        question:
            Enonce := "En golf, un hoyo uno bajo par se llama?"
            Reponses := array{"El ace", "El birdie", "El strike", "El gol"}
            BonneReponse := 1
        question:
            Enonce := "Que superficie acoge un combate de judo?"
            Reponses := array{"La pista", "El ring", "La pista", "El tatami"}
            BonneReponse := 3
        question:
            Enonce := "Que prueba se corre en 42,195 km?"
            Reponses := array{"El remo", "La natacion", "El ciclismo", "El atletismo"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte olimpico consiste en remar en equipo?"
            Reponses := array{"El ciclismo", "La natacion", "El remo", "El esqui"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad acogio los JJOO de 2016?"
            Reponses := array{"Londres", "Rio de Janeiro", "Tokio", "Pekin"}
            BonneReponse := 1
        question:
            Enonce := "Que ciudad acogio los JJOO de 2021?"
            Reponses := array{"Pekin", "Rio de Janeiro", "Londres", "Tokio"}
            BonneReponse := 3
        question:
            Enonce := "Que ciudad acogio los JJOO de 2012?"
            Reponses := array{"Londres", "Rio de Janeiro", "Tokio", "Pekin"}
            BonneReponse := 0
        question:
            Enonce := "Cual es la categoria reina del automovilismo?"
            Reponses := array{"El golf", "El ciclismo", "El esqui", "La Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Que medalla premia el 3er puesto?"
            Reponses := array{"El bronce", "El oro", "La plata", "El ensayo"}
            BonneReponse := 0
        question:
            Enonce := "En los bolos, derribar los 10 pinos de un golpe se llama?"
            Reponses := array{"El gol", "El ace", "El birdie", "El strike"}
            BonneReponse := 3
        question:
            Enonce := "Que ciudad acogio los primeros JJOO modernos (1896)?"
            Reponses := array{"Atenas", "Paris", "Londres", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad acogio los JJOO de 2008?"
            Reponses := array{"Pekin", "Tokio", "Londres", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad acogio los JJOO de 1992?"
            Reponses := array{"Paris", "Atenas", "Barcelona", "Rio de Janeiro"}
            BonneReponse := 2
        question:
            Enonce := "Que ciudad acoge los JJOO de verano 2028?"
            Reponses := array{"Los Angeles", "Paris", "Tokio", "Barcelona"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad acogio los JJOO de verano 2024?"
            Reponses := array{"Paris", "Los Angeles", "Londres", "Tokio"}
            BonneReponse := 0
        question:
            Enonce := "Como se llama el fin de un combate de boxeo por caida contada?"
            Reponses := array{"El strike", "El KO", "El ace", "El ensayo"}
            BonneReponse := 1
        question:
            Enonce := "En que deporte se juega en greens y fairways?"
            Reponses := array{"El criquet", "El golf", "El beisbol", "El tenis"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte de equipo usa stick y bola dura (cesped)?"
            Reponses := array{"El criquet", "El rugby", "El hockey sobre hielo", "El beisbol"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama la jugada de rugby que vale 5 puntos?"
            Reponses := array{"El gol", "El ensayo", "La canasta", "El ace"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte de bolas se juega sobre todo en el sur de Francia?"
            Reponses := array{"El hockey sobre hielo", "El golf", "El criquet", "La petanca"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte usa una pelotita y pala sobre una mesa?"
            Reponses := array{"El badminton", "El tenis", "El tenis de mesa", "El golf"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte se practica sobre las olas con una tabla?"
            Reponses := array{"El surf", "El skate", "El esqui", "La natacion"}
            BonneReponse := 0
        question:
            Enonce := "Como se llaman 3 goles del mismo jugador?"
            Reponses := array{"El ace", "El penalti", "El mate", "El hat-trick"}
            BonneReponse := 3
        question:
            Enonce := "Como se llama un tiro desde el punto de penalti?"
            Reponses := array{"El penalti", "El ensayo", "El gol", "El ace"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte olimpico levanta una barra muy pesada?"
            Reponses := array{"El boxeo", "La lucha", "El judo", "La halterofilia"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte combina natacion, ciclismo y carrera?"
            Reponses := array{"La natacion", "El biatlon", "42 km", "El triatlon"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte usa un volante y raqueta ligera?"
            Reponses := array{"El golf", "El tenis de mesa", "El tenis", "El badminton"}
            BonneReponse := 3
        question:
            Enonce := "Como se llama un mate potente en baloncesto?"
            Reponses := array{"El strike", "La canasta", "El mate", "El ace"}
            BonneReponse := 2
        question:
            Enonce := "Que arte marcial coreano es olimpico (patadas)?"
            Reponses := array{"El boxeo", "El judo", "El taekwondo", "La lucha"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte de invierno desliza piedras hacia una diana?"
            Reponses := array{"El esqui", "El hockey sobre hielo", "El curling", "El patinaje artistico"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte invernal mezcla esqui de fondo y tiro?"
            Reponses := array{"El triatlon", "El curling", "El biatlon", "El esqui"}
            BonneReponse := 2
        question:
            Enonce := "Como se llama un grupo de juegos ganado en tenis/voley?"
            Reponses := array{"El ace", "El set", "El gol", "La canasta"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte olimpico se juega en el agua con balon y porterias?"
            Reponses := array{"El waterpolo", "La natacion", "El remo", "El triatlon"}
            BonneReponse := 0
        question:
            Enonce := "Que deporte olimpico se practica a caballo?"
            Reponses := array{"El ciclismo", "La equitacion", "La esgrima", "El tiro con arco"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte olimpico dispara flechas a una diana?"
            Reponses := array{"La esgrima", "El tiro con arco", "El biatlon", "La lucha"}
            BonneReponse := 1
        question:
            Enonce := "Que deporte olimpico de combate inmoviliza sin golpes?"
            Reponses := array{"El judo", "El boxeo", "El taekwondo", "La lucha"}
            BonneReponse := 3
        question:
            Enonce := "Que deporte olimpico encadena saltos y giros en hielo?"
            Reponses := array{"El curling", "El hockey sobre hielo", "El patinaje artistico", "El biatlon"}
            BonneReponse := 2
        question:
            Enonce := "Que deporte olimpico usa aparatos, suelo y barra?"
            Reponses := array{"La gimnasia", "El patinaje artistico", "La lucha", "La esgrima"}
            BonneReponse := 0
        question:
            Enonce := "Que ciudad acogio los JJOO de 2000?"
            Reponses := array{"Rio de Janeiro", "Atenas", "Pekin", "Sidney"}
            BonneReponse := 3
        question:
            Enonce := "Que ciudad acogio los JJOO de 1980?"
            Reponses := array{"Berlin", "Moscu", "Roma", "Sidney"}
            BonneReponse := 1
        question:
            Enonce := "Que ciudad acogio los JJOO de 1936?"
            Reponses := array{"Sidney", "Moscu", "Roma", "Berlin"}
            BonneReponse := 3
        question:
            Enonce := "Que ciudad acogio los JJOO de 1960?"
            Reponses := array{"Roma", "Berlin", "Moscu", "Sidney"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos jugadores por equipo de futbol en el campo?"
            Reponses := array{"12", "9", "10", "11"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos jugadores por equipo de baloncesto en pista?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos anillos olimpicos hay?"
            Reponses := array{"6", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Cada cuantos anos son los JJOO de verano?"
            Reponses := array{"4", "2", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Cuantos jugadores por equipo de voleibol en pista?"
            Reponses := array{"8", "5", "7", "6"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos jugadores en un equipo de rugby XV?"
            Reponses := array{"13", "15", "14", "16"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos hoyos tiene un campo de golf estandar?"
            Reponses := array{"20", "9", "12", "18"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos jugadores por equipo de balonmano en pista?"
            Reponses := array{"8", "6", "7", "11"}
            BonneReponse := 2
        question:
            Enonce := "Cuantos juegos suelen ganar un set de tenis?"
            Reponses := array{"4", "6", "5", "7"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos jugadores por equipo de beisbol en el campo?"
            Reponses := array{"11", "8", "10", "9"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos jugadores en un equipo de rugby XIII?"
            Reponses := array{"15", "11", "13", "17"}
            BonneReponse := 2
        question:
            Enonce := "Cuantas entradas tiene un partido de beisbol?"
            Reponses := array{"12", "7", "11", "9"}
            BonneReponse := 3
        question:
            Enonce := "Cuantos pinos hay en los bolos?"
            Reponses := array{"8", "10", "9", "12"}
            BonneReponse := 1
        question:
            Enonce := "Cuantos puntos vale una conversion en rugby?"
            Reponses := array{"2", "1", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Cuantas vueltas son 800 m en pista estandar?"
            Reponses := array{"3", "1", "2", "4"}
            BonneReponse := 2

MakeSportQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welcher Sport nutzt einen runden Ball und 11 Spieler?"
            Reponses := array{"Rugby", "Fussball", "Basketball", "Handball"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Sport erzielt man einen Korb?"
            Reponses := array{"Basketball", "Volleyball", "Handball", "Fussball"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Sport nutzt Schlaeger und Netz (1 gegen 1)?"
            Reponses := array{"Tennis", "Volleyball", "Handball", "Golf"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Sport erzielt man einen Versuch?"
            Reponses := array{"Basketball", "Fussball", "Rugby", "Eishockey"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Sport wird auf Eis mit einem Puck gespielt?"
            Reponses := array{"Skifahren", "Eishockey", "Schwimmen", "Fussball"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Sport schlaegt man den Ball mit einem Schlaeger (USA)?"
            Reponses := array{"Cricket", "Baseball", "Golf", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Sport bringt einen kleinen Ball ins Loch?"
            Reponses := array{"Baseball", "Tennis", "Cricket", "Golf"}
            BonneReponse := 3
        question:
            Enonce := "In welchem Sport kaempft man mit Handschuhen im Ring?"
            Reponses := array{"Rugby", "Judo", "Fechten", "Boxen"}
            BonneReponse := 3
        question:
            Enonce := "Welche japanische Kampfkunst nutzt Wuerfe und ein Tatami?"
            Reponses := array{"Fechten", "Boxen", "Judo", "Tennis"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Sport nutzt Florett oder Degen?"
            Reponses := array{"Fechten", "Judo", "Boxen", "Golf"}
            BonneReponse := 0
        question:
            Enonce := "In welchem Sport faehrt man einen verschneiten Hang hinab?"
            Reponses := array{"Schwimmen", "Skifahren", "Radsport", "Rudern"}
            BonneReponse := 1
        question:
            Enonce := "Welches Tennisturnier wird auf Rasen in London gespielt?"
            Reponses := array{"Wimbledon", "Roland Garros", "die US Open", "die Australian Open"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tennisturnier wird auf Sand in Paris gespielt?"
            Reponses := array{"die US Open", "Wimbledon", "Roland Garros", "die Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "Was ist das groesste jaehrliche Radrennen?"
            Reponses := array{"Wimbledon", "die Tour de France", "den Super Bowl", "den Ballon d'Or"}
            BonneReponse := 1
        question:
            Enonce := "Welches Football-Finale ist in den USA am meistgesehen?"
            Reponses := array{"den Ballon d'Or", "die Tour de France", "den Super Bowl", "Wimbledon"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Land entstanden die antiken Olympischen Spiele?"
            Reponses := array{"Griechenland", "Paris", "London", "Tokio"}
            BonneReponse := 0
        question:
            Enonce := "Welche Medaille belohnt den 1. Platz bei Olympia?"
            Reponses := array{"Gold", "Silber", "Bronze", "Birdie"}
            BonneReponse := 0
        question:
            Enonce := "Welcher Sport besteht aus Bahnen im Wasser?"
            Reponses := array{"Rudern", "Schwimmen", "Radsport", "Skifahren"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Sport hat 6 Spieler je Seite an einem hohen Netz?"
            Reponses := array{"Basketball", "Volleyball", "Handball", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Welcher in Indien beliebte Sport nutzt einen flachen Schlaeger?"
            Reponses := array{"Golf", "Baseball", "Cricket", "Eishockey"}
            BonneReponse := 2
        question:
            Enonce := "In welchem Sport wirft man den Ball mit der Hand aufs Tor?"
            Reponses := array{"Handball", "Fussball", "Rugby", "Volleyball"}
            BonneReponse := 0
        question:
            Enonce := "Welches Tennisturnier findet in New York statt?"
            Reponses := array{"Roland Garros", "Wimbledon", "die US Open", "die Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "Welches Grand-Slam-Turnier eroeffnet die Saison (Januar)?"
            Reponses := array{"die US Open", "die Australian Open", "Wimbledon", "Roland Garros"}
            BonneReponse := 1
        question:
            Enonce := "Welche Trophaee kuert den besten Fussballer des Jahres?"
            Reponses := array{"den Ballon d'Or", "den Super Bowl", "die Tour de France", "Wimbledon"}
            BonneReponse := 0
        question:
            Enonce := "Welche Medaille belohnt den 2. Platz?"
            Reponses := array{"Bronze", "Gold", "Silber", "Das Ass"}
            BonneReponse := 2
        question:
            Enonce := "Wie heisst ein direkter Aufschlagpunkt im Tennis?"
            Reponses := array{"Das Ass", "Birdie", "Strike", "Das Tor"}
            BonneReponse := 0
        question:
            Enonce := "Beim Golf heisst ein Loch eins unter Par?"
            Reponses := array{"Das Ass", "Birdie", "Strike", "Das Tor"}
            BonneReponse := 1
        question:
            Enonce := "Welche Flaeche traegt einen Judokampf?"
            Reponses := array{"Die Bahn", "Der Ring", "Der Platz", "Die Tatami"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Lauf geht ueber 42,195 km?"
            Reponses := array{"Rudern", "Schwimmen", "Radsport", "Leichtathletik"}
            BonneReponse := 3
        question:
            Enonce := "Welcher olympische Sport ist Mannschaftsrudern?"
            Reponses := array{"Radsport", "Schwimmen", "Rudern", "Skifahren"}
            BonneReponse := 2
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2016?"
            Reponses := array{"London", "Rio de Janeiro", "Tokio", "Peking"}
            BonneReponse := 1
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2021?"
            Reponses := array{"Peking", "Rio de Janeiro", "London", "Tokio"}
            BonneReponse := 3
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2012?"
            Reponses := array{"London", "Rio de Janeiro", "Tokio", "Peking"}
            BonneReponse := 0
        question:
            Enonce := "Was ist die Koenigsklasse des Motorsports?"
            Reponses := array{"Golf", "Radsport", "Skifahren", "Formel 1"}
            BonneReponse := 3
        question:
            Enonce := "Welche Medaille belohnt den 3. Platz?"
            Reponses := array{"Bronze", "Gold", "Silber", "Der Versuch"}
            BonneReponse := 0
        question:
            Enonce := "Beim Bowling heisst das Abraeumen aller 10 Pins?"
            Reponses := array{"Das Tor", "Das Ass", "Birdie", "Strike"}
            BonneReponse := 3
        question:
            Enonce := "Welche Stadt war Gastgeber der ersten modernen Spiele (1896)?"
            Reponses := array{"Athen", "Paris", "London", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2008?"
            Reponses := array{"Peking", "Tokio", "London", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 1992?"
            Reponses := array{"Paris", "Athen", "Barcelona", "Rio de Janeiro"}
            BonneReponse := 2
        question:
            Enonce := "Welche Stadt richtet Olympia 2028 aus?"
            Reponses := array{"Los Angeles", "Paris", "Tokio", "Barcelona"}
            BonneReponse := 0
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2024?"
            Reponses := array{"Paris", "Los Angeles", "London", "Tokio"}
            BonneReponse := 0
        question:
            Enonce := "Wie heisst das Ende eines Boxkampfs durch ausgezaehlten Niederschlag?"
            Reponses := array{"Strike", "Knockout", "Das Ass", "Der Versuch"}
            BonneReponse := 1
        question:
            Enonce := "In welchem Sport spielt man auf Greens und Fairways?"
            Reponses := array{"Cricket", "Golf", "Baseball", "Tennis"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Mannschaftssport nutzt Schlaeger und harten Ball (Rasen)?"
            Reponses := array{"Cricket", "Rugby", "Eishockey", "Baseball"}
            BonneReponse := 2
        question:
            Enonce := "Wie heisst die 5-Punkte-Aktion im Rugby?"
            Reponses := array{"Das Tor", "Der Versuch", "Der Korb", "Das Ass"}
            BonneReponse := 1
        question:
            Enonce := "Welcher Kugelsport wird vor allem in Suedfrankreich gespielt?"
            Reponses := array{"Eishockey", "Golf", "Cricket", "Petanque"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Sport nutzt einen kleinen Ball und Schlaeger auf einem Tisch?"
            Reponses := array{"Badminton", "Tennis", "Tischtennis", "Golf"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Sport wird auf Wellen mit einem Brett gemacht?"
            Reponses := array{"Surfen", "Skateboarding", "Skifahren", "Schwimmen"}
            BonneReponse := 0
        question:
            Enonce := "Wie nennt man 3 Tore desselben Spielers?"
            Reponses := array{"Das Ass", "Der Elfmeter", "Der Dunk", "Der Hattrick"}
            BonneReponse := 3
        question:
            Enonce := "Wie heisst der Strafstoss im Fussball?"
            Reponses := array{"Der Elfmeter", "Der Versuch", "Das Tor", "Das Ass"}
            BonneReponse := 0
        question:
            Enonce := "Welcher olympische Sport hebt eine sehr schwere Hantel?"
            Reponses := array{"Boxen", "Ringen", "Judo", "Gewichtheben"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Sport verbindet Schwimmen, Radfahren und Laufen?"
            Reponses := array{"Schwimmen", "Biathlon", "42 km", "Triathlon"}
            BonneReponse := 3
        question:
            Enonce := "Welcher Sport nutzt einen Federball und leichten Schlaeger?"
            Reponses := array{"Golf", "Tischtennis", "Tennis", "Badminton"}
            BonneReponse := 3
        question:
            Enonce := "Wie nennt man einen kraftvollen Korbwurf von oben?"
            Reponses := array{"Strike", "Der Korb", "Der Dunk", "Das Ass"}
            BonneReponse := 2
        question:
            Enonce := "Welche koreanische Kampfkunst ist olympisch (Tritte)?"
            Reponses := array{"Boxen", "Judo", "Taekwondo", "Ringen"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Wintersport schiebt Steine zu einem Ziel?"
            Reponses := array{"Skifahren", "Eishockey", "Curling", "Eiskunstlauf"}
            BonneReponse := 2
        question:
            Enonce := "Welcher Wintersport verbindet Langlauf und Schiessen?"
            Reponses := array{"Triathlon", "Curling", "Biathlon", "Skifahren"}
            BonneReponse := 2
        question:
            Enonce := "Wie nennt man eine gewonnene Spielgruppe im Tennis/Volley?"
            Reponses := array{"Das Ass", "Der Satz", "Das Tor", "Der Korb"}
            BonneReponse := 1
        question:
            Enonce := "Welcher olympische Sport spielt im Wasser mit Ball und Toren?"
            Reponses := array{"Wasserball", "Schwimmen", "Rudern", "Triathlon"}
            BonneReponse := 0
        question:
            Enonce := "Welcher olympische Sport wird zu Pferd ausgeuebt?"
            Reponses := array{"Radsport", "Reitsport", "Fechten", "Bogenschiessen"}
            BonneReponse := 1
        question:
            Enonce := "Welcher olympische Sport schiesst Pfeile auf ein Ziel?"
            Reponses := array{"Fechten", "Bogenschiessen", "Biathlon", "Ringen"}
            BonneReponse := 1
        question:
            Enonce := "Welcher olympische Kampfsport fixiert ohne Schlaege?"
            Reponses := array{"Judo", "Boxen", "Taekwondo", "Ringen"}
            BonneReponse := 3
        question:
            Enonce := "Welcher olympische Sport reiht Spruenge auf dem Eis?"
            Reponses := array{"Curling", "Eishockey", "Eiskunstlauf", "Biathlon"}
            BonneReponse := 2
        question:
            Enonce := "Welcher olympische Sport nutzt Geraete, Boden und Balken?"
            Reponses := array{"Turnen", "Eiskunstlauf", "Ringen", "Fechten"}
            BonneReponse := 0
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 2000?"
            Reponses := array{"Rio de Janeiro", "Athen", "Peking", "Sydney"}
            BonneReponse := 3
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 1980?"
            Reponses := array{"Berlin", "Moskau", "Rom", "Sydney"}
            BonneReponse := 1
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 1936?"
            Reponses := array{"Sydney", "Moskau", "Rom", "Berlin"}
            BonneReponse := 3
        question:
            Enonce := "Welche Stadt war Gastgeber von Olympia 1960?"
            Reponses := array{"Rom", "Berlin", "Moskau", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Spieler pro Fussballmannschaft auf dem Feld?"
            Reponses := array{"12", "9", "10", "11"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Spieler pro Basketballteam auf dem Feld?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele olympische Ringe gibt es?"
            Reponses := array{"6", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Alle wie viele Jahre finden die Sommerspiele statt?"
            Reponses := array{"4", "2", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Spieler pro Volleyballteam auf dem Feld?"
            Reponses := array{"8", "5", "7", "6"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Spieler in einer Rugby-Union-Mannschaft?"
            Reponses := array{"13", "15", "14", "16"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Loecher hat ein normaler Golfplatz?"
            Reponses := array{"20", "9", "12", "18"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Spieler pro Handballteam auf dem Feld?"
            Reponses := array{"8", "6", "7", "11"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Spiele gewinnen meist einen Tennissatz?"
            Reponses := array{"4", "6", "5", "7"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Spieler pro Baseballteam auf dem Feld?"
            Reponses := array{"11", "8", "10", "9"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Spieler in einer Rugby-League-Mannschaft?"
            Reponses := array{"15", "11", "13", "17"}
            BonneReponse := 2
        question:
            Enonce := "Wie viele Innings hat ein Baseballspiel?"
            Reponses := array{"12", "7", "11", "9"}
            BonneReponse := 3
        question:
            Enonce := "Wie viele Pins gibt es beim Bowling?"
            Reponses := array{"8", "10", "9", "12"}
            BonneReponse := 1
        question:
            Enonce := "Wie viele Punkte zaehlt eine Erhoehung im Rugby?"
            Reponses := array{"2", "1", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Wie viele Runden sind 800 m auf einer Standardbahn?"
            Reponses := array{"3", "1", "2", "4"}
            BonneReponse := 2

MakeSportQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale sport usa un pallone rotondo e 11 giocatori?"
            Reponses := array{"Il rugby", "Il calcio", "La pallacanestro", "La pallamano"}
            BonneReponse := 1
        question:
            Enonce := "In quale sport si segna un canestro?"
            Reponses := array{"La pallacanestro", "La pallavolo", "La pallamano", "Il calcio"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport usa racchetta e rete (1 contro 1)?"
            Reponses := array{"Il tennis", "La pallavolo", "La pallamano", "Il golf"}
            BonneReponse := 0
        question:
            Enonce := "In quale sport si segna una meta?"
            Reponses := array{"La pallacanestro", "Il calcio", "Il rugby", "L'hockey su ghiaccio"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport si gioca sul ghiaccio con un disco?"
            Reponses := array{"Lo sci", "L'hockey su ghiaccio", "Il nuoto", "Il calcio"}
            BonneReponse := 1
        question:
            Enonce := "In quale sport si colpisce la palla con una mazza (USA)?"
            Reponses := array{"Il cricket", "Il baseball", "Il golf", "Il tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport mette una pallina in una buca?"
            Reponses := array{"Il baseball", "Il tennis", "Il cricket", "Il golf"}
            BonneReponse := 3
        question:
            Enonce := "In quale sport si combatte con i guantoni sul ring?"
            Reponses := array{"Il rugby", "Il judo", "La scherma", "La boxe"}
            BonneReponse := 3
        question:
            Enonce := "Quale arte marziale giapponese usa proiezioni e un tatami?"
            Reponses := array{"La scherma", "La boxe", "Il judo", "Il tennis"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport usa fioretto o spada?"
            Reponses := array{"La scherma", "Il judo", "La boxe", "Il golf"}
            BonneReponse := 0
        question:
            Enonce := "In quale sport si scende un pendio innevato?"
            Reponses := array{"Il nuoto", "Lo sci", "Il ciclismo", "Il canottaggio"}
            BonneReponse := 1
        question:
            Enonce := "Quale torneo di tennis si gioca sull'erba a Londra?"
            Reponses := array{"Wimbledon", "Roland Garros", "gli US Open", "gli Australian Open"}
            BonneReponse := 0
        question:
            Enonce := "Quale torneo di tennis si gioca sulla terra a Parigi?"
            Reponses := array{"gli US Open", "Wimbledon", "Roland Garros", "gli Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "Qual e la piu grande corsa ciclistica annuale?"
            Reponses := array{"Wimbledon", "il Tour de France", "il Super Bowl", "il Pallone d'Oro"}
            BonneReponse := 1
        question:
            Enonce := "Quale finale di football americano e la piu vista negli USA?"
            Reponses := array{"il Pallone d'Oro", "il Tour de France", "il Super Bowl", "Wimbledon"}
            BonneReponse := 2
        question:
            Enonce := "In quale paese nacquero le antiche Olimpiadi?"
            Reponses := array{"la Grecia", "Parigi", "Londra", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "Quale medaglia premia il 1o posto alle Olimpiadi?"
            Reponses := array{"L'oro", "L'argento", "Il bronzo", "Il birdie"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport consiste nel fare vasche in acqua?"
            Reponses := array{"Il canottaggio", "Il nuoto", "Il ciclismo", "Lo sci"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport ha 6 giocatori per lato di una rete alta?"
            Reponses := array{"La pallacanestro", "La pallavolo", "La pallamano", "Il tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport popolare in India usa una mazza piatta?"
            Reponses := array{"Il golf", "Il baseball", "Il cricket", "L'hockey su ghiaccio"}
            BonneReponse := 2
        question:
            Enonce := "In quale sport si lancia la palla con la mano verso una porta?"
            Reponses := array{"La pallamano", "Il calcio", "Il rugby", "La pallavolo"}
            BonneReponse := 0
        question:
            Enonce := "Quale torneo di tennis si gioca a New York?"
            Reponses := array{"Roland Garros", "Wimbledon", "gli US Open", "gli Australian Open"}
            BonneReponse := 2
        question:
            Enonce := "Quale Slam apre la stagione (gennaio)?"
            Reponses := array{"gli US Open", "gli Australian Open", "Wimbledon", "Roland Garros"}
            BonneReponse := 1
        question:
            Enonce := "Quale trofeo premia il miglior calciatore dell'anno?"
            Reponses := array{"il Pallone d'Oro", "il Super Bowl", "il Tour de France", "Wimbledon"}
            BonneReponse := 0
        question:
            Enonce := "Quale medaglia premia il 2o posto?"
            Reponses := array{"Il bronzo", "L'oro", "L'argento", "L'ace"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama un servizio vincente diretto nel tennis?"
            Reponses := array{"L'ace", "Il birdie", "Lo strike", "Il gol"}
            BonneReponse := 0
        question:
            Enonce := "Nel golf, una buca uno sotto il par si chiama?"
            Reponses := array{"L'ace", "Il birdie", "Lo strike", "Il gol"}
            BonneReponse := 1
        question:
            Enonce := "Quale superficie ospita un incontro di judo?"
            Reponses := array{"La pista", "Il ring", "Il campo", "Il tatami"}
            BonneReponse := 3
        question:
            Enonce := "Quale gara si corre su 42,195 km?"
            Reponses := array{"Il canottaggio", "Il nuoto", "Il ciclismo", "L'atletica"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport olimpico consiste nel remare in squadra?"
            Reponses := array{"Il ciclismo", "Il nuoto", "Il canottaggio", "Lo sci"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi 2016?"
            Reponses := array{"Londra", "Rio de Janeiro", "Tokyo", "Pechino"}
            BonneReponse := 1
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi 2021?"
            Reponses := array{"Pechino", "Rio de Janeiro", "Londra", "Tokyo"}
            BonneReponse := 3
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi 2012?"
            Reponses := array{"Londra", "Rio de Janeiro", "Tokyo", "Pechino"}
            BonneReponse := 0
        question:
            Enonce := "Qual e la categoria regina dell'automobilismo?"
            Reponses := array{"Il golf", "Il ciclismo", "Lo sci", "La Formula 1"}
            BonneReponse := 3
        question:
            Enonce := "Quale medaglia premia il 3o posto?"
            Reponses := array{"Il bronzo", "L'oro", "L'argento", "La meta"}
            BonneReponse := 0
        question:
            Enonce := "Nel bowling, abbattere tutti i 10 birilli si chiama?"
            Reponses := array{"Il gol", "L'ace", "Il birdie", "Lo strike"}
            BonneReponse := 3
        question:
            Enonce := "Quale citta ha ospitato le prime Olimpiadi moderne (1896)?"
            Reponses := array{"Atene", "Parigi", "Londra", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi 2008?"
            Reponses := array{"Pechino", "Tokyo", "Londra", "Rio de Janeiro"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi 1992?"
            Reponses := array{"Parigi", "Atene", "Barcellona", "Rio de Janeiro"}
            BonneReponse := 2
        question:
            Enonce := "Quale citta ospita le Olimpiadi estive 2028?"
            Reponses := array{"Los Angeles", "Parigi", "Tokyo", "Barcellona"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta ha ospitato le Olimpiadi estive 2024?"
            Reponses := array{"Parigi", "Los Angeles", "Londra", "Tokyo"}
            BonneReponse := 0
        question:
            Enonce := "Come si chiama la fine di un incontro di boxe per atterramento contato?"
            Reponses := array{"Lo strike", "Il KO", "L'ace", "La meta"}
            BonneReponse := 1
        question:
            Enonce := "In quale sport si gioca su green e fairway?"
            Reponses := array{"Il cricket", "Il golf", "Il baseball", "Il tennis"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport di squadra usa bastone e pallina dura (prato)?"
            Reponses := array{"Il cricket", "Il rugby", "L'hockey su ghiaccio", "Il baseball"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama l'azione da 5 punti nel rugby?"
            Reponses := array{"Il gol", "La meta", "Il canestro", "L'ace"}
            BonneReponse := 1
        question:
            Enonce := "Quale gioco di bocce si pratica soprattutto nel sud della Francia?"
            Reponses := array{"L'hockey su ghiaccio", "Il golf", "Il cricket", "Le bocce"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport usa una pallina e racchetta su un tavolo?"
            Reponses := array{"Il badminton", "Il tennis", "Il ping pong", "Il golf"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport si pratica sulle onde con una tavola?"
            Reponses := array{"Il surf", "Lo skateboard", "Lo sci", "Il nuoto"}
            BonneReponse := 0
        question:
            Enonce := "Come si chiamano 3 gol dello stesso giocatore?"
            Reponses := array{"L'ace", "Il rigore", "La schiacciata", "La tripletta"}
            BonneReponse := 3
        question:
            Enonce := "Come si chiama il tiro dal dischetto nel calcio?"
            Reponses := array{"Il rigore", "La meta", "Il gol", "L'ace"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport olimpico solleva un bilanciere pesantissimo?"
            Reponses := array{"La boxe", "La lotta", "Il judo", "Il sollevamento pesi"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport combina nuoto, ciclismo e corsa?"
            Reponses := array{"Il nuoto", "Il biathlon", "42 km", "Il triathlon"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport usa un volano e una racchetta leggera?"
            Reponses := array{"Il golf", "Il ping pong", "Il tennis", "Il badminton"}
            BonneReponse := 3
        question:
            Enonce := "Come si chiama una schiacciata potente nel basket?"
            Reponses := array{"Lo strike", "Il canestro", "La schiacciata", "L'ace"}
            BonneReponse := 2
        question:
            Enonce := "Quale arte marziale coreana e olimpica (calci)?"
            Reponses := array{"La boxe", "Il judo", "Il taekwondo", "La lotta"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport invernale fa scivolare pietre verso un bersaglio?"
            Reponses := array{"Lo sci", "L'hockey su ghiaccio", "Il curling", "Il pattinaggio artistico"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport invernale unisce sci di fondo e tiro?"
            Reponses := array{"Il triathlon", "Il curling", "Il biathlon", "Lo sci"}
            BonneReponse := 2
        question:
            Enonce := "Come si chiama un gruppo di game vinto nel tennis/volley?"
            Reponses := array{"L'ace", "Il set", "Il gol", "Il canestro"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport olimpico si gioca in acqua con palla e porte?"
            Reponses := array{"La pallanuoto", "Il nuoto", "Il canottaggio", "Il triathlon"}
            BonneReponse := 0
        question:
            Enonce := "Quale sport olimpico si pratica a cavallo?"
            Reponses := array{"Il ciclismo", "L'equitazione", "La scherma", "Il tiro con l'arco"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport olimpico tira frecce su un bersaglio?"
            Reponses := array{"La scherma", "Il tiro con l'arco", "Il biathlon", "La lotta"}
            BonneReponse := 1
        question:
            Enonce := "Quale sport olimpico immobilizza senza colpi?"
            Reponses := array{"Il judo", "La boxe", "Il taekwondo", "La lotta"}
            BonneReponse := 3
        question:
            Enonce := "Quale sport olimpico unisce salti e figure sul ghiaccio?"
            Reponses := array{"Il curling", "L'hockey su ghiaccio", "Il pattinaggio artistico", "Il biathlon"}
            BonneReponse := 2
        question:
            Enonce := "Quale sport olimpico usa attrezzi, corpo libero e trave?"
            Reponses := array{"La ginnastica", "Il pattinaggio artistico", "La lotta", "La scherma"}
            BonneReponse := 0
        question:
            Enonce := "Quale citta ospito le Olimpiadi 2000?"
            Reponses := array{"Rio de Janeiro", "Atene", "Pechino", "Sydney"}
            BonneReponse := 3
        question:
            Enonce := "Quale citta ospito le Olimpiadi 1980?"
            Reponses := array{"Berlino", "Mosca", "Roma", "Sydney"}
            BonneReponse := 1
        question:
            Enonce := "Quale citta ospito le Olimpiadi 1936?"
            Reponses := array{"Sydney", "Mosca", "Roma", "Berlino"}
            BonneReponse := 3
        question:
            Enonce := "Quale citta ospito le Olimpiadi 1960?"
            Reponses := array{"Roma", "Berlino", "Mosca", "Sydney"}
            BonneReponse := 0
        question:
            Enonce := "Quanti giocatori per squadra di calcio in campo?"
            Reponses := array{"12", "9", "10", "11"}
            BonneReponse := 3
        question:
            Enonce := "Quanti giocatori per squadra di basket in campo?"
            Reponses := array{"5", "4", "6", "7"}
            BonneReponse := 0
        question:
            Enonce := "Quanti anelli olimpici ci sono?"
            Reponses := array{"6", "4", "5", "7"}
            BonneReponse := 2
        question:
            Enonce := "Ogni quanti anni si tengono le Olimpiadi estive?"
            Reponses := array{"4", "2", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Quanti giocatori per squadra di pallavolo in campo?"
            Reponses := array{"8", "5", "7", "6"}
            BonneReponse := 3
        question:
            Enonce := "Quanti giocatori in una squadra di rugby a 15?"
            Reponses := array{"13", "15", "14", "16"}
            BonneReponse := 1
        question:
            Enonce := "Quante buche ha un campo da golf standard?"
            Reponses := array{"20", "9", "12", "18"}
            BonneReponse := 3
        question:
            Enonce := "Quanti giocatori per squadra di pallamano in campo?"
            Reponses := array{"8", "6", "7", "11"}
            BonneReponse := 2
        question:
            Enonce := "Quanti game di solito vincono un set di tennis?"
            Reponses := array{"4", "6", "5", "7"}
            BonneReponse := 1
        question:
            Enonce := "Quanti giocatori per squadra di baseball in campo?"
            Reponses := array{"11", "8", "10", "9"}
            BonneReponse := 3
        question:
            Enonce := "Quanti giocatori in una squadra di rugby a 13?"
            Reponses := array{"15", "11", "13", "17"}
            BonneReponse := 2
        question:
            Enonce := "Quanti inning ha una partita di baseball?"
            Reponses := array{"12", "7", "11", "9"}
            BonneReponse := 3
        question:
            Enonce := "Quanti birilli ci sono nel bowling?"
            Reponses := array{"8", "10", "9", "12"}
            BonneReponse := 1
        question:
            Enonce := "Quanti punti vale una trasformazione nel rugby?"
            Reponses := array{"2", "1", "3", "5"}
            BonneReponse := 0
        question:
            Enonce := "Quanti giri sono 800 m in pista standard?"
            Reponses := array{"3", "1", "2", "4"}
            BonneReponse := 2

MakeSportQuestions() : []question =
    MakeSportQuestionsFR()
