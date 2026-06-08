# 05.12 — Génération procédurale de la map (selon N questions)

Le cœur de ta demande : une map **simple et épurée** (chemin droit + 4 portails par question)
qui se **génère automatiquement** selon le nombre de questions, et **facilement adaptable**.

## 🔑 Ce que Verse permet (et ne permet pas) au runtime

| Action | Possible au runtime ? | Conséquence pour la génération |
|--------|----------------------|--------------------------------|
| **Spawner des props** (`SpawnProp`) | ✅ Oui | On génère **sol + portails** par code. |
| **Spawner des devices** (zones, téléporteurs) | ❌ Non | On **n'utilise pas** de zones/téléporteurs. |
| **Lire la position du joueur** (`GetTransform().Translation`) | ✅ Oui | On **détecte la réponse** par la position (quelle lane). |
| **Téléporter un joueur** (`TeleportTo[]`) | ✅ Oui | On **avance/renvoie** le joueur **sans** device. |

> 💡 **Conséquence majeure** : on peut tout générer avec **un seul device** posé dans la map
> (le `quiz_manager`/builder) + 2 références de props. **Aucune** zone, **aucun** téléporteur à placer.
> Changer le nombre de questions **régénère** toute la map. C'est exactement « simple et adaptable ».

## 🧱 Le principe : un parcours = des segments calculés

```
   X (avant) ───────────────────────────────────────────────►
   [ SAS DEPART ] [ Segment Q1 ] [ Segment Q2 ] ... [ SALLE ARRIVEE ]
                       │ portails à GateRatio du segment
                       ▼
                  [A] [B] [C] [D]   ← 4 lanes le long de l'axe Y
```

Toute la géométrie se déduit de **quelques nombres** (la config) + **N** :
- `SegmentLength` : longueur d'une question (axe X).
- `LaneSpacing` : écart entre 2 portails (axe Y).
- `LaneCount` : nombre de réponses (4).
- `GateRatio` : où placer les portails dans le segment (0..1).
- `FloorTileSize`, `StartPad`, `EndPad`, `FloorMargin`.

**Formules** (identiques au générateur Python, voir [`13-generateur-externe.md`](./13-generateur-externe.md)) :
- `LaneY(i)   = (i - (LaneCount-1)/2) * LaneSpacing`
- `GateX(q)   = q * SegmentLength + SegmentLength * GateRatio`
- Sol = grille de dalles de `-StartPad` à `N*SegmentLength + EndPad`.

## 💻 `map_builder.verse` — le générateur runtime

```verse
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }

map_builder := class:
    # Assets de props (branchés en @editable depuis le device orchestrateur).
    FloorAsset : creative_prop_asset
    PortalAsset : creative_prop_asset

    # Paramètres de layout (mêmes valeurs que generate_quiz.py).
    SegmentLength : float = 1024.0
    LaneSpacing : float = 300.0
    LaneCount : int = 4
    FloorTileSize : float = 512.0
    GateRatio : float = 0.85
    StartPad : float = 768.0
    EndPad : float = 768.0
    FloorMargin : float = 200.0

    # --- Math de layout ---
    LaneY(I : int) : float =
        (I * 1.0 - (LaneCount * 1.0 - 1.0) / 2.0) * LaneSpacing

    GateX(Q : int) : float =
        Q * 1.0 * SegmentLength + SegmentLength * GateRatio

    SegmentStartX(Q : int) : float =
        Q * 1.0 * SegmentLength

    # Arrondi supérieur (isolé ici pour s'adapter facilement à l'API d'arrondi).
    CeilInt(F : float) : int =
        Whole := Floor[F]                       # Floor[] : float -> int (vérifier API)
        if (Whole * 1.0 < F) { Whole + 1 } else { Whole }

    # --- Construction ---
    Build(NumQuestions : int)<suspends> : void =
        SpawnFloor(NumQuestions)
        var Q : int = 0
        loop:
            if (Q >= NumQuestions) { break }
            SpawnSegmentPortals(Q)
            set Q += 1

    SpawnFloor(N : int)<suspends> : void =
        FloorWidth := LaneCount * 1.0 * LaneSpacing + 2.0 * FloorMargin
        XStart := -StartPad
        XEnd := N * 1.0 * SegmentLength + EndPad
        NX := CeilInt((XEnd - XStart) / FloorTileSize)
        NY := CeilInt(FloorWidth / FloorTileSize)
        var IX : int = 0
        loop:
            if (IX >= NX) { break }
            var IY : int = 0
            loop:
                if (IY >= NY) { break }
                FX := XStart + (IX * 1.0 + 0.5) * FloorTileSize
                FY := -FloorWidth / 2.0 + (IY * 1.0 + 0.5) * FloorTileSize
                SpawnAt(FloorAsset, vector3{X := FX, Y := FY, Z := 0.0})
                set IY += 1
            set IX += 1

    SpawnSegmentPortals(Q : int)<suspends> : void =
        var I : int = 0
        loop:
            if (I >= LaneCount) { break }
            SpawnAt(PortalAsset, vector3{X := GateX(Q), Y := LaneY(I), Z := 0.0})
            set I += 1

    SpawnAt(Asset : creative_prop_asset, Pos : vector3) : void =
        if (Spawned, _Result := SpawnProp(Asset, Pos, IdentityRotation())):
            # Spawned est un ?creative_prop ; on peut l'ignorer ici.

```

