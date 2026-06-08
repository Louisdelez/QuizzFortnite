# 05.09 — Concurrence & asynchrone (chrono, robustesse)

Un système pro gère le **temps** (chronomètre par question) et la **robustesse** (anti
double-déclenchement) avec les outils de **concurrence** de Verse.

## 🧵 Rappel des expressions de flux temporel

| Expression | Comportement | Usage quiz |
|-----------|--------------|-----------|
| `Sleep(s)` | Pause asynchrone de `s` secondes (contexte `<suspends>`). | Décompte du chrono. |
| `sync:` | Lance plusieurs tâches, attend **toutes**. | Animations parallèles. |
| `race:` | Lance plusieurs tâches, garde la **1re finie**, **annule** les autres. | « Répondre **ou** timeout ». |
| `branch:` | Tâche concurrente **structurée** (préférer à `spawn`). | Chrono qui tourne en fond. |
| `spawn{}` | Tâche async détachée (escape hatch — éviter si possible). | Cas particuliers. |

> 📌 Règle d'or Epic : **`branch` plutôt que `spawn`** ; **`race`** pour arrêter proprement une
> tâche async (le chrono) dès qu'un événement survient (la réponse).

## ⏱️ Chrono par question avec `race`

Le pattern clé : pour chaque question, on lance **en course** « attendre la réponse » contre
« laisser le temps s'écouler ». Le premier qui finit gagne ; l'autre est **annulé**.

```verse
# Attend que le joueur réponde à la question courante (renvoie quand il a répondu).
AwaitAnswer(Agent : agent)<suspends> : void =
    # On attend que le verrou repasse... ou on s'abonne à un event "réponse reçue".
    # Implémentation simple : un event Verse signalé par EvaluateAnswer.
    AnswerReceived.Await()

# Joue UNE question avec un temps limite.
PlayQuestion(Agent : agent)<suspends> : void =
    LoadQuestion(Agent)
    race:
        AwaitAnswer(Agent)                 # le joueur a répondu → fin de la course
        block:
            Sleep(QuestionTimeSeconds)     # ... ou le temps est écoulé
            OnTimeout(Agent)               # pénalité / réponse comptée fausse
```

> `AnswerReceived` peut être un `event(agent)` signalé dans `EvaluateAnswer` (voir
> [`06-portails-answer.md`](./06-portails-answer.md)). Vérifie `Await()`/`Signal()` dans l'API.

## 🔄 Décompte visuel (mettre à jour l'UI chaque seconde)

```verse
RunCountdown(Agent : agent)<suspends> : void =
    var Remaining : int = Floor[QuestionTimeSeconds]
    loop:
        if (Remaining <= 0) { break }
        if (State := Registry.Get[Agent], Hud := Huds[Agent]):
            Hud.SetStatus(State.Score, State.Position + 1, Bank.Count(), Remaining)
        Sleep(1.0)
        set Remaining -= 1
```

Et on le lance **en parallèle** de l'attente de réponse, le tout dans une `race` globale :
```verse
PlayQuestion(Agent : agent)<suspends> : void =
    LoadQuestion(Agent)
    race:
        AwaitAnswer(Agent)
        block:
            RunCountdown(Agent)     # met à jour l'UI puis se termine à 0
            OnTimeout(Agent)
```

## 🔒 Anti double-déclenchement (robustesse)

Une zone peut émettre plusieurs fois (entrée/sortie rapides, plusieurs collisions). Protections :

1. **Verrou d'état** : `State.Locked` (déjà dans l'orchestrateur) — on ignore les réponses
   pendant une transition.
2. **Revalider l'état** à chaque évaluation : vérifier `not Finished`, index valide, etc.
3. **Désactiver/réactiver** la zone entre deux questions si nécessaire
   (`Zone.Disable()` / `Zone.Enable()` — vérifier l'API).

```verse
EvaluateAnswer(Agent : agent, Index : int) : void =
    if:
        State := Registry.Get[Agent]
        not State.Finished?
        not State.Locked?           # ← garde-fou central
        ...
    then:
        set State.Locked = true
        ...
```

## 🧭 Boucle de jeu par joueur (assemblage async)

Forme « pro » : chaque joueur a sa **boucle** qui enchaîne les questions jusqu'à la fin.

```verse
RunPlayerQuiz(Agent : agent)<suspends> : void =
    loop:
        if (State := Registry.Get[Agent], State.Finished?) { break }
        PlayQuestion(Agent)         # gère affichage + chrono + réponse
    ShowPlayerResult(Agent)
```

Lancée par joueur en **`branch`** depuis `InitPlayer` :
```verse
InitPlayer(Player : player) : void =
    ...
    branch:
        RunPlayerQuiz(Player)
```

> ⚠️ Mélanger l'**événementiel** (Subscribe sur les zones) et la **boucle async** (race/await)
> demande de la rigueur : choisis **un** modèle dominant. Deux styles cohérents :
> - **Événementiel pur** : tout part de `EvaluateAnswer` (pas de boucle) ; le chrono est un
>   `branch` par question relancé dans `LoadQuestion`.
> - **Async piloté** : la boucle `RunPlayerQuiz` orchestre ; les zones ne font que **signaler**
>   `AnswerReceived` consommé par `AwaitAnswer`.

## ✅ Bonnes pratiques concurrence
- Toute fonction qui `Sleep`/`Await`/`race` doit être `<suspends>`.
- Préfère `race`/`branch` à `spawn`.
- Termine proprement : `race` annule, pas de tâches « zombies ».
- Teste les **cas limites** : double entrée, déconnexion en pleine question, timeout exact.

→ Suite : [`10-code-complet.md`](./10-code-complet.md)
