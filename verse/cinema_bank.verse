using { /Verse.org/Assets }

# cinema_bank.verse — Quizz CINEMA (qui a realise...)
# GENERE — NE PAS EDITER A LA MAIN.

CinemaDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeCinemaQuestionsFR() : []question =
    array:
        question:
            Enonce := "Qui a realise Titanic ?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "James Cameron", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Avatar ?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Luc Besson", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Jurassic Park ?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise E.T. ?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Les Dents de la mer ?"
            Reponses := array{"Alfred Hitchcock", "Steven Spielberg", "Robert Zemeckis", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Pulp Fiction ?"
            Reponses := array{"Stanley Kubrick", "Jean-Pierre Jeunet", "James Cameron", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Kill Bill ?"
            Reponses := array{"Quentin Tarantino", "Christopher Nolan", "Robert Zemeckis", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Inception ?"
            Reponses := array{"George Lucas", "Alfred Hitchcock", "James Cameron", "Christopher Nolan"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Interstellar ?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "James Cameron", "Ridley Scott"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise The Dark Knight ?"
            Reponses := array{"Christopher Nolan", "Steven Spielberg", "George Lucas", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Oppenheimer ?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "George Lucas", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Star Wars ?"
            Reponses := array{"Steven Spielberg", "George Lucas", "Les Wachowski", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Le Parrain ?"
            Reponses := array{"George Lucas", "Christopher Nolan", "Steven Spielberg", "Francis Ford Coppola"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Psychose ?"
            Reponses := array{"Alfred Hitchcock", "Jean-Pierre Jeunet", "Quentin Tarantino", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Les Oiseaux ?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "Alfred Hitchcock", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise La Liste de Schindler ?"
            Reponses := array{"Jean-Pierre Jeunet", "Luc Besson", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Gladiator ?"
            Reponses := array{"James Cameron", "Luc Besson", "Ridley Scott", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Alien ?"
            Reponses := array{"Christopher Nolan", "Quentin Tarantino", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Shining ?"
            Reponses := array{"Steven Spielberg", "Stanley Kubrick", "Quentin Tarantino", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Forrest Gump ?"
            Reponses := array{"Quentin Tarantino", "Robert Zemeckis", "Jean-Pierre Jeunet", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Retour vers le futur ?"
            Reponses := array{"Robert Zemeckis", "Stanley Kubrick", "Luc Besson", "Alfred Hitchcock"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Matrix ?"
            Reponses := array{"Luc Besson", "Steven Spielberg", "Les Wachowski", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Terminator ?"
            Reponses := array{"George Lucas", "James Cameron", "Ridley Scott", "Steven Spielberg"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Le Fabuleux Destin d'Amelie Poulain ?"
            Reponses := array{"Ridley Scott", "Jean-Pierre Jeunet", "Luc Besson", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Le Grand Bleu ?"
            Reponses := array{"Christopher Nolan", "Robert Zemeckis", "Luc Besson", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Leon ?"
            Reponses := array{"Steven Spielberg", "Robert Zemeckis", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Le Cinquieme Element ?"
            Reponses := array{"Les Wachowski", "Stanley Kubrick", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Fight Club ?"
            Reponses := array{"Hayao Miyazaki", "Park Chan-wook", "Ridley Scott", "David Fincher"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Seven ?"
            Reponses := array{"Ridley Scott", "Quentin Tarantino", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Gone Girl ?"
            Reponses := array{"Park Chan-wook", "Martin Scorsese", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise The Social Network ?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Django Unchained ?"
            Reponses := array{"Martin Scorsese", "Steven Spielberg", "Quentin Tarantino", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Inglourious Basterds ?"
            Reponses := array{"Stanley Kubrick", "Quentin Tarantino", "Steven Spielberg", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Once Upon a Time in Hollywood ?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Park Chan-wook"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Dunkerque ?"
            Reponses := array{"Martin Scorsese", "Christopher Nolan", "Quentin Tarantino", "David Fincher"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Tenet ?"
            Reponses := array{"Christopher Nolan", "Hayao Miyazaki", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Les Affranchis ?"
            Reponses := array{"Quentin Tarantino", "Ridley Scott", "Martin Scorsese", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Taxi Driver ?"
            Reponses := array{"Steven Spielberg", "Christopher Nolan", "Todd Phillips", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Le Loup de Wall Street ?"
            Reponses := array{"David Fincher", "Quentin Tarantino", "Hayao Miyazaki", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Casino ?"
            Reponses := array{"Martin Scorsese", "Stanley Kubrick", "Damien Chazelle", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Apocalypse Now ?"
            Reponses := array{"Bong Joon-ho", "Francis Ford Coppola", "Martin Scorsese", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Full Metal Jacket ?"
            Reponses := array{"Stanley Kubrick", "Martin Scorsese", "Ridley Scott", "Christopher Nolan"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Orange mecanique ?"
            Reponses := array{"Ridley Scott", "Stanley Kubrick", "Christopher Nolan", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Il faut sauver le soldat Ryan ?"
            Reponses := array{"Martin Scorsese", "David Fincher", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Les Aventuriers de l'arche perdue ?"
            Reponses := array{"Quentin Tarantino", "Steven Spielberg", "Martin Scorsese", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Blade Runner ?"
            Reponses := array{"Quentin Tarantino", "Park Chan-wook", "Ridley Scott", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Seul sur Mars ?"
            Reponses := array{"Hayao Miyazaki", "Todd Phillips", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Mad Max: Fury Road ?"
            Reponses := array{"David Fincher", "George Miller", "Quentin Tarantino", "Bong Joon-ho"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Joker ?"
            Reponses := array{"Park Chan-wook", "Damien Chazelle", "Francis Ford Coppola", "Todd Phillips"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise La La Land ?"
            Reponses := array{"George Miller", "Martin Scorsese", "Damien Chazelle", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Whiplash ?"
            Reponses := array{"David Fincher", "Damien Chazelle", "Martin Scorsese", "George Miller"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Parasite ?"
            Reponses := array{"George Miller", "Damien Chazelle", "Christopher Nolan", "Bong Joon-ho"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Old Boy ?"
            Reponses := array{"Stanley Kubrick", "Steven Spielberg", "Martin Scorsese", "Park Chan-wook"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Le Voyage de Chihiro ?"
            Reponses := array{"Quentin Tarantino", "Hayao Miyazaki", "Park Chan-wook", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Princesse Mononoke ?"
            Reponses := array{"Todd Phillips", "Park Chan-wook", "Hayao Miyazaki", "David Fincher"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Citizen Kane ?"
            Reponses := array{"Federico Fellini", "Orson Welles", "Darren Aronofsky", "Fritz Lang"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Sueurs froides ?"
            Reponses := array{"Roman Polanski", "Alfred Hitchcock", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Fenetre sur cour ?"
            Reponses := array{"Federico Fellini", "Alfred Hitchcock", "Sergio Leone", "Orson Welles"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Metropolis ?"
            Reponses := array{"Fritz Lang", "Wes Anderson", "Sergio Leone", "Federico Fellini"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Le Dictateur ?"
            Reponses := array{"Charlie Chaplin", "Wes Anderson", "Lars von Trier", "Alejandro G. Inarritu"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Les Temps modernes ?"
            Reponses := array{"Wes Anderson", "Federico Fellini", "Charlie Chaplin", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise La Dolce Vita ?"
            Reponses := array{"Sergio Leone", "Nicolas Winding Refn", "Federico Fellini", "Fritz Lang"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise 8 1/2 ?"
            Reponses := array{"Alejandro G. Inarritu", "Federico Fellini", "Akira Kurosawa", "Charlie Chaplin"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Le Bon, la Brute et le Truand ?"
            Reponses := array{"Sergio Leone", "Denis Villeneuve", "Roman Polanski", "Orson Welles"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Il etait une fois dans l'Ouest ?"
            Reponses := array{"Charlie Chaplin", "Akira Kurosawa", "Sergio Leone", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Les Sept Samourais ?"
            Reponses := array{"Sergio Leone", "Federico Fellini", "Akira Kurosawa", "Alejandro G. Inarritu"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Ran ?"
            Reponses := array{"Alejandro G. Inarritu", "Akira Kurosawa", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise A bout de souffle ?"
            Reponses := array{"Jean-Luc Godard", "Lars von Trier", "Alfred Hitchcock", "Darren Aronofsky"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Les 400 Coups ?"
            Reponses := array{"Sergio Leone", "Akira Kurosawa", "Alfred Hitchcock", "Francois Truffaut"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Requiem for a Dream ?"
            Reponses := array{"Alejandro G. Inarritu", "Lars von Trier", "Darren Aronofsky", "Nicolas Winding Refn"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Black Swan ?"
            Reponses := array{"Denis Villeneuve", "Jean-Luc Godard", "Wes Anderson", "Darren Aronofsky"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Birdman ?"
            Reponses := array{"Charlie Chaplin", "Alfred Hitchcock", "Francois Truffaut", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise The Revenant ?"
            Reponses := array{"Wes Anderson", "Orson Welles", "Jean-Luc Godard", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise The Grand Budapest Hotel ?"
            Reponses := array{"Darren Aronofsky", "Alejandro G. Inarritu", "Wes Anderson", "Spike Jonze"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Moonrise Kingdom ?"
            Reponses := array{"Roman Polanski", "Wes Anderson", "Alejandro G. Inarritu", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Drive ?"
            Reponses := array{"Nicolas Winding Refn", "Spike Jonze", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Her ?"
            Reponses := array{"Lars von Trier", "Alejandro G. Inarritu", "Spike Jonze", "Francois Truffaut"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Eternal Sunshine of the Spotless Mind ?"
            Reponses := array{"Michel Gondry", "Federico Fellini", "Alfred Hitchcock", "Sergio Leone"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Melancholia ?"
            Reponses := array{"Lars von Trier", "Charlie Chaplin", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 0
        question:
            Enonce := "Qui a realise Le Pianiste ?"
            Reponses := array{"Spike Jonze", "Roman Polanski", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 1
        question:
            Enonce := "Qui a realise Dune ?"
            Reponses := array{"Lars von Trier", "Nicolas Winding Refn", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 3
        question:
            Enonce := "Qui a realise Premier Contact ?"
            Reponses := array{"Francois Truffaut", "Alfred Hitchcock", "Denis Villeneuve", "Jean-Luc Godard"}
            BonneReponse := 2
        question:
            Enonce := "Qui a realise Blade Runner 2049 ?"
            Reponses := array{"Jean-Luc Godard", "Orson Welles", "Denis Villeneuve", "Francois Truffaut"}
            BonneReponse := 2

MakeCinemaQuestionsEN() : []question =
    array:
        question:
            Enonce := "Who directed Titanic?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "James Cameron", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Avatar?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Luc Besson", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Jurassic Park?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Who directed E.T.?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Jaws?"
            Reponses := array{"Alfred Hitchcock", "Steven Spielberg", "Robert Zemeckis", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Pulp Fiction?"
            Reponses := array{"Stanley Kubrick", "Jean-Pierre Jeunet", "James Cameron", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Kill Bill?"
            Reponses := array{"Quentin Tarantino", "Christopher Nolan", "Robert Zemeckis", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Inception?"
            Reponses := array{"George Lucas", "Alfred Hitchcock", "James Cameron", "Christopher Nolan"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Interstellar?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "James Cameron", "Ridley Scott"}
            BonneReponse := 0
        question:
            Enonce := "Who directed The Dark Knight?"
            Reponses := array{"Christopher Nolan", "Steven Spielberg", "George Lucas", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Oppenheimer?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "George Lucas", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Star Wars?"
            Reponses := array{"Steven Spielberg", "George Lucas", "Les Wachowski", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Who directed The Godfather?"
            Reponses := array{"George Lucas", "Christopher Nolan", "Steven Spielberg", "Francis Ford Coppola"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Psycho?"
            Reponses := array{"Alfred Hitchcock", "Jean-Pierre Jeunet", "Quentin Tarantino", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Who directed The Birds?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "Alfred Hitchcock", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Schindler's List?"
            Reponses := array{"Jean-Pierre Jeunet", "Luc Besson", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Gladiator?"
            Reponses := array{"James Cameron", "Luc Besson", "Ridley Scott", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Alien?"
            Reponses := array{"Christopher Nolan", "Quentin Tarantino", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Who directed The Shining?"
            Reponses := array{"Steven Spielberg", "Stanley Kubrick", "Quentin Tarantino", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Forrest Gump?"
            Reponses := array{"Quentin Tarantino", "Robert Zemeckis", "Jean-Pierre Jeunet", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Back to the Future?"
            Reponses := array{"Robert Zemeckis", "Stanley Kubrick", "Luc Besson", "Alfred Hitchcock"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Matrix?"
            Reponses := array{"Luc Besson", "Steven Spielberg", "Les Wachowski", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Terminator?"
            Reponses := array{"George Lucas", "James Cameron", "Ridley Scott", "Steven Spielberg"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Amelie?"
            Reponses := array{"Ridley Scott", "Jean-Pierre Jeunet", "Luc Besson", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Who directed The Big Blue?"
            Reponses := array{"Christopher Nolan", "Robert Zemeckis", "Luc Besson", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Leon?"
            Reponses := array{"Steven Spielberg", "Robert Zemeckis", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Who directed The Fifth Element?"
            Reponses := array{"Les Wachowski", "Stanley Kubrick", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Fight Club?"
            Reponses := array{"Hayao Miyazaki", "Park Chan-wook", "Ridley Scott", "David Fincher"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Seven?"
            Reponses := array{"Ridley Scott", "Quentin Tarantino", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Gone Girl?"
            Reponses := array{"Park Chan-wook", "Martin Scorsese", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Who directed The Social Network?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Django Unchained?"
            Reponses := array{"Martin Scorsese", "Steven Spielberg", "Quentin Tarantino", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Inglourious Basterds?"
            Reponses := array{"Stanley Kubrick", "Quentin Tarantino", "Steven Spielberg", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Once Upon a Time in Hollywood?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Park Chan-wook"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Dunkirk?"
            Reponses := array{"Martin Scorsese", "Christopher Nolan", "Quentin Tarantino", "David Fincher"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Tenet?"
            Reponses := array{"Christopher Nolan", "Hayao Miyazaki", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Goodfellas?"
            Reponses := array{"Quentin Tarantino", "Ridley Scott", "Martin Scorsese", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Taxi Driver?"
            Reponses := array{"Steven Spielberg", "Christopher Nolan", "Todd Phillips", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Who directed The Wolf of Wall Street?"
            Reponses := array{"David Fincher", "Quentin Tarantino", "Hayao Miyazaki", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Casino?"
            Reponses := array{"Martin Scorsese", "Stanley Kubrick", "Damien Chazelle", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Apocalypse Now?"
            Reponses := array{"Bong Joon-ho", "Francis Ford Coppola", "Martin Scorsese", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Full Metal Jacket?"
            Reponses := array{"Stanley Kubrick", "Martin Scorsese", "Ridley Scott", "Christopher Nolan"}
            BonneReponse := 0
        question:
            Enonce := "Who directed A Clockwork Orange?"
            Reponses := array{"Ridley Scott", "Stanley Kubrick", "Christopher Nolan", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Saving Private Ryan?"
            Reponses := array{"Martin Scorsese", "David Fincher", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Raiders of the Lost Ark?"
            Reponses := array{"Quentin Tarantino", "Steven Spielberg", "Martin Scorsese", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Blade Runner?"
            Reponses := array{"Quentin Tarantino", "Park Chan-wook", "Ridley Scott", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Who directed The Martian?"
            Reponses := array{"Hayao Miyazaki", "Todd Phillips", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Mad Max: Fury Road?"
            Reponses := array{"David Fincher", "George Miller", "Quentin Tarantino", "Bong Joon-ho"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Joker?"
            Reponses := array{"Park Chan-wook", "Damien Chazelle", "Francis Ford Coppola", "Todd Phillips"}
            BonneReponse := 3
        question:
            Enonce := "Who directed La La Land?"
            Reponses := array{"George Miller", "Martin Scorsese", "Damien Chazelle", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Whiplash?"
            Reponses := array{"David Fincher", "Damien Chazelle", "Martin Scorsese", "George Miller"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Parasite?"
            Reponses := array{"George Miller", "Damien Chazelle", "Christopher Nolan", "Bong Joon-ho"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Old Boy?"
            Reponses := array{"Stanley Kubrick", "Steven Spielberg", "Martin Scorsese", "Park Chan-wook"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Spirited Away?"
            Reponses := array{"Quentin Tarantino", "Hayao Miyazaki", "Park Chan-wook", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Princess Mononoke?"
            Reponses := array{"Todd Phillips", "Park Chan-wook", "Hayao Miyazaki", "David Fincher"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Citizen Kane?"
            Reponses := array{"Federico Fellini", "Orson Welles", "Darren Aronofsky", "Fritz Lang"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Vertigo?"
            Reponses := array{"Roman Polanski", "Alfred Hitchcock", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Rear Window?"
            Reponses := array{"Federico Fellini", "Alfred Hitchcock", "Sergio Leone", "Orson Welles"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Metropolis?"
            Reponses := array{"Fritz Lang", "Wes Anderson", "Sergio Leone", "Federico Fellini"}
            BonneReponse := 0
        question:
            Enonce := "Who directed The Great Dictator?"
            Reponses := array{"Charlie Chaplin", "Wes Anderson", "Lars von Trier", "Alejandro G. Inarritu"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Modern Times?"
            Reponses := array{"Wes Anderson", "Federico Fellini", "Charlie Chaplin", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Who directed La Dolce Vita?"
            Reponses := array{"Sergio Leone", "Nicolas Winding Refn", "Federico Fellini", "Fritz Lang"}
            BonneReponse := 2
        question:
            Enonce := "Who directed 8 1/2?"
            Reponses := array{"Alejandro G. Inarritu", "Federico Fellini", "Akira Kurosawa", "Charlie Chaplin"}
            BonneReponse := 1
        question:
            Enonce := "Who directed The Good, the Bad and the Ugly?"
            Reponses := array{"Sergio Leone", "Denis Villeneuve", "Roman Polanski", "Orson Welles"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Once Upon a Time in the West?"
            Reponses := array{"Charlie Chaplin", "Akira Kurosawa", "Sergio Leone", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Seven Samurai?"
            Reponses := array{"Sergio Leone", "Federico Fellini", "Akira Kurosawa", "Alejandro G. Inarritu"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Ran?"
            Reponses := array{"Alejandro G. Inarritu", "Akira Kurosawa", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Breathless?"
            Reponses := array{"Jean-Luc Godard", "Lars von Trier", "Alfred Hitchcock", "Darren Aronofsky"}
            BonneReponse := 0
        question:
            Enonce := "Who directed The 400 Blows?"
            Reponses := array{"Sergio Leone", "Akira Kurosawa", "Alfred Hitchcock", "Francois Truffaut"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Requiem for a Dream?"
            Reponses := array{"Alejandro G. Inarritu", "Lars von Trier", "Darren Aronofsky", "Nicolas Winding Refn"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Black Swan?"
            Reponses := array{"Denis Villeneuve", "Jean-Luc Godard", "Wes Anderson", "Darren Aronofsky"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Birdman?"
            Reponses := array{"Charlie Chaplin", "Alfred Hitchcock", "Francois Truffaut", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Who directed The Revenant?"
            Reponses := array{"Wes Anderson", "Orson Welles", "Jean-Luc Godard", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Who directed The Grand Budapest Hotel?"
            Reponses := array{"Darren Aronofsky", "Alejandro G. Inarritu", "Wes Anderson", "Spike Jonze"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Moonrise Kingdom?"
            Reponses := array{"Roman Polanski", "Wes Anderson", "Alejandro G. Inarritu", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Drive?"
            Reponses := array{"Nicolas Winding Refn", "Spike Jonze", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Her?"
            Reponses := array{"Lars von Trier", "Alejandro G. Inarritu", "Spike Jonze", "Francois Truffaut"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Eternal Sunshine of the Spotless Mind?"
            Reponses := array{"Michel Gondry", "Federico Fellini", "Alfred Hitchcock", "Sergio Leone"}
            BonneReponse := 0
        question:
            Enonce := "Who directed Melancholia?"
            Reponses := array{"Lars von Trier", "Charlie Chaplin", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 0
        question:
            Enonce := "Who directed The Pianist?"
            Reponses := array{"Spike Jonze", "Roman Polanski", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 1
        question:
            Enonce := "Who directed Dune?"
            Reponses := array{"Lars von Trier", "Nicolas Winding Refn", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 3
        question:
            Enonce := "Who directed Arrival?"
            Reponses := array{"Francois Truffaut", "Alfred Hitchcock", "Denis Villeneuve", "Jean-Luc Godard"}
            BonneReponse := 2
        question:
            Enonce := "Who directed Blade Runner 2049?"
            Reponses := array{"Jean-Luc Godard", "Orson Welles", "Denis Villeneuve", "Francois Truffaut"}
            BonneReponse := 2

MakeCinemaQuestionsES() : []question =
    array:
        question:
            Enonce := "Quien dirigio Titanic?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "James Cameron", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Avatar?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Luc Besson", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Jurassic Park?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio E.T.?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Tiburon?"
            Reponses := array{"Alfred Hitchcock", "Steven Spielberg", "Robert Zemeckis", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Pulp Fiction?"
            Reponses := array{"Stanley Kubrick", "Jean-Pierre Jeunet", "James Cameron", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Kill Bill?"
            Reponses := array{"Quentin Tarantino", "Christopher Nolan", "Robert Zemeckis", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Inception?"
            Reponses := array{"George Lucas", "Alfred Hitchcock", "James Cameron", "Christopher Nolan"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Interstellar?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "James Cameron", "Ridley Scott"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio The Dark Knight?"
            Reponses := array{"Christopher Nolan", "Steven Spielberg", "George Lucas", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Oppenheimer?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "George Lucas", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Star Wars?"
            Reponses := array{"Steven Spielberg", "George Lucas", "Les Wachowski", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio El Padrino?"
            Reponses := array{"George Lucas", "Christopher Nolan", "Steven Spielberg", "Francis Ford Coppola"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Psicosis?"
            Reponses := array{"Alfred Hitchcock", "Jean-Pierre Jeunet", "Quentin Tarantino", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Los pajaros?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "Alfred Hitchcock", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio La lista de Schindler?"
            Reponses := array{"Jean-Pierre Jeunet", "Luc Besson", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Gladiator?"
            Reponses := array{"James Cameron", "Luc Besson", "Ridley Scott", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Alien?"
            Reponses := array{"Christopher Nolan", "Quentin Tarantino", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio El resplandor?"
            Reponses := array{"Steven Spielberg", "Stanley Kubrick", "Quentin Tarantino", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Forrest Gump?"
            Reponses := array{"Quentin Tarantino", "Robert Zemeckis", "Jean-Pierre Jeunet", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Regreso al futuro?"
            Reponses := array{"Robert Zemeckis", "Stanley Kubrick", "Luc Besson", "Alfred Hitchcock"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Matrix?"
            Reponses := array{"Luc Besson", "Steven Spielberg", "Les Wachowski", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Terminator?"
            Reponses := array{"George Lucas", "James Cameron", "Ridley Scott", "Steven Spielberg"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Amelie?"
            Reponses := array{"Ridley Scott", "Jean-Pierre Jeunet", "Luc Besson", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio El gran azul?"
            Reponses := array{"Christopher Nolan", "Robert Zemeckis", "Luc Besson", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Leon?"
            Reponses := array{"Steven Spielberg", "Robert Zemeckis", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio El quinto elemento?"
            Reponses := array{"Les Wachowski", "Stanley Kubrick", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Fight Club?"
            Reponses := array{"Hayao Miyazaki", "Park Chan-wook", "Ridley Scott", "David Fincher"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Seven?"
            Reponses := array{"Ridley Scott", "Quentin Tarantino", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Gone Girl?"
            Reponses := array{"Park Chan-wook", "Martin Scorsese", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio The Social Network?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Django Unchained?"
            Reponses := array{"Martin Scorsese", "Steven Spielberg", "Quentin Tarantino", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Inglourious Basterds?"
            Reponses := array{"Stanley Kubrick", "Quentin Tarantino", "Steven Spielberg", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Once Upon a Time in Hollywood?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Park Chan-wook"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Dunkerque?"
            Reponses := array{"Martin Scorsese", "Christopher Nolan", "Quentin Tarantino", "David Fincher"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Tenet?"
            Reponses := array{"Christopher Nolan", "Hayao Miyazaki", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Uno de los nuestros?"
            Reponses := array{"Quentin Tarantino", "Ridley Scott", "Martin Scorsese", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Taxi Driver?"
            Reponses := array{"Steven Spielberg", "Christopher Nolan", "Todd Phillips", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio El lobo de Wall Street?"
            Reponses := array{"David Fincher", "Quentin Tarantino", "Hayao Miyazaki", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Casino?"
            Reponses := array{"Martin Scorsese", "Stanley Kubrick", "Damien Chazelle", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Apocalypse Now?"
            Reponses := array{"Bong Joon-ho", "Francis Ford Coppola", "Martin Scorsese", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Full Metal Jacket?"
            Reponses := array{"Stanley Kubrick", "Martin Scorsese", "Ridley Scott", "Christopher Nolan"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio La naranja mecanica?"
            Reponses := array{"Ridley Scott", "Stanley Kubrick", "Christopher Nolan", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Salvar al soldado Ryan?"
            Reponses := array{"Martin Scorsese", "David Fincher", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio En busca del arca perdida?"
            Reponses := array{"Quentin Tarantino", "Steven Spielberg", "Martin Scorsese", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Blade Runner?"
            Reponses := array{"Quentin Tarantino", "Park Chan-wook", "Ridley Scott", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Marte?"
            Reponses := array{"Hayao Miyazaki", "Todd Phillips", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Mad Max: Fury Road?"
            Reponses := array{"David Fincher", "George Miller", "Quentin Tarantino", "Bong Joon-ho"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Joker?"
            Reponses := array{"Park Chan-wook", "Damien Chazelle", "Francis Ford Coppola", "Todd Phillips"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio La La Land?"
            Reponses := array{"George Miller", "Martin Scorsese", "Damien Chazelle", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Whiplash?"
            Reponses := array{"David Fincher", "Damien Chazelle", "Martin Scorsese", "George Miller"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Parasite?"
            Reponses := array{"George Miller", "Damien Chazelle", "Christopher Nolan", "Bong Joon-ho"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Old Boy?"
            Reponses := array{"Stanley Kubrick", "Steven Spielberg", "Martin Scorsese", "Park Chan-wook"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio El viaje de Chihiro?"
            Reponses := array{"Quentin Tarantino", "Hayao Miyazaki", "Park Chan-wook", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio La princesa Mononoke?"
            Reponses := array{"Todd Phillips", "Park Chan-wook", "Hayao Miyazaki", "David Fincher"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Citizen Kane?"
            Reponses := array{"Federico Fellini", "Orson Welles", "Darren Aronofsky", "Fritz Lang"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Vertigo?"
            Reponses := array{"Roman Polanski", "Alfred Hitchcock", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio La ventana indiscreta?"
            Reponses := array{"Federico Fellini", "Alfred Hitchcock", "Sergio Leone", "Orson Welles"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Metropolis?"
            Reponses := array{"Fritz Lang", "Wes Anderson", "Sergio Leone", "Federico Fellini"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio El gran dictador?"
            Reponses := array{"Charlie Chaplin", "Wes Anderson", "Lars von Trier", "Alejandro G. Inarritu"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Tiempos modernos?"
            Reponses := array{"Wes Anderson", "Federico Fellini", "Charlie Chaplin", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio La Dolce Vita?"
            Reponses := array{"Sergio Leone", "Nicolas Winding Refn", "Federico Fellini", "Fritz Lang"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio 8 1/2?"
            Reponses := array{"Alejandro G. Inarritu", "Federico Fellini", "Akira Kurosawa", "Charlie Chaplin"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio El bueno, el feo y el malo?"
            Reponses := array{"Sergio Leone", "Denis Villeneuve", "Roman Polanski", "Orson Welles"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Hasta que llego su hora?"
            Reponses := array{"Charlie Chaplin", "Akira Kurosawa", "Sergio Leone", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Los siete samurais?"
            Reponses := array{"Sergio Leone", "Federico Fellini", "Akira Kurosawa", "Alejandro G. Inarritu"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Ran?"
            Reponses := array{"Alejandro G. Inarritu", "Akira Kurosawa", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Al final de la escapada?"
            Reponses := array{"Jean-Luc Godard", "Lars von Trier", "Alfred Hitchcock", "Darren Aronofsky"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Los cuatrocientos golpes?"
            Reponses := array{"Sergio Leone", "Akira Kurosawa", "Alfred Hitchcock", "Francois Truffaut"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Requiem for a Dream?"
            Reponses := array{"Alejandro G. Inarritu", "Lars von Trier", "Darren Aronofsky", "Nicolas Winding Refn"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Black Swan?"
            Reponses := array{"Denis Villeneuve", "Jean-Luc Godard", "Wes Anderson", "Darren Aronofsky"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio Birdman?"
            Reponses := array{"Charlie Chaplin", "Alfred Hitchcock", "Francois Truffaut", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio The Revenant?"
            Reponses := array{"Wes Anderson", "Orson Welles", "Jean-Luc Godard", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio The Grand Budapest Hotel?"
            Reponses := array{"Darren Aronofsky", "Alejandro G. Inarritu", "Wes Anderson", "Spike Jonze"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Moonrise Kingdom?"
            Reponses := array{"Roman Polanski", "Wes Anderson", "Alejandro G. Inarritu", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Drive?"
            Reponses := array{"Nicolas Winding Refn", "Spike Jonze", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Her?"
            Reponses := array{"Lars von Trier", "Alejandro G. Inarritu", "Spike Jonze", "Francois Truffaut"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Eternal Sunshine of the Spotless Mind?"
            Reponses := array{"Michel Gondry", "Federico Fellini", "Alfred Hitchcock", "Sergio Leone"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio Melancholia?"
            Reponses := array{"Lars von Trier", "Charlie Chaplin", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 0
        question:
            Enonce := "Quien dirigio El pianista?"
            Reponses := array{"Spike Jonze", "Roman Polanski", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 1
        question:
            Enonce := "Quien dirigio Dune?"
            Reponses := array{"Lars von Trier", "Nicolas Winding Refn", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 3
        question:
            Enonce := "Quien dirigio La llegada?"
            Reponses := array{"Francois Truffaut", "Alfred Hitchcock", "Denis Villeneuve", "Jean-Luc Godard"}
            BonneReponse := 2
        question:
            Enonce := "Quien dirigio Blade Runner 2049?"
            Reponses := array{"Jean-Luc Godard", "Orson Welles", "Denis Villeneuve", "Francois Truffaut"}
            BonneReponse := 2

MakeCinemaQuestionsDE() : []question =
    array:
        question:
            Enonce := "Wer fuehrte Regie bei Titanic?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "James Cameron", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Avatar?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Luc Besson", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Jurassic Park?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei E.T.?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Der weisse Hai?"
            Reponses := array{"Alfred Hitchcock", "Steven Spielberg", "Robert Zemeckis", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Pulp Fiction?"
            Reponses := array{"Stanley Kubrick", "Jean-Pierre Jeunet", "James Cameron", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Kill Bill?"
            Reponses := array{"Quentin Tarantino", "Christopher Nolan", "Robert Zemeckis", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Inception?"
            Reponses := array{"George Lucas", "Alfred Hitchcock", "James Cameron", "Christopher Nolan"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Interstellar?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "James Cameron", "Ridley Scott"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei The Dark Knight?"
            Reponses := array{"Christopher Nolan", "Steven Spielberg", "George Lucas", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Oppenheimer?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "George Lucas", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Star Wars?"
            Reponses := array{"Steven Spielberg", "George Lucas", "Les Wachowski", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Der Pate?"
            Reponses := array{"George Lucas", "Christopher Nolan", "Steven Spielberg", "Francis Ford Coppola"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Psycho?"
            Reponses := array{"Alfred Hitchcock", "Jean-Pierre Jeunet", "Quentin Tarantino", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Die Voegel?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "Alfred Hitchcock", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Schindlers Liste?"
            Reponses := array{"Jean-Pierre Jeunet", "Luc Besson", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Gladiator?"
            Reponses := array{"James Cameron", "Luc Besson", "Ridley Scott", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Alien?"
            Reponses := array{"Christopher Nolan", "Quentin Tarantino", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Shining?"
            Reponses := array{"Steven Spielberg", "Stanley Kubrick", "Quentin Tarantino", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Forrest Gump?"
            Reponses := array{"Quentin Tarantino", "Robert Zemeckis", "Jean-Pierre Jeunet", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Zurueck in die Zukunft?"
            Reponses := array{"Robert Zemeckis", "Stanley Kubrick", "Luc Besson", "Alfred Hitchcock"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Matrix?"
            Reponses := array{"Luc Besson", "Steven Spielberg", "Les Wachowski", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Terminator?"
            Reponses := array{"George Lucas", "James Cameron", "Ridley Scott", "Steven Spielberg"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Die fabelhafte Welt der Amelie?"
            Reponses := array{"Ridley Scott", "Jean-Pierre Jeunet", "Luc Besson", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Im Rausch der Tiefe?"
            Reponses := array{"Christopher Nolan", "Robert Zemeckis", "Luc Besson", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Leon?"
            Reponses := array{"Steven Spielberg", "Robert Zemeckis", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Das fuenfte Element?"
            Reponses := array{"Les Wachowski", "Stanley Kubrick", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Fight Club?"
            Reponses := array{"Hayao Miyazaki", "Park Chan-wook", "Ridley Scott", "David Fincher"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Seven?"
            Reponses := array{"Ridley Scott", "Quentin Tarantino", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Gone Girl?"
            Reponses := array{"Park Chan-wook", "Martin Scorsese", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei The Social Network?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Django Unchained?"
            Reponses := array{"Martin Scorsese", "Steven Spielberg", "Quentin Tarantino", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Inglourious Basterds?"
            Reponses := array{"Stanley Kubrick", "Quentin Tarantino", "Steven Spielberg", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Once Upon a Time in Hollywood?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Park Chan-wook"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Dunkirk?"
            Reponses := array{"Martin Scorsese", "Christopher Nolan", "Quentin Tarantino", "David Fincher"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Tenet?"
            Reponses := array{"Christopher Nolan", "Hayao Miyazaki", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei GoodFellas?"
            Reponses := array{"Quentin Tarantino", "Ridley Scott", "Martin Scorsese", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Taxi Driver?"
            Reponses := array{"Steven Spielberg", "Christopher Nolan", "Todd Phillips", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei The Wolf of Wall Street?"
            Reponses := array{"David Fincher", "Quentin Tarantino", "Hayao Miyazaki", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Casino?"
            Reponses := array{"Martin Scorsese", "Stanley Kubrick", "Damien Chazelle", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Apocalypse Now?"
            Reponses := array{"Bong Joon-ho", "Francis Ford Coppola", "Martin Scorsese", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Full Metal Jacket?"
            Reponses := array{"Stanley Kubrick", "Martin Scorsese", "Ridley Scott", "Christopher Nolan"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Uhrwerk Orange?"
            Reponses := array{"Ridley Scott", "Stanley Kubrick", "Christopher Nolan", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Der Soldat James Ryan?"
            Reponses := array{"Martin Scorsese", "David Fincher", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Jaeger des verlorenen Schatzes?"
            Reponses := array{"Quentin Tarantino", "Steven Spielberg", "Martin Scorsese", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Blade Runner?"
            Reponses := array{"Quentin Tarantino", "Park Chan-wook", "Ridley Scott", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Der Marsianer?"
            Reponses := array{"Hayao Miyazaki", "Todd Phillips", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Mad Max: Fury Road?"
            Reponses := array{"David Fincher", "George Miller", "Quentin Tarantino", "Bong Joon-ho"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Joker?"
            Reponses := array{"Park Chan-wook", "Damien Chazelle", "Francis Ford Coppola", "Todd Phillips"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei La La Land?"
            Reponses := array{"George Miller", "Martin Scorsese", "Damien Chazelle", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Whiplash?"
            Reponses := array{"David Fincher", "Damien Chazelle", "Martin Scorsese", "George Miller"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Parasite?"
            Reponses := array{"George Miller", "Damien Chazelle", "Christopher Nolan", "Bong Joon-ho"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Old Boy?"
            Reponses := array{"Stanley Kubrick", "Steven Spielberg", "Martin Scorsese", "Park Chan-wook"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Chihiros Reise ins Zauberland?"
            Reponses := array{"Quentin Tarantino", "Hayao Miyazaki", "Park Chan-wook", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Prinzessin Mononoke?"
            Reponses := array{"Todd Phillips", "Park Chan-wook", "Hayao Miyazaki", "David Fincher"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Citizen Kane?"
            Reponses := array{"Federico Fellini", "Orson Welles", "Darren Aronofsky", "Fritz Lang"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Vertigo?"
            Reponses := array{"Roman Polanski", "Alfred Hitchcock", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Das Fenster zum Hof?"
            Reponses := array{"Federico Fellini", "Alfred Hitchcock", "Sergio Leone", "Orson Welles"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Metropolis?"
            Reponses := array{"Fritz Lang", "Wes Anderson", "Sergio Leone", "Federico Fellini"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Der grosse Diktator?"
            Reponses := array{"Charlie Chaplin", "Wes Anderson", "Lars von Trier", "Alejandro G. Inarritu"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Moderne Zeiten?"
            Reponses := array{"Wes Anderson", "Federico Fellini", "Charlie Chaplin", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei La Dolce Vita?"
            Reponses := array{"Sergio Leone", "Nicolas Winding Refn", "Federico Fellini", "Fritz Lang"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei 8 1/2?"
            Reponses := array{"Alejandro G. Inarritu", "Federico Fellini", "Akira Kurosawa", "Charlie Chaplin"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Zwei glorreiche Halunken?"
            Reponses := array{"Sergio Leone", "Denis Villeneuve", "Roman Polanski", "Orson Welles"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Spiel mir das Lied vom Tod?"
            Reponses := array{"Charlie Chaplin", "Akira Kurosawa", "Sergio Leone", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Die sieben Samurai?"
            Reponses := array{"Sergio Leone", "Federico Fellini", "Akira Kurosawa", "Alejandro G. Inarritu"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Ran?"
            Reponses := array{"Alejandro G. Inarritu", "Akira Kurosawa", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Ausser Atem?"
            Reponses := array{"Jean-Luc Godard", "Lars von Trier", "Alfred Hitchcock", "Darren Aronofsky"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Sie kuessten und sie schlugen ihn?"
            Reponses := array{"Sergio Leone", "Akira Kurosawa", "Alfred Hitchcock", "Francois Truffaut"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Requiem for a Dream?"
            Reponses := array{"Alejandro G. Inarritu", "Lars von Trier", "Darren Aronofsky", "Nicolas Winding Refn"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Black Swan?"
            Reponses := array{"Denis Villeneuve", "Jean-Luc Godard", "Wes Anderson", "Darren Aronofsky"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Birdman?"
            Reponses := array{"Charlie Chaplin", "Alfred Hitchcock", "Francois Truffaut", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei The Revenant?"
            Reponses := array{"Wes Anderson", "Orson Welles", "Jean-Luc Godard", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei The Grand Budapest Hotel?"
            Reponses := array{"Darren Aronofsky", "Alejandro G. Inarritu", "Wes Anderson", "Spike Jonze"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Moonrise Kingdom?"
            Reponses := array{"Roman Polanski", "Wes Anderson", "Alejandro G. Inarritu", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Drive?"
            Reponses := array{"Nicolas Winding Refn", "Spike Jonze", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Her?"
            Reponses := array{"Lars von Trier", "Alejandro G. Inarritu", "Spike Jonze", "Francois Truffaut"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Eternal Sunshine of the Spotless Mind?"
            Reponses := array{"Michel Gondry", "Federico Fellini", "Alfred Hitchcock", "Sergio Leone"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Melancholia?"
            Reponses := array{"Lars von Trier", "Charlie Chaplin", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 0
        question:
            Enonce := "Wer fuehrte Regie bei Der Pianist?"
            Reponses := array{"Spike Jonze", "Roman Polanski", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 1
        question:
            Enonce := "Wer fuehrte Regie bei Dune?"
            Reponses := array{"Lars von Trier", "Nicolas Winding Refn", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 3
        question:
            Enonce := "Wer fuehrte Regie bei Arrival?"
            Reponses := array{"Francois Truffaut", "Alfred Hitchcock", "Denis Villeneuve", "Jean-Luc Godard"}
            BonneReponse := 2
        question:
            Enonce := "Wer fuehrte Regie bei Blade Runner 2049?"
            Reponses := array{"Jean-Luc Godard", "Orson Welles", "Denis Villeneuve", "Francois Truffaut"}
            BonneReponse := 2

MakeCinemaQuestionsIT() : []question =
    array:
        question:
            Enonce := "Chi ha diretto Titanic?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "James Cameron", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Avatar?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Luc Besson", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Jurassic Park?"
            Reponses := array{"James Cameron", "Christopher Nolan", "Steven Spielberg", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto E.T.?"
            Reponses := array{"Alfred Hitchcock", "James Cameron", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Lo squalo?"
            Reponses := array{"Alfred Hitchcock", "Steven Spielberg", "Robert Zemeckis", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Pulp Fiction?"
            Reponses := array{"Stanley Kubrick", "Jean-Pierre Jeunet", "James Cameron", "Quentin Tarantino"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Kill Bill?"
            Reponses := array{"Quentin Tarantino", "Christopher Nolan", "Robert Zemeckis", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Inception?"
            Reponses := array{"George Lucas", "Alfred Hitchcock", "James Cameron", "Christopher Nolan"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Interstellar?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "James Cameron", "Ridley Scott"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto The Dark Knight?"
            Reponses := array{"Christopher Nolan", "Steven Spielberg", "George Lucas", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Oppenheimer?"
            Reponses := array{"Luc Besson", "Christopher Nolan", "George Lucas", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Star Wars?"
            Reponses := array{"Steven Spielberg", "George Lucas", "Les Wachowski", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Il Padrino?"
            Reponses := array{"George Lucas", "Christopher Nolan", "Steven Spielberg", "Francis Ford Coppola"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Psyco?"
            Reponses := array{"Alfred Hitchcock", "Jean-Pierre Jeunet", "Quentin Tarantino", "Steven Spielberg"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Gli uccelli?"
            Reponses := array{"Christopher Nolan", "Jean-Pierre Jeunet", "Alfred Hitchcock", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Schindler's List?"
            Reponses := array{"Jean-Pierre Jeunet", "Luc Besson", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Gladiator?"
            Reponses := array{"James Cameron", "Luc Besson", "Ridley Scott", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Alien?"
            Reponses := array{"Christopher Nolan", "Quentin Tarantino", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Shining?"
            Reponses := array{"Steven Spielberg", "Stanley Kubrick", "Quentin Tarantino", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Forrest Gump?"
            Reponses := array{"Quentin Tarantino", "Robert Zemeckis", "Jean-Pierre Jeunet", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Ritorno al futuro?"
            Reponses := array{"Robert Zemeckis", "Stanley Kubrick", "Luc Besson", "Alfred Hitchcock"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Matrix?"
            Reponses := array{"Luc Besson", "Steven Spielberg", "Les Wachowski", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Terminator?"
            Reponses := array{"George Lucas", "James Cameron", "Ridley Scott", "Steven Spielberg"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Il favoloso mondo di Amelie?"
            Reponses := array{"Ridley Scott", "Jean-Pierre Jeunet", "Luc Besson", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Le Grand Bleu?"
            Reponses := array{"Christopher Nolan", "Robert Zemeckis", "Luc Besson", "James Cameron"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Leon?"
            Reponses := array{"Steven Spielberg", "Robert Zemeckis", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Il quinto elemento?"
            Reponses := array{"Les Wachowski", "Stanley Kubrick", "Quentin Tarantino", "Luc Besson"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Fight Club?"
            Reponses := array{"Hayao Miyazaki", "Park Chan-wook", "Ridley Scott", "David Fincher"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Seven?"
            Reponses := array{"Ridley Scott", "Quentin Tarantino", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Gone Girl?"
            Reponses := array{"Park Chan-wook", "Martin Scorsese", "David Fincher", "Damien Chazelle"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto The Social Network?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Django Unchained?"
            Reponses := array{"Martin Scorsese", "Steven Spielberg", "Quentin Tarantino", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Inglourious Basterds?"
            Reponses := array{"Stanley Kubrick", "Quentin Tarantino", "Steven Spielberg", "Damien Chazelle"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Once Upon a Time in Hollywood?"
            Reponses := array{"Ridley Scott", "David Fincher", "Quentin Tarantino", "Park Chan-wook"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Dunkirk?"
            Reponses := array{"Martin Scorsese", "Christopher Nolan", "Quentin Tarantino", "David Fincher"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Tenet?"
            Reponses := array{"Christopher Nolan", "Hayao Miyazaki", "Quentin Tarantino", "Damien Chazelle"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Quei bravi ragazzi?"
            Reponses := array{"Quentin Tarantino", "Ridley Scott", "Martin Scorsese", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Taxi Driver?"
            Reponses := array{"Steven Spielberg", "Christopher Nolan", "Todd Phillips", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto The Wolf of Wall Street?"
            Reponses := array{"David Fincher", "Quentin Tarantino", "Hayao Miyazaki", "Martin Scorsese"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Casino?"
            Reponses := array{"Martin Scorsese", "Stanley Kubrick", "Damien Chazelle", "Francis Ford Coppola"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Apocalypse Now?"
            Reponses := array{"Bong Joon-ho", "Francis Ford Coppola", "Martin Scorsese", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Full Metal Jacket?"
            Reponses := array{"Stanley Kubrick", "Martin Scorsese", "Ridley Scott", "Christopher Nolan"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Arancia meccanica?"
            Reponses := array{"Ridley Scott", "Stanley Kubrick", "Christopher Nolan", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Salvate il soldato Ryan?"
            Reponses := array{"Martin Scorsese", "David Fincher", "Christopher Nolan", "Steven Spielberg"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto I predatori dell'arca perduta?"
            Reponses := array{"Quentin Tarantino", "Steven Spielberg", "Martin Scorsese", "Ridley Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Blade Runner?"
            Reponses := array{"Quentin Tarantino", "Park Chan-wook", "Ridley Scott", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto The Martian?"
            Reponses := array{"Hayao Miyazaki", "Todd Phillips", "Steven Spielberg", "Ridley Scott"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Mad Max: Fury Road?"
            Reponses := array{"David Fincher", "George Miller", "Quentin Tarantino", "Bong Joon-ho"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Joker?"
            Reponses := array{"Park Chan-wook", "Damien Chazelle", "Francis Ford Coppola", "Todd Phillips"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto La La Land?"
            Reponses := array{"George Miller", "Martin Scorsese", "Damien Chazelle", "Stanley Kubrick"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Whiplash?"
            Reponses := array{"David Fincher", "Damien Chazelle", "Martin Scorsese", "George Miller"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Parasite?"
            Reponses := array{"George Miller", "Damien Chazelle", "Christopher Nolan", "Bong Joon-ho"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Old Boy?"
            Reponses := array{"Stanley Kubrick", "Steven Spielberg", "Martin Scorsese", "Park Chan-wook"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto La citta incantata?"
            Reponses := array{"Quentin Tarantino", "Hayao Miyazaki", "Park Chan-wook", "Stanley Kubrick"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Principessa Mononoke?"
            Reponses := array{"Todd Phillips", "Park Chan-wook", "Hayao Miyazaki", "David Fincher"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Citizen Kane?"
            Reponses := array{"Federico Fellini", "Orson Welles", "Darren Aronofsky", "Fritz Lang"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto La donna che visse due volte?"
            Reponses := array{"Roman Polanski", "Alfred Hitchcock", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto La finestra sul cortile?"
            Reponses := array{"Federico Fellini", "Alfred Hitchcock", "Sergio Leone", "Orson Welles"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Metropolis?"
            Reponses := array{"Fritz Lang", "Wes Anderson", "Sergio Leone", "Federico Fellini"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Il grande dittatore?"
            Reponses := array{"Charlie Chaplin", "Wes Anderson", "Lars von Trier", "Alejandro G. Inarritu"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Tempi moderni?"
            Reponses := array{"Wes Anderson", "Federico Fellini", "Charlie Chaplin", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto La Dolce Vita?"
            Reponses := array{"Sergio Leone", "Nicolas Winding Refn", "Federico Fellini", "Fritz Lang"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto 8 1/2?"
            Reponses := array{"Alejandro G. Inarritu", "Federico Fellini", "Akira Kurosawa", "Charlie Chaplin"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Il buono, il brutto, il cattivo?"
            Reponses := array{"Sergio Leone", "Denis Villeneuve", "Roman Polanski", "Orson Welles"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto C'era una volta il West?"
            Reponses := array{"Charlie Chaplin", "Akira Kurosawa", "Sergio Leone", "Roman Polanski"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto I sette samurai?"
            Reponses := array{"Sergio Leone", "Federico Fellini", "Akira Kurosawa", "Alejandro G. Inarritu"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Ran?"
            Reponses := array{"Alejandro G. Inarritu", "Akira Kurosawa", "Lars von Trier", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Fino all'ultimo respiro?"
            Reponses := array{"Jean-Luc Godard", "Lars von Trier", "Alfred Hitchcock", "Darren Aronofsky"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto I 400 colpi?"
            Reponses := array{"Sergio Leone", "Akira Kurosawa", "Alfred Hitchcock", "Francois Truffaut"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Requiem for a Dream?"
            Reponses := array{"Alejandro G. Inarritu", "Lars von Trier", "Darren Aronofsky", "Nicolas Winding Refn"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Black Swan?"
            Reponses := array{"Denis Villeneuve", "Jean-Luc Godard", "Wes Anderson", "Darren Aronofsky"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Birdman?"
            Reponses := array{"Charlie Chaplin", "Alfred Hitchcock", "Francois Truffaut", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto The Revenant?"
            Reponses := array{"Wes Anderson", "Orson Welles", "Jean-Luc Godard", "Alejandro G. Inarritu"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto The Grand Budapest Hotel?"
            Reponses := array{"Darren Aronofsky", "Alejandro G. Inarritu", "Wes Anderson", "Spike Jonze"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Moonrise Kingdom?"
            Reponses := array{"Roman Polanski", "Wes Anderson", "Alejandro G. Inarritu", "Darren Aronofsky"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Drive?"
            Reponses := array{"Nicolas Winding Refn", "Spike Jonze", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Her?"
            Reponses := array{"Lars von Trier", "Alejandro G. Inarritu", "Spike Jonze", "Francois Truffaut"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Eternal Sunshine of the Spotless Mind?"
            Reponses := array{"Michel Gondry", "Federico Fellini", "Alfred Hitchcock", "Sergio Leone"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Melancholia?"
            Reponses := array{"Lars von Trier", "Charlie Chaplin", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha diretto Il pianista?"
            Reponses := array{"Spike Jonze", "Roman Polanski", "Alejandro G. Inarritu", "Akira Kurosawa"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha diretto Dune?"
            Reponses := array{"Lars von Trier", "Nicolas Winding Refn", "Alfred Hitchcock", "Denis Villeneuve"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha diretto Arrival?"
            Reponses := array{"Francois Truffaut", "Alfred Hitchcock", "Denis Villeneuve", "Jean-Luc Godard"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha diretto Blade Runner 2049?"
            Reponses := array{"Jean-Luc Godard", "Orson Welles", "Denis Villeneuve", "Francois Truffaut"}
            BonneReponse := 2

MakeCinemaQuestions() : []question =
    MakeCinemaQuestionsFR()
