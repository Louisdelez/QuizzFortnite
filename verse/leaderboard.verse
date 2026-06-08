using { /Verse.org/Simulation }

# ============================================================
#  leaderboard.verse — Score & classement (pur Verse)
# ============================================================

score_entry := struct:
    Who : agent
    Score : int

leaderboard := class:
    # Scores des joueurs ayant termine (cle = agent).
    var Scores : [agent]int = map{}

    # Enregistre / met a jour le score d'un joueur.
    Submit(Agent : agent, Score : int) : void =
        if (set Scores[Agent] = Score) {}

    # Nombre de joueurs classes.
    Size() : int =
        var N : int = 0
        for (_ -> _S : Scores) { set N += 1 }
        N

    # Rang (1-based) d'un joueur : 1 + nombre de scores strictement superieurs.
    RankOf(Agent : agent) : int =
        var Rank : int = 1
        if (Mine := Scores[Agent]):
            for (_ -> S : Scores, S > Mine):
                set Rank += 1
        Rank

    # Classement trie par score decroissant (tri par insertion, suffisant pour un lobby).
    Ranking() : []score_entry =
        var Result : []score_entry = array{}
        for (Agent -> Score : Scores):
            E := score_entry{ Who := Agent, Score := Score }
            var Inserted : logic = false
            var Out : []score_entry = array{}
            for (R : Result):
                if (not Inserted? and E.Score > R.Score):
                    set Out += array{ E }
                    set Inserted = true
                set Out += array{ R }
            if (not Inserted?) { set Out += array{ E } }
            set Result = Out
        Result

    # Lignes de texte du classement, ex. "#1   450 pts".
    RankingLines() : []string =
        var Lines : []string = array{}
        var Rank : int = 1
        for (E : Ranking()):
            set Lines += array{ "#{Rank}    {E.Score} pts" }
            set Rank += 1
        Lines
