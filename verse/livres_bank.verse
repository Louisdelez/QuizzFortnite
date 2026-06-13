using { /Verse.org/Assets }

# livres_bank.verse — Quizz LIVRES (qui a ecrit...)
# GENERE — NE PAS EDITER A LA MAIN.

LivresDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}

MakeLivresQuestionsFR() : []question =
    array:
        question:
            Enonce := "Qui a ecrit Harry Potter ?"
            Reponses := array{"Arthur Conan Doyle", "George Orwell", "Stephen King", "J.K. Rowling"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Seigneur des anneaux ?"
            Reponses := array{"J.R.R. Tolkien", "Dan Brown", "George Orwell", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Le Hobbit ?"
            Reponses := array{"Mary Shelley", "Jules Verne", "J.R.R. Tolkien", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Petit Prince ?"
            Reponses := array{"Jules Verne", "George Orwell", "Victor Hugo", "Antoine de Saint-Exupery"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit 1984 ?"
            Reponses := array{"Alexandre Dumas", "Victor Hugo", "Stephen King", "George Orwell"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit La Ferme des animaux ?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "George Orwell", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Romeo et Juliette ?"
            Reponses := array{"J.K. Rowling", "Jules Verne", "William Shakespeare", "Mary Shelley"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Hamlet ?"
            Reponses := array{"William Shakespeare", "Stephen King", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Miserables ?"
            Reponses := array{"Victor Hugo", "Carlo Collodi", "Arthur Conan Doyle", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Notre-Dame de Paris ?"
            Reponses := array{"Victor Hugo", "Agatha Christie", "Carlo Collodi", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Le Comte de Monte-Cristo ?"
            Reponses := array{"Stephen King", "Dan Brown", "George Orwell", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Les Trois Mousquetaires ?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Alexandre Dumas", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Don Quichotte ?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "Miguel de Cervantes", "George R.R. Martin"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit L'Etranger ?"
            Reponses := array{"Albert Camus", "Arthur Conan Doyle", "Alexandre Dumas", "Jules Verne"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Vingt Mille Lieues sous les mers ?"
            Reponses := array{"Jules Verne", "J.K. Rowling", "Alexandre Dumas", "Stephen King"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Le Tour du monde en 80 jours ?"
            Reponses := array{"Miguel de Cervantes", "Jules Verne", "Victor Hugo", "Carlo Collodi"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Dracula ?"
            Reponses := array{"George Orwell", "William Shakespeare", "Bram Stoker", "Carlo Collodi"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Frankenstein ?"
            Reponses := array{"Mary Shelley", "Victor Hugo", "Bram Stoker", "Arthur Conan Doyle"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Aventures de Sherlock Holmes ?"
            Reponses := array{"Victor Hugo", "Arthur Conan Doyle", "Lewis Carroll", "J.K. Rowling"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Le Crime de l'Orient-Express ?"
            Reponses := array{"Dan Brown", "Jules Verne", "Antoine de Saint-Exupery", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Ils etaient dix ?"
            Reponses := array{"Antoine de Saint-Exupery", "Victor Hugo", "Alexandre Dumas", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Trone de fer ?"
            Reponses := array{"George R.R. Martin", "J.R.R. Tolkien", "Victor Hugo", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Ca ?"
            Reponses := array{"William Shakespeare", "Stephen King", "Alexandre Dumas", "Miguel de Cervantes"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Shining ?"
            Reponses := array{"Stephen King", "Agatha Christie", "Antoine de Saint-Exupery", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Da Vinci Code ?"
            Reponses := array{"Miguel de Cervantes", "Dan Brown", "J.R.R. Tolkien", "George R.R. Martin"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Alice au pays des merveilles ?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Carlo Collodi", "George Orwell"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Pinocchio ?"
            Reponses := array{"J.R.R. Tolkien", "J.K. Rowling", "Carlo Collodi", "Lewis Carroll"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Orgueil et Prejuges ?"
            Reponses := array{"Jane Austen", "Edmond Rostand", "John Steinbeck", "Emily Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Jane Eyre ?"
            Reponses := array{"Charlotte Bronte", "Ernest Hemingway", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Hauts de Hurlevent ?"
            Reponses := array{"Harper Lee", "Paulo Coelho", "J.D. Salinger", "Emily Bronte"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Gatsby le Magnifique ?"
            Reponses := array{"Frank Herbert", "Dostoievski", "Jane Austen", "F. Scott Fitzgerald"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Vieil Homme et la Mer ?"
            Reponses := array{"Emily Bronte", "Ernest Hemingway", "Emile Zola", "Isaac Asimov"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Des souris et des hommes ?"
            Reponses := array{"John Steinbeck", "Leon Tolstoi", "Emily Bronte", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Raisins de la colere ?"
            Reponses := array{"Herman Melville", "John Steinbeck", "Moliere", "Aldous Huxley"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Crime et Chatiment ?"
            Reponses := array{"Gustave Flaubert", "Charlotte Bronte", "Dostoievski", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Les Freres Karamazov ?"
            Reponses := array{"J.D. Salinger", "Ray Bradbury", "Dostoievski", "John Steinbeck"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Guerre et Paix ?"
            Reponses := array{"Leon Tolstoi", "Charlotte Bronte", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Anna Karenine ?"
            Reponses := array{"Mark Twain", "Leon Tolstoi", "Harper Lee", "Edmond Rostand"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Madame Bovary ?"
            Reponses := array{"Gustave Flaubert", "John Steinbeck", "Isaac Asimov", "Harper Lee"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Germinal ?"
            Reponses := array{"Gabriel Garcia Marquez", "John Steinbeck", "Emile Zola", "Herman Melville"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Rouge et le Noir ?"
            Reponses := array{"Voltaire", "Stendhal", "John Steinbeck", "Herman Melville"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Candide ?"
            Reponses := array{"Emile Zola", "Voltaire", "Gustave Flaubert", "Charlotte Bronte"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Le Misanthrope ?"
            Reponses := array{"F. Scott Fitzgerald", "Emile Zola", "Moliere", "Charlotte Bronte"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Cyrano de Bergerac ?"
            Reponses := array{"Edmond Rostand", "Paulo Coelho", "Charlotte Bronte", "Ray Bradbury"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Moby Dick ?"
            Reponses := array{"Ernest Hemingway", "J.D. Salinger", "Aldous Huxley", "Herman Melville"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Les Aventures de Tom Sawyer ?"
            Reponses := array{"Gustave Flaubert", "J.D. Salinger", "Mark Twain", "Ray Bradbury"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit L'Attrape-coeurs ?"
            Reponses := array{"J.D. Salinger", "Gustave Flaubert", "Emile Zola", "Moliere"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Ne tirez pas sur l'oiseau moqueur ?"
            Reponses := array{"Emily Bronte", "Dostoievski", "Harper Lee", "Moliere"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Fahrenheit 451 ?"
            Reponses := array{"Ray Bradbury", "Herman Melville", "F. Scott Fitzgerald", "Gustave Flaubert"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Le Meilleur des mondes ?"
            Reponses := array{"Ernest Hemingway", "Aldous Huxley", "Ray Bradbury", "Leon Tolstoi"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Dune ?"
            Reponses := array{"Charlotte Bronte", "Paulo Coelho", "Harper Lee", "Frank Herbert"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Fondation ?"
            Reponses := array{"John Steinbeck", "Aldous Huxley", "Ray Bradbury", "Isaac Asimov"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Cent Ans de solitude ?"
            Reponses := array{"Emily Bronte", "Moliere", "Gabriel Garcia Marquez", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit L'Alchimiste ?"
            Reponses := array{"Paulo Coelho", "Voltaire", "Leon Tolstoi", "Edmond Rostand"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit La Metamorphose ?"
            Reponses := array{"Louis-Ferdinand Celine", "Goethe", "Albert Camus", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Le Proces ?"
            Reponses := array{"Roald Dahl", "Milan Kundera", "Goethe", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Ulysse ?"
            Reponses := array{"James Joyce", "Carlos Ruiz Zafon", "Albert Camus", "Umberto Eco"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit A la recherche du temps perdu ?"
            Reponses := array{"Louis-Ferdinand Celine", "Marcel Proust", "Homere", "Umberto Eco"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Voyage au bout de la nuit ?"
            Reponses := array{"Patrick Suskind", "Stefan Zweig", "Louis-Ferdinand Celine", "Goethe"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit La Peste ?"
            Reponses := array{"Patrick Suskind", "Marcel Proust", "Albert Camus", "Jean-Paul Sartre"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit La Nausee ?"
            Reponses := array{"Jean-Paul Sartre", "Carlos Ruiz Zafon", "Jack London", "Cormac McCarthy"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Faust ?"
            Reponses := array{"Goethe", "Milan Kundera", "Machiavel", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Les Souffrances du jeune Werther ?"
            Reponses := array{"Stieg Larsson", "Franz Kafka", "Goethe", "Albert Camus"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit L'Odyssee ?"
            Reponses := array{"Homere", "C.S. Lewis", "Stefan Zweig", "Goethe"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit L'Iliade ?"
            Reponses := array{"Suzanne Collins", "Homere", "Patrick Suskind", "Jean-Paul Sartre"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit L'Enfer ?"
            Reponses := array{"Louis-Ferdinand Celine", "Dante Alighieri", "James Joyce", "Patrick Suskind"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Le Prince ?"
            Reponses := array{"Milan Kundera", "Machiavel", "Franz Kafka", "Jack London"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Le Nom de la rose ?"
            Reponses := array{"Umberto Eco", "Jack London", "Homere", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Le Parfum ?"
            Reponses := array{"James Joyce", "Patrick Suskind", "Suzanne Collins", "Dante Alighieri"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit L'Ombre du vent ?"
            Reponses := array{"Carlos Ruiz Zafon", "Roald Dahl", "Suzanne Collins", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Millenium ?"
            Reponses := array{"Jean-Paul Sartre", "Patrick Suskind", "Marcel Proust", "Stieg Larsson"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Sa Majeste des mouches ?"
            Reponses := array{"Franz Kafka", "Albert Camus", "Carlos Ruiz Zafon", "William Golding"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit La Route ?"
            Reponses := array{"Jack London", "Roald Dahl", "Cormac McCarthy", "Stieg Larsson"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Joueur d'echecs ?"
            Reponses := array{"Suzanne Collins", "Stephenie Meyer", "Carlos Ruiz Zafon", "Stefan Zweig"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit L'Insoutenable Legerete de l'etre ?"
            Reponses := array{"Franz Kafka", "Louis-Ferdinand Celine", "Goethe", "Milan Kundera"}
            BonneReponse := 3
        question:
            Enonce := "Qui a ecrit Hunger Games ?"
            Reponses := array{"Franz Kafka", "Suzanne Collins", "Jean-Paul Sartre", "C.S. Lewis"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Twilight ?"
            Reponses := array{"Goethe", "Albert Camus", "Stephenie Meyer", "Louis-Ferdinand Celine"}
            BonneReponse := 2
        question:
            Enonce := "Qui a ecrit Le Monde de Narnia ?"
            Reponses := array{"Cormac McCarthy", "C.S. Lewis", "Franz Kafka", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Qui a ecrit Charlie et la Chocolaterie ?"
            Reponses := array{"Roald Dahl", "Marcel Proust", "Homere", "Patrick Suskind"}
            BonneReponse := 0
        question:
            Enonce := "Qui a ecrit Croc-Blanc ?"
            Reponses := array{"Franz Kafka", "Jack London", "Carlos Ruiz Zafon", "Homere"}
            BonneReponse := 1

MakeLivresQuestionsEN() : []question =
    array:
        question:
            Enonce := "Who wrote Harry Potter?"
            Reponses := array{"Arthur Conan Doyle", "George Orwell", "Stephen King", "J.K. Rowling"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Lord of the Rings?"
            Reponses := array{"J.R.R. Tolkien", "Dan Brown", "George Orwell", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Hobbit?"
            Reponses := array{"Mary Shelley", "Jules Verne", "J.R.R. Tolkien", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Little Prince?"
            Reponses := array{"Jules Verne", "George Orwell", "Victor Hugo", "Antoine de Saint-Exupery"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote 1984?"
            Reponses := array{"Alexandre Dumas", "Victor Hugo", "Stephen King", "George Orwell"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Animal Farm?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "George Orwell", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Romeo and Juliet?"
            Reponses := array{"J.K. Rowling", "Jules Verne", "William Shakespeare", "Mary Shelley"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Hamlet?"
            Reponses := array{"William Shakespeare", "Stephen King", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Les Miserables?"
            Reponses := array{"Victor Hugo", "Carlo Collodi", "Arthur Conan Doyle", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Hunchback of Notre-Dame?"
            Reponses := array{"Victor Hugo", "Agatha Christie", "Carlo Collodi", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Count of Monte Cristo?"
            Reponses := array{"Stephen King", "Dan Brown", "George Orwell", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Three Musketeers?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Alexandre Dumas", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Don Quixote?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "Miguel de Cervantes", "George R.R. Martin"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Stranger?"
            Reponses := array{"Albert Camus", "Arthur Conan Doyle", "Alexandre Dumas", "Jules Verne"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Twenty Thousand Leagues Under the Seas?"
            Reponses := array{"Jules Verne", "J.K. Rowling", "Alexandre Dumas", "Stephen King"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Around the World in 80 Days?"
            Reponses := array{"Miguel de Cervantes", "Jules Verne", "Victor Hugo", "Carlo Collodi"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Dracula?"
            Reponses := array{"George Orwell", "William Shakespeare", "Bram Stoker", "Carlo Collodi"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Frankenstein?"
            Reponses := array{"Mary Shelley", "Victor Hugo", "Bram Stoker", "Arthur Conan Doyle"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Adventures of Sherlock Holmes?"
            Reponses := array{"Victor Hugo", "Arthur Conan Doyle", "Lewis Carroll", "J.K. Rowling"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Murder on the Orient Express?"
            Reponses := array{"Dan Brown", "Jules Verne", "Antoine de Saint-Exupery", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote And Then There Were None?"
            Reponses := array{"Antoine de Saint-Exupery", "Victor Hugo", "Alexandre Dumas", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote A Game of Thrones?"
            Reponses := array{"George R.R. Martin", "J.R.R. Tolkien", "Victor Hugo", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote It?"
            Reponses := array{"William Shakespeare", "Stephen King", "Alexandre Dumas", "Miguel de Cervantes"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Shining?"
            Reponses := array{"Stephen King", "Agatha Christie", "Antoine de Saint-Exupery", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Da Vinci Code?"
            Reponses := array{"Miguel de Cervantes", "Dan Brown", "J.R.R. Tolkien", "George R.R. Martin"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Alice in Wonderland?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Carlo Collodi", "George Orwell"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Pinocchio?"
            Reponses := array{"J.R.R. Tolkien", "J.K. Rowling", "Carlo Collodi", "Lewis Carroll"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Pride and Prejudice?"
            Reponses := array{"Jane Austen", "Edmond Rostand", "John Steinbeck", "Emily Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Jane Eyre?"
            Reponses := array{"Charlotte Bronte", "Ernest Hemingway", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Wuthering Heights?"
            Reponses := array{"Harper Lee", "Paulo Coelho", "J.D. Salinger", "Emily Bronte"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Great Gatsby?"
            Reponses := array{"Frank Herbert", "Dostoevsky", "Jane Austen", "F. Scott Fitzgerald"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Old Man and the Sea?"
            Reponses := array{"Emily Bronte", "Ernest Hemingway", "Emile Zola", "Isaac Asimov"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Of Mice and Men?"
            Reponses := array{"John Steinbeck", "Leo Tolstoy", "Emily Bronte", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Grapes of Wrath?"
            Reponses := array{"Herman Melville", "John Steinbeck", "Moliere", "Aldous Huxley"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Crime and Punishment?"
            Reponses := array{"Gustave Flaubert", "Charlotte Bronte", "Dostoevsky", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Brothers Karamazov?"
            Reponses := array{"J.D. Salinger", "Ray Bradbury", "Dostoevsky", "John Steinbeck"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote War and Peace?"
            Reponses := array{"Leo Tolstoy", "Charlotte Bronte", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Anna Karenina?"
            Reponses := array{"Mark Twain", "Leo Tolstoy", "Harper Lee", "Edmond Rostand"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Madame Bovary?"
            Reponses := array{"Gustave Flaubert", "John Steinbeck", "Isaac Asimov", "Harper Lee"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Germinal?"
            Reponses := array{"Gabriel Garcia Marquez", "John Steinbeck", "Emile Zola", "Herman Melville"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Red and the Black?"
            Reponses := array{"Voltaire", "Stendhal", "John Steinbeck", "Herman Melville"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Candide?"
            Reponses := array{"Emile Zola", "Voltaire", "Gustave Flaubert", "Charlotte Bronte"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Le Misanthrope?"
            Reponses := array{"F. Scott Fitzgerald", "Emile Zola", "Moliere", "Charlotte Bronte"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Paulo Coelho", "Charlotte Bronte", "Ray Bradbury"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Moby Dick?"
            Reponses := array{"Ernest Hemingway", "J.D. Salinger", "Aldous Huxley", "Herman Melville"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Adventures of Tom Sawyer?"
            Reponses := array{"Gustave Flaubert", "J.D. Salinger", "Mark Twain", "Ray Bradbury"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Catcher in the Rye?"
            Reponses := array{"J.D. Salinger", "Gustave Flaubert", "Emile Zola", "Moliere"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote To Kill a Mockingbird?"
            Reponses := array{"Emily Bronte", "Dostoevsky", "Harper Lee", "Moliere"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Fahrenheit 451?"
            Reponses := array{"Ray Bradbury", "Herman Melville", "F. Scott Fitzgerald", "Gustave Flaubert"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Brave New World?"
            Reponses := array{"Ernest Hemingway", "Aldous Huxley", "Ray Bradbury", "Leo Tolstoy"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Dune?"
            Reponses := array{"Charlotte Bronte", "Paulo Coelho", "Harper Lee", "Frank Herbert"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Foundation?"
            Reponses := array{"John Steinbeck", "Aldous Huxley", "Ray Bradbury", "Isaac Asimov"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote One Hundred Years of Solitude?"
            Reponses := array{"Emily Bronte", "Moliere", "Gabriel Garcia Marquez", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Alchemist?"
            Reponses := array{"Paulo Coelho", "Voltaire", "Leo Tolstoy", "Edmond Rostand"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Metamorphosis?"
            Reponses := array{"Louis-Ferdinand Celine", "Goethe", "Albert Camus", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Trial?"
            Reponses := array{"Roald Dahl", "Milan Kundera", "Goethe", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Ulysses?"
            Reponses := array{"James Joyce", "Carlos Ruiz Zafon", "Albert Camus", "Umberto Eco"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote In Search of Lost Time?"
            Reponses := array{"Louis-Ferdinand Celine", "Marcel Proust", "Homer", "Umberto Eco"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Journey to the End of the Night?"
            Reponses := array{"Patrick Suskind", "Stefan Zweig", "Louis-Ferdinand Celine", "Goethe"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Plague?"
            Reponses := array{"Patrick Suskind", "Marcel Proust", "Albert Camus", "Jean-Paul Sartre"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote Nausea?"
            Reponses := array{"Jean-Paul Sartre", "Carlos Ruiz Zafon", "Jack London", "Cormac McCarthy"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Faust?"
            Reponses := array{"Goethe", "Milan Kundera", "Machiavel", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Sorrows of Young Werther?"
            Reponses := array{"Stieg Larsson", "Franz Kafka", "Goethe", "Albert Camus"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Odyssey?"
            Reponses := array{"Homer", "C.S. Lewis", "Stefan Zweig", "Goethe"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote The Iliad?"
            Reponses := array{"Suzanne Collins", "Homer", "Patrick Suskind", "Jean-Paul Sartre"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Inferno?"
            Reponses := array{"Louis-Ferdinand Celine", "Dante Alighieri", "James Joyce", "Patrick Suskind"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote The Prince?"
            Reponses := array{"Milan Kundera", "Machiavel", "Franz Kafka", "Jack London"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote The Name of the Rose?"
            Reponses := array{"Umberto Eco", "Jack London", "Homer", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Perfume?"
            Reponses := array{"James Joyce", "Patrick Suskind", "Suzanne Collins", "Dante Alighieri"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote The Shadow of the Wind?"
            Reponses := array{"Carlos Ruiz Zafon", "Roald Dahl", "Suzanne Collins", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote Millenium?"
            Reponses := array{"Jean-Paul Sartre", "Patrick Suskind", "Marcel Proust", "Stieg Larsson"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Lord of the Flies?"
            Reponses := array{"Franz Kafka", "Albert Camus", "Carlos Ruiz Zafon", "William Golding"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Road?"
            Reponses := array{"Jack London", "Roald Dahl", "Cormac McCarthy", "Stieg Larsson"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Royal Game?"
            Reponses := array{"Suzanne Collins", "Stephenie Meyer", "Carlos Ruiz Zafon", "Stefan Zweig"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote The Unbearable Lightness of Being?"
            Reponses := array{"Franz Kafka", "Louis-Ferdinand Celine", "Goethe", "Milan Kundera"}
            BonneReponse := 3
        question:
            Enonce := "Who wrote Hunger Games?"
            Reponses := array{"Franz Kafka", "Suzanne Collins", "Jean-Paul Sartre", "C.S. Lewis"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Twilight?"
            Reponses := array{"Goethe", "Albert Camus", "Stephenie Meyer", "Louis-Ferdinand Celine"}
            BonneReponse := 2
        question:
            Enonce := "Who wrote The Chronicles of Narnia?"
            Reponses := array{"Cormac McCarthy", "C.S. Lewis", "Franz Kafka", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Who wrote Charlie and the Chocolate Factory?"
            Reponses := array{"Roald Dahl", "Marcel Proust", "Homer", "Patrick Suskind"}
            BonneReponse := 0
        question:
            Enonce := "Who wrote White Fang?"
            Reponses := array{"Franz Kafka", "Jack London", "Carlos Ruiz Zafon", "Homer"}
            BonneReponse := 1

MakeLivresQuestionsES() : []question =
    array:
        question:
            Enonce := "Quien escribio Harry Potter?"
            Reponses := array{"Arthur Conan Doyle", "George Orwell", "Stephen King", "J.K. Rowling"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El Senor de los Anillos?"
            Reponses := array{"J.R.R. Tolkien", "Dan Brown", "George Orwell", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio El hobbit?"
            Reponses := array{"Mary Shelley", "Jules Verne", "J.R.R. Tolkien", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El principito?"
            Reponses := array{"Jules Verne", "George Orwell", "Victor Hugo", "Antoine de Saint-Exupery"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio 1984?"
            Reponses := array{"Alexandre Dumas", "Victor Hugo", "Stephen King", "George Orwell"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Rebelion en la granja?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "George Orwell", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Romeo y Julieta?"
            Reponses := array{"J.K. Rowling", "Jules Verne", "William Shakespeare", "Mary Shelley"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Hamlet?"
            Reponses := array{"William Shakespeare", "Stephen King", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Les Miserables?"
            Reponses := array{"Victor Hugo", "Carlo Collodi", "Arthur Conan Doyle", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Nuestra Senora de Paris?"
            Reponses := array{"Victor Hugo", "Agatha Christie", "Carlo Collodi", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio El conde de Montecristo?"
            Reponses := array{"Stephen King", "Dan Brown", "George Orwell", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Los tres mosqueteros?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Alexandre Dumas", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Don Quijote?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "Miguel de Cervantes", "George R.R. Martin"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El extranjero?"
            Reponses := array{"Albert Camus", "Arthur Conan Doyle", "Alexandre Dumas", "Jules Verne"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Veinte mil leguas de viaje submarino?"
            Reponses := array{"Jules Verne", "J.K. Rowling", "Alexandre Dumas", "Stephen King"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio La vuelta al mundo en 80 dias?"
            Reponses := array{"Miguel de Cervantes", "Jules Verne", "Victor Hugo", "Carlo Collodi"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Dracula?"
            Reponses := array{"George Orwell", "William Shakespeare", "Bram Stoker", "Carlo Collodi"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Frankenstein?"
            Reponses := array{"Mary Shelley", "Victor Hugo", "Bram Stoker", "Arthur Conan Doyle"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Las aventuras de Sherlock Holmes?"
            Reponses := array{"Victor Hugo", "Arthur Conan Doyle", "Lewis Carroll", "J.K. Rowling"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Asesinato en el Orient Express?"
            Reponses := array{"Dan Brown", "Jules Verne", "Antoine de Saint-Exupery", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Diez negritos?"
            Reponses := array{"Antoine de Saint-Exupery", "Victor Hugo", "Alexandre Dumas", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Juego de tronos?"
            Reponses := array{"George R.R. Martin", "J.R.R. Tolkien", "Victor Hugo", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio It?"
            Reponses := array{"William Shakespeare", "Stephen King", "Alexandre Dumas", "Miguel de Cervantes"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Shining?"
            Reponses := array{"Stephen King", "Agatha Christie", "Antoine de Saint-Exupery", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio El codigo Da Vinci?"
            Reponses := array{"Miguel de Cervantes", "Dan Brown", "J.R.R. Tolkien", "George R.R. Martin"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Alicia en el pais de las maravillas?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Carlo Collodi", "George Orwell"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Pinocchio?"
            Reponses := array{"J.R.R. Tolkien", "J.K. Rowling", "Carlo Collodi", "Lewis Carroll"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Orgullo y prejuicio?"
            Reponses := array{"Jane Austen", "Edmond Rostand", "John Steinbeck", "Emily Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Jane Eyre?"
            Reponses := array{"Charlotte Bronte", "Ernest Hemingway", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Cumbres borrascosas?"
            Reponses := array{"Harper Lee", "Paulo Coelho", "J.D. Salinger", "Emily Bronte"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El gran Gatsby?"
            Reponses := array{"Frank Herbert", "Dostoyevski", "Jane Austen", "F. Scott Fitzgerald"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El viejo y el mar?"
            Reponses := array{"Emily Bronte", "Ernest Hemingway", "Emile Zola", "Isaac Asimov"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio De ratones y hombres?"
            Reponses := array{"John Steinbeck", "Leon Tolstoi", "Emily Bronte", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Las uvas de la ira?"
            Reponses := array{"Herman Melville", "John Steinbeck", "Moliere", "Aldous Huxley"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Crimen y castigo?"
            Reponses := array{"Gustave Flaubert", "Charlotte Bronte", "Dostoyevski", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Los hermanos Karamazov?"
            Reponses := array{"J.D. Salinger", "Ray Bradbury", "Dostoyevski", "John Steinbeck"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Guerra y paz?"
            Reponses := array{"Leon Tolstoi", "Charlotte Bronte", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Anna Karenina?"
            Reponses := array{"Mark Twain", "Leon Tolstoi", "Harper Lee", "Edmond Rostand"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Madame Bovary?"
            Reponses := array{"Gustave Flaubert", "John Steinbeck", "Isaac Asimov", "Harper Lee"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Germinal?"
            Reponses := array{"Gabriel Garcia Marquez", "John Steinbeck", "Emile Zola", "Herman Melville"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Rojo y negro?"
            Reponses := array{"Voltaire", "Stendhal", "John Steinbeck", "Herman Melville"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Candide?"
            Reponses := array{"Emile Zola", "Voltaire", "Gustave Flaubert", "Charlotte Bronte"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Le Misanthrope?"
            Reponses := array{"F. Scott Fitzgerald", "Emile Zola", "Moliere", "Charlotte Bronte"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Paulo Coelho", "Charlotte Bronte", "Ray Bradbury"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Moby Dick?"
            Reponses := array{"Ernest Hemingway", "J.D. Salinger", "Aldous Huxley", "Herman Melville"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Las aventuras de Tom Sawyer?"
            Reponses := array{"Gustave Flaubert", "J.D. Salinger", "Mark Twain", "Ray Bradbury"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El guardian entre el centeno?"
            Reponses := array{"J.D. Salinger", "Gustave Flaubert", "Emile Zola", "Moliere"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Matar a un ruisenor?"
            Reponses := array{"Emily Bronte", "Dostoyevski", "Harper Lee", "Moliere"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Fahrenheit 451?"
            Reponses := array{"Ray Bradbury", "Herman Melville", "F. Scott Fitzgerald", "Gustave Flaubert"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Un mundo feliz?"
            Reponses := array{"Ernest Hemingway", "Aldous Huxley", "Ray Bradbury", "Leon Tolstoi"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Dune?"
            Reponses := array{"Charlotte Bronte", "Paulo Coelho", "Harper Lee", "Frank Herbert"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Fundacion?"
            Reponses := array{"John Steinbeck", "Aldous Huxley", "Ray Bradbury", "Isaac Asimov"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Cien anos de soledad?"
            Reponses := array{"Emily Bronte", "Moliere", "Gabriel Garcia Marquez", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio El alquimista?"
            Reponses := array{"Paulo Coelho", "Voltaire", "Leon Tolstoi", "Edmond Rostand"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio La metamorfosis?"
            Reponses := array{"Louis-Ferdinand Celine", "Goethe", "Albert Camus", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El proceso?"
            Reponses := array{"Roald Dahl", "Milan Kundera", "Goethe", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Ulises?"
            Reponses := array{"James Joyce", "Carlos Ruiz Zafon", "Albert Camus", "Umberto Eco"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio En busca del tiempo perdido?"
            Reponses := array{"Louis-Ferdinand Celine", "Marcel Proust", "Homero", "Umberto Eco"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Viaje al fin de la noche?"
            Reponses := array{"Patrick Suskind", "Stefan Zweig", "Louis-Ferdinand Celine", "Goethe"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio La peste?"
            Reponses := array{"Patrick Suskind", "Marcel Proust", "Albert Camus", "Jean-Paul Sartre"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio La nausea?"
            Reponses := array{"Jean-Paul Sartre", "Carlos Ruiz Zafon", "Jack London", "Cormac McCarthy"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Faust?"
            Reponses := array{"Goethe", "Milan Kundera", "Machiavel", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Las penas del joven Werther?"
            Reponses := array{"Stieg Larsson", "Franz Kafka", "Goethe", "Albert Camus"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio La Odisea?"
            Reponses := array{"Homero", "C.S. Lewis", "Stefan Zweig", "Goethe"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio La Iliada?"
            Reponses := array{"Suzanne Collins", "Homero", "Patrick Suskind", "Jean-Paul Sartre"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Infierno?"
            Reponses := array{"Louis-Ferdinand Celine", "Dante Alighieri", "James Joyce", "Patrick Suskind"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio El principe?"
            Reponses := array{"Milan Kundera", "Machiavel", "Franz Kafka", "Jack London"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio El nombre de la rosa?"
            Reponses := array{"Umberto Eco", "Jack London", "Homero", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio El perfume?"
            Reponses := array{"James Joyce", "Patrick Suskind", "Suzanne Collins", "Dante Alighieri"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio La sombra del viento?"
            Reponses := array{"Carlos Ruiz Zafon", "Roald Dahl", "Suzanne Collins", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Millenium?"
            Reponses := array{"Jean-Paul Sartre", "Patrick Suskind", "Marcel Proust", "Stieg Larsson"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio El senor de las moscas?"
            Reponses := array{"Franz Kafka", "Albert Camus", "Carlos Ruiz Zafon", "William Golding"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio La carretera?"
            Reponses := array{"Jack London", "Roald Dahl", "Cormac McCarthy", "Stieg Larsson"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Novela de ajedrez?"
            Reponses := array{"Suzanne Collins", "Stephenie Meyer", "Carlos Ruiz Zafon", "Stefan Zweig"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio La insoportable levedad del ser?"
            Reponses := array{"Franz Kafka", "Louis-Ferdinand Celine", "Goethe", "Milan Kundera"}
            BonneReponse := 3
        question:
            Enonce := "Quien escribio Hunger Games?"
            Reponses := array{"Franz Kafka", "Suzanne Collins", "Jean-Paul Sartre", "C.S. Lewis"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Twilight?"
            Reponses := array{"Goethe", "Albert Camus", "Stephenie Meyer", "Louis-Ferdinand Celine"}
            BonneReponse := 2
        question:
            Enonce := "Quien escribio Las cronicas de Narnia?"
            Reponses := array{"Cormac McCarthy", "C.S. Lewis", "Franz Kafka", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Quien escribio Charlie y la fabrica de chocolate?"
            Reponses := array{"Roald Dahl", "Marcel Proust", "Homero", "Patrick Suskind"}
            BonneReponse := 0
        question:
            Enonce := "Quien escribio Colmillo Blanco?"
            Reponses := array{"Franz Kafka", "Jack London", "Carlos Ruiz Zafon", "Homero"}
            BonneReponse := 1

MakeLivresQuestionsDE() : []question =
    array:
        question:
            Enonce := "Wer schrieb Harry Potter?"
            Reponses := array{"Arthur Conan Doyle", "George Orwell", "Stephen King", "J.K. Rowling"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der Herr der Ringe?"
            Reponses := array{"J.R.R. Tolkien", "Dan Brown", "George Orwell", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Der Hobbit?"
            Reponses := array{"Mary Shelley", "Jules Verne", "J.R.R. Tolkien", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der kleine Prinz?"
            Reponses := array{"Jules Verne", "George Orwell", "Victor Hugo", "Antoine de Saint-Exupery"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb 1984?"
            Reponses := array{"Alexandre Dumas", "Victor Hugo", "Stephen King", "George Orwell"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Farm der Tiere?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "George Orwell", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Romeo und Julia?"
            Reponses := array{"J.K. Rowling", "Jules Verne", "William Shakespeare", "Mary Shelley"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Hamlet?"
            Reponses := array{"William Shakespeare", "Stephen King", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Les Miserables?"
            Reponses := array{"Victor Hugo", "Carlo Collodi", "Arthur Conan Doyle", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Der Gloeckner von Notre-Dame?"
            Reponses := array{"Victor Hugo", "Agatha Christie", "Carlo Collodi", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Der Graf von Monte Christo?"
            Reponses := array{"Stephen King", "Dan Brown", "George Orwell", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Die drei Musketiere?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Alexandre Dumas", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Don Quijote?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "Miguel de Cervantes", "George R.R. Martin"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der Fremde?"
            Reponses := array{"Albert Camus", "Arthur Conan Doyle", "Alexandre Dumas", "Jules Verne"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb 20000 Meilen unter dem Meer?"
            Reponses := array{"Jules Verne", "J.K. Rowling", "Alexandre Dumas", "Stephen King"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb In 80 Tagen um die Welt?"
            Reponses := array{"Miguel de Cervantes", "Jules Verne", "Victor Hugo", "Carlo Collodi"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Dracula?"
            Reponses := array{"George Orwell", "William Shakespeare", "Bram Stoker", "Carlo Collodi"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Frankenstein?"
            Reponses := array{"Mary Shelley", "Victor Hugo", "Bram Stoker", "Arthur Conan Doyle"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Abenteuer des Sherlock Holmes?"
            Reponses := array{"Victor Hugo", "Arthur Conan Doyle", "Lewis Carroll", "J.K. Rowling"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Mord im Orient-Express?"
            Reponses := array{"Dan Brown", "Jules Verne", "Antoine de Saint-Exupery", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Und dann gabs keines mehr?"
            Reponses := array{"Antoine de Saint-Exupery", "Victor Hugo", "Alexandre Dumas", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb A Game of Thrones?"
            Reponses := array{"George R.R. Martin", "J.R.R. Tolkien", "Victor Hugo", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Es?"
            Reponses := array{"William Shakespeare", "Stephen King", "Alexandre Dumas", "Miguel de Cervantes"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Shining?"
            Reponses := array{"Stephen King", "Agatha Christie", "Antoine de Saint-Exupery", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Sakrileg?"
            Reponses := array{"Miguel de Cervantes", "Dan Brown", "J.R.R. Tolkien", "George R.R. Martin"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Alice im Wunderland?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Carlo Collodi", "George Orwell"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Pinocchio?"
            Reponses := array{"J.R.R. Tolkien", "J.K. Rowling", "Carlo Collodi", "Lewis Carroll"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Stolz und Vorurteil?"
            Reponses := array{"Jane Austen", "Edmond Rostand", "John Steinbeck", "Emily Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Jane Eyre?"
            Reponses := array{"Charlotte Bronte", "Ernest Hemingway", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Sturmhoehe?"
            Reponses := array{"Harper Lee", "Paulo Coelho", "J.D. Salinger", "Emily Bronte"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der grosse Gatsby?"
            Reponses := array{"Frank Herbert", "Dostojewski", "Jane Austen", "F. Scott Fitzgerald"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der alte Mann und das Meer?"
            Reponses := array{"Emily Bronte", "Ernest Hemingway", "Emile Zola", "Isaac Asimov"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Von Maeusen und Menschen?"
            Reponses := array{"John Steinbeck", "Leo Tolstoi", "Emily Bronte", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Fruechte des Zorns?"
            Reponses := array{"Herman Melville", "John Steinbeck", "Moliere", "Aldous Huxley"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Schuld und Suehne?"
            Reponses := array{"Gustave Flaubert", "Charlotte Bronte", "Dostojewski", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Die Brueder Karamasow?"
            Reponses := array{"J.D. Salinger", "Ray Bradbury", "Dostojewski", "John Steinbeck"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Krieg und Frieden?"
            Reponses := array{"Leo Tolstoi", "Charlotte Bronte", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Anna Karenina?"
            Reponses := array{"Mark Twain", "Leo Tolstoi", "Harper Lee", "Edmond Rostand"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Madame Bovary?"
            Reponses := array{"Gustave Flaubert", "John Steinbeck", "Isaac Asimov", "Harper Lee"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Germinal?"
            Reponses := array{"Gabriel Garcia Marquez", "John Steinbeck", "Emile Zola", "Herman Melville"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Rot und Schwarz?"
            Reponses := array{"Voltaire", "Stendhal", "John Steinbeck", "Herman Melville"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Candide?"
            Reponses := array{"Emile Zola", "Voltaire", "Gustave Flaubert", "Charlotte Bronte"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Le Misanthrope?"
            Reponses := array{"F. Scott Fitzgerald", "Emile Zola", "Moliere", "Charlotte Bronte"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Paulo Coelho", "Charlotte Bronte", "Ray Bradbury"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Moby Dick?"
            Reponses := array{"Ernest Hemingway", "J.D. Salinger", "Aldous Huxley", "Herman Melville"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Tom Sawyers Abenteuer?"
            Reponses := array{"Gustave Flaubert", "J.D. Salinger", "Mark Twain", "Ray Bradbury"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der Faenger im Roggen?"
            Reponses := array{"J.D. Salinger", "Gustave Flaubert", "Emile Zola", "Moliere"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Wer die Nachtigall stoert?"
            Reponses := array{"Emily Bronte", "Dostojewski", "Harper Lee", "Moliere"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Fahrenheit 451?"
            Reponses := array{"Ray Bradbury", "Herman Melville", "F. Scott Fitzgerald", "Gustave Flaubert"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Schoene neue Welt?"
            Reponses := array{"Ernest Hemingway", "Aldous Huxley", "Ray Bradbury", "Leo Tolstoi"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Dune?"
            Reponses := array{"Charlotte Bronte", "Paulo Coelho", "Harper Lee", "Frank Herbert"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Foundation?"
            Reponses := array{"John Steinbeck", "Aldous Huxley", "Ray Bradbury", "Isaac Asimov"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Hundert Jahre Einsamkeit?"
            Reponses := array{"Emily Bronte", "Moliere", "Gabriel Garcia Marquez", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der Alchimist?"
            Reponses := array{"Paulo Coelho", "Voltaire", "Leo Tolstoi", "Edmond Rostand"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Verwandlung?"
            Reponses := array{"Louis-Ferdinand Celine", "Goethe", "Albert Camus", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Der Process?"
            Reponses := array{"Roald Dahl", "Milan Kundera", "Goethe", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Ulysses?"
            Reponses := array{"James Joyce", "Carlos Ruiz Zafon", "Albert Camus", "Umberto Eco"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Auf der Suche nach der verlorenen Zeit?"
            Reponses := array{"Louis-Ferdinand Celine", "Marcel Proust", "Homer", "Umberto Eco"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Reise ans Ende der Nacht?"
            Reponses := array{"Patrick Suskind", "Stefan Zweig", "Louis-Ferdinand Celine", "Goethe"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Die Pest?"
            Reponses := array{"Patrick Suskind", "Marcel Proust", "Albert Camus", "Jean-Paul Sartre"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Der Ekel?"
            Reponses := array{"Jean-Paul Sartre", "Carlos Ruiz Zafon", "Jack London", "Cormac McCarthy"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Faust?"
            Reponses := array{"Goethe", "Milan Kundera", "Machiavel", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Leiden des jungen Werthers?"
            Reponses := array{"Stieg Larsson", "Franz Kafka", "Goethe", "Albert Camus"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Die Odyssee?"
            Reponses := array{"Homer", "C.S. Lewis", "Stefan Zweig", "Goethe"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Die Ilias?"
            Reponses := array{"Suzanne Collins", "Homer", "Patrick Suskind", "Jean-Paul Sartre"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Inferno?"
            Reponses := array{"Louis-Ferdinand Celine", "Dante Alighieri", "James Joyce", "Patrick Suskind"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Der Fuerst?"
            Reponses := array{"Milan Kundera", "Machiavel", "Franz Kafka", "Jack London"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Der Name der Rose?"
            Reponses := array{"Umberto Eco", "Jack London", "Homer", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Das Parfum?"
            Reponses := array{"James Joyce", "Patrick Suskind", "Suzanne Collins", "Dante Alighieri"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Der Schatten des Windes?"
            Reponses := array{"Carlos Ruiz Zafon", "Roald Dahl", "Suzanne Collins", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Millenium?"
            Reponses := array{"Jean-Paul Sartre", "Patrick Suskind", "Marcel Proust", "Stieg Larsson"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Herr der Fliegen?"
            Reponses := array{"Franz Kafka", "Albert Camus", "Carlos Ruiz Zafon", "William Golding"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Die Strasse?"
            Reponses := array{"Jack London", "Roald Dahl", "Cormac McCarthy", "Stieg Larsson"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Schachnovelle?"
            Reponses := array{"Suzanne Collins", "Stephenie Meyer", "Carlos Ruiz Zafon", "Stefan Zweig"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Die unertraegliche Leichtigkeit des Seins?"
            Reponses := array{"Franz Kafka", "Louis-Ferdinand Celine", "Goethe", "Milan Kundera"}
            BonneReponse := 3
        question:
            Enonce := "Wer schrieb Hunger Games?"
            Reponses := array{"Franz Kafka", "Suzanne Collins", "Jean-Paul Sartre", "C.S. Lewis"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Twilight?"
            Reponses := array{"Goethe", "Albert Camus", "Stephenie Meyer", "Louis-Ferdinand Celine"}
            BonneReponse := 2
        question:
            Enonce := "Wer schrieb Die Chroniken von Narnia?"
            Reponses := array{"Cormac McCarthy", "C.S. Lewis", "Franz Kafka", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Wer schrieb Charlie und die Schokoladenfabrik?"
            Reponses := array{"Roald Dahl", "Marcel Proust", "Homer", "Patrick Suskind"}
            BonneReponse := 0
        question:
            Enonce := "Wer schrieb Wolfsblut?"
            Reponses := array{"Franz Kafka", "Jack London", "Carlos Ruiz Zafon", "Homer"}
            BonneReponse := 1

MakeLivresQuestionsIT() : []question =
    array:
        question:
            Enonce := "Chi ha scritto Harry Potter?"
            Reponses := array{"Arthur Conan Doyle", "George Orwell", "Stephen King", "J.K. Rowling"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il Signore degli Anelli?"
            Reponses := array{"J.R.R. Tolkien", "Dan Brown", "George Orwell", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Lo Hobbit?"
            Reponses := array{"Mary Shelley", "Jules Verne", "J.R.R. Tolkien", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il piccolo principe?"
            Reponses := array{"Jules Verne", "George Orwell", "Victor Hugo", "Antoine de Saint-Exupery"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto 1984?"
            Reponses := array{"Alexandre Dumas", "Victor Hugo", "Stephen King", "George Orwell"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto La fattoria degli animali?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "George Orwell", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Romeo e Giulietta?"
            Reponses := array{"J.K. Rowling", "Jules Verne", "William Shakespeare", "Mary Shelley"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Hamlet?"
            Reponses := array{"William Shakespeare", "Stephen King", "Victor Hugo", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Les Miserables?"
            Reponses := array{"Victor Hugo", "Carlo Collodi", "Arthur Conan Doyle", "William Shakespeare"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Notre-Dame de Paris?"
            Reponses := array{"Victor Hugo", "Agatha Christie", "Carlo Collodi", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il conte di Montecristo?"
            Reponses := array{"Stephen King", "Dan Brown", "George Orwell", "Alexandre Dumas"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto I tre moschettieri?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Alexandre Dumas", "Victor Hugo"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Don Chisciotte?"
            Reponses := array{"William Shakespeare", "Agatha Christie", "Miguel de Cervantes", "George R.R. Martin"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Lo straniero?"
            Reponses := array{"Albert Camus", "Arthur Conan Doyle", "Alexandre Dumas", "Jules Verne"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Ventimila leghe sotto i mari?"
            Reponses := array{"Jules Verne", "J.K. Rowling", "Alexandre Dumas", "Stephen King"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il giro del mondo in 80 giorni?"
            Reponses := array{"Miguel de Cervantes", "Jules Verne", "Victor Hugo", "Carlo Collodi"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Dracula?"
            Reponses := array{"George Orwell", "William Shakespeare", "Bram Stoker", "Carlo Collodi"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Frankenstein?"
            Reponses := array{"Mary Shelley", "Victor Hugo", "Bram Stoker", "Arthur Conan Doyle"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Le avventure di Sherlock Holmes?"
            Reponses := array{"Victor Hugo", "Arthur Conan Doyle", "Lewis Carroll", "J.K. Rowling"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Assassinio sull'Orient Express?"
            Reponses := array{"Dan Brown", "Jules Verne", "Antoine de Saint-Exupery", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Dieci piccoli indiani?"
            Reponses := array{"Antoine de Saint-Exupery", "Victor Hugo", "Alexandre Dumas", "Agatha Christie"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il Trono di Spade?"
            Reponses := array{"George R.R. Martin", "J.R.R. Tolkien", "Victor Hugo", "J.K. Rowling"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto It?"
            Reponses := array{"William Shakespeare", "Stephen King", "Alexandre Dumas", "Miguel de Cervantes"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Shining?"
            Reponses := array{"Stephen King", "Agatha Christie", "Antoine de Saint-Exupery", "Alexandre Dumas"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il codice da Vinci?"
            Reponses := array{"Miguel de Cervantes", "Dan Brown", "J.R.R. Tolkien", "George R.R. Martin"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Alice nel paese delle meraviglie?"
            Reponses := array{"Agatha Christie", "Lewis Carroll", "Carlo Collodi", "George Orwell"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Pinocchio?"
            Reponses := array{"J.R.R. Tolkien", "J.K. Rowling", "Carlo Collodi", "Lewis Carroll"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Orgoglio e pregiudizio?"
            Reponses := array{"Jane Austen", "Edmond Rostand", "John Steinbeck", "Emily Bronte"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Jane Eyre?"
            Reponses := array{"Charlotte Bronte", "Ernest Hemingway", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Cime tempestose?"
            Reponses := array{"Harper Lee", "Paulo Coelho", "J.D. Salinger", "Emily Bronte"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il grande Gatsby?"
            Reponses := array{"Frank Herbert", "Dostoevskij", "Jane Austen", "F. Scott Fitzgerald"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il vecchio e il mare?"
            Reponses := array{"Emily Bronte", "Ernest Hemingway", "Emile Zola", "Isaac Asimov"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Uomini e topi?"
            Reponses := array{"John Steinbeck", "Lev Tolstoj", "Emily Bronte", "Voltaire"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Furore?"
            Reponses := array{"Herman Melville", "John Steinbeck", "Moliere", "Aldous Huxley"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Delitto e castigo?"
            Reponses := array{"Gustave Flaubert", "Charlotte Bronte", "Dostoevskij", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto I fratelli Karamazov?"
            Reponses := array{"J.D. Salinger", "Ray Bradbury", "Dostoevskij", "John Steinbeck"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Guerra e pace?"
            Reponses := array{"Lev Tolstoj", "Charlotte Bronte", "John Steinbeck", "Emile Zola"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Anna Karenina?"
            Reponses := array{"Mark Twain", "Lev Tolstoj", "Harper Lee", "Edmond Rostand"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Madame Bovary?"
            Reponses := array{"Gustave Flaubert", "John Steinbeck", "Isaac Asimov", "Harper Lee"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Germinal?"
            Reponses := array{"Gabriel Garcia Marquez", "John Steinbeck", "Emile Zola", "Herman Melville"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il rosso e il nero?"
            Reponses := array{"Voltaire", "Stendhal", "John Steinbeck", "Herman Melville"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Candide?"
            Reponses := array{"Emile Zola", "Voltaire", "Gustave Flaubert", "Charlotte Bronte"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Le Misanthrope?"
            Reponses := array{"F. Scott Fitzgerald", "Emile Zola", "Moliere", "Charlotte Bronte"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Cyrano de Bergerac?"
            Reponses := array{"Edmond Rostand", "Paulo Coelho", "Charlotte Bronte", "Ray Bradbury"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Moby Dick?"
            Reponses := array{"Ernest Hemingway", "J.D. Salinger", "Aldous Huxley", "Herman Melville"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Le avventure di Tom Sawyer?"
            Reponses := array{"Gustave Flaubert", "J.D. Salinger", "Mark Twain", "Ray Bradbury"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Il giovane Holden?"
            Reponses := array{"J.D. Salinger", "Gustave Flaubert", "Emile Zola", "Moliere"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il buio oltre la siepe?"
            Reponses := array{"Emily Bronte", "Dostoevskij", "Harper Lee", "Moliere"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Fahrenheit 451?"
            Reponses := array{"Ray Bradbury", "Herman Melville", "F. Scott Fitzgerald", "Gustave Flaubert"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il mondo nuovo?"
            Reponses := array{"Ernest Hemingway", "Aldous Huxley", "Ray Bradbury", "Lev Tolstoj"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Dune?"
            Reponses := array{"Charlotte Bronte", "Paulo Coelho", "Harper Lee", "Frank Herbert"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Fondazione?"
            Reponses := array{"John Steinbeck", "Aldous Huxley", "Ray Bradbury", "Isaac Asimov"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Cent'anni di solitudine?"
            Reponses := array{"Emily Bronte", "Moliere", "Gabriel Garcia Marquez", "Emile Zola"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto L'alchimista?"
            Reponses := array{"Paulo Coelho", "Voltaire", "Lev Tolstoj", "Edmond Rostand"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto La metamorfosi?"
            Reponses := array{"Louis-Ferdinand Celine", "Goethe", "Albert Camus", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il processo?"
            Reponses := array{"Roald Dahl", "Milan Kundera", "Goethe", "Franz Kafka"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Ulisse?"
            Reponses := array{"James Joyce", "Carlos Ruiz Zafon", "Albert Camus", "Umberto Eco"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Alla ricerca del tempo perduto?"
            Reponses := array{"Louis-Ferdinand Celine", "Marcel Proust", "Omero", "Umberto Eco"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Viaggio al termine della notte?"
            Reponses := array{"Patrick Suskind", "Stefan Zweig", "Louis-Ferdinand Celine", "Goethe"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto La peste?"
            Reponses := array{"Patrick Suskind", "Marcel Proust", "Albert Camus", "Jean-Paul Sartre"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto La nausea?"
            Reponses := array{"Jean-Paul Sartre", "Carlos Ruiz Zafon", "Jack London", "Cormac McCarthy"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Faust?"
            Reponses := array{"Goethe", "Milan Kundera", "Machiavel", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto I dolori del giovane Werther?"
            Reponses := array{"Stieg Larsson", "Franz Kafka", "Goethe", "Albert Camus"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Odissea?"
            Reponses := array{"Omero", "C.S. Lewis", "Stefan Zweig", "Goethe"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Iliade?"
            Reponses := array{"Suzanne Collins", "Omero", "Patrick Suskind", "Jean-Paul Sartre"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Inferno?"
            Reponses := array{"Louis-Ferdinand Celine", "Dante Alighieri", "James Joyce", "Patrick Suskind"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Il Principe?"
            Reponses := array{"Milan Kundera", "Machiavel", "Franz Kafka", "Jack London"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Il nome della rosa?"
            Reponses := array{"Umberto Eco", "Jack London", "Omero", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Il profumo?"
            Reponses := array{"James Joyce", "Patrick Suskind", "Suzanne Collins", "Dante Alighieri"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto L'ombra del vento?"
            Reponses := array{"Carlos Ruiz Zafon", "Roald Dahl", "Suzanne Collins", "Marcel Proust"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Millenium?"
            Reponses := array{"Jean-Paul Sartre", "Patrick Suskind", "Marcel Proust", "Stieg Larsson"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Il signore delle mosche?"
            Reponses := array{"Franz Kafka", "Albert Camus", "Carlos Ruiz Zafon", "William Golding"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto La strada?"
            Reponses := array{"Jack London", "Roald Dahl", "Cormac McCarthy", "Stieg Larsson"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Novella degli scacchi?"
            Reponses := array{"Suzanne Collins", "Stephenie Meyer", "Carlos Ruiz Zafon", "Stefan Zweig"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto L'insostenibile leggerezza dell'essere?"
            Reponses := array{"Franz Kafka", "Louis-Ferdinand Celine", "Goethe", "Milan Kundera"}
            BonneReponse := 3
        question:
            Enonce := "Chi ha scritto Hunger Games?"
            Reponses := array{"Franz Kafka", "Suzanne Collins", "Jean-Paul Sartre", "C.S. Lewis"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto Twilight?"
            Reponses := array{"Goethe", "Albert Camus", "Stephenie Meyer", "Louis-Ferdinand Celine"}
            BonneReponse := 2
        question:
            Enonce := "Chi ha scritto Le cronache di Narnia?"
            Reponses := array{"Cormac McCarthy", "C.S. Lewis", "Franz Kafka", "Roald Dahl"}
            BonneReponse := 1
        question:
            Enonce := "Chi ha scritto La fabbrica di cioccolato?"
            Reponses := array{"Roald Dahl", "Marcel Proust", "Omero", "Patrick Suskind"}
            BonneReponse := 0
        question:
            Enonce := "Chi ha scritto Zanna Bianca?"
            Reponses := array{"Franz Kafka", "Jack London", "Carlos Ruiz Zafon", "Omero"}
            BonneReponse := 1

MakeLivresQuestions() : []question =
    MakeLivresQuestionsFR()
