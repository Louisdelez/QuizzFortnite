using { /Verse.org/Assets }

# celebrites_bank.verse — Quizz CELEBRITES (photos Wikipedia)
# GENERE — NE PAS EDITER A LA MAIN.

CelebritesDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeCelebritesQuestionsFR() : []question =
    array:
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0001 }
            Reponses := array{"Beyonce", "Denzel Washington", "Shakira", "Ed Sheeran"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0002 }
            Reponses := array{"Angelina Jolie", "Rihanna", "Elvis Presley", "Shakira"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0003 }
            Reponses := array{"Mark Zuckerberg", "Elon Musk", "Tom Cruise", "Taylor Swift"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0004 }
            Reponses := array{"Drake", "Billie Eilish", "Katy Perry", "Eminem"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0005 }
            Reponses := array{"Ariana Grande", "Elon Musk", "Drake", "Johnny Depp"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0006 }
            Reponses := array{"Robert Downey Jr.", "Michael Jackson", "Morgan Freeman", "Katy Perry"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0007 }
            Reponses := array{"Mark Zuckerberg", "Eminem", "Madonna", "Will Smith"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0008 }
            Reponses := array{"Shakira", "Ariana Grande", "Jim Carrey", "Elvis Presley"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0009 }
            Reponses := array{"Robert Downey Jr.", "Katy Perry", "Freddie Mercury", "Angelina Jolie"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0010 }
            Reponses := array{"Angelina Jolie", "Leonardo DiCaprio", "Billie Eilish", "Robert Downey Jr."}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0011 }
            Reponses := array{"Tom Cruise", "Billie Eilish", "Shakira", "Brad Pitt"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0012 }
            Reponses := array{"Scarlett Johansson", "Mark Zuckerberg", "Angelina Jolie", "Snoop Dogg"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0013 }
            Reponses := array{"Johnny Depp", "Michael Jackson", "Emma Watson", "Oprah Winfrey"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0014 }
            Reponses := array{"Tom Cruise", "Barack Obama", "Freddie Mercury", "Brad Pitt"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0015 }
            Reponses := array{"Adele", "Elvis Presley", "Will Smith", "Kim Kardashian"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0016 }
            Reponses := array{"Kanye West", "Dwayne Johnson", "Beyonce", "Keanu Reeves"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0017 }
            Reponses := array{"Robert Downey Jr.", "Jennifer Lawrence", "Elon Musk", "Keanu Reeves"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0018 }
            Reponses := array{"Jim Carrey", "Ariana Grande", "Elon Musk", "Morgan Freeman"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0019 }
            Reponses := array{"Barack Obama", "Robert Downey Jr.", "Tom Hanks", "Billie Eilish"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0020 }
            Reponses := array{"Oprah Winfrey", "Elvis Presley", "Scarlett Johansson", "Lady Gaga"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0021 }
            Reponses := array{"Rihanna", "Kim Kardashian", "Jennifer Lawrence", "Tom Cruise"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0022 }
            Reponses := array{"Emma Watson", "Freddie Mercury", "Lady Gaga", "Rihanna"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0023 }
            Reponses := array{"Tom Hanks", "Michael Jackson", "Mark Zuckerberg", "Will Smith"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0024 }
            Reponses := array{"Denzel Washington", "Dwayne Johnson", "Snoop Dogg", "Johnny Depp"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0025 }
            Reponses := array{"Jim Carrey", "Taylor Swift", "Lady Gaga", "Kim Kardashian"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0026 }
            Reponses := array{"Leonardo DiCaprio", "Ariana Grande", "Angelina Jolie", "Adele"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0027 }
            Reponses := array{"Snoop Dogg", "Ed Sheeran", "Keanu Reeves", "Tom Cruise"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0028 }
            Reponses := array{"Justin Bieber", "Snoop Dogg", "Elon Musk", "Emmanuel Macron"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0029 }
            Reponses := array{"Scarlett Johansson", "Ariana Grande", "Elon Musk", "Dwayne Johnson"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0030 }
            Reponses := array{"Michael Jackson", "Will Smith", "Billie Eilish", "Freddie Mercury"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0031 }
            Reponses := array{"Lady Gaga", "Drake", "Jim Carrey", "Keanu Reeves"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0032 }
            Reponses := array{"Madonna", "Mark Zuckerberg", "Katy Perry", "Lady Gaga"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0033 }
            Reponses := array{"Shakira", "Drake", "Barack Obama", "Angelina Jolie"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0034 }
            Reponses := array{"Michael Jackson", "Jennifer Lopez", "Justin Bieber", "Kanye West"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0035 }
            Reponses := array{"Billie Eilish", "Bill Gates", "Justin Bieber", "Snoop Dogg"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0036 }
            Reponses := array{"Jennifer Lawrence", "Michael Jackson", "Rihanna", "Kanye West"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0037 }
            Reponses := array{"Justin Bieber", "Rihanna", "Kim Kardashian", "Tom Hanks"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0038 }
            Reponses := array{"Donald Trump", "Drake", "Jennifer Lopez", "Elon Musk"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0039 }
            Reponses := array{"Johnny Depp", "Billie Eilish", "Bill Gates", "Jennifer Lopez"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0040 }
            Reponses := array{"Mark Zuckerberg", "Taylor Swift", "Freddie Mercury", "Will Smith"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0041 }
            Reponses := array{"Scarlett Johansson", "Morgan Freeman", "Barack Obama", "Billie Eilish"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0042 }
            Reponses := array{"Donald Trump", "Angelina Jolie", "Kanye West", "Tom Cruise"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0043 }
            Reponses := array{"Bill Gates", "Scarlett Johansson", "Madonna", "Emmanuel Macron"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0044 }
            Reponses := array{"Keanu Reeves", "Emmanuel Macron", "Denzel Washington", "Oprah Winfrey"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0045 }
            Reponses := array{"Al Pacino", "Martin Scorsese", "Harrison Ford", "Dua Lipa"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0046 }
            Reponses := array{"David Guetta", "Chris Evans", "Robert De Niro", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0047 }
            Reponses := array{"Matt Damon", "Jack Nicholson", "Al Pacino", "Quentin Tarantino"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0048 }
            Reponses := array{"Steven Spielberg", "Hugh Jackman", "Anthony Hopkins", "Martin Scorsese"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0049 }
            Reponses := array{"Penelope Cruz", "Samuel L. Jackson", "Bruce Willis", "Harrison Ford"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0050 }
            Reponses := array{"Harrison Ford", "Dua Lipa", "Arnold Schwarzenegger", "Nicole Kidman"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0051 }
            Reponses := array{"Ryan Reynolds", "Ryan Gosling", "Mel Gibson", "Sylvester Stallone"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0052 }
            Reponses := array{"Charlize Theron", "Arnold Schwarzenegger", "Christopher Nolan", "Penelope Cruz"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0053 }
            Reponses := array{"Bruce Willis", "Christopher Nolan", "Hugh Jackman", "Samuel L. Jackson"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0054 }
            Reponses := array{"Samuel L. Jackson", "Mel Gibson", "Arnold Schwarzenegger", "Zinedine Zidane"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0055 }
            Reponses := array{"Ryan Gosling", "Marion Cotillard", "George Clooney", "Daft Punk"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0056 }
            Reponses := array{"Matt Damon", "Ben Affleck", "Celine Dion", "George Clooney"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0057 }
            Reponses := array{"Omar Sy", "Hugh Jackman", "Harrison Ford", "Ben Affleck"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0058 }
            Reponses := array{"Anne Hathaway", "Ryan Gosling", "Sandra Bullock", "Marion Cotillard"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0059 }
            Reponses := array{"Marion Cotillard", "Ryan Reynolds", "Steven Spielberg", "Tom Holland"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0060 }
            Reponses := array{"Quentin Tarantino", "Ben Affleck", "Anthony Hopkins", "Hugh Jackman"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0061 }
            Reponses := array{"Chris Hemsworth", "Robert De Niro", "The Weeknd", "Matt Damon"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0062 }
            Reponses := array{"The Weeknd", "Julia Roberts", "Anthony Hopkins", "Chris Evans"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0063 }
            Reponses := array{"Steven Spielberg", "George Clooney", "Natalie Portman", "Julia Roberts"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0064 }
            Reponses := array{"Ben Affleck", "Anne Hathaway", "Daft Punk", "Celine Dion"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0065 }
            Reponses := array{"Meryl Streep", "Julia Roberts", "Penelope Cruz", "Ryan Reynolds"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0066 }
            Reponses := array{"Bruno Mars", "Nicole Kidman", "Jean Dujardin", "Zendaya"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0067 }
            Reponses := array{"Chris Evans", "Charlize Theron", "Ryan Reynolds", "The Weeknd"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0068 }
            Reponses := array{"Marion Cotillard", "Sandra Bullock", "Meryl Streep", "Bruno Mars"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0069 }
            Reponses := array{"Daft Punk", "Celine Dion", "Mel Gibson", "Sandra Bullock"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0070 }
            Reponses := array{"Ryan Gosling", "Anthony Hopkins", "Penelope Cruz", "Zendaya"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0071 }
            Reponses := array{"Zinedine Zidane", "Ben Affleck", "Dua Lipa", "Monica Bellucci"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0072 }
            Reponses := array{"Penelope Cruz", "Samuel L. Jackson", "Zinedine Zidane", "Jean Dujardin"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0073 }
            Reponses := array{"Celine Dion", "Mel Gibson", "Hugh Jackman", "Omar Sy"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0074 }
            Reponses := array{"Ben Affleck", "Marion Cotillard", "Bruno Mars", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0075 }
            Reponses := array{"Steven Spielberg", "Penelope Cruz", "Bruno Mars", "Quentin Tarantino"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0076 }
            Reponses := array{"Daft Punk", "Quentin Tarantino", "Penelope Cruz", "Hugh Jackman"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0077 }
            Reponses := array{"Al Pacino", "Nicole Kidman", "Christopher Nolan", "Samuel L. Jackson"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0078 }
            Reponses := array{"Zendaya", "Martin Scorsese", "Anne Hathaway", "Sylvester Stallone"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0079 }
            Reponses := array{"Matt Damon", "Alfred Hitchcock", "David Guetta", "Jack Nicholson"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0080 }
            Reponses := array{"Chris Evans", "Steven Spielberg", "Bruno Mars", "Sandra Bullock"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0081 }
            Reponses := array{"The Weeknd", "Christopher Nolan", "Bruce Willis", "Chris Evans"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0082 }
            Reponses := array{"Ryan Gosling", "Robert De Niro", "Dua Lipa", "Alfred Hitchcock"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0083 }
            Reponses := array{"Samuel L. Jackson", "Bruno Mars", "David Guetta", "Omar Sy"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0084 }
            Reponses := array{"Zinedine Zidane", "Daft Punk", "Nicole Kidman", "Christopher Nolan"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0085 }
            Reponses := array{"Penelope Cruz", "Julia Roberts", "Chris Hemsworth", "Celine Dion"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0086 }
            Reponses := array{"Stromae", "Celine Dion", "Harrison Ford", "Anthony Hopkins"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0087 }
            Reponses := array{"Sylvester Stallone", "Penelope Cruz", "Zinedine Zidane", "Steven Spielberg"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0088 }
            Reponses := array{"Robert De Niro", "Samuel L. Jackson", "Tom Holland", "Ryan Gosling"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0089 }
            Reponses := array{"Matt Damon", "Zendaya", "Christopher Nolan", "Martin Scorsese"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0090 }
            Reponses := array{"Willem Dafoe", "Jean Reno", "Serge Gainsbourg", "Antonio Banderas"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0091 }
            Reponses := array{"Antonio Banderas", "Javier Bardem", "Sophie Marceau", "Vincent Cassel"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0092 }
            Reponses := array{"Pedro Pascal", "Gerard Depardieu", "Audrey Tautou", "Jenna Ortega"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0093 }
            Reponses := array{"Timothee Chalamet", "Christopher Walken", "Squeezie", "Sophie Marceau"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0094 }
            Reponses := array{"Gary Oldman", "Louis de Funes", "50 Cent", "Edith Piaf"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0095 }
            Reponses := array{"Alain Delon", "Serge Gainsbourg", "Vincent Cassel", "Joaquin Phoenix"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0096 }
            Reponses := array{"Jean-Paul Belmondo", "Jared Leto", "Post Malone", "Jean Reno"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0097 }
            Reponses := array{"Javier Bardem", "Antonio Banderas", "Brigitte Bardot", "Travis Scott"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0098 }
            Reponses := array{"Christopher Walken", "Jenna Ortega", "Catherine Deneuve", "Jean Reno"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0099 }
            Reponses := array{"Louis de Funes", "Millie Bobby Brown", "Timothee Chalamet", "Audrey Tautou"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0100 }
            Reponses := array{"Charles Aznavour", "Squeezie", "Javier Bardem", "Margot Robbie"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0101 }
            Reponses := array{"Edith Piaf", "Willem Dafoe", "Salma Hayek", "Jenna Ortega"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0102 }
            Reponses := array{"Millie Bobby Brown", "Serge Gainsbourg", "Johnny Hallyday", "Nicki Minaj"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0103 }
            Reponses := array{"Margot Robbie", "Johnny Hallyday", "Doja Cat", "Pedro Pascal"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0104 }
            Reponses := array{"Brigitte Bardot", "Mylene Farmer", "Salma Hayek", "PewDiePie"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0105 }
            Reponses := array{"Doja Cat", "Charles Aznavour", "Christopher Walken", "Johnny Hallyday"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0106 }
            Reponses := array{"Travis Scott", "Gary Oldman", "Alain Delon", "Doja Cat"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0107 }
            Reponses := array{"Willem Dafoe", "Edith Piaf", "Antonio Banderas", "Jay-Z"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0108 }
            Reponses := array{"Javier Bardem", "Margot Robbie", "Audrey Tautou", "Squeezie"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0109 }
            Reponses := array{"Antonio Banderas", "Jenna Ortega", "Willem Dafoe", "Jared Leto"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0110 }
            Reponses := array{"Brigitte Bardot", "Timothee Chalamet", "Salma Hayek", "Charles Aznavour"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0111 }
            Reponses := array{"Joaquin Phoenix", "Brigitte Bardot", "Jean-Paul Belmondo", "Edith Piaf"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0112 }
            Reponses := array{"Jared Leto", "Post Malone", "Pharrell Williams", "Travis Scott"}
            BonneReponse := 0
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0113 }
            Reponses := array{"Jean-Paul Belmondo", "Timothee Chalamet", "Edith Piaf", "Joaquin Phoenix"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0114 }
            Reponses := array{"Jean Reno", "Alain Delon", "Louis de Funes", "Margot Robbie"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0115 }
            Reponses := array{"Gerard Depardieu", "Willem Dafoe", "Pedro Pascal", "Brigitte Bardot"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0116 }
            Reponses := array{"Mylene Farmer", "PewDiePie", "Javier Bardem", "Millie Bobby Brown"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0117 }
            Reponses := array{"Javier Bardem", "Catherine Deneuve", "Gary Oldman", "Jenna Ortega"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0118 }
            Reponses := array{"Pedro Pascal", "MrBeast", "Edith Piaf", "Jared Leto"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0119 }
            Reponses := array{"Brigitte Bardot", "Christopher Walken", "PewDiePie", "Louis de Funes"}
            BonneReponse := 2
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0120 }
            Reponses := array{"50 Cent", "Squeezie", "Christopher Walken", "Edith Piaf"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0121 }
            Reponses := array{"50 Cent", "Christopher Walken", "Brigitte Bardot", "Pharrell Williams"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0122 }
            Reponses := array{"Jared Leto", "Jay-Z", "Catherine Deneuve", "Johnny Hallyday"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0123 }
            Reponses := array{"Gary Oldman", "50 Cent", "Salma Hayek", "Pedro Pascal"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0124 }
            Reponses := array{"Jean Reno", "Jenna Ortega", "Audrey Tautou", "Travis Scott"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0125 }
            Reponses := array{"Timothee Chalamet", "Post Malone", "Louis de Funes", "Jenna Ortega"}
            BonneReponse := 1
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0126 }
            Reponses := array{"Salma Hayek", "Antonio Banderas", "Sophie Marceau", "Doja Cat"}
            BonneReponse := 3
        question:
            Enonce := "Qui est cette celebrite ?"
            Image := option{ celebrites.cel_0127 }
            Reponses := array{"Brigitte Bardot", "Travis Scott", "Nicki Minaj", "Jean Reno"}
            BonneReponse := 2

MakeCelebritesQuestions() : []question =
    MakeCelebritesQuestionsFR()

MakeCelebritesQuestionsEN() : []question =
    Base := MakeCelebritesQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Who is this celebrity?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeCelebritesQuestionsES() : []question =
    Base := MakeCelebritesQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Quien es esta celebridad?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeCelebritesQuestionsDE() : []question =
    Base := MakeCelebritesQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Wer ist diese Beruehmtheit?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }

MakeCelebritesQuestionsIT() : []question =
    Base := MakeCelebritesQuestionsFR()
    for (Q : Base):
        question{ Enonce := "Chi e questa celebrita?", Image := Q.Image, Reponses := Q.Reponses, BonneReponse := Q.BonneReponse }
