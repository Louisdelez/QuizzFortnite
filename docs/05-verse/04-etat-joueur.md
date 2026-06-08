# 05.04 — État par joueur & registre

Module `player_state.verse` : suivre **chaque joueur** indépendamment (progression, score, série).
C'est ce qui fait la différence entre un gadget et un **système multijoueur pro**.

## 🧍 La classe d'état (`quiz_player_state`)

Une **classe** (référence) : on mute ses champs in-place sans la re-stocker dans la map.

```verse
using { /Verse.org/Simulation }

quiz_player_state := class:
    # Ordre des questions pour CE joueur (indices dans la banque).
    var Order : []int = array{}
    # Position courante dans Order (0..Order.Length).
    var Position : int = 0
    # Score cumulé.
    var Score : int = 0
    # Série de bonnes réponses consécutives (pour bonus/combo).
    var Streak : int = 0
    # Nombre d'erreurs commises.
    var Errors : int = 0
    # Le joueur a-t-il terminé le quiz ?
    var Finished : logic = false
    # Verrou anti double-validation pendant une transition.
    var Locked : logic = false

    # Index réel de la question courante dans la banque (faillible).
    CurrentQuestionIndex()<decides><transacts> : int =
        Order[Position]
```

## 🗂️ Le registre (`quiz_registry`)

Centralise tous les états dans une **map `[agent]quiz_player_state`** : lookup O(1), **itérable**
(nécessaire pour le classement).

```verse
quiz_registry := class:
    # La map des états, clé = agent (joueur).
    var States : [agent]quiz_player_state = map{}

    # Enregistre/écrase l'état d'un joueur.
    Register(Agent : agent, State : quiz_player_state) : void =
        if (set States[Agent] = State) {}

    # Récupère l'état d'un joueur (faillible).
    Get(Agent : agent)<decides><transacts> : quiz_player_state =
        States[Agent]

    # Retire un joueur (reconstruit la map sans cette clé).
    Remove(Agent : agent) : void =
        var NewStates : [agent]quiz_player_state = map{}
        for (Key -> Value : States, not Key = Agent):
            if (set NewStates[Key] = Value) {}
        set States = NewStates

    # Tous les états (pour le classement).
    AllStates() : []quiz_player_state =
        for (_ -> State : States) { State }
```

## ⚖️ `[agent]map` vs `weak_map` — choix d'architecture

| Critère | `[agent]quiz_player_state` (choisi) | `weak_map(agent, ...)` |
|---------|-------------------------------------|------------------------|
| Lookup O(1) | ✅ | ✅ |
| **Itérable** (classement) | ✅ | ❌ (non listable) |
| Nettoyage auto à la déco | ❌ (manuel via `PlayerRemovedEvent`) | ✅ automatique |
| Persistance entre parties | non | possible (variable de module) |

➡️ On choisit la **map itérable** pour pouvoir **classer les joueurs**, et on gère le **nettoyage
manuellement**. (Pour des stats **persistantes** entre sessions, voir [`08-score-classement.md`](./08-score-classement.md).)

## 🔌 Cycle de vie d'un joueur (join / leave)

L'orchestrateur câble l'arrivée et le départ :

```verse
# Dans quiz_manager.OnBegin :
Playspace := GetPlayspace()
# Joueurs déjà présents
for (Player : Playspace.GetPlayers()):
    InitPlayer(Player)
# Joueurs qui arrivent / partent
Playspace.PlayerAddedEvent().Subscribe(OnPlayerAdded)
Playspace.PlayerRemovedEvent().Subscribe(OnPlayerRemoved)
```

```verse
OnPlayerAdded(Player : player) : void =
    InitPlayer(Player)

OnPlayerRemoved(Player : player) : void =
    # Nettoyage : on retire l'état ET l'UI du joueur.
    Registry.Remove(Player)
    if (Hud := Huds[Player]):
        Hud.Hide(Player)
    RemoveHud(Player)
```

```verse
InitPlayer(Player : player) : void =
    State := quiz_player_state{}
    if (Randomize?):
        set State.Order = Bank.ShuffledOrder()
    else:
        set State.Order = Bank.DefaultOrder()
    Registry.Register(Player, State)
    # (UI + première question : voir orchestrateur)
```

> 🧹 **Toujours nettoyer** au départ du joueur : sinon les états « fantômes » s'accumulent et
> dégradent les performances sur la durée (sessions longues, beaucoup de joueurs).

## 🧠 Pourquoi ce design est « pro »
- **Indépendance** : chaque joueur a sa progression, son score, son ordre de questions.
- **O(1)** : accès instantané à l'état d'un joueur depuis n'importe quel module.
- **Itérable** : classement, statistiques, fin de partie globale possibles.
- **Sans fuite** : nettoyage déterministe au départ.

→ Suite : [`05-ui-verse.md`](./05-ui-verse.md)
