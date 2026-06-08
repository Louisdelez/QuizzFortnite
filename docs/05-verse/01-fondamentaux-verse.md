# 05.01 — Fondamentaux Verse pour un système pro

Les bases du langage **orientées architecture pro**. Si tu débutes en Verse, lis aussi les
exemples au fil des modules.

## 📦 Les modules à importer

Un système pro touche aux devices, aux joueurs, à l'UI, à l'aléatoire et à la concurrence :

```verse
using { /Fortnite.com/Devices }                      # mutator_zone_device, teleporter_device...
using { /Fortnite.com/Characters }                   # fort_character, agent
using { /Fortnite.com/Playspaces }                   # GetPlayspace, PlayerAdded/RemovedEvent
using { /Fortnite.com/UI }                           # GetPlayerUI, player_ui
using { /UnrealEngine.com/Temporary/UI }             # canvas, text_block, button_loud...
using { /UnrealEngine.com/Temporary/SpatialMath }    # vector2, anchors (positionnement UI)
using { /Verse.org/Simulation }                      # Sleep, events, base
using { /Verse.org/Random }                          # GetRandomInt (mélange)
using { /Verse.org/Colors }                          # NamedColors (couleurs UI)
using { /UnrealEngine.com/Temporary/Diagnostics }    # Print (debug)
```

> ⚠️ Les **chemins de modules** et noms d'API peuvent varier selon la version de Fortnite/UEFN.
> Vérifie dans l'**API Reference Verse** intégrée (voir `00-introduction/03-references.md`).

## 🔑 Concepts clés (niveau pro)

### `class` vs `struct`
| | `struct` | `class` |
|---|---------|---------|
| Sémantique | **valeur** (copiée) | **référence** (partagée) |
| Champs `var` mutables in-place | non pratique | ✅ oui |
| Usage ici | `question` (donnée immuable) | `quiz_player_state` (état mutable partagé) |

```verse
# Donnée immuable → struct
question := struct:
    Enonce : string
    BonneReponse : int

# État mutable et partagé par référence → class
quiz_player_state := class:
    var Score : int = 0
```

### Échec (`<decides>`) et accès faillible
L'accès à un tableau/map peut **échouer** (index/clé absent). On l'utilise dans un **contexte d'échec** :
```verse
if (Q := Bank.GetQuestion[QIndex]):   # [] = appel faillible
    Print("OK : {Q.Enonce}")
else:
    Print("Index invalide")
```
- Une fonction qui peut échouer porte `<decides>` et **s'appelle avec `[]`** : `Get[Agent]`.
- `<transacts>` indique qu'elle peut être annulée proprement dans une transaction.

### `option` (valeur peut-être absente)
Pour les références d'UI créées au runtime :
```verse
var MaybeText : ?text_block = false      # ? = optionnel, false = absent
if (T := MaybeText?):                     # ?  = déballe l'option
    T.SetText(Msg)
set MaybeText = option{MonTextBlock}      # option{...} = présent
```

### `message` (texte UI localisable)
Les widgets/billboards attendent un `message`, pas une `string` :
```verse
StringToMessage<localizes>(Value : string) : message = "{Value}"
```

### Fonctions curryfiées (pour capturer un index)
Pour savoir **quel** portail a été franchi, on capture son index :
```verse
MakeHandler(Index : int)(Agent : agent) : void = OnAnswer(Index, Agent)
# MakeHandler(2) renvoie une fonction (agent)->void que Subscribe peut appeler
```

## 🧵 Concurrence (aperçu)

| Expression | Rôle |
|-----------|------|
| `spawn{ F() }` | Lance une tâche async **sans attendre** (escape hatch, à éviter si possible). |
| `branch:` | Comme spawn mais **structuré** : préférer à spawn. |
| `sync:` | Lance plusieurs tâches **en parallèle**, attend **toutes**. |
| `race:` | Lance plusieurs tâches, garde la **première finie**, **annule** les autres. |
| `Sleep(Secondes)` | Pause asynchrone (dans un contexte `<suspends>`). |

Exemple « chrono qui annule l'attente d'une réponse » (détaillé en [`09`](./09-concurrence-async.md)) :
```verse
race:
    AttendreReponse(Agent)      # se termine quand le joueur répond
    block:                       # ... ou le temps s'écoule
        Sleep(QuestionTimeSeconds)
        OnTimeout(Agent)
```

## 🧹 Bonnes pratiques pros

- **Une responsabilité par module** (voir [`00-architecture-pro.md`](./00-architecture-pro.md)).
- **Pas de variables joueur éparpillées** : tout dans une **map** centralisée + nettoyage à la déco.
- **Événementiel > polling** : `Subscribe`/`Await`, pas de boucles qui sondent chaque frame.
- **Noms explicites**, commentaires utiles, fonctions courtes.
- **Compiler souvent** (`Ctrl+Shift+B`) pour isoler les erreurs.

→ Suite : [`02-projet-structure.md`](./02-projet-structure.md)
