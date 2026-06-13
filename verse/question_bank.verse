using { /Verse.org/Simulation }
using { /Verse.org/Random }

# ============================================================
#  question_bank.verse — Banque de questions + acces + melange
# ============================================================

question_bank := class:
    # La liste des questions (fournie a la creation).
    Questions : []question = array{}

    # Nombre de questions = nombre de segments du parcours.
    Count()<transacts> : int = Questions.Length

    # Acces sur (faillible) a une question par index.
    GetQuestion(Index : int)<decides><transacts> : question =
        Questions[Index]

    # Ordre par defaut : 0,1,2,...,Count-1
    DefaultOrder() : []int =
        for (I := 0..Count() - 1) { I }

    # Retire l'element a l'index Idx (reconstruction fonctionnelle, evite set Arr[i]).
    RemoveAt(Arr : []int, Idx : int) : []int =
        for (K := 0..Arr.Length - 1, K <> Idx, X := Arr[K]) { X }

    # Ordre melange (tirage sans remise) pour la rejouabilite.
    ShuffledOrder() : []int =
        var Remaining : []int = DefaultOrder()
        var Result : []int = array{}
        loop:
            if (Remaining.Length <= 0) { break }
            if (J := GetRandomInt(0, Remaining.Length - 1), Picked := Remaining[J]):
                set Result += array{ Picked }
                set Remaining = RemoveAt(Remaining, J)
            else:
                break
        Result