> ⚠️ **API à vérifier** : `SpawnProp(Asset, Position, Rotation)` renvoie `(?creative_prop, spawn_prop_result)`.
> `IdentityRotation()` (sinon `rotation{}`). `Floor[...]` (selon version : `Floor`, `Int[]`, `Round`).
> Garde `CeilInt`/`SpawnAt` **isolés** : si l'API change, tu corriges à **un seul endroit**.

## 🎯 Détection de la réponse par position (sans zone)

Comme on ne peut pas spawner de zones, on **lit la position** du joueur et on regarde **quelle
lane** il franchit à la ligne de portails du segment courant.

```verse
# Dans quiz_manager (variante procédurale)

Builder : map_builder = map_builder{ FloorAsset := ..., PortalAsset := ... }

# Lane la plus proche d'une position Y donnée (0..LaneCount-1).
NearestLane(Y : float) : int =
    var Best : int = 0
    var BestDist : float = 1000000.0
    var I : int = 0
    loop:
        if (I >= Builder.LaneCount) { break }
        D := Abs(Builder.LaneY(I) - Y)
        if (D < BestDist):
            set BestDist = D
            set Best = I
        set I += 1
    Best

Abs(F : float) : float = if (F < 0.0) { -F } else { F }

# Boucle de jeu par joueur : surveille la position, déclenche la réponse au passage du portail.
RunPlayerProcedural(Agent : agent)<suspends> : void =
    loop:
        if (S := Registry.Get[Agent], S.Finished?) { break }
        if:
            State := Registry.Get[Agent]
            not State.Locked?
            Char := Agent.GetFortCharacter[]
        then:
            Pos := Char.GetTransform().Translation
            if (Pos.X >= Builder.GateX(State.Position)):
                EvaluateAnswer(Agent, NearestLane(Pos.Y))
        Sleep(0.1)                      # polling 10x/s : largement suffisant
```

## 🔁 Avancer / renvoyer le joueur (sans téléporteur)

```verse
# Bonne réponse : on laisse le joueur continuer (la prochaine GateX est plus loin).
#   -> il suffit d'incrementer State.Position et de charger la question suivante.

# Mauvaise réponse : on le renvoie au debut du segment courant.
TeleportToSegmentStart(Agent : agent, Q : int) : void =
    BackX := Builder.SegmentStartX(Q) + 50.0
    if (Char := Agent.GetFortCharacter[]):
        if (Char.TeleportTo[vector3{X := BackX, Y := 0.0, Z := 100.0}, IdentityRotation()]) {}
```

Intégration dans l'évaluation (remplace les téléporteurs de la version « zones ») :
```verse
OnCorrect(Agent, State, Q):
    ... score ...
    set State.Position += 1
    if (State.Position >= Bank.Count()) { FinishPlayer(...) } else { LoadQuestion(Agent) }
    # pas de teleport : le joueur avance physiquement vers le segment suivant

OnIncorrect(Agent, State, Q):
    ... malus ...
    TeleportToSegmentStart(Agent, State.Position)   # on le renvoie au debut du segment
    set State.Locked = false
```

## 🚀 Lancer la génération au démarrage

```verse
# Dans quiz_manager.OnBegin :
OnBegin<override>()<suspends> : void =
    Builder.Build(Bank.Count())          # ← LA MAP EST GENEREE ICI, selon N = nb de questions
    Playspace := GetPlayspace()
    for (Player : Playspace.GetPlayers()):
        InitPlayer(Player)
    Playspace.PlayerAddedEvent().Subscribe(OnPlayerAdded)
    Playspace.PlayerRemovedEvent().Subscribe(OnPlayerRemoved)

# Dans InitPlayer, lancer la boucle de detection par joueur :
InitPlayer(Player : player) : void =
    ... (etat + UI) ...
    branch:
        RunPlayerProcedural(Player)
```

## 🎚️ Adapter en 10 secondes

| Je veux… | Je change… |
|----------|-----------|
| **Plus / moins de questions** | la **banque** (`MakeQuestions`) — la map se régénère seule. |
| Un parcours **plus long/aéré** | `SegmentLength`. |
| Des portails **plus écartés** | `LaneSpacing`. |
| **3 ou 5 réponses** au lieu de 4 | `LaneCount` (+ adapter la banque et l'UI). |
| Portails **plus tôt/tard** dans le segment | `GateRatio`. |
| Un **sas de départ** plus grand | `StartPad`. |

> ✅ **Aucune reconstruction manuelle** : tu touches un nombre, tu recompiles, la map change.

## 🧩 Options visuelles (épuré mais joli)

- **Portails colorés** : spawne 4 variantes de prop (ou applique une couleur) par lane,
  couleurs **assorties à l'UI** (A=rouge…D=jaune) — voir [`05-ui-verse.md`](./05-ui-verse.md).
- **Murs de lane** (optionnel) : spawne des cloisons entre les lanes pour forcer le choix.
- **Sol simple** : une seule galerie de dalle neutre = look épuré.
- **Arche** sur chaque portail (prop décoratif) pour l'effet « portail ».

## ⚖️ Cette approche vs l'approche « zones » (dossier `04`/`05`)

| | Procédurale (ici) | Zones + téléporteurs (manuelle) |
|---|-------------------|--------------------------------|
| Devices à placer | **1** (le manager) + 2 assets | 4 zones × N + téléporteurs |
| Génère selon N | ✅ automatique | ❌ duplication manuelle |
| Détection réponse | position du joueur | `AgentEntersEvent` |
| Avance joueur | `TeleportTo[]` (code) | téléporteur device |
| Idéal pour | **ta demande** (simple, adaptable) | petites maps fixes |

→ Suite : [`13-generateur-externe.md`](./13-generateur-externe.md)
