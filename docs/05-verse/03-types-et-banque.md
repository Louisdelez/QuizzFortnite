# 05.03 — Types de données & banque de questions

Modules `quiz_types.verse` (les données) et `question_bank.verse` (la fourniture + mélange).

## 📄 `quiz_types.verse`

Aucune logique : uniquement la **forme des données**.

```verse
using { /Verse.org/Simulation }

# Une question du quiz (donnée immuable → struct).
question := struct:
    # L'énoncé affiché.
    Enonce : string
    # Exactement 4 réponses, dans l'ordre A,B,C,D.
    Reponses : []string
    # Index 0..3 de la bonne réponse (0=A,1=B,2=C,3=D).
    BonneReponse : int
    # Points gagnés si correct (permet de pondérer la difficulté).
    Points : int = 100
    # Sous-thème optionnel (statistiques, filtrage).
    Theme : string = ""

# Résultat de l'évaluation d'une réponse.
answer_result := enum:
    Correct
    Incorrect
    Timeout
```

## 📚 `question_bank.verse`

Encapsule la liste des questions et offre un **accès sûr** + un **mélange aléatoire**.

```verse
using { /Verse.org/Simulation }
using { /Verse.org/Random }

question_bank := class:
    # La liste des questions (injectée par l'orchestrateur).
    Questions : []question = array{}

    # Nombre de questions.
    Count() : int = Questions.Length

    # Accès sûr (faillible) à une question par index.
    GetQuestion(Index : int)<decides><transacts> : question =
        Questions[Index]

    # Ordre par défaut : 0,1,2,...,Count-1
    DefaultOrder() : []int =
        for (I := 0..Count() - 1) { I }

    # Ordre mélangé (Fisher-Yates) pour la rejouabilité.
    ShuffledOrder() : []int =
        var Order : []int = DefaultOrder()
        # On parcourt de la fin vers le début et on échange.
        var I : int = Order.Length - 1
        loop:
            if (I <= 0) { break }
            if (J := GetRandomInt(0, I), A := Order[I], B := Order[J]):
                set Order[I] = B
                set Order[J] = A
            set I -= 1
        Order
```

### Notes
- `GetRandomInt(Min, Max)` renvoie un entier dans `[Min, Max]` (vérifie les bornes dans l'API).
- `set Order[I] = ...` nécessite que `Order` soit déclaré `var` (tableau mutable local).
- `0..Count()-1` est un **intervalle** ; `for (I := 0..N) {...}` itère dessus.

## 🧩 Fournir les questions (depuis l'orchestrateur)

La banque est **alimentée** par le `quiz_manager`, qui détient les données (ou les charge) :

```verse
# Dans quiz_manager.verse
MakeQuestions() : []question =
    array:
        question:
            Enonce := "Combien de joueurs max en Battle Royale classique ?"
            Reponses := array{"50", "100", "150", "200"}
            BonneReponse := 1
            Points := 100
        question:
            Enonce := "Quel materiau de construction est le plus resistant ?"
            Reponses := array{"Bois", "Pierre", "Metal", "Or"}
            BonneReponse := 2
            Points := 150
        question:
            Enonce := "Comment s'appelle le vehicule de depart ?"
            Reponses := array{"Battle Bus", "Sky Van", "War Jet", "Combat Cab"}
            BonneReponse := 0
            Points := 100
```

Puis instanciation :
```verse
Bank : question_bank = question_bank{ Questions := MakeQuestions() }
```

> 📦 Banque Fortnite prête (25 questions) : [`../07-annexes/A-banque-questions-fortnite.md`](../07-annexes/A-banque-questions-fortnite.md).
> Pense à **simplifier les accents** dans les `string` si tu rencontres des soucis d'encodage.

## ✅ Bonnes pratiques banque
- **Valider** à l'init : `Reponses.Length = 4` et `0 <= BonneReponse <= 3` (log si incohérent).
- **Pondérer** les points selon la difficulté (`Points`).
- **Mélanger** l'ordre par joueur (anti par-cœur) via `ShuffledOrder()`.

→ Suite : [`04-etat-joueur.md`](./04-etat-joueur.md)
