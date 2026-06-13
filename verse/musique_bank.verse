using { /Verse.org/Assets }

# musique_bank.verse — Quizz MUSIQUE (qui interprete...)
# GENERE — NE PAS EDITER A LA MAIN.

MusiqueDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeMusiqueQuestionsFR() : []question =
    array:
        question:
            Enonce := "Qui interprete 'Thriller' ?"
            Reponses := array{"PSY", "Luis Fonsi", "Ed Sheeran", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Billie Jean' ?"
            Reponses := array{"Adele", "Michael Jackson", "Whitney Houston", "Eminem"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Bohemian Rhapsody' ?"
            Reponses := array{"Adele", "Billie Eilish", "Queen", "The Weeknd"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'We Will Rock You' ?"
            Reponses := array{"Queen", "Michael Jackson", "Luis Fonsi", "Adele"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Imagine' ?"
            Reponses := array{"John Lennon", "Eminem", "Madonna", "PSY"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Hey Jude' ?"
            Reponses := array{"Eminem", "The Beatles", "PSY", "Luis Fonsi"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Let It Be' ?"
            Reponses := array{"Adele", "Eminem", "Beyonce", "The Beatles"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Shape of You' ?"
            Reponses := array{"Ed Sheeran", "Lady Gaga", "The Beatles", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Blinding Lights' ?"
            Reponses := array{"The Weeknd", "John Lennon", "Ed Sheeran", "Eminem"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Rolling in the Deep' ?"
            Reponses := array{"Adele", "Lady Gaga", "Billie Eilish", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Hello' ?"
            Reponses := array{"Eminem", "The Beatles", "Madonna", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Bad Guy' ?"
            Reponses := array{"The Weeknd", "Rihanna", "Billie Eilish", "Eminem"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Poker Face' ?"
            Reponses := array{"Beyonce", "Queen", "Lady Gaga", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Single Ladies' ?"
            Reponses := array{"Lady Gaga", "The Beatles", "Nirvana", "Beyonce"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Umbrella' ?"
            Reponses := array{"Beyonce", "Nirvana", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Diamonds' ?"
            Reponses := array{"AC/DC", "The Beatles", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Smells Like Teen Spirit' ?"
            Reponses := array{"Nirvana", "Lady Gaga", "Adele", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Lose Yourself' ?"
            Reponses := array{"Michael Jackson", "Eminem", "The Beatles", "AC/DC"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Without Me' ?"
            Reponses := array{"Eminem", "Shakira", "PSY", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Gangnam Style' ?"
            Reponses := array{"Billie Eilish", "Michael Jackson", "PSY", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Despacito' ?"
            Reponses := array{"Michael Jackson", "Luis Fonsi", "AC/DC", "Adele"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Waka Waka' ?"
            Reponses := array{"Eminem", "PSY", "Shakira", "Queen"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'I Will Always Love You' ?"
            Reponses := array{"The Beatles", "Prince", "Whitney Houston", "Adele"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Like a Virgin' ?"
            Reponses := array{"Luis Fonsi", "Adele", "Madonna", "Ed Sheeran"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Purple Rain' ?"
            Reponses := array{"Queen", "AC/DC", "Prince", "Shakira"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Highway to Hell' ?"
            Reponses := array{"AC/DC", "John Lennon", "Queen", "Whitney Houston"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Back in Black' ?"
            Reponses := array{"John Lennon", "Eminem", "Prince", "AC/DC"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Stairway to Heaven' ?"
            Reponses := array{"David Guetta", "Travis Scott", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Hotel California' ?"
            Reponses := array{"Eagles", "Taylor Swift", "Bruno Mars", "Avicii"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Sweet Child O' Mine' ?"
            Reponses := array{"Led Zeppelin", "Alan Walker", "Guns N' Roses", "Pharrell Williams"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'November Rain' ?"
            Reponses := array{"Guns N' Roses", "50 Cent", "Avicii", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Wonderwall' ?"
            Reponses := array{"Oasis", "Drake", "Guns N' Roses", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Creep' ?"
            Reponses := array{"Justin Timberlake", "Travis Scott", "Radiohead", "Oasis"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Yellow' ?"
            Reponses := array{"Daft Punk", "Led Zeppelin", "Jay-Z", "Coldplay"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Viva la Vida' ?"
            Reponses := array{"Drake", "Coldplay", "Taylor Swift", "Avicii"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Seven Nation Army' ?"
            Reponses := array{"Coldplay", "The White Stripes", "Taylor Swift", "Drake"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Get Lucky' ?"
            Reponses := array{"Radiohead", "Daft Punk", "Oasis", "Coldplay"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'One More Time' ?"
            Reponses := array{"Daft Punk", "Travis Scott", "Martin Garrix", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Titanium' ?"
            Reponses := array{"Drake", "Eagles", "David Guetta", "50 Cent"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Wake Me Up' ?"
            Reponses := array{"Alan Walker", "Avicii", "Bruno Mars", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Levels' ?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Avicii", "Eagles"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Animals' ?"
            Reponses := array{"The White Stripes", "Drake", "Oasis", "Martin Garrix"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Faded' ?"
            Reponses := array{"Daft Punk", "Alan Walker", "Guns N' Roses", "Justin Bieber"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Uptown Funk' ?"
            Reponses := array{"Drake", "Bruno Mars", "David Guetta", "50 Cent"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Happy' ?"
            Reponses := array{"50 Cent", "Travis Scott", "Oasis", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Can't Stop the Feeling' ?"
            Reponses := array{"Justin Timberlake", "Justin Bieber", "Daft Punk", "Drake"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Sorry' ?"
            Reponses := array{"Daft Punk", "Drake", "Avicii", "Justin Bieber"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Anti-Hero' ?"
            Reponses := array{"Taylor Swift", "Jay-Z", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Shake It Off' ?"
            Reponses := array{"Alan Walker", "Taylor Swift", "Avicii", "Martin Garrix"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'God's Plan' ?"
            Reponses := array{"Taylor Swift", "Daft Punk", "Eagles", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Hotline Bling' ?"
            Reponses := array{"Oasis", "50 Cent", "Avicii", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Sicko Mode' ?"
            Reponses := array{"Coldplay", "Travis Scott", "David Guetta", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'In Da Club' ?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Radiohead", "50 Cent"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Empire State of Mind' ?"
            Reponses := array{"Daft Punk", "Jay-Z", "Led Zeppelin", "Travis Scott"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'La Boheme' ?"
            Reponses := array{"Louis Armstrong", "Michael Jackson", "Charles Aznavour", "Edith Piaf"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Ne me quitte pas' ?"
            Reponses := array{"Toto", "Eurythmics", "Edith Piaf", "Jacques Brel"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'La Vie en rose' ?"
            Reponses := array{"Pink Floyd", "Jacques Brel", "Edith Piaf", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Non, je ne regrette rien' ?"
            Reponses := array{"Eurythmics", "Stromae", "Indila", "Edith Piaf"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Mistral gagnant' ?"
            Reponses := array{"Charles Aznavour", "Stromae", "Renaud", "Toto"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Foule sentimentale' ?"
            Reponses := array{"Charles Aznavour", "Alain Souchon", "Michael Jackson", "Stevie Wonder"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Alors on danse' ?"
            Reponses := array{"Nina Simone", "Indila", "Stromae", "Eurythmics"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Papaoutai' ?"
            Reponses := array{"Stromae", "Radiohead", "Eurythmics", "Louis Armstrong"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Formidable' ?"
            Reponses := array{"Stromae", "Johnny Cash", "Led Zeppelin", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Derniere danse' ?"
            Reponses := array{"Aya Nakamura", "Indila", "Deep Purple", "Leonard Cohen"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Djadja' ?"
            Reponses := array{"Edith Piaf", "Deep Purple", "Aya Nakamura", "Pink Floyd"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Take On Me' ?"
            Reponses := array{"Eurythmics", "a-ha", "Aretha Franklin", "Louis Armstrong"}
            BonneReponse := 1
        question:
            Enonce := "Qui interprete 'Africa' ?"
            Reponses := array{"a-ha", "Edith Piaf", "Johnny Cash", "Toto"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Sweet Dreams' ?"
            Reponses := array{"Edith Piaf", "Stromae", "Leonard Cohen", "Eurythmics"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Karma Police' ?"
            Reponses := array{"Radiohead", "Leonard Cohen", "Alain Souchon", "Toto"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Paranoid' ?"
            Reponses := array{"Aya Nakamura", "Indila", "Black Sabbath", "Stevie Wonder"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Smoke on the Water' ?"
            Reponses := array{"Jacques Brel", "Louis Armstrong", "Leonard Cohen", "Deep Purple"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Kashmir' ?"
            Reponses := array{"Led Zeppelin", "Black Sabbath", "Stromae", "Jacques Brel"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Comfortably Numb' ?"
            Reponses := array{"Pink Floyd", "Toto", "Michael Jackson", "Deep Purple"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Wish You Were Here' ?"
            Reponses := array{"Eurythmics", "Black Sabbath", "Stromae", "Pink Floyd"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Hallelujah' ?"
            Reponses := array{"a-ha", "Louis Armstrong", "Leonard Cohen", "Led Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Qui interprete 'Ring of Fire' ?"
            Reponses := array{"Charles Aznavour", "a-ha", "Aya Nakamura", "Johnny Cash"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Respect' ?"
            Reponses := array{"Radiohead", "Edith Piaf", "Toto", "Aretha Franklin"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'What a Wonderful World' ?"
            Reponses := array{"Louis Armstrong", "Toto", "Johnny Cash", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Feeling Good' ?"
            Reponses := array{"Nina Simone", "Sting", "Leonard Cohen", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Superstition' ?"
            Reponses := array{"Johnny Cash", "Michael Jackson", "Eurythmics", "Stevie Wonder"}
            BonneReponse := 3
        question:
            Enonce := "Qui interprete 'Englishman in New York' ?"
            Reponses := array{"Sting", "Stromae", "Stevie Wonder", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Qui interprete 'Beat It' ?"
            Reponses := array{"Michael Jackson", "Johnny Cash", "Alain Souchon", "Radiohead"}
            BonneReponse := 0

MakeMusiqueQuestionsEN() : []question =
    array:
        question:
            Enonce := "Who performs 'Thriller'?"
            Reponses := array{"PSY", "Luis Fonsi", "Ed Sheeran", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Billie Jean'?"
            Reponses := array{"Adele", "Michael Jackson", "Whitney Houston", "Eminem"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Bohemian Rhapsody'?"
            Reponses := array{"Adele", "Billie Eilish", "Queen", "The Weeknd"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'We Will Rock You'?"
            Reponses := array{"Queen", "Michael Jackson", "Luis Fonsi", "Adele"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Imagine'?"
            Reponses := array{"John Lennon", "Eminem", "Madonna", "PSY"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Hey Jude'?"
            Reponses := array{"Eminem", "The Beatles", "PSY", "Luis Fonsi"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Let It Be'?"
            Reponses := array{"Adele", "Eminem", "Beyonce", "The Beatles"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Shape of You'?"
            Reponses := array{"Ed Sheeran", "Lady Gaga", "The Beatles", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Blinding Lights'?"
            Reponses := array{"The Weeknd", "John Lennon", "Ed Sheeran", "Eminem"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Rolling in the Deep'?"
            Reponses := array{"Adele", "Lady Gaga", "Billie Eilish", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Hello'?"
            Reponses := array{"Eminem", "The Beatles", "Madonna", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Bad Guy'?"
            Reponses := array{"The Weeknd", "Rihanna", "Billie Eilish", "Eminem"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Poker Face'?"
            Reponses := array{"Beyonce", "Queen", "Lady Gaga", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Single Ladies'?"
            Reponses := array{"Lady Gaga", "The Beatles", "Nirvana", "Beyonce"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Umbrella'?"
            Reponses := array{"Beyonce", "Nirvana", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Diamonds'?"
            Reponses := array{"AC/DC", "The Beatles", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Smells Like Teen Spirit'?"
            Reponses := array{"Nirvana", "Lady Gaga", "Adele", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Lose Yourself'?"
            Reponses := array{"Michael Jackson", "Eminem", "The Beatles", "AC/DC"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Without Me'?"
            Reponses := array{"Eminem", "Shakira", "PSY", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Gangnam Style'?"
            Reponses := array{"Billie Eilish", "Michael Jackson", "PSY", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Despacito'?"
            Reponses := array{"Michael Jackson", "Luis Fonsi", "AC/DC", "Adele"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Waka Waka'?"
            Reponses := array{"Eminem", "PSY", "Shakira", "Queen"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'I Will Always Love You'?"
            Reponses := array{"The Beatles", "Prince", "Whitney Houston", "Adele"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Like a Virgin'?"
            Reponses := array{"Luis Fonsi", "Adele", "Madonna", "Ed Sheeran"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Purple Rain'?"
            Reponses := array{"Queen", "AC/DC", "Prince", "Shakira"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Highway to Hell'?"
            Reponses := array{"AC/DC", "John Lennon", "Queen", "Whitney Houston"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Back in Black'?"
            Reponses := array{"John Lennon", "Eminem", "Prince", "AC/DC"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Stairway to Heaven'?"
            Reponses := array{"David Guetta", "Travis Scott", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Hotel California'?"
            Reponses := array{"Eagles", "Taylor Swift", "Bruno Mars", "Avicii"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Sweet Child O' Mine'?"
            Reponses := array{"Led Zeppelin", "Alan Walker", "Guns N' Roses", "Pharrell Williams"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'November Rain'?"
            Reponses := array{"Guns N' Roses", "50 Cent", "Avicii", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Wonderwall'?"
            Reponses := array{"Oasis", "Drake", "Guns N' Roses", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Creep'?"
            Reponses := array{"Justin Timberlake", "Travis Scott", "Radiohead", "Oasis"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Yellow'?"
            Reponses := array{"Daft Punk", "Led Zeppelin", "Jay-Z", "Coldplay"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Viva la Vida'?"
            Reponses := array{"Drake", "Coldplay", "Taylor Swift", "Avicii"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Seven Nation Army'?"
            Reponses := array{"Coldplay", "The White Stripes", "Taylor Swift", "Drake"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Get Lucky'?"
            Reponses := array{"Radiohead", "Daft Punk", "Oasis", "Coldplay"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'One More Time'?"
            Reponses := array{"Daft Punk", "Travis Scott", "Martin Garrix", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Titanium'?"
            Reponses := array{"Drake", "Eagles", "David Guetta", "50 Cent"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Wake Me Up'?"
            Reponses := array{"Alan Walker", "Avicii", "Bruno Mars", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Levels'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Avicii", "Eagles"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Animals'?"
            Reponses := array{"The White Stripes", "Drake", "Oasis", "Martin Garrix"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Faded'?"
            Reponses := array{"Daft Punk", "Alan Walker", "Guns N' Roses", "Justin Bieber"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Uptown Funk'?"
            Reponses := array{"Drake", "Bruno Mars", "David Guetta", "50 Cent"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Happy'?"
            Reponses := array{"50 Cent", "Travis Scott", "Oasis", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Can't Stop the Feeling'?"
            Reponses := array{"Justin Timberlake", "Justin Bieber", "Daft Punk", "Drake"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Sorry'?"
            Reponses := array{"Daft Punk", "Drake", "Avicii", "Justin Bieber"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Anti-Hero'?"
            Reponses := array{"Taylor Swift", "Jay-Z", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Shake It Off'?"
            Reponses := array{"Alan Walker", "Taylor Swift", "Avicii", "Martin Garrix"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'God's Plan'?"
            Reponses := array{"Taylor Swift", "Daft Punk", "Eagles", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Hotline Bling'?"
            Reponses := array{"Oasis", "50 Cent", "Avicii", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Sicko Mode'?"
            Reponses := array{"Coldplay", "Travis Scott", "David Guetta", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'In Da Club'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Radiohead", "50 Cent"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Empire State of Mind'?"
            Reponses := array{"Daft Punk", "Jay-Z", "Led Zeppelin", "Travis Scott"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'La Boheme'?"
            Reponses := array{"Louis Armstrong", "Michael Jackson", "Charles Aznavour", "Edith Piaf"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Ne me quitte pas'?"
            Reponses := array{"Toto", "Eurythmics", "Edith Piaf", "Jacques Brel"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'La Vie en rose'?"
            Reponses := array{"Pink Floyd", "Jacques Brel", "Edith Piaf", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Non, je ne regrette rien'?"
            Reponses := array{"Eurythmics", "Stromae", "Indila", "Edith Piaf"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Mistral gagnant'?"
            Reponses := array{"Charles Aznavour", "Stromae", "Renaud", "Toto"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Foule sentimentale'?"
            Reponses := array{"Charles Aznavour", "Alain Souchon", "Michael Jackson", "Stevie Wonder"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Alors on danse'?"
            Reponses := array{"Nina Simone", "Indila", "Stromae", "Eurythmics"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Papaoutai'?"
            Reponses := array{"Stromae", "Radiohead", "Eurythmics", "Louis Armstrong"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Formidable'?"
            Reponses := array{"Stromae", "Johnny Cash", "Led Zeppelin", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Derniere danse'?"
            Reponses := array{"Aya Nakamura", "Indila", "Deep Purple", "Leonard Cohen"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Djadja'?"
            Reponses := array{"Edith Piaf", "Deep Purple", "Aya Nakamura", "Pink Floyd"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Take On Me'?"
            Reponses := array{"Eurythmics", "a-ha", "Aretha Franklin", "Louis Armstrong"}
            BonneReponse := 1
        question:
            Enonce := "Who performs 'Africa'?"
            Reponses := array{"a-ha", "Edith Piaf", "Johnny Cash", "Toto"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Sweet Dreams'?"
            Reponses := array{"Edith Piaf", "Stromae", "Leonard Cohen", "Eurythmics"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Karma Police'?"
            Reponses := array{"Radiohead", "Leonard Cohen", "Alain Souchon", "Toto"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Paranoid'?"
            Reponses := array{"Aya Nakamura", "Indila", "Black Sabbath", "Stevie Wonder"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Smoke on the Water'?"
            Reponses := array{"Jacques Brel", "Louis Armstrong", "Leonard Cohen", "Deep Purple"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Kashmir'?"
            Reponses := array{"Led Zeppelin", "Black Sabbath", "Stromae", "Jacques Brel"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Comfortably Numb'?"
            Reponses := array{"Pink Floyd", "Toto", "Michael Jackson", "Deep Purple"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Wish You Were Here'?"
            Reponses := array{"Eurythmics", "Black Sabbath", "Stromae", "Pink Floyd"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Hallelujah'?"
            Reponses := array{"a-ha", "Louis Armstrong", "Leonard Cohen", "Led Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Who performs 'Ring of Fire'?"
            Reponses := array{"Charles Aznavour", "a-ha", "Aya Nakamura", "Johnny Cash"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Respect'?"
            Reponses := array{"Radiohead", "Edith Piaf", "Toto", "Aretha Franklin"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'What a Wonderful World'?"
            Reponses := array{"Louis Armstrong", "Toto", "Johnny Cash", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Feeling Good'?"
            Reponses := array{"Nina Simone", "Sting", "Leonard Cohen", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Superstition'?"
            Reponses := array{"Johnny Cash", "Michael Jackson", "Eurythmics", "Stevie Wonder"}
            BonneReponse := 3
        question:
            Enonce := "Who performs 'Englishman in New York'?"
            Reponses := array{"Sting", "Stromae", "Stevie Wonder", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Who performs 'Beat It'?"
            Reponses := array{"Michael Jackson", "Johnny Cash", "Alain Souchon", "Radiohead"}
            BonneReponse := 0

MakeMusiqueQuestionsES() : []question =
    array:
        question:
            Enonce := "Quien interpreta 'Thriller'?"
            Reponses := array{"PSY", "Luis Fonsi", "Ed Sheeran", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Billie Jean'?"
            Reponses := array{"Adele", "Michael Jackson", "Whitney Houston", "Eminem"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Bohemian Rhapsody'?"
            Reponses := array{"Adele", "Billie Eilish", "Queen", "The Weeknd"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'We Will Rock You'?"
            Reponses := array{"Queen", "Michael Jackson", "Luis Fonsi", "Adele"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Imagine'?"
            Reponses := array{"John Lennon", "Eminem", "Madonna", "PSY"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Hey Jude'?"
            Reponses := array{"Eminem", "The Beatles", "PSY", "Luis Fonsi"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Let It Be'?"
            Reponses := array{"Adele", "Eminem", "Beyonce", "The Beatles"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Shape of You'?"
            Reponses := array{"Ed Sheeran", "Lady Gaga", "The Beatles", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Blinding Lights'?"
            Reponses := array{"The Weeknd", "John Lennon", "Ed Sheeran", "Eminem"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Rolling in the Deep'?"
            Reponses := array{"Adele", "Lady Gaga", "Billie Eilish", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Hello'?"
            Reponses := array{"Eminem", "The Beatles", "Madonna", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Bad Guy'?"
            Reponses := array{"The Weeknd", "Rihanna", "Billie Eilish", "Eminem"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Poker Face'?"
            Reponses := array{"Beyonce", "Queen", "Lady Gaga", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Single Ladies'?"
            Reponses := array{"Lady Gaga", "The Beatles", "Nirvana", "Beyonce"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Umbrella'?"
            Reponses := array{"Beyonce", "Nirvana", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Diamonds'?"
            Reponses := array{"AC/DC", "The Beatles", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Smells Like Teen Spirit'?"
            Reponses := array{"Nirvana", "Lady Gaga", "Adele", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Lose Yourself'?"
            Reponses := array{"Michael Jackson", "Eminem", "The Beatles", "AC/DC"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Without Me'?"
            Reponses := array{"Eminem", "Shakira", "PSY", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Gangnam Style'?"
            Reponses := array{"Billie Eilish", "Michael Jackson", "PSY", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Despacito'?"
            Reponses := array{"Michael Jackson", "Luis Fonsi", "AC/DC", "Adele"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Waka Waka'?"
            Reponses := array{"Eminem", "PSY", "Shakira", "Queen"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'I Will Always Love You'?"
            Reponses := array{"The Beatles", "Prince", "Whitney Houston", "Adele"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Like a Virgin'?"
            Reponses := array{"Luis Fonsi", "Adele", "Madonna", "Ed Sheeran"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Purple Rain'?"
            Reponses := array{"Queen", "AC/DC", "Prince", "Shakira"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Highway to Hell'?"
            Reponses := array{"AC/DC", "John Lennon", "Queen", "Whitney Houston"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Back in Black'?"
            Reponses := array{"John Lennon", "Eminem", "Prince", "AC/DC"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Stairway to Heaven'?"
            Reponses := array{"David Guetta", "Travis Scott", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Hotel California'?"
            Reponses := array{"Eagles", "Taylor Swift", "Bruno Mars", "Avicii"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Sweet Child O' Mine'?"
            Reponses := array{"Led Zeppelin", "Alan Walker", "Guns N' Roses", "Pharrell Williams"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'November Rain'?"
            Reponses := array{"Guns N' Roses", "50 Cent", "Avicii", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Wonderwall'?"
            Reponses := array{"Oasis", "Drake", "Guns N' Roses", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Creep'?"
            Reponses := array{"Justin Timberlake", "Travis Scott", "Radiohead", "Oasis"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Yellow'?"
            Reponses := array{"Daft Punk", "Led Zeppelin", "Jay-Z", "Coldplay"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Viva la Vida'?"
            Reponses := array{"Drake", "Coldplay", "Taylor Swift", "Avicii"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Seven Nation Army'?"
            Reponses := array{"Coldplay", "The White Stripes", "Taylor Swift", "Drake"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Get Lucky'?"
            Reponses := array{"Radiohead", "Daft Punk", "Oasis", "Coldplay"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'One More Time'?"
            Reponses := array{"Daft Punk", "Travis Scott", "Martin Garrix", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Titanium'?"
            Reponses := array{"Drake", "Eagles", "David Guetta", "50 Cent"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Wake Me Up'?"
            Reponses := array{"Alan Walker", "Avicii", "Bruno Mars", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Levels'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Avicii", "Eagles"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Animals'?"
            Reponses := array{"The White Stripes", "Drake", "Oasis", "Martin Garrix"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Faded'?"
            Reponses := array{"Daft Punk", "Alan Walker", "Guns N' Roses", "Justin Bieber"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Uptown Funk'?"
            Reponses := array{"Drake", "Bruno Mars", "David Guetta", "50 Cent"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Happy'?"
            Reponses := array{"50 Cent", "Travis Scott", "Oasis", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Can't Stop the Feeling'?"
            Reponses := array{"Justin Timberlake", "Justin Bieber", "Daft Punk", "Drake"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Sorry'?"
            Reponses := array{"Daft Punk", "Drake", "Avicii", "Justin Bieber"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Anti-Hero'?"
            Reponses := array{"Taylor Swift", "Jay-Z", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Shake It Off'?"
            Reponses := array{"Alan Walker", "Taylor Swift", "Avicii", "Martin Garrix"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'God's Plan'?"
            Reponses := array{"Taylor Swift", "Daft Punk", "Eagles", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Hotline Bling'?"
            Reponses := array{"Oasis", "50 Cent", "Avicii", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Sicko Mode'?"
            Reponses := array{"Coldplay", "Travis Scott", "David Guetta", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'In Da Club'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Radiohead", "50 Cent"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Empire State of Mind'?"
            Reponses := array{"Daft Punk", "Jay-Z", "Led Zeppelin", "Travis Scott"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'La Boheme'?"
            Reponses := array{"Louis Armstrong", "Michael Jackson", "Charles Aznavour", "Edith Piaf"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Ne me quitte pas'?"
            Reponses := array{"Toto", "Eurythmics", "Edith Piaf", "Jacques Brel"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'La Vie en rose'?"
            Reponses := array{"Pink Floyd", "Jacques Brel", "Edith Piaf", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Non, je ne regrette rien'?"
            Reponses := array{"Eurythmics", "Stromae", "Indila", "Edith Piaf"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Mistral gagnant'?"
            Reponses := array{"Charles Aznavour", "Stromae", "Renaud", "Toto"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Foule sentimentale'?"
            Reponses := array{"Charles Aznavour", "Alain Souchon", "Michael Jackson", "Stevie Wonder"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Alors on danse'?"
            Reponses := array{"Nina Simone", "Indila", "Stromae", "Eurythmics"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Papaoutai'?"
            Reponses := array{"Stromae", "Radiohead", "Eurythmics", "Louis Armstrong"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Formidable'?"
            Reponses := array{"Stromae", "Johnny Cash", "Led Zeppelin", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Derniere danse'?"
            Reponses := array{"Aya Nakamura", "Indila", "Deep Purple", "Leonard Cohen"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Djadja'?"
            Reponses := array{"Edith Piaf", "Deep Purple", "Aya Nakamura", "Pink Floyd"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Take On Me'?"
            Reponses := array{"Eurythmics", "a-ha", "Aretha Franklin", "Louis Armstrong"}
            BonneReponse := 1
        question:
            Enonce := "Quien interpreta 'Africa'?"
            Reponses := array{"a-ha", "Edith Piaf", "Johnny Cash", "Toto"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Sweet Dreams'?"
            Reponses := array{"Edith Piaf", "Stromae", "Leonard Cohen", "Eurythmics"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Karma Police'?"
            Reponses := array{"Radiohead", "Leonard Cohen", "Alain Souchon", "Toto"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Paranoid'?"
            Reponses := array{"Aya Nakamura", "Indila", "Black Sabbath", "Stevie Wonder"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Smoke on the Water'?"
            Reponses := array{"Jacques Brel", "Louis Armstrong", "Leonard Cohen", "Deep Purple"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Kashmir'?"
            Reponses := array{"Led Zeppelin", "Black Sabbath", "Stromae", "Jacques Brel"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Comfortably Numb'?"
            Reponses := array{"Pink Floyd", "Toto", "Michael Jackson", "Deep Purple"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Wish You Were Here'?"
            Reponses := array{"Eurythmics", "Black Sabbath", "Stromae", "Pink Floyd"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Hallelujah'?"
            Reponses := array{"a-ha", "Louis Armstrong", "Leonard Cohen", "Led Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Quien interpreta 'Ring of Fire'?"
            Reponses := array{"Charles Aznavour", "a-ha", "Aya Nakamura", "Johnny Cash"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Respect'?"
            Reponses := array{"Radiohead", "Edith Piaf", "Toto", "Aretha Franklin"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'What a Wonderful World'?"
            Reponses := array{"Louis Armstrong", "Toto", "Johnny Cash", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Feeling Good'?"
            Reponses := array{"Nina Simone", "Sting", "Leonard Cohen", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Superstition'?"
            Reponses := array{"Johnny Cash", "Michael Jackson", "Eurythmics", "Stevie Wonder"}
            BonneReponse := 3
        question:
            Enonce := "Quien interpreta 'Englishman in New York'?"
            Reponses := array{"Sting", "Stromae", "Stevie Wonder", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Quien interpreta 'Beat It'?"
            Reponses := array{"Michael Jackson", "Johnny Cash", "Alain Souchon", "Radiohead"}
            BonneReponse := 0

MakeMusiqueQuestionsDE() : []question =
    array:
        question:
            Enonce := "Wer singt 'Thriller'?"
            Reponses := array{"PSY", "Luis Fonsi", "Ed Sheeran", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Billie Jean'?"
            Reponses := array{"Adele", "Michael Jackson", "Whitney Houston", "Eminem"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Bohemian Rhapsody'?"
            Reponses := array{"Adele", "Billie Eilish", "Queen", "The Weeknd"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'We Will Rock You'?"
            Reponses := array{"Queen", "Michael Jackson", "Luis Fonsi", "Adele"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Imagine'?"
            Reponses := array{"John Lennon", "Eminem", "Madonna", "PSY"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Hey Jude'?"
            Reponses := array{"Eminem", "The Beatles", "PSY", "Luis Fonsi"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Let It Be'?"
            Reponses := array{"Adele", "Eminem", "Beyonce", "The Beatles"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Shape of You'?"
            Reponses := array{"Ed Sheeran", "Lady Gaga", "The Beatles", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Blinding Lights'?"
            Reponses := array{"The Weeknd", "John Lennon", "Ed Sheeran", "Eminem"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Rolling in the Deep'?"
            Reponses := array{"Adele", "Lady Gaga", "Billie Eilish", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Hello'?"
            Reponses := array{"Eminem", "The Beatles", "Madonna", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Bad Guy'?"
            Reponses := array{"The Weeknd", "Rihanna", "Billie Eilish", "Eminem"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Poker Face'?"
            Reponses := array{"Beyonce", "Queen", "Lady Gaga", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Single Ladies'?"
            Reponses := array{"Lady Gaga", "The Beatles", "Nirvana", "Beyonce"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Umbrella'?"
            Reponses := array{"Beyonce", "Nirvana", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Diamonds'?"
            Reponses := array{"AC/DC", "The Beatles", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Smells Like Teen Spirit'?"
            Reponses := array{"Nirvana", "Lady Gaga", "Adele", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Lose Yourself'?"
            Reponses := array{"Michael Jackson", "Eminem", "The Beatles", "AC/DC"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Without Me'?"
            Reponses := array{"Eminem", "Shakira", "PSY", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Gangnam Style'?"
            Reponses := array{"Billie Eilish", "Michael Jackson", "PSY", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Despacito'?"
            Reponses := array{"Michael Jackson", "Luis Fonsi", "AC/DC", "Adele"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Waka Waka'?"
            Reponses := array{"Eminem", "PSY", "Shakira", "Queen"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'I Will Always Love You'?"
            Reponses := array{"The Beatles", "Prince", "Whitney Houston", "Adele"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Like a Virgin'?"
            Reponses := array{"Luis Fonsi", "Adele", "Madonna", "Ed Sheeran"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Purple Rain'?"
            Reponses := array{"Queen", "AC/DC", "Prince", "Shakira"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Highway to Hell'?"
            Reponses := array{"AC/DC", "John Lennon", "Queen", "Whitney Houston"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Back in Black'?"
            Reponses := array{"John Lennon", "Eminem", "Prince", "AC/DC"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Stairway to Heaven'?"
            Reponses := array{"David Guetta", "Travis Scott", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Hotel California'?"
            Reponses := array{"Eagles", "Taylor Swift", "Bruno Mars", "Avicii"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Sweet Child O' Mine'?"
            Reponses := array{"Led Zeppelin", "Alan Walker", "Guns N' Roses", "Pharrell Williams"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'November Rain'?"
            Reponses := array{"Guns N' Roses", "50 Cent", "Avicii", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Wonderwall'?"
            Reponses := array{"Oasis", "Drake", "Guns N' Roses", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Creep'?"
            Reponses := array{"Justin Timberlake", "Travis Scott", "Radiohead", "Oasis"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Yellow'?"
            Reponses := array{"Daft Punk", "Led Zeppelin", "Jay-Z", "Coldplay"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Viva la Vida'?"
            Reponses := array{"Drake", "Coldplay", "Taylor Swift", "Avicii"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Seven Nation Army'?"
            Reponses := array{"Coldplay", "The White Stripes", "Taylor Swift", "Drake"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Get Lucky'?"
            Reponses := array{"Radiohead", "Daft Punk", "Oasis", "Coldplay"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'One More Time'?"
            Reponses := array{"Daft Punk", "Travis Scott", "Martin Garrix", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Titanium'?"
            Reponses := array{"Drake", "Eagles", "David Guetta", "50 Cent"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Wake Me Up'?"
            Reponses := array{"Alan Walker", "Avicii", "Bruno Mars", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Levels'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Avicii", "Eagles"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Animals'?"
            Reponses := array{"The White Stripes", "Drake", "Oasis", "Martin Garrix"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Faded'?"
            Reponses := array{"Daft Punk", "Alan Walker", "Guns N' Roses", "Justin Bieber"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Uptown Funk'?"
            Reponses := array{"Drake", "Bruno Mars", "David Guetta", "50 Cent"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Happy'?"
            Reponses := array{"50 Cent", "Travis Scott", "Oasis", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Can't Stop the Feeling'?"
            Reponses := array{"Justin Timberlake", "Justin Bieber", "Daft Punk", "Drake"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Sorry'?"
            Reponses := array{"Daft Punk", "Drake", "Avicii", "Justin Bieber"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Anti-Hero'?"
            Reponses := array{"Taylor Swift", "Jay-Z", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Shake It Off'?"
            Reponses := array{"Alan Walker", "Taylor Swift", "Avicii", "Martin Garrix"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'God's Plan'?"
            Reponses := array{"Taylor Swift", "Daft Punk", "Eagles", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Hotline Bling'?"
            Reponses := array{"Oasis", "50 Cent", "Avicii", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Sicko Mode'?"
            Reponses := array{"Coldplay", "Travis Scott", "David Guetta", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'In Da Club'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Radiohead", "50 Cent"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Empire State of Mind'?"
            Reponses := array{"Daft Punk", "Jay-Z", "Led Zeppelin", "Travis Scott"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'La Boheme'?"
            Reponses := array{"Louis Armstrong", "Michael Jackson", "Charles Aznavour", "Edith Piaf"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Ne me quitte pas'?"
            Reponses := array{"Toto", "Eurythmics", "Edith Piaf", "Jacques Brel"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'La Vie en rose'?"
            Reponses := array{"Pink Floyd", "Jacques Brel", "Edith Piaf", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Non, je ne regrette rien'?"
            Reponses := array{"Eurythmics", "Stromae", "Indila", "Edith Piaf"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Mistral gagnant'?"
            Reponses := array{"Charles Aznavour", "Stromae", "Renaud", "Toto"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Foule sentimentale'?"
            Reponses := array{"Charles Aznavour", "Alain Souchon", "Michael Jackson", "Stevie Wonder"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Alors on danse'?"
            Reponses := array{"Nina Simone", "Indila", "Stromae", "Eurythmics"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Papaoutai'?"
            Reponses := array{"Stromae", "Radiohead", "Eurythmics", "Louis Armstrong"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Formidable'?"
            Reponses := array{"Stromae", "Johnny Cash", "Led Zeppelin", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Derniere danse'?"
            Reponses := array{"Aya Nakamura", "Indila", "Deep Purple", "Leonard Cohen"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Djadja'?"
            Reponses := array{"Edith Piaf", "Deep Purple", "Aya Nakamura", "Pink Floyd"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Take On Me'?"
            Reponses := array{"Eurythmics", "a-ha", "Aretha Franklin", "Louis Armstrong"}
            BonneReponse := 1
        question:
            Enonce := "Wer singt 'Africa'?"
            Reponses := array{"a-ha", "Edith Piaf", "Johnny Cash", "Toto"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Sweet Dreams'?"
            Reponses := array{"Edith Piaf", "Stromae", "Leonard Cohen", "Eurythmics"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Karma Police'?"
            Reponses := array{"Radiohead", "Leonard Cohen", "Alain Souchon", "Toto"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Paranoid'?"
            Reponses := array{"Aya Nakamura", "Indila", "Black Sabbath", "Stevie Wonder"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Smoke on the Water'?"
            Reponses := array{"Jacques Brel", "Louis Armstrong", "Leonard Cohen", "Deep Purple"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Kashmir'?"
            Reponses := array{"Led Zeppelin", "Black Sabbath", "Stromae", "Jacques Brel"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Comfortably Numb'?"
            Reponses := array{"Pink Floyd", "Toto", "Michael Jackson", "Deep Purple"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Wish You Were Here'?"
            Reponses := array{"Eurythmics", "Black Sabbath", "Stromae", "Pink Floyd"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Hallelujah'?"
            Reponses := array{"a-ha", "Louis Armstrong", "Leonard Cohen", "Led Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Wer singt 'Ring of Fire'?"
            Reponses := array{"Charles Aznavour", "a-ha", "Aya Nakamura", "Johnny Cash"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Respect'?"
            Reponses := array{"Radiohead", "Edith Piaf", "Toto", "Aretha Franklin"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'What a Wonderful World'?"
            Reponses := array{"Louis Armstrong", "Toto", "Johnny Cash", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Feeling Good'?"
            Reponses := array{"Nina Simone", "Sting", "Leonard Cohen", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Superstition'?"
            Reponses := array{"Johnny Cash", "Michael Jackson", "Eurythmics", "Stevie Wonder"}
            BonneReponse := 3
        question:
            Enonce := "Wer singt 'Englishman in New York'?"
            Reponses := array{"Sting", "Stromae", "Stevie Wonder", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Wer singt 'Beat It'?"
            Reponses := array{"Michael Jackson", "Johnny Cash", "Alain Souchon", "Radiohead"}
            BonneReponse := 0

MakeMusiqueQuestionsIT() : []question =
    array:
        question:
            Enonce := "Chi canta 'Thriller'?"
            Reponses := array{"PSY", "Luis Fonsi", "Ed Sheeran", "Michael Jackson"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Billie Jean'?"
            Reponses := array{"Adele", "Michael Jackson", "Whitney Houston", "Eminem"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Bohemian Rhapsody'?"
            Reponses := array{"Adele", "Billie Eilish", "Queen", "The Weeknd"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'We Will Rock You'?"
            Reponses := array{"Queen", "Michael Jackson", "Luis Fonsi", "Adele"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Imagine'?"
            Reponses := array{"John Lennon", "Eminem", "Madonna", "PSY"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Hey Jude'?"
            Reponses := array{"Eminem", "The Beatles", "PSY", "Luis Fonsi"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Let It Be'?"
            Reponses := array{"Adele", "Eminem", "Beyonce", "The Beatles"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Shape of You'?"
            Reponses := array{"Ed Sheeran", "Lady Gaga", "The Beatles", "Queen"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Blinding Lights'?"
            Reponses := array{"The Weeknd", "John Lennon", "Ed Sheeran", "Eminem"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Rolling in the Deep'?"
            Reponses := array{"Adele", "Lady Gaga", "Billie Eilish", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Hello'?"
            Reponses := array{"Eminem", "The Beatles", "Madonna", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Bad Guy'?"
            Reponses := array{"The Weeknd", "Rihanna", "Billie Eilish", "Eminem"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Poker Face'?"
            Reponses := array{"Beyonce", "Queen", "Lady Gaga", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Single Ladies'?"
            Reponses := array{"Lady Gaga", "The Beatles", "Nirvana", "Beyonce"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Umbrella'?"
            Reponses := array{"Beyonce", "Nirvana", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Diamonds'?"
            Reponses := array{"AC/DC", "The Beatles", "Luis Fonsi", "Rihanna"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Smells Like Teen Spirit'?"
            Reponses := array{"Nirvana", "Lady Gaga", "Adele", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Lose Yourself'?"
            Reponses := array{"Michael Jackson", "Eminem", "The Beatles", "AC/DC"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Without Me'?"
            Reponses := array{"Eminem", "Shakira", "PSY", "Luis Fonsi"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Gangnam Style'?"
            Reponses := array{"Billie Eilish", "Michael Jackson", "PSY", "AC/DC"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Despacito'?"
            Reponses := array{"Michael Jackson", "Luis Fonsi", "AC/DC", "Adele"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Waka Waka'?"
            Reponses := array{"Eminem", "PSY", "Shakira", "Queen"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'I Will Always Love You'?"
            Reponses := array{"The Beatles", "Prince", "Whitney Houston", "Adele"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Like a Virgin'?"
            Reponses := array{"Luis Fonsi", "Adele", "Madonna", "Ed Sheeran"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Purple Rain'?"
            Reponses := array{"Queen", "AC/DC", "Prince", "Shakira"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Highway to Hell'?"
            Reponses := array{"AC/DC", "John Lennon", "Queen", "Whitney Houston"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Back in Black'?"
            Reponses := array{"John Lennon", "Eminem", "Prince", "AC/DC"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Stairway to Heaven'?"
            Reponses := array{"David Guetta", "Travis Scott", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Hotel California'?"
            Reponses := array{"Eagles", "Taylor Swift", "Bruno Mars", "Avicii"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Sweet Child O' Mine'?"
            Reponses := array{"Led Zeppelin", "Alan Walker", "Guns N' Roses", "Pharrell Williams"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'November Rain'?"
            Reponses := array{"Guns N' Roses", "50 Cent", "Avicii", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Wonderwall'?"
            Reponses := array{"Oasis", "Drake", "Guns N' Roses", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Creep'?"
            Reponses := array{"Justin Timberlake", "Travis Scott", "Radiohead", "Oasis"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Yellow'?"
            Reponses := array{"Daft Punk", "Led Zeppelin", "Jay-Z", "Coldplay"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Viva la Vida'?"
            Reponses := array{"Drake", "Coldplay", "Taylor Swift", "Avicii"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Seven Nation Army'?"
            Reponses := array{"Coldplay", "The White Stripes", "Taylor Swift", "Drake"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Get Lucky'?"
            Reponses := array{"Radiohead", "Daft Punk", "Oasis", "Coldplay"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'One More Time'?"
            Reponses := array{"Daft Punk", "Travis Scott", "Martin Garrix", "Taylor Swift"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Titanium'?"
            Reponses := array{"Drake", "Eagles", "David Guetta", "50 Cent"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Wake Me Up'?"
            Reponses := array{"Alan Walker", "Avicii", "Bruno Mars", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Levels'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Avicii", "Eagles"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Animals'?"
            Reponses := array{"The White Stripes", "Drake", "Oasis", "Martin Garrix"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Faded'?"
            Reponses := array{"Daft Punk", "Alan Walker", "Guns N' Roses", "Justin Bieber"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Uptown Funk'?"
            Reponses := array{"Drake", "Bruno Mars", "David Guetta", "50 Cent"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Happy'?"
            Reponses := array{"50 Cent", "Travis Scott", "Oasis", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Can't Stop the Feeling'?"
            Reponses := array{"Justin Timberlake", "Justin Bieber", "Daft Punk", "Drake"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Sorry'?"
            Reponses := array{"Daft Punk", "Drake", "Avicii", "Justin Bieber"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Anti-Hero'?"
            Reponses := array{"Taylor Swift", "Jay-Z", "Daft Punk", "Led Zeppelin"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Shake It Off'?"
            Reponses := array{"Alan Walker", "Taylor Swift", "Avicii", "Martin Garrix"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'God's Plan'?"
            Reponses := array{"Taylor Swift", "Daft Punk", "Eagles", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Hotline Bling'?"
            Reponses := array{"Oasis", "50 Cent", "Avicii", "Drake"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Sicko Mode'?"
            Reponses := array{"Coldplay", "Travis Scott", "David Guetta", "Oasis"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'In Da Club'?"
            Reponses := array{"The White Stripes", "Led Zeppelin", "Radiohead", "50 Cent"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Empire State of Mind'?"
            Reponses := array{"Daft Punk", "Jay-Z", "Led Zeppelin", "Travis Scott"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'La Boheme'?"
            Reponses := array{"Louis Armstrong", "Michael Jackson", "Charles Aznavour", "Edith Piaf"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Ne me quitte pas'?"
            Reponses := array{"Toto", "Eurythmics", "Edith Piaf", "Jacques Brel"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'La Vie en rose'?"
            Reponses := array{"Pink Floyd", "Jacques Brel", "Edith Piaf", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Non, je ne regrette rien'?"
            Reponses := array{"Eurythmics", "Stromae", "Indila", "Edith Piaf"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Mistral gagnant'?"
            Reponses := array{"Charles Aznavour", "Stromae", "Renaud", "Toto"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Foule sentimentale'?"
            Reponses := array{"Charles Aznavour", "Alain Souchon", "Michael Jackson", "Stevie Wonder"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Alors on danse'?"
            Reponses := array{"Nina Simone", "Indila", "Stromae", "Eurythmics"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Papaoutai'?"
            Reponses := array{"Stromae", "Radiohead", "Eurythmics", "Louis Armstrong"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Formidable'?"
            Reponses := array{"Stromae", "Johnny Cash", "Led Zeppelin", "Radiohead"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Derniere danse'?"
            Reponses := array{"Aya Nakamura", "Indila", "Deep Purple", "Leonard Cohen"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Djadja'?"
            Reponses := array{"Edith Piaf", "Deep Purple", "Aya Nakamura", "Pink Floyd"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Take On Me'?"
            Reponses := array{"Eurythmics", "a-ha", "Aretha Franklin", "Louis Armstrong"}
            BonneReponse := 1
        question:
            Enonce := "Chi canta 'Africa'?"
            Reponses := array{"a-ha", "Edith Piaf", "Johnny Cash", "Toto"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Sweet Dreams'?"
            Reponses := array{"Edith Piaf", "Stromae", "Leonard Cohen", "Eurythmics"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Karma Police'?"
            Reponses := array{"Radiohead", "Leonard Cohen", "Alain Souchon", "Toto"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Paranoid'?"
            Reponses := array{"Aya Nakamura", "Indila", "Black Sabbath", "Stevie Wonder"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Smoke on the Water'?"
            Reponses := array{"Jacques Brel", "Louis Armstrong", "Leonard Cohen", "Deep Purple"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Kashmir'?"
            Reponses := array{"Led Zeppelin", "Black Sabbath", "Stromae", "Jacques Brel"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Comfortably Numb'?"
            Reponses := array{"Pink Floyd", "Toto", "Michael Jackson", "Deep Purple"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Wish You Were Here'?"
            Reponses := array{"Eurythmics", "Black Sabbath", "Stromae", "Pink Floyd"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Hallelujah'?"
            Reponses := array{"a-ha", "Louis Armstrong", "Leonard Cohen", "Led Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Chi canta 'Ring of Fire'?"
            Reponses := array{"Charles Aznavour", "a-ha", "Aya Nakamura", "Johnny Cash"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Respect'?"
            Reponses := array{"Radiohead", "Edith Piaf", "Toto", "Aretha Franklin"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'What a Wonderful World'?"
            Reponses := array{"Louis Armstrong", "Toto", "Johnny Cash", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Feeling Good'?"
            Reponses := array{"Nina Simone", "Sting", "Leonard Cohen", "Pink Floyd"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Superstition'?"
            Reponses := array{"Johnny Cash", "Michael Jackson", "Eurythmics", "Stevie Wonder"}
            BonneReponse := 3
        question:
            Enonce := "Chi canta 'Englishman in New York'?"
            Reponses := array{"Sting", "Stromae", "Stevie Wonder", "Alain Souchon"}
            BonneReponse := 0
        question:
            Enonce := "Chi canta 'Beat It'?"
            Reponses := array{"Michael Jackson", "Johnny Cash", "Alain Souchon", "Radiohead"}
            BonneReponse := 0

MakeMusiqueQuestions() : []question =
    MakeMusiqueQuestionsFR()
