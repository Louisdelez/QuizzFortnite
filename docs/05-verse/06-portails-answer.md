# 05.06 — Les portails comme capteurs (`answer_portal.verse`)

On **encapsule** chaque portail (une `mutator_zone_device`) dans une abstraction propre qui
émet un événement Verse « le joueur X a choisi la réponse i ». L'orchestrateur n'a plus à
connaître les détails des zones : il écoute un **événement métier**.

## 🎯 Pourquoi encapsuler ?

- **Découplage** : `quiz_manager` raisonne en « réponse 0..3 », pas en « zone device ».
- **Réutilisable** : même abstraction pour mode Arène ou Parcours.
- **Testable** : on peut simuler un choix sans toucher aux zones.

## 💻 `answer_portal.verse`

```verse
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }

# Capte les franchissements d'UNE zone-portail et les relaie avec son index.
answer_portal := class:
    # La zone physique (branchée par l'orchestrateur).
    Zone : mutator_zone_device
    # L'index de réponse représenté par ce portail (0=A,1=B,2=C,3=D).
    Index : int
    # Événement émis quand un joueur franchit ce portail : (agent, index).
    SelectedEvent : event(tuple(agent, int)) = event(tuple(agent, int)){}

    # À appeler une fois au démarrage : branche l'écoute de la zone.
    Init() : void =
        Zone.AgentEntersEvent.Subscribe(OnEnter)

    OnEnter(Agent : agent) : void =
        SelectedEvent.Signal((Agent, Index))
```

> 🧩 `event(payload)` est un événement Verse que l'on **signale** (`Signal`) et auquel on
> **s'abonne** (`Subscribe`). Le payload `tuple(agent, int)` transporte « qui » et « quel index ».
> Vérifie la forme exacte (`event`/`Signal`/`Subscribe`) dans l'API de ta version.

## 🏗️ Construire les 4 portails depuis l'orchestrateur

Le `quiz_manager` reçoit les 4 zones en `@editable`, crée 4 `answer_portal` et écoute leur événement :

```verse
# Dans quiz_manager
@editable
PortalZones : []mutator_zone_device = array{}   # brancher les 4 zones dans l'ordre A,B,C,D

var Portals : []answer_portal = array{}

SetupPortals() : void =
    var Built : []answer_portal = array{}
    for (I -> Zone : PortalZones):
        Portal := answer_portal{ Zone := Zone, Index := I }
        Portal.Init()
        Portal.SelectedEvent.Subscribe(OnAnswerSelected)   # (agent, index)
        set Built += array{ Portal }
    set Portals = Built

# Gestionnaire central : un joueur a choisi un index.
OnAnswerSelected(Payload : tuple(agent, int)) : void =
    Agent := Payload(0)
    Index := Payload(1)
    EvaluateAnswer(Agent, Index)
```

## 🟢 Variante minimaliste (sans classe `event`)

Si la classe `event` n'est pas disponible/souhaitée, on peut s'abonner directement avec une
**fonction curryfiée** qui capture l'index (vu en [`01-fondamentaux-verse.md`](./01-fondamentaux-verse.md)) :

```verse
# Dans quiz_manager.OnBegin
for (Index -> Zone : PortalZones):
    Zone.AgentEntersEvent.Subscribe(MakePortalHandler(Index))

MakePortalHandler(Index : int)(Agent : agent) : void =
    EvaluateAnswer(Agent, Index)
```

> ✅ Les deux approches marchent. La version `answer_portal` est plus **« pro »** (découplage,
> réutilisable). La version curryfiée est plus **directe**. Choisis selon ton besoin.

## 🎨 Lier portails physiques et UI

- Place **4 mutator zones** devant 4 portails **colorés** (A=rouge…D=jaune).
- Branche-les **dans l'ordre A,B,C,D** sur `PortalZones`.
- L'UI (module `quiz_hud`) affiche chaque réponse avec **la même couleur** que son portail.
- Ainsi, deux joueurs sur des questions différentes utilisent les **mêmes** portails : chacun
  est évalué contre **sa** question (l'orchestrateur lit l'état du joueur).

## 🧱 Anti-rebond (un même joueur, plusieurs déclenchements)
Une zone peut émettre plusieurs fois (entrée/sortie rapides). On protège l'évaluation avec le
**verrou** `Locked` de l'état joueur (voir [`07-orchestrateur.md`](./07-orchestrateur.md) et
[`09-concurrence-async.md`](./09-concurrence-async.md)).

→ Suite : [`07-orchestrateur.md`](./07-orchestrateur.md)
