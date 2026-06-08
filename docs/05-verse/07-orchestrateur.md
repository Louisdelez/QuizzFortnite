# 05.07 — L'orchestrateur (`quiz_manager.verse`)

Le **chef d'orchestre** : le seul `creative_device` posé dans la map. Il relie portails, état
joueur, UI, banque, téléporteurs et fin de partie. Il **coordonne** sans contenir les données.

## 🧩 Squelette & `@editable`

```verse
using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Playspaces }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

quiz_manager := class(creative_device):

    # --- Devices physiques (à brancher dans Details) ---
    @editable
    PortalZones : []mutator_zone_device = array{}     # 4 zones, ordre A,B,C,D
    @editable
    FeedbackTeleporter : teleporter_device = teleporter_device{}   # recentre/feedback (optionnel)
    @editable
    StartTeleporter : teleporter_device = teleporter_device{}      # placement initial (optionnel)

    # --- Réglages de jeu ---
    @editable
    Randomize : logic = true
    @editable
    QuestionTimeSeconds : float = 20.0
    @editable
    PenaltyPoints : int = 0          # points perdus sur mauvaise réponse (0 = aucun)
    @editable
    StreakBonus : int = 25           # bonus par bonne réponse consécutive

    # --- Modules ---
    Bank : question_bank = question_bank{ Questions := MakeQuestions() }
    Registry : quiz_registry = quiz_registry{}
    Board : leaderboard = leaderboard{}
    var Portals : []answer_portal = array{}
    var Huds : [agent]quiz_hud = map{}

    OnBegin<override>()<suspends> : void =
        SetupPortals()
        Playspace := GetPlayspace()
        for (Player : Playspace.GetPlayers()):
            InitPlayer(Player)
        Playspace.PlayerAddedEvent().Subscribe(OnPlayerAdded)
        Playspace.PlayerRemovedEvent().Subscribe(OnPlayerRemoved)
```

## 🔌 Initialisation d'un joueur

```verse
    InitPlayer(Player : player) : void =
        # 1. État
        State := quiz_player_state{}
        if (Randomize?) { set State.Order = Bank.ShuffledOrder() }
        else { set State.Order = Bank.DefaultOrder() }
        Registry.Register(Player, State)
        # 2. UI
        Hud := quiz_hud{}
        Hud.Show(Player)
        if (set Huds[Player] = Hud) {}
        # 3. Placement initial (optionnel)
        StartTeleporter.Teleport(Player)
        # 4. Première question
        LoadQuestion(Player)

    OnPlayerAdded(Player : player) : void = InitPlayer(Player)

    OnPlayerRemoved(Player : player) : void =
        Registry.Remove(Player)
        if (Hud := Huds[Player]) { Hud.Hide(Player) }
        var New : [agent]quiz_hud = map{}
        for (K -> V : Huds, not K = Player) { if (set New[K] = V) {} }
        set Huds = New
```

## 🖥️ Charger / afficher la question courante

```verse
    LoadQuestion(Agent : agent) : void =
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            QIndex := State.CurrentQuestionIndex[]
            Q := Bank.GetQuestion[QIndex]
            Hud := Huds[Agent]
        then:
            Hud.SetQuestion(Q)
            Hud.SetStatus(State.Score, State.Position + 1, Bank.Count(), Round[QuestionTimeSeconds])
            set State.Locked = false
            # (Optionnel) démarrer le chrono de cette question — voir module concurrence
```

## ⚖️ Évaluer une réponse (cœur de la logique)

```verse
    # Appelée par answer_portal quand un joueur franchit le portail d'index Index.
    EvaluateAnswer(Agent : agent, Index : int) : void =
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            not State.Locked?                       # anti double-validation
            QIndex := State.CurrentQuestionIndex[]
            Q := Bank.GetQuestion[QIndex]
        then:
            set State.Locked = true                 # verrouille le temps de la transition
            if (Index = Q.BonneReponse):
                OnCorrect(Agent, State, Q)
            else:
                OnIncorrect(Agent, State, Q)

    OnCorrect(Agent : agent, State : quiz_player_state, Q : question) : void =
        set State.Streak += 1
        set State.Score += Q.Points + (State.Streak - 1) * StreakBonus
        set State.Position += 1
        FeedbackTeleporter.Teleport(Agent)          # recentre / effet "bonne reponse"
        if (State.Position >= Bank.Count()):
            FinishPlayer(Agent, State)
        else:
            LoadQuestion(Agent)                      # débloque via Locked=false dans LoadQuestion

    OnIncorrect(Agent : agent, State : quiz_player_state, Q : question) : void =
        set State.Streak = 0
        set State.Errors += 1
        set State.Score = Max(0, State.Score - PenaltyPoints)
        FeedbackTeleporter.Teleport(Agent)          # renvoie / effet "mauvaise reponse"
        set State.Locked = false                    # on reste sur la MÊME question
        # (Optionnel) ré-afficher un feedback "Faux" dans l'UI
```

## 🏁 Fin de partie (par joueur)

```verse
    FinishPlayer(Agent : agent, State : quiz_player_state) : void =
        set State.Finished = true
        Board.Submit(Agent, State.Score)
        if (Hud := Huds[Agent]):
            Hud.SetStatus(State.Score, Bank.Count(), Bank.Count(), 0)
        Print("Joueur termine - score {State.Score}")
        # Ici : téléporter vers la salle de victoire, déclencher VFX, etc.
```

## 🧰 Utilitaires

```verse
    Max(A : int, B : int) : int = if (A > B) { A } else { B }
    Round(F : float) : int = Floor[F]    # arrondi simple (vérifier API: Floor/Round)
```

## 🛣️ Mode Parcours (variante)

Pour le visuel « route » de ton idée initiale, deux options :
1. **Un `quiz_manager` par palier** : chaque instance gère ses 4 zones et **une seule** question
   (index fixe), et téléporte vers le palier suivant sur bonne réponse. L'état/score restent
   gérés par un **registre partagé** (module séparé / device singleton).
2. **Un seul `quiz_manager`** qui connaît **tous** les paliers : `@editable` = liste de groupes
   de 4 zones + l'index de question de chaque palier ; `FeedbackTeleporter` devient « téléporteur
   du palier suivant ». La progression suit alors la **position physique** (par joueur).

> Dans les deux cas, les **modules** (types, banque, état, classement) sont **identiques**.
> Seul l'orchestrateur change de câblage. C'est l'intérêt de l'architecture modulaire.

→ Suite : [`08-score-classement.md`](./08-score-classement.md)
