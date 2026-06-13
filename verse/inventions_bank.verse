using { /Verse.org/Assets }

# inventions_bank.verse — Quizz INVENTIONS & DECOUVERTES
# GENERE — NE PAS EDITER A LA MAIN.

InventionsDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeInventionsQuestionsFR() : []question =
    array:
        question:
            Enonce := "Qui a invente l'ampoule electrique ?"
            Reponses := array{"Benjamin Franklin", "Guglielmo Marconi", "Thomas Edison", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le telephone ?"
            Reponses := array{"Tim Berners-Lee", "Alexander Graham Bell", "Karl Benz", "James Watt"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la radio ?"
            Reponses := array{"Albert Einstein", "Dmitri Mendeleiev", "Charles Darwin", "Guglielmo Marconi"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le vaccin contre la rage ?"
            Reponses := array{"Louis Pasteur", "Alfred Nobel", "Guglielmo Marconi", "Samuel Morse"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la penicilline ?"
            Reponses := array{"Alexander Fleming", "Galileo Galilei", "Alexander Graham Bell", "Alessandro Volta"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la gravitation universelle ?"
            Reponses := array{"Galileo Galilei", "Benjamin Franklin", "Isaac Newton", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert la relativite ?"
            Reponses := array{"Albert Einstein", "Louis Pasteur", "Isaac Newton", "Michael Faraday"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le telegraphe et son code ?"
            Reponses := array{"Thomas Edison", "Samuel Morse", "Isaac Newton", "Les freres Wright"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la dynamite ?"
            Reponses := array{"Albert Einstein", "Samuel Morse", "Galileo Galilei", "Alfred Nobel"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente l'imprimerie en Europe ?"
            Reponses := array{"Thomas Edison", "Johannes Gutenberg", "Dmitri Mendeleiev", "Alessandro Volta"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le telescope astronomique ameliore ?"
            Reponses := array{"Samuel Morse", "Alexander Graham Bell", "Galileo Galilei", "Louis Pasteur"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente l'avion (premier vol motorise) ?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "Thomas Edison", "Les freres Wright"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le cinema ?"
            Reponses := array{"Marie Curie", "Les freres Lumiere", "Martin Cooper", "John Dunlop"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la pile electrique ?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "John Dunlop", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le paratonnerre ?"
            Reponses := array{"Alexander Graham Bell", "Guglielmo Marconi", "Benjamin Franklin", "Martin Cooper"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert l'Amerique (1492) ?"
            Reponses := array{"Samuel Morse", "Galileo Galilei", "Christophe Colomb", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le World Wide Web ?"
            Reponses := array{"Albert Einstein", "Christophe Colomb", "Jonas Salk", "Tim Berners-Lee"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le vaccin contre la polio ?"
            Reponses := array{"Jonas Salk", "Thomas Edison", "Johannes Gutenberg", "Benjamin Franklin"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente la machine a vapeur amelioree ?"
            Reponses := array{"Isaac Newton", "Karl Benz", "Dmitri Mendeleiev", "James Watt"}
            BonneReponse := 3
        question:
            Enonce := "Qui a decouvert la theorie de l'evolution ?"
            Reponses := array{"Alexander Graham Bell", "Johannes Gutenberg", "Tim Berners-Lee", "Charles Darwin"}
            BonneReponse := 3
        question:
            Enonce := "Qui a decouvert le pole Sud (premier a l'atteindre) ?"
            Reponses := array{"Roald Amundsen", "Alexander Graham Bell", "Albert Einstein", "John Dunlop"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la radioactivite (etude, prix Nobel) ?"
            Reponses := array{"Johannes Gutenberg", "Marie Curie", "Jonas Salk", "Galileo Galilei"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente l'automobile a essence ?"
            Reponses := array{"Johannes Gutenberg", "Alexander Fleming", "Karl Benz", "Samuel Morse"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert le systeme heliocentrique ?"
            Reponses := array{"Charles Darwin", "Samuel Morse", "Alfred Nobel", "Nicolas Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le pneumatique ?"
            Reponses := array{"Roald Amundsen", "Isaac Newton", "John Dunlop", "Albert Einstein"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert le tableau periodique des elements ?"
            Reponses := array{"Martin Cooper", "Thomas Edison", "Les freres Lumiere", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le moteur Diesel ?"
            Reponses := array{"Thomas Edison", "Jonas Salk", "Rudolf Diesel", "Johannes Gutenberg"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le telephone portable (premier appel) ?"
            Reponses := array{"Marie Curie", "Benjamin Franklin", "Martin Cooper", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente la dynamo et l'induction ?"
            Reponses := array{"Samuel Morse", "Michael Faraday", "Louis Pasteur", "Charles Darwin"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la photographie (premier procede) ?"
            Reponses := array{"Nicephore Niepce", "Philo Farnsworth", "Roger Easton", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le daguerreotype ?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Louis Daguerre", "Theodore Maiman"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le stethoscope ?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "Frank Whittle", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la pasteurisation ?"
            Reponses := array{"Heinrich Hertz", "Louis Pasteur", "Theodore Maiman", "Roger Easton"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le Braille ?"
            Reponses := array{"Watson et Crick", "Louis Braille", "George de Mestral", "Frank Whittle"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la machine a coudre ?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "George de Mestral", "Isaac Singer"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le telegraphe sans fil ?"
            Reponses := array{"Louis Pasteur", "Guglielmo Marconi", "Igor Sikorsky", "Rene Laennec"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le velo moderne (chaine) ?"
            Reponses := array{"John Kemp Starley", "Guglielmo Marconi", "Theodore Maiman", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le helicoptere moderne ?"
            Reponses := array{"Roger Easton", "Watson et Crick", "Igor Sikorsky", "Louis Daguerre"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le moteur a reaction ?"
            Reponses := array{"Frank Whittle", "Frederick Banting", "Roger Easton", "John Bardeen"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente la television electronique ?"
            Reponses := array{"Isaac Singer", "Guglielmo Marconi", "Philo Farnsworth", "William Harvey"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le transistor ?"
            Reponses := array{"Watson et Crick", "J.J. Thomson", "John Bardeen", "Gideon Sundback"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le laser ?"
            Reponses := array{"Theodore Maiman", "Gideon Sundback", "Igor Sikorsky", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le stylo a bille ?"
            Reponses := array{"John Kemp Starley", "Laszlo Biro", "Igor Sikorsky", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la fermeture eclair ?"
            Reponses := array{"Norman Joseph Woodland", "Frank Whittle", "Gideon Sundback", "Roger Easton"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le Velcro ?"
            Reponses := array{"Louis Daguerre", "Roger Easton", "Heinrich Hertz", "George de Mestral"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le four a micro-ondes ?"
            Reponses := array{"Percy Spencer", "John Bardeen", "Louis Daguerre", "Wilhelm Roentgen"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la structure de l'ADN ?"
            Reponses := array{"Frank Whittle", "Watson et Crick", "Louis Pasteur", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert les ondes radio (preuve experimentale) ?"
            Reponses := array{"Heinrich Hertz", "William Harvey", "Gideon Sundback", "Louis Daguerre"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert les rayons X ?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Frederick Banting", "Heinrich Hertz"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la circulation sanguine ?"
            Reponses := array{"George de Mestral", "William Harvey", "Louis Pasteur", "Frederick Banting"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert l'electron ?"
            Reponses := array{"Wilhelm Roentgen", "J.J. Thomson", "Gregor Mendel", "John Bardeen"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert l'insuline (isolement) ?"
            Reponses := array{"Norman Joseph Woodland", "Roger Easton", "Rene Laennec", "Frederick Banting"}
            BonneReponse := 3
        question:
            Enonce := "Qui a decouvert les lois de l'heredite ?"
            Reponses := array{"Gregor Mendel", "Louis Braille", "Philo Farnsworth", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente la vulcanisation du caoutchouc ?"
            Reponses := array{"Igor Sikorsky", "Charles Goodyear", "Laszlo Biro", "Watson et Crick"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le code-barres ?"
            Reponses := array{"Wilhelm Roentgen", "George de Mestral", "Isaac Singer", "Norman Joseph Woodland"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le GPS (concept) ?"
            Reponses := array{"Roger Easton", "Rene Laennec", "Theodore Maiman", "William Harvey"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le metier a tisser automatique (carte perforee) ?"
            Reponses := array{"Charles Babbage", "Joseph Marie Jacquard", "Edward Jenner", "Karl Landsteiner"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente la premiere machine a calculer mecanique ?"
            Reponses := array{"Nikola Tesla", "James Chadwick", "Blaise Pascal", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente la machine analytique (ancetre de l'ordinateur) ?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Fibonacci", "Charles Babbage"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente le premier programme informatique ?"
            Reponses := array{"Ada Lovelace", "Charles Babbage", "Otto Hahn", "Antonie van Leeuwenhoek"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert la theorie de l'information ?"
            Reponses := array{"Claude Shannon", "Ferdinand von Zeppelin", "Antonie van Leeuwenhoek", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert le concept de machine universelle ?"
            Reponses := array{"Heike Kamerlingh Onnes", "les freres Lumiere", "Alan Turing", "Nikola Tesla"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert la dynamite... non, la nitroglycerine ?"
            Reponses := array{"Evangelista Torricelli", "Ascanio Sobrero", "Claude Shannon", "Fibonacci"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le thermometre a mercure ?"
            Reponses := array{"Heike Kamerlingh Onnes", "Daniel Fahrenheit", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le barometre ?"
            Reponses := array{"Evangelista Torricelli", "Claude Shannon", "Fibonacci", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le microscope (pionnier des microbes) ?"
            Reponses := array{"Edward Jenner", "Fibonacci", "Antonie van Leeuwenhoek", "Ferdinand von Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Qui a decouvert la theorie des germes (chirurgie aseptique) ?"
            Reponses := array{"Ada Lovelace", "Joseph Lister", "Edward Jenner", "Ascanio Sobrero"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert les groupes sanguins ?"
            Reponses := array{"Robert Boyle", "Karl Landsteiner", "Antonie van Leeuwenhoek", "Claude Shannon"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert la supraconductivite ?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Charles Babbage", "les freres Lumiere"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert la fission nucleaire ?"
            Reponses := array{"Otto Hahn", "Claude Shannon", "Paul Langevin", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert le neutron ?"
            Reponses := array{"Karl Landsteiner", "Rene Descartes", "Otto Hahn", "James Chadwick"}
            BonneReponse := 3
        question:
            Enonce := "Qui a decouvert la pression atmospherique (loi des gaz) ?"
            Reponses := array{"Robert Boyle", "Claude Shannon", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 0
        question:
            Enonce := "Qui a decouvert l'oxygene (isolement) ?"
            Reponses := array{"Antoine Lavoisier", "Rene Descartes", "Paul Langevin", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente la vaccination (variole) ?"
            Reponses := array{"Edward Jenner", "Daniel Fahrenheit", "Fibonacci", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente le sonar moderne ?"
            Reponses := array{"les freres Lumiere", "Charles Babbage", "Paul Langevin", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le cinematographe couleur (procede) ?"
            Reponses := array{"les freres Lumiere", "Joseph Lister", "James Chadwick", "Claude Shannon"}
            BonneReponse := 0
        question:
            Enonce := "Qui a invente la dynamo de bicyclette... le moteur electrique ?"
            Reponses := array{"Paul Langevin", "Charles Babbage", "Nikola Tesla", "Daniel Fahrenheit"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente le courant alternatif (systeme) ?"
            Reponses := array{"Ferdinand von Zeppelin", "Nikola Tesla", "Charles Babbage", "Otto Hahn"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le ballon dirigeable rigide ?"
            Reponses := array{"Karl Landsteiner", "Antoine Lavoisier", "Ferdinand von Zeppelin", "Alan Turing"}
            BonneReponse := 2
        question:
            Enonce := "Qui a invente la cocotte-minute... le canon de Papin ?"
            Reponses := array{"Joseph Lister", "Denis Papin", "Heike Kamerlingh Onnes", "Paul Langevin"}
            BonneReponse := 1
        question:
            Enonce := "Qui a invente le systeme de numeration decimale moderne (Europe) ?"
            Reponses := array{"Heike Kamerlingh Onnes", "Ferdinand von Zeppelin", "Blaise Pascal", "Fibonacci"}
            BonneReponse := 3
        question:
            Enonce := "Qui a invente la pile a combustible ?"
            Reponses := array{"Edward Jenner", "William Grove", "Antoine Lavoisier", "Joseph Marie Jacquard"}
            BonneReponse := 1
        question:
            Enonce := "Qui a decouvert la geometrie analytique ?"
            Reponses := array{"Rene Descartes", "Joseph Lister", "Joseph Marie Jacquard", "Nikola Tesla"}
            BonneReponse := 0

MakeInventionsQuestionsEN() : []question =
    array:
        question:
            Enonce := "Who invented the light bulb?"
            Reponses := array{"Benjamin Franklin", "Guglielmo Marconi", "Thomas Edison", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the telephone?"
            Reponses := array{"Tim Berners-Lee", "Alexander Graham Bell", "Karl Benz", "James Watt"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the radio?"
            Reponses := array{"Albert Einstein", "Dmitri Mendeleiev", "Charles Darwin", "Guglielmo Marconi"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the rabies vaccine?"
            Reponses := array{"Louis Pasteur", "Alfred Nobel", "Guglielmo Marconi", "Samuel Morse"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered penicillin?"
            Reponses := array{"Alexander Fleming", "Galileo Galilei", "Alexander Graham Bell", "Alessandro Volta"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered universal gravitation?"
            Reponses := array{"Galileo Galilei", "Benjamin Franklin", "Isaac Newton", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered relativity?"
            Reponses := array{"Albert Einstein", "Louis Pasteur", "Isaac Newton", "Michael Faraday"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the telegraph code?"
            Reponses := array{"Thomas Edison", "Samuel Morse", "Isaac Newton", "Les freres Wright"}
            BonneReponse := 1
        question:
            Enonce := "Who invented dynamite?"
            Reponses := array{"Albert Einstein", "Samuel Morse", "Galileo Galilei", "Alfred Nobel"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the printing press in Europe?"
            Reponses := array{"Thomas Edison", "Johannes Gutenberg", "Dmitri Mendeleiev", "Alessandro Volta"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the improved telescope?"
            Reponses := array{"Samuel Morse", "Alexander Graham Bell", "Galileo Galilei", "Louis Pasteur"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the airplane?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "Thomas Edison", "Les freres Wright"}
            BonneReponse := 3
        question:
            Enonce := "Who invented cinema?"
            Reponses := array{"Marie Curie", "Les freres Lumiere", "Martin Cooper", "John Dunlop"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the electric battery?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "John Dunlop", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the lightning rod?"
            Reponses := array{"Alexander Graham Bell", "Guglielmo Marconi", "Benjamin Franklin", "Martin Cooper"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered America (1492)?"
            Reponses := array{"Samuel Morse", "Galileo Galilei", "Christophe Colomb", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the World Wide Web?"
            Reponses := array{"Albert Einstein", "Christophe Colomb", "Jonas Salk", "Tim Berners-Lee"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the polio vaccine?"
            Reponses := array{"Jonas Salk", "Thomas Edison", "Johannes Gutenberg", "Benjamin Franklin"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the improved steam engine?"
            Reponses := array{"Isaac Newton", "Karl Benz", "Dmitri Mendeleiev", "James Watt"}
            BonneReponse := 3
        question:
            Enonce := "Who discovered the theory of evolution?"
            Reponses := array{"Alexander Graham Bell", "Johannes Gutenberg", "Tim Berners-Lee", "Charles Darwin"}
            BonneReponse := 3
        question:
            Enonce := "Who discovered the South Pole (first to reach)?"
            Reponses := array{"Roald Amundsen", "Alexander Graham Bell", "Albert Einstein", "John Dunlop"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered radioactivity?"
            Reponses := array{"Johannes Gutenberg", "Marie Curie", "Jonas Salk", "Galileo Galilei"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the gasoline automobile?"
            Reponses := array{"Johannes Gutenberg", "Alexander Fleming", "Karl Benz", "Samuel Morse"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered the heliocentric system?"
            Reponses := array{"Charles Darwin", "Samuel Morse", "Alfred Nobel", "Nicolas Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the pneumatic tyre?"
            Reponses := array{"Roald Amundsen", "Isaac Newton", "John Dunlop", "Albert Einstein"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered the periodic table?"
            Reponses := array{"Martin Cooper", "Thomas Edison", "Les freres Lumiere", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the Diesel engine?"
            Reponses := array{"Thomas Edison", "Jonas Salk", "Rudolf Diesel", "Johannes Gutenberg"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the mobile phone?"
            Reponses := array{"Marie Curie", "Benjamin Franklin", "Martin Cooper", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the dynamo and induction?"
            Reponses := array{"Samuel Morse", "Michael Faraday", "Louis Pasteur", "Charles Darwin"}
            BonneReponse := 1
        question:
            Enonce := "Who invented photography?"
            Reponses := array{"Nicephore Niepce", "Philo Farnsworth", "Roger Easton", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the daguerreotype?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Louis Daguerre", "Theodore Maiman"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the stethoscope?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "Frank Whittle", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Who invented pasteurization?"
            Reponses := array{"Heinrich Hertz", "Louis Pasteur", "Theodore Maiman", "Roger Easton"}
            BonneReponse := 1
        question:
            Enonce := "Who invented Braille?"
            Reponses := array{"Watson et Crick", "Louis Braille", "George de Mestral", "Frank Whittle"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the sewing machine?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "George de Mestral", "Isaac Singer"}
            BonneReponse := 3
        question:
            Enonce := "Who invented wireless telegraphy?"
            Reponses := array{"Louis Pasteur", "Guglielmo Marconi", "Igor Sikorsky", "Rene Laennec"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the modern bicycle?"
            Reponses := array{"John Kemp Starley", "Guglielmo Marconi", "Theodore Maiman", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the modern helicopter?"
            Reponses := array{"Roger Easton", "Watson et Crick", "Igor Sikorsky", "Louis Daguerre"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the jet engine?"
            Reponses := array{"Frank Whittle", "Frederick Banting", "Roger Easton", "John Bardeen"}
            BonneReponse := 0
        question:
            Enonce := "Who invented electronic television?"
            Reponses := array{"Isaac Singer", "Guglielmo Marconi", "Philo Farnsworth", "William Harvey"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the transistor?"
            Reponses := array{"Watson et Crick", "J.J. Thomson", "John Bardeen", "Gideon Sundback"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the laser?"
            Reponses := array{"Theodore Maiman", "Gideon Sundback", "Igor Sikorsky", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the ballpoint pen?"
            Reponses := array{"John Kemp Starley", "Laszlo Biro", "Igor Sikorsky", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the zipper?"
            Reponses := array{"Norman Joseph Woodland", "Frank Whittle", "Gideon Sundback", "Roger Easton"}
            BonneReponse := 2
        question:
            Enonce := "Who invented Velcro?"
            Reponses := array{"Louis Daguerre", "Roger Easton", "Heinrich Hertz", "George de Mestral"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the microwave oven?"
            Reponses := array{"Percy Spencer", "John Bardeen", "Louis Daguerre", "Wilhelm Roentgen"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered the structure of DNA?"
            Reponses := array{"Frank Whittle", "Watson et Crick", "Louis Pasteur", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered radio waves?"
            Reponses := array{"Heinrich Hertz", "William Harvey", "Gideon Sundback", "Louis Daguerre"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered X-rays?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Frederick Banting", "Heinrich Hertz"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered blood circulation?"
            Reponses := array{"George de Mestral", "William Harvey", "Louis Pasteur", "Frederick Banting"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered the electron?"
            Reponses := array{"Wilhelm Roentgen", "J.J. Thomson", "Gregor Mendel", "John Bardeen"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered insulin?"
            Reponses := array{"Norman Joseph Woodland", "Roger Easton", "Rene Laennec", "Frederick Banting"}
            BonneReponse := 3
        question:
            Enonce := "Who discovered the laws of heredity?"
            Reponses := array{"Gregor Mendel", "Louis Braille", "Philo Farnsworth", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Who invented rubber vulcanization?"
            Reponses := array{"Igor Sikorsky", "Charles Goodyear", "Laszlo Biro", "Watson et Crick"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the barcode?"
            Reponses := array{"Wilhelm Roentgen", "George de Mestral", "Isaac Singer", "Norman Joseph Woodland"}
            BonneReponse := 3
        question:
            Enonce := "Who invented GPS?"
            Reponses := array{"Roger Easton", "Rene Laennec", "Theodore Maiman", "William Harvey"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the Jacquard loom?"
            Reponses := array{"Charles Babbage", "Joseph Marie Jacquard", "Edward Jenner", "Karl Landsteiner"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the mechanical calculator?"
            Reponses := array{"Nikola Tesla", "James Chadwick", "Blaise Pascal", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the analytical engine?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Fibonacci", "Charles Babbage"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the first computer program?"
            Reponses := array{"Ada Lovelace", "Charles Babbage", "Otto Hahn", "Antonie van Leeuwenhoek"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered information theory?"
            Reponses := array{"Claude Shannon", "Ferdinand von Zeppelin", "Antonie van Leeuwenhoek", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered the universal machine?"
            Reponses := array{"Heike Kamerlingh Onnes", "les freres Lumiere", "Alan Turing", "Nikola Tesla"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered nitroglycerin?"
            Reponses := array{"Evangelista Torricelli", "Ascanio Sobrero", "Claude Shannon", "Fibonacci"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the mercury thermometer?"
            Reponses := array{"Heike Kamerlingh Onnes", "Daniel Fahrenheit", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the barometer?"
            Reponses := array{"Evangelista Torricelli", "Claude Shannon", "Fibonacci", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the microscope (microbe pioneer)?"
            Reponses := array{"Edward Jenner", "Fibonacci", "Antonie van Leeuwenhoek", "Ferdinand von Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Who discovered antiseptic surgery?"
            Reponses := array{"Ada Lovelace", "Joseph Lister", "Edward Jenner", "Ascanio Sobrero"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered blood groups?"
            Reponses := array{"Robert Boyle", "Karl Landsteiner", "Antonie van Leeuwenhoek", "Claude Shannon"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered superconductivity?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Charles Babbage", "les freres Lumiere"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered nuclear fission?"
            Reponses := array{"Otto Hahn", "Claude Shannon", "Paul Langevin", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered the neutron?"
            Reponses := array{"Karl Landsteiner", "Rene Descartes", "Otto Hahn", "James Chadwick"}
            BonneReponse := 3
        question:
            Enonce := "Who discovered the gas law?"
            Reponses := array{"Robert Boyle", "Claude Shannon", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 0
        question:
            Enonce := "Who discovered oxygen?"
            Reponses := array{"Antoine Lavoisier", "Rene Descartes", "Paul Langevin", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Who invented vaccination (smallpox)?"
            Reponses := array{"Edward Jenner", "Daniel Fahrenheit", "Fibonacci", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Who invented modern sonar?"
            Reponses := array{"les freres Lumiere", "Charles Babbage", "Paul Langevin", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Who invented color film process?"
            Reponses := array{"les freres Lumiere", "Joseph Lister", "James Chadwick", "Claude Shannon"}
            BonneReponse := 0
        question:
            Enonce := "Who invented the electric motor?"
            Reponses := array{"Paul Langevin", "Charles Babbage", "Nikola Tesla", "Daniel Fahrenheit"}
            BonneReponse := 2
        question:
            Enonce := "Who invented alternating current?"
            Reponses := array{"Ferdinand von Zeppelin", "Nikola Tesla", "Charles Babbage", "Otto Hahn"}
            BonneReponse := 1
        question:
            Enonce := "Who invented the rigid airship?"
            Reponses := array{"Karl Landsteiner", "Antoine Lavoisier", "Ferdinand von Zeppelin", "Alan Turing"}
            BonneReponse := 2
        question:
            Enonce := "Who invented the pressure cooker?"
            Reponses := array{"Joseph Lister", "Denis Papin", "Heike Kamerlingh Onnes", "Paul Langevin"}
            BonneReponse := 1
        question:
            Enonce := "Who invented decimal numerals in Europe?"
            Reponses := array{"Heike Kamerlingh Onnes", "Ferdinand von Zeppelin", "Blaise Pascal", "Fibonacci"}
            BonneReponse := 3
        question:
            Enonce := "Who invented the fuel cell?"
            Reponses := array{"Edward Jenner", "William Grove", "Antoine Lavoisier", "Joseph Marie Jacquard"}
            BonneReponse := 1
        question:
            Enonce := "Who discovered analytic geometry?"
            Reponses := array{"Rene Descartes", "Joseph Lister", "Joseph Marie Jacquard", "Nikola Tesla"}
            BonneReponse := 0

MakeInventionsQuestionsES() : []question =
    array:
        question:
            Enonce := "Quien invento la bombilla?"
            Reponses := array{"Benjamin Franklin", "Guglielmo Marconi", "Thomas Edison", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el telefono?"
            Reponses := array{"Tim Berners-Lee", "Alexander Graham Bell", "Karl Benz", "James Watt"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la radio?"
            Reponses := array{"Albert Einstein", "Dmitri Mendeleiev", "Charles Darwin", "Guglielmo Marconi"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento la vacuna contra la rabia?"
            Reponses := array{"Louis Pasteur", "Alfred Nobel", "Guglielmo Marconi", "Samuel Morse"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la penicilina?"
            Reponses := array{"Alexander Fleming", "Galileo Galilei", "Alexander Graham Bell", "Alessandro Volta"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la gravitacion universal?"
            Reponses := array{"Galileo Galilei", "Benjamin Franklin", "Isaac Newton", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio la relatividad?"
            Reponses := array{"Albert Einstein", "Louis Pasteur", "Isaac Newton", "Michael Faraday"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el telegrafo y su codigo?"
            Reponses := array{"Thomas Edison", "Samuel Morse", "Isaac Newton", "Les freres Wright"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la dinamita?"
            Reponses := array{"Albert Einstein", "Samuel Morse", "Galileo Galilei", "Alfred Nobel"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento la imprenta en Europa?"
            Reponses := array{"Thomas Edison", "Johannes Gutenberg", "Dmitri Mendeleiev", "Alessandro Volta"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el telescopio mejorado?"
            Reponses := array{"Samuel Morse", "Alexander Graham Bell", "Galileo Galilei", "Louis Pasteur"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el avion?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "Thomas Edison", "Les freres Wright"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el cine?"
            Reponses := array{"Marie Curie", "Les freres Lumiere", "Martin Cooper", "John Dunlop"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la pila electrica?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "John Dunlop", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el pararrayos?"
            Reponses := array{"Alexander Graham Bell", "Guglielmo Marconi", "Benjamin Franklin", "Martin Cooper"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio America (1492)?"
            Reponses := array{"Samuel Morse", "Galileo Galilei", "Christophe Colomb", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento la World Wide Web?"
            Reponses := array{"Albert Einstein", "Christophe Colomb", "Jonas Salk", "Tim Berners-Lee"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento la vacuna contra la polio?"
            Reponses := array{"Jonas Salk", "Thomas Edison", "Johannes Gutenberg", "Benjamin Franklin"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento la maquina de vapor mejorada?"
            Reponses := array{"Isaac Newton", "Karl Benz", "Dmitri Mendeleiev", "James Watt"}
            BonneReponse := 3
        question:
            Enonce := "Quien descubrio la teoria de la evolucion?"
            Reponses := array{"Alexander Graham Bell", "Johannes Gutenberg", "Tim Berners-Lee", "Charles Darwin"}
            BonneReponse := 3
        question:
            Enonce := "Quien descubrio el Polo Sur (primero en llegar)?"
            Reponses := array{"Roald Amundsen", "Alexander Graham Bell", "Albert Einstein", "John Dunlop"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la radiactividad?"
            Reponses := array{"Johannes Gutenberg", "Marie Curie", "Jonas Salk", "Galileo Galilei"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el automovil de gasolina?"
            Reponses := array{"Johannes Gutenberg", "Alexander Fleming", "Karl Benz", "Samuel Morse"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio el sistema heliocentrico?"
            Reponses := array{"Charles Darwin", "Samuel Morse", "Alfred Nobel", "Nicolas Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el neumatico?"
            Reponses := array{"Roald Amundsen", "Isaac Newton", "John Dunlop", "Albert Einstein"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio la tabla periodica?"
            Reponses := array{"Martin Cooper", "Thomas Edison", "Les freres Lumiere", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el motor diesel?"
            Reponses := array{"Thomas Edison", "Jonas Salk", "Rudolf Diesel", "Johannes Gutenberg"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el telefono movil?"
            Reponses := array{"Marie Curie", "Benjamin Franklin", "Martin Cooper", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento la dinamo y la induccion?"
            Reponses := array{"Samuel Morse", "Michael Faraday", "Louis Pasteur", "Charles Darwin"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la fotografia?"
            Reponses := array{"Nicephore Niepce", "Philo Farnsworth", "Roger Easton", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el daguerrotipo?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Louis Daguerre", "Theodore Maiman"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el estetoscopio?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "Frank Whittle", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la pasteurizacion?"
            Reponses := array{"Heinrich Hertz", "Louis Pasteur", "Theodore Maiman", "Roger Easton"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el braille?"
            Reponses := array{"Watson et Crick", "Louis Braille", "George de Mestral", "Frank Whittle"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la maquina de coser?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "George de Mestral", "Isaac Singer"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento la telegrafia sin hilos?"
            Reponses := array{"Louis Pasteur", "Guglielmo Marconi", "Igor Sikorsky", "Rene Laennec"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la bicicleta moderna?"
            Reponses := array{"John Kemp Starley", "Guglielmo Marconi", "Theodore Maiman", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el helicoptero moderno?"
            Reponses := array{"Roger Easton", "Watson et Crick", "Igor Sikorsky", "Louis Daguerre"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el motor a reaccion?"
            Reponses := array{"Frank Whittle", "Frederick Banting", "Roger Easton", "John Bardeen"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento la television electronica?"
            Reponses := array{"Isaac Singer", "Guglielmo Marconi", "Philo Farnsworth", "William Harvey"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el transistor?"
            Reponses := array{"Watson et Crick", "J.J. Thomson", "John Bardeen", "Gideon Sundback"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el laser?"
            Reponses := array{"Theodore Maiman", "Gideon Sundback", "Igor Sikorsky", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el boligrafo?"
            Reponses := array{"John Kemp Starley", "Laszlo Biro", "Igor Sikorsky", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la cremallera?"
            Reponses := array{"Norman Joseph Woodland", "Frank Whittle", "Gideon Sundback", "Roger Easton"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el velcro?"
            Reponses := array{"Louis Daguerre", "Roger Easton", "Heinrich Hertz", "George de Mestral"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el horno microondas?"
            Reponses := array{"Percy Spencer", "John Bardeen", "Louis Daguerre", "Wilhelm Roentgen"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la estructura del ADN?"
            Reponses := array{"Frank Whittle", "Watson et Crick", "Louis Pasteur", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio las ondas de radio?"
            Reponses := array{"Heinrich Hertz", "William Harvey", "Gideon Sundback", "Louis Daguerre"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio los rayos X?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Frederick Banting", "Heinrich Hertz"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la circulacion sanguinea?"
            Reponses := array{"George de Mestral", "William Harvey", "Louis Pasteur", "Frederick Banting"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio el electron?"
            Reponses := array{"Wilhelm Roentgen", "J.J. Thomson", "Gregor Mendel", "John Bardeen"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio la insulina?"
            Reponses := array{"Norman Joseph Woodland", "Roger Easton", "Rene Laennec", "Frederick Banting"}
            BonneReponse := 3
        question:
            Enonce := "Quien descubrio las leyes de la herencia?"
            Reponses := array{"Gregor Mendel", "Louis Braille", "Philo Farnsworth", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento la vulcanizacion del caucho?"
            Reponses := array{"Igor Sikorsky", "Charles Goodyear", "Laszlo Biro", "Watson et Crick"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el codigo de barras?"
            Reponses := array{"Wilhelm Roentgen", "George de Mestral", "Isaac Singer", "Norman Joseph Woodland"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el GPS?"
            Reponses := array{"Roger Easton", "Rene Laennec", "Theodore Maiman", "William Harvey"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el telar de Jacquard?"
            Reponses := array{"Charles Babbage", "Joseph Marie Jacquard", "Edward Jenner", "Karl Landsteiner"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la calculadora mecanica?"
            Reponses := array{"Nikola Tesla", "James Chadwick", "Blaise Pascal", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento la maquina analitica?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Fibonacci", "Charles Babbage"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento el primer programa informatico?"
            Reponses := array{"Ada Lovelace", "Charles Babbage", "Otto Hahn", "Antonie van Leeuwenhoek"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la teoria de la informacion?"
            Reponses := array{"Claude Shannon", "Ferdinand von Zeppelin", "Antonie van Leeuwenhoek", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio la maquina universal?"
            Reponses := array{"Heike Kamerlingh Onnes", "les freres Lumiere", "Alan Turing", "Nikola Tesla"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio la nitroglicerina?"
            Reponses := array{"Evangelista Torricelli", "Ascanio Sobrero", "Claude Shannon", "Fibonacci"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el termometro de mercurio?"
            Reponses := array{"Heike Kamerlingh Onnes", "Daniel Fahrenheit", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el barometro?"
            Reponses := array{"Evangelista Torricelli", "Claude Shannon", "Fibonacci", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el microscopio (pionero de microbios)?"
            Reponses := array{"Edward Jenner", "Fibonacci", "Antonie van Leeuwenhoek", "Ferdinand von Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Quien descubrio la cirugia antiseptica?"
            Reponses := array{"Ada Lovelace", "Joseph Lister", "Edward Jenner", "Ascanio Sobrero"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio los grupos sanguineos?"
            Reponses := array{"Robert Boyle", "Karl Landsteiner", "Antonie van Leeuwenhoek", "Claude Shannon"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio la superconductividad?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Charles Babbage", "les freres Lumiere"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio la fision nuclear?"
            Reponses := array{"Otto Hahn", "Claude Shannon", "Paul Langevin", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio el neutron?"
            Reponses := array{"Karl Landsteiner", "Rene Descartes", "Otto Hahn", "James Chadwick"}
            BonneReponse := 3
        question:
            Enonce := "Quien descubrio la ley de los gases?"
            Reponses := array{"Robert Boyle", "Claude Shannon", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 0
        question:
            Enonce := "Quien descubrio el oxigeno?"
            Reponses := array{"Antoine Lavoisier", "Rene Descartes", "Paul Langevin", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento la vacunacion (viruela)?"
            Reponses := array{"Edward Jenner", "Daniel Fahrenheit", "Fibonacci", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el sonar moderno?"
            Reponses := array{"les freres Lumiere", "Charles Babbage", "Paul Langevin", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento el cine en color?"
            Reponses := array{"les freres Lumiere", "Joseph Lister", "James Chadwick", "Claude Shannon"}
            BonneReponse := 0
        question:
            Enonce := "Quien invento el motor electrico?"
            Reponses := array{"Paul Langevin", "Charles Babbage", "Nikola Tesla", "Daniel Fahrenheit"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento la corriente alterna?"
            Reponses := array{"Ferdinand von Zeppelin", "Nikola Tesla", "Charles Babbage", "Otto Hahn"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento el dirigible rigido?"
            Reponses := array{"Karl Landsteiner", "Antoine Lavoisier", "Ferdinand von Zeppelin", "Alan Turing"}
            BonneReponse := 2
        question:
            Enonce := "Quien invento la olla a presion?"
            Reponses := array{"Joseph Lister", "Denis Papin", "Heike Kamerlingh Onnes", "Paul Langevin"}
            BonneReponse := 1
        question:
            Enonce := "Quien invento la numeracion decimal en Europa?"
            Reponses := array{"Heike Kamerlingh Onnes", "Ferdinand von Zeppelin", "Blaise Pascal", "Fibonacci"}
            BonneReponse := 3
        question:
            Enonce := "Quien invento la pila de combustible?"
            Reponses := array{"Edward Jenner", "William Grove", "Antoine Lavoisier", "Joseph Marie Jacquard"}
            BonneReponse := 1
        question:
            Enonce := "Quien descubrio la geometria analitica?"
            Reponses := array{"Rene Descartes", "Joseph Lister", "Joseph Marie Jacquard", "Nikola Tesla"}
            BonneReponse := 0

MakeInventionsQuestionsDE() : []question =
    array:
        question:
            Enonce := "Wer erfand die Gluehbirne?"
            Reponses := array{"Benjamin Franklin", "Guglielmo Marconi", "Thomas Edison", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das Telefon?"
            Reponses := array{"Tim Berners-Lee", "Alexander Graham Bell", "Karl Benz", "James Watt"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Radio?"
            Reponses := array{"Albert Einstein", "Dmitri Mendeleiev", "Charles Darwin", "Guglielmo Marconi"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Tollwutimpfstoff?"
            Reponses := array{"Louis Pasteur", "Alfred Nobel", "Guglielmo Marconi", "Samuel Morse"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte das Penicillin?"
            Reponses := array{"Alexander Fleming", "Galileo Galilei", "Alexander Graham Bell", "Alessandro Volta"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die Gravitation?"
            Reponses := array{"Galileo Galilei", "Benjamin Franklin", "Isaac Newton", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte die Relativitaetstheorie?"
            Reponses := array{"Albert Einstein", "Louis Pasteur", "Isaac Newton", "Michael Faraday"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand den Telegrafencode?"
            Reponses := array{"Thomas Edison", "Samuel Morse", "Isaac Newton", "Les freres Wright"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Dynamit?"
            Reponses := array{"Albert Einstein", "Samuel Morse", "Galileo Galilei", "Alfred Nobel"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Buchdruck in Europa?"
            Reponses := array{"Thomas Edison", "Johannes Gutenberg", "Dmitri Mendeleiev", "Alessandro Volta"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das verbesserte Teleskop?"
            Reponses := array{"Samuel Morse", "Alexander Graham Bell", "Galileo Galilei", "Louis Pasteur"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das Flugzeug?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "Thomas Edison", "Les freres Wright"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand das Kino?"
            Reponses := array{"Marie Curie", "Les freres Lumiere", "Martin Cooper", "John Dunlop"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Batterie?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "John Dunlop", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand den Blitzableiter?"
            Reponses := array{"Alexander Graham Bell", "Guglielmo Marconi", "Benjamin Franklin", "Martin Cooper"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte Amerika (1492)?"
            Reponses := array{"Samuel Morse", "Galileo Galilei", "Christophe Colomb", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das World Wide Web?"
            Reponses := array{"Albert Einstein", "Christophe Colomb", "Jonas Salk", "Tim Berners-Lee"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Polioimpfstoff?"
            Reponses := array{"Jonas Salk", "Thomas Edison", "Johannes Gutenberg", "Benjamin Franklin"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand die verbesserte Dampfmaschine?"
            Reponses := array{"Isaac Newton", "Karl Benz", "Dmitri Mendeleiev", "James Watt"}
            BonneReponse := 3
        question:
            Enonce := "Wer entdeckte die Evolutionstheorie?"
            Reponses := array{"Alexander Graham Bell", "Johannes Gutenberg", "Tim Berners-Lee", "Charles Darwin"}
            BonneReponse := 3
        question:
            Enonce := "Wer entdeckte den Suedpol (Erstbesteiger)?"
            Reponses := array{"Roald Amundsen", "Alexander Graham Bell", "Albert Einstein", "John Dunlop"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die Radioaktivitaet?"
            Reponses := array{"Johannes Gutenberg", "Marie Curie", "Jonas Salk", "Galileo Galilei"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Benzinauto?"
            Reponses := array{"Johannes Gutenberg", "Alexander Fleming", "Karl Benz", "Samuel Morse"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte das heliozentrische Weltbild?"
            Reponses := array{"Charles Darwin", "Samuel Morse", "Alfred Nobel", "Nicolas Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Luftreifen?"
            Reponses := array{"Roald Amundsen", "Isaac Newton", "John Dunlop", "Albert Einstein"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte das Periodensystem?"
            Reponses := array{"Martin Cooper", "Thomas Edison", "Les freres Lumiere", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Dieselmotor?"
            Reponses := array{"Thomas Edison", "Jonas Salk", "Rudolf Diesel", "Johannes Gutenberg"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das Mobiltelefon?"
            Reponses := array{"Marie Curie", "Benjamin Franklin", "Martin Cooper", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Dynamo und die Induktion?"
            Reponses := array{"Samuel Morse", "Michael Faraday", "Louis Pasteur", "Charles Darwin"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Fotografie?"
            Reponses := array{"Nicephore Niepce", "Philo Farnsworth", "Roger Easton", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand die Daguerreotypie?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Louis Daguerre", "Theodore Maiman"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das Stethoskop?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "Frank Whittle", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Pasteurisierung?"
            Reponses := array{"Heinrich Hertz", "Louis Pasteur", "Theodore Maiman", "Roger Easton"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Blindenschrift?"
            Reponses := array{"Watson et Crick", "Louis Braille", "George de Mestral", "Frank Whittle"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Naehmaschine?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "George de Mestral", "Isaac Singer"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand die drahtlose Telegrafie?"
            Reponses := array{"Louis Pasteur", "Guglielmo Marconi", "Igor Sikorsky", "Rene Laennec"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das moderne Fahrrad?"
            Reponses := array{"John Kemp Starley", "Guglielmo Marconi", "Theodore Maiman", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand den modernen Hubschrauber?"
            Reponses := array{"Roger Easton", "Watson et Crick", "Igor Sikorsky", "Louis Daguerre"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand das Strahltriebwerk?"
            Reponses := array{"Frank Whittle", "Frederick Banting", "Roger Easton", "John Bardeen"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand das elektronische Fernsehen?"
            Reponses := array{"Isaac Singer", "Guglielmo Marconi", "Philo Farnsworth", "William Harvey"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Transistor?"
            Reponses := array{"Watson et Crick", "J.J. Thomson", "John Bardeen", "Gideon Sundback"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Laser?"
            Reponses := array{"Theodore Maiman", "Gideon Sundback", "Igor Sikorsky", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand den Kugelschreiber?"
            Reponses := array{"John Kemp Starley", "Laszlo Biro", "Igor Sikorsky", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand den Reissverschluss?"
            Reponses := array{"Norman Joseph Woodland", "Frank Whittle", "Gideon Sundback", "Roger Easton"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Klettverschluss?"
            Reponses := array{"Louis Daguerre", "Roger Easton", "Heinrich Hertz", "George de Mestral"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand den Mikrowellenherd?"
            Reponses := array{"Percy Spencer", "John Bardeen", "Louis Daguerre", "Wilhelm Roentgen"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die DNA-Struktur?"
            Reponses := array{"Frank Whittle", "Watson et Crick", "Louis Pasteur", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte die Radiowellen?"
            Reponses := array{"Heinrich Hertz", "William Harvey", "Gideon Sundback", "Louis Daguerre"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die Roentgenstrahlen?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Frederick Banting", "Heinrich Hertz"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte den Blutkreislauf?"
            Reponses := array{"George de Mestral", "William Harvey", "Louis Pasteur", "Frederick Banting"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte das Elektron?"
            Reponses := array{"Wilhelm Roentgen", "J.J. Thomson", "Gregor Mendel", "John Bardeen"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte das Insulin?"
            Reponses := array{"Norman Joseph Woodland", "Roger Easton", "Rene Laennec", "Frederick Banting"}
            BonneReponse := 3
        question:
            Enonce := "Wer entdeckte die Vererbungsgesetze?"
            Reponses := array{"Gregor Mendel", "Louis Braille", "Philo Farnsworth", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand die Kautschukvulkanisation?"
            Reponses := array{"Igor Sikorsky", "Charles Goodyear", "Laszlo Biro", "Watson et Crick"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand den Barcode?"
            Reponses := array{"Wilhelm Roentgen", "George de Mestral", "Isaac Singer", "Norman Joseph Woodland"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand das GPS?"
            Reponses := array{"Roger Easton", "Rene Laennec", "Theodore Maiman", "William Harvey"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand den Jacquard-Webstuhl?"
            Reponses := array{"Charles Babbage", "Joseph Marie Jacquard", "Edward Jenner", "Karl Landsteiner"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand die Rechenmaschine?"
            Reponses := array{"Nikola Tesla", "James Chadwick", "Blaise Pascal", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand die Analytical Engine?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Fibonacci", "Charles Babbage"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand das erste Computerprogramm?"
            Reponses := array{"Ada Lovelace", "Charles Babbage", "Otto Hahn", "Antonie van Leeuwenhoek"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die Informationstheorie?"
            Reponses := array{"Claude Shannon", "Ferdinand von Zeppelin", "Antonie van Leeuwenhoek", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte die universelle Maschine?"
            Reponses := array{"Heike Kamerlingh Onnes", "les freres Lumiere", "Alan Turing", "Nikola Tesla"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte das Nitroglyzerin?"
            Reponses := array{"Evangelista Torricelli", "Ascanio Sobrero", "Claude Shannon", "Fibonacci"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Quecksilberthermometer?"
            Reponses := array{"Heike Kamerlingh Onnes", "Daniel Fahrenheit", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Barometer?"
            Reponses := array{"Evangelista Torricelli", "Claude Shannon", "Fibonacci", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand das Mikroskop (Mikrobenpionier)?"
            Reponses := array{"Edward Jenner", "Fibonacci", "Antonie van Leeuwenhoek", "Ferdinand von Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Wer entdeckte die antiseptische Chirurgie?"
            Reponses := array{"Ada Lovelace", "Joseph Lister", "Edward Jenner", "Ascanio Sobrero"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte die Blutgruppen?"
            Reponses := array{"Robert Boyle", "Karl Landsteiner", "Antonie van Leeuwenhoek", "Claude Shannon"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte die Supraleitung?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Charles Babbage", "les freres Lumiere"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte die Kernspaltung?"
            Reponses := array{"Otto Hahn", "Claude Shannon", "Paul Langevin", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte das Neutron?"
            Reponses := array{"Karl Landsteiner", "Rene Descartes", "Otto Hahn", "James Chadwick"}
            BonneReponse := 3
        question:
            Enonce := "Wer entdeckte das Gasgesetz?"
            Reponses := array{"Robert Boyle", "Claude Shannon", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 0
        question:
            Enonce := "Wer entdeckte den Sauerstoff?"
            Reponses := array{"Antoine Lavoisier", "Rene Descartes", "Paul Langevin", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand die Pockenimpfung?"
            Reponses := array{"Edward Jenner", "Daniel Fahrenheit", "Fibonacci", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand das moderne Sonar?"
            Reponses := array{"les freres Lumiere", "Charles Babbage", "Paul Langevin", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Farbfilm?"
            Reponses := array{"les freres Lumiere", "Joseph Lister", "James Chadwick", "Claude Shannon"}
            BonneReponse := 0
        question:
            Enonce := "Wer erfand den Elektromotor?"
            Reponses := array{"Paul Langevin", "Charles Babbage", "Nikola Tesla", "Daniel Fahrenheit"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Wechselstrom?"
            Reponses := array{"Ferdinand von Zeppelin", "Nikola Tesla", "Charles Babbage", "Otto Hahn"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Starrluftschiff?"
            Reponses := array{"Karl Landsteiner", "Antoine Lavoisier", "Ferdinand von Zeppelin", "Alan Turing"}
            BonneReponse := 2
        question:
            Enonce := "Wer erfand den Dampfkochtopf?"
            Reponses := array{"Joseph Lister", "Denis Papin", "Heike Kamerlingh Onnes", "Paul Langevin"}
            BonneReponse := 1
        question:
            Enonce := "Wer erfand das Dezimalsystem in Europa?"
            Reponses := array{"Heike Kamerlingh Onnes", "Ferdinand von Zeppelin", "Blaise Pascal", "Fibonacci"}
            BonneReponse := 3
        question:
            Enonce := "Wer erfand die Brennstoffzelle?"
            Reponses := array{"Edward Jenner", "William Grove", "Antoine Lavoisier", "Joseph Marie Jacquard"}
            BonneReponse := 1
        question:
            Enonce := "Wer entdeckte die analytische Geometrie?"
            Reponses := array{"Rene Descartes", "Joseph Lister", "Joseph Marie Jacquard", "Nikola Tesla"}
            BonneReponse := 0

MakeInventionsQuestionsIT() : []question =
    array:
        question:
            Enonce := "Chi ha inventato la lampadina?"
            Reponses := array{"Benjamin Franklin", "Guglielmo Marconi", "Thomas Edison", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il telefono?"
            Reponses := array{"Tim Berners-Lee", "Alexander Graham Bell", "Karl Benz", "James Watt"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la radio?"
            Reponses := array{"Albert Einstein", "Dmitri Mendeleiev", "Charles Darwin", "Guglielmo Marconi"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il vaccino contro la rabbia?"
            Reponses := array{"Louis Pasteur", "Alfred Nobel", "Guglielmo Marconi", "Samuel Morse"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la penicillina?"
            Reponses := array{"Alexander Fleming", "Galileo Galilei", "Alexander Graham Bell", "Alessandro Volta"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la gravitazione universale?"
            Reponses := array{"Galileo Galilei", "Benjamin Franklin", "Isaac Newton", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto la relativita?"
            Reponses := array{"Albert Einstein", "Louis Pasteur", "Isaac Newton", "Michael Faraday"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il telegrafo e il suo codice?"
            Reponses := array{"Thomas Edison", "Samuel Morse", "Isaac Newton", "Les freres Wright"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la dinamite?"
            Reponses := array{"Albert Einstein", "Samuel Morse", "Galileo Galilei", "Alfred Nobel"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato la stampa in Europa?"
            Reponses := array{"Thomas Edison", "Johannes Gutenberg", "Dmitri Mendeleiev", "Alessandro Volta"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il telescopio migliorato?"
            Reponses := array{"Samuel Morse", "Alexander Graham Bell", "Galileo Galilei", "Louis Pasteur"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato l'aereo?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "Thomas Edison", "Les freres Wright"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il cinema?"
            Reponses := array{"Marie Curie", "Les freres Lumiere", "Martin Cooper", "John Dunlop"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la pila elettrica?"
            Reponses := array{"Karl Benz", "Alessandro Volta", "John Dunlop", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il parafulmine?"
            Reponses := array{"Alexander Graham Bell", "Guglielmo Marconi", "Benjamin Franklin", "Martin Cooper"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto l'America (1492)?"
            Reponses := array{"Samuel Morse", "Galileo Galilei", "Christophe Colomb", "Charles Darwin"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il World Wide Web?"
            Reponses := array{"Albert Einstein", "Christophe Colomb", "Jonas Salk", "Tim Berners-Lee"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il vaccino contro la polio?"
            Reponses := array{"Jonas Salk", "Thomas Edison", "Johannes Gutenberg", "Benjamin Franklin"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato la macchina a vapore migliorata?"
            Reponses := array{"Isaac Newton", "Karl Benz", "Dmitri Mendeleiev", "James Watt"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scoperto la teoria dell'evoluzione?"
            Reponses := array{"Alexander Graham Bell", "Johannes Gutenberg", "Tim Berners-Lee", "Charles Darwin"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scoperto il Polo Sud (primo ad arrivarci)?"
            Reponses := array{"Roald Amundsen", "Alexander Graham Bell", "Albert Einstein", "John Dunlop"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la radioattivita?"
            Reponses := array{"Johannes Gutenberg", "Marie Curie", "Jonas Salk", "Galileo Galilei"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato l'automobile a benzina?"
            Reponses := array{"Johannes Gutenberg", "Alexander Fleming", "Karl Benz", "Samuel Morse"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto il sistema eliocentrico?"
            Reponses := array{"Charles Darwin", "Samuel Morse", "Alfred Nobel", "Nicolas Copernic"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato lo pneumatico?"
            Reponses := array{"Roald Amundsen", "Isaac Newton", "John Dunlop", "Albert Einstein"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto la tavola periodica?"
            Reponses := array{"Martin Cooper", "Thomas Edison", "Les freres Lumiere", "Dmitri Mendeleiev"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il motore diesel?"
            Reponses := array{"Thomas Edison", "Jonas Salk", "Rudolf Diesel", "Johannes Gutenberg"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il telefono cellulare?"
            Reponses := array{"Marie Curie", "Benjamin Franklin", "Martin Cooper", "Galileo Galilei"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato la dinamo e l'induzione?"
            Reponses := array{"Samuel Morse", "Michael Faraday", "Louis Pasteur", "Charles Darwin"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la fotografia?"
            Reponses := array{"Nicephore Niepce", "Philo Farnsworth", "Roger Easton", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il dagherrotipo?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Louis Daguerre", "Theodore Maiman"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato lo stetoscopio?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "Frank Whittle", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la pastorizzazione?"
            Reponses := array{"Heinrich Hertz", "Louis Pasteur", "Theodore Maiman", "Roger Easton"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il braille?"
            Reponses := array{"Watson et Crick", "Louis Braille", "George de Mestral", "Frank Whittle"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la macchina da cucire?"
            Reponses := array{"Watson et Crick", "Rene Laennec", "George de Mestral", "Isaac Singer"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato la telegrafia senza fili?"
            Reponses := array{"Louis Pasteur", "Guglielmo Marconi", "Igor Sikorsky", "Rene Laennec"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la bicicletta moderna?"
            Reponses := array{"John Kemp Starley", "Guglielmo Marconi", "Theodore Maiman", "Rene Laennec"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato l'elicottero moderno?"
            Reponses := array{"Roger Easton", "Watson et Crick", "Igor Sikorsky", "Louis Daguerre"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il motore a reazione?"
            Reponses := array{"Frank Whittle", "Frederick Banting", "Roger Easton", "John Bardeen"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato la televisione elettronica?"
            Reponses := array{"Isaac Singer", "Guglielmo Marconi", "Philo Farnsworth", "William Harvey"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il transistor?"
            Reponses := array{"Watson et Crick", "J.J. Thomson", "John Bardeen", "Gideon Sundback"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il laser?"
            Reponses := array{"Theodore Maiman", "Gideon Sundback", "Igor Sikorsky", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato la penna a sfera?"
            Reponses := array{"John Kemp Starley", "Laszlo Biro", "Igor Sikorsky", "Louis Pasteur"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la cerniera lampo?"
            Reponses := array{"Norman Joseph Woodland", "Frank Whittle", "Gideon Sundback", "Roger Easton"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato il velcro?"
            Reponses := array{"Louis Daguerre", "Roger Easton", "Heinrich Hertz", "George de Mestral"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il forno a microonde?"
            Reponses := array{"Percy Spencer", "John Bardeen", "Louis Daguerre", "Wilhelm Roentgen"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la struttura del DNA?"
            Reponses := array{"Frank Whittle", "Watson et Crick", "Louis Pasteur", "Philo Farnsworth"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto le onde radio?"
            Reponses := array{"Heinrich Hertz", "William Harvey", "Gideon Sundback", "Louis Daguerre"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto i raggi X?"
            Reponses := array{"Wilhelm Roentgen", "John Kemp Starley", "Frederick Banting", "Heinrich Hertz"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la circolazione del sangue?"
            Reponses := array{"George de Mestral", "William Harvey", "Louis Pasteur", "Frederick Banting"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto l'elettrone?"
            Reponses := array{"Wilhelm Roentgen", "J.J. Thomson", "Gregor Mendel", "John Bardeen"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto l'insulina?"
            Reponses := array{"Norman Joseph Woodland", "Roger Easton", "Rene Laennec", "Frederick Banting"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scoperto le leggi dell'eredita?"
            Reponses := array{"Gregor Mendel", "Louis Braille", "Philo Farnsworth", "Charles Goodyear"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato la vulcanizzazione della gomma?"
            Reponses := array{"Igor Sikorsky", "Charles Goodyear", "Laszlo Biro", "Watson et Crick"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il codice a barre?"
            Reponses := array{"Wilhelm Roentgen", "George de Mestral", "Isaac Singer", "Norman Joseph Woodland"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il GPS?"
            Reponses := array{"Roger Easton", "Rene Laennec", "Theodore Maiman", "William Harvey"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il telaio Jacquard?"
            Reponses := array{"Charles Babbage", "Joseph Marie Jacquard", "Edward Jenner", "Karl Landsteiner"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la calcolatrice meccanica?"
            Reponses := array{"Nikola Tesla", "James Chadwick", "Blaise Pascal", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato la macchina analitica?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Fibonacci", "Charles Babbage"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato il primo programma informatico?"
            Reponses := array{"Ada Lovelace", "Charles Babbage", "Otto Hahn", "Antonie van Leeuwenhoek"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la teoria dell'informazione?"
            Reponses := array{"Claude Shannon", "Ferdinand von Zeppelin", "Antonie van Leeuwenhoek", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto la macchina universale?"
            Reponses := array{"Heike Kamerlingh Onnes", "les freres Lumiere", "Alan Turing", "Nikola Tesla"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto la nitroglicerina?"
            Reponses := array{"Evangelista Torricelli", "Ascanio Sobrero", "Claude Shannon", "Fibonacci"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il termometro a mercurio?"
            Reponses := array{"Heike Kamerlingh Onnes", "Daniel Fahrenheit", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il barometro?"
            Reponses := array{"Evangelista Torricelli", "Claude Shannon", "Fibonacci", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il microscopio (pioniere dei microbi)?"
            Reponses := array{"Edward Jenner", "Fibonacci", "Antonie van Leeuwenhoek", "Ferdinand von Zeppelin"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scoperto la chirurgia antisettica?"
            Reponses := array{"Ada Lovelace", "Joseph Lister", "Edward Jenner", "Ascanio Sobrero"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto i gruppi sanguigni?"
            Reponses := array{"Robert Boyle", "Karl Landsteiner", "Antonie van Leeuwenhoek", "Claude Shannon"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto la superconduttivita?"
            Reponses := array{"Robert Boyle", "Heike Kamerlingh Onnes", "Charles Babbage", "les freres Lumiere"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto la fissione nucleare?"
            Reponses := array{"Otto Hahn", "Claude Shannon", "Paul Langevin", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto il neutrone?"
            Reponses := array{"Karl Landsteiner", "Rene Descartes", "Otto Hahn", "James Chadwick"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scoperto la legge dei gas?"
            Reponses := array{"Robert Boyle", "Claude Shannon", "Nikola Tesla", "Ada Lovelace"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scoperto l'ossigeno?"
            Reponses := array{"Antoine Lavoisier", "Rene Descartes", "Paul Langevin", "Heike Kamerlingh Onnes"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato la vaccinazione (vaiolo)?"
            Reponses := array{"Edward Jenner", "Daniel Fahrenheit", "Fibonacci", "Ascanio Sobrero"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il sonar moderno?"
            Reponses := array{"les freres Lumiere", "Charles Babbage", "Paul Langevin", "Otto Hahn"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato la pellicola a colori?"
            Reponses := array{"les freres Lumiere", "Joseph Lister", "James Chadwick", "Claude Shannon"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha inventato il motore elettrico?"
            Reponses := array{"Paul Langevin", "Charles Babbage", "Nikola Tesla", "Daniel Fahrenheit"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato la corrente alternata?"
            Reponses := array{"Ferdinand von Zeppelin", "Nikola Tesla", "Charles Babbage", "Otto Hahn"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato il dirigibile rigido?"
            Reponses := array{"Karl Landsteiner", "Antoine Lavoisier", "Ferdinand von Zeppelin", "Alan Turing"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha inventato la pentola a pressione?"
            Reponses := array{"Joseph Lister", "Denis Papin", "Heike Kamerlingh Onnes", "Paul Langevin"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha inventato la numerazione decimale in Europa?"
            Reponses := array{"Heike Kamerlingh Onnes", "Ferdinand von Zeppelin", "Blaise Pascal", "Fibonacci"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha inventato la cella a combustibile?"
            Reponses := array{"Edward Jenner", "William Grove", "Antoine Lavoisier", "Joseph Marie Jacquard"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scoperto la geometria analitica?"
            Reponses := array{"Rene Descartes", "Joseph Lister", "Joseph Marie Jacquard", "Nikola Tesla"}
            BonneReponse := 0

MakeInventionsQuestions() : []question =
    MakeInventionsQuestionsFR()
