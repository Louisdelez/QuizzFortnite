# 05.08 — Score, classement & persistance (`leaderboard.verse`)

Gérer les scores, produire un **classement** trié, et (optionnel) **persister** les meilleurs
scores entre les parties.

## 🏆 `leaderboard.verse`

```verse
using { /Verse.org/Simulation }

# Une entrée du classement.
score_entry := struct:
    Player : agent
    Score : int

leaderboard := class:
    # Scores de la partie en cours (clé = agent).
    var Scores : [agent]int = map{}

    # Enregistre/écrase le score d'un joueur.
    Submit(Agent : agent, Score : int) : void =
        if (set Scores[Agent] = Score) {}

    # Renvoie les entrées triées par score décroissant.
    Ranking() : []score_entry =
        var Entries : []score_entry = array{}
        for (Agent -> Score : Scores):
            set Entries += array{ score_entry{ Player := Agent, Score := Score } }
        SortByScoreDesc(Entries)

    # Tri par insertion (décroissant) — simple et suffisant pour des lobbies.
    SortByScoreDesc(Input : []score_entry) : []score_entry =
        var Result : []score_entry = array{}
        for (E : Input):
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
```

> ⚠️ Le tri par insertion est `O(n²)` mais **largement** suffisant pour un lobby (≤ ~16 joueurs).
> Pour de grandes listes, implémente un tri plus efficace.

## 📊 Afficher le classement de fin

À la fin (tous finis, ou fin de temps global), construis un message et affiche-le (UI/HUD) :

```verse
# Dans quiz_manager
ShowFinalRanking() : void =
    Ranking := Board.Ranking()
    var Ligne : int = 1
    for (Entry : Ranking):
        Print("#{Ligne} - score {Entry.Score}")
        set Ligne += 1
    # En prod : afficher dans une UI Verse (text_block multi-lignes) plutôt que Print.
```

> 💡 Pour un rendu pro, réutilise le module `quiz_hud` : un widget « tableau des scores »
> (un `text_block` par ligne, ou un texte multi-lignes) affiché à tous en fin de partie.

## 💾 Persistance entre parties (scores qui survivent)

Pour conserver des **records** d'une session à l'autre, Verse propose la **persistance** via une
**variable de module** marquée `weak_map` persistante, indexée par `player`.

### Principe
```verse
# Au niveau module (hors classe) :
var PlayerBest : weak_map(player, int) = map{}
```

- `weak_map(player, int)` indexée par **player** = donnée **par compte joueur**, conservée.
- On **lit** le record existant et on **écrit** le nouveau s'il est meilleur.

### ⚠️ Contraintes de persistance (importantes)
- La donnée persistante doit être d'un **type stable** (int, ou struct dont la définition **ne
  change plus** après publication). **Modifier** le type d'une donnée persistée déjà publiée
  **casse** la compatibilité.
- Conçois ton schéma de persistance **avant** la première publication.
- Reste **simple** (un `int` de meilleur score est idéal pour débuter).

```verse
# Lecture/écriture du record (dans un contexte adapté)
UpdateBest(Player : player, Score : int) : void =
    Old := if (V := PlayerBest[Player]) { V } else { 0 }
    if (Score > Old):
        if (set PlayerBest[Player] = Score) {}
```

> 📌 La persistance a des règles précises (contexte d'écriture, sérialisation). Consulte
> **« Using Persistable Data in Verse »** (doc officielle) avant de l'implémenter en prod.

## 🧮 Idées de scoring « pro »
- **Bonus de série** (combo) : déjà géré dans l'orchestrateur (`StreakBonus`).
- **Bonus de rapidité** : points × fraction de temps restant (nécessite le chrono, module `09`).
- **Malus d'erreur** : `PenaltyPoints` (optionnel).
- **Pondération par difficulté** : champ `Points` de la question.

→ Suite : [`09-concurrence-async.md`](./09-concurrence-async.md)
