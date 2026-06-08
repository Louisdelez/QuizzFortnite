using { /Verse.org/Simulation }

# ============================================================
#  quiz_types.verse — Types de donnees du quiz (aucune logique)
# ============================================================

# Une question : enonce + 4 reponses (A,B,C,D) + index de la bonne (0..3).
question := struct:
    Enonce : string
    Reponses : []string
    BonneReponse : int
    Points : int = 100

# Resultat de l'evaluation d'une reponse.
answer_result := enum:
    Correct
    Incorrect
