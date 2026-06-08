using { /Verse.org/Simulation }
using { /Verse.org/Random }

# ============================================================
#  question_bank.verse — Banque de questions + acces + melange
# ============================================================

question_bank := class:
    # La liste des questions (fournie a la creation).
    Questions : []question = array{}

    # Nombre de questions = nombre de segments du parcours.
    Count() : int = Questions.Length

    # Acces sur (faillible) a une question par index.
    GetQuestion(Index : int)<decides><transacts> : question =
        Questions[Index]

    # Ordre par defaut : 0,1,2,...,Count-1
    DefaultOrder() : []int =
        for (I := 0..Count() - 1) { I }

    # Ordre melange (Fisher-Yates) pour la rejouabilite.
    ShuffledOrder() : []int =
        var Order : []int = DefaultOrder()
        var I : int = Order.Length - 1
        loop:
            if (I <= 0) { break }
            if (J := GetRandomInt(0, I), A := Order[I], B := Order[J]):
                set Order[I] = B
                set Order[J] = A
            set I -= 1
        Order
