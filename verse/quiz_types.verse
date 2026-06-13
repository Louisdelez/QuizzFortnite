using { /Verse.org/Simulation }
using { /Verse.org/Assets }

# ============================================================
#  quiz_types.verse — Types de donnees du quiz (aucune logique)
# ============================================================

# Une question : enonce + 4 reponses (A,B,C,D) + index de la bonne (0..3).
# Image optionnelle (ex. drapeau) affichee au centre du HUD si presente.
question := struct:
    Enonce : string
    Reponses : []string
    BonneReponse : int
    Points : int = 100
    Image : ?texture = false

# Resultat de l'evaluation d'une reponse.
answer_result := enum:
    Correct
    Incorrect
