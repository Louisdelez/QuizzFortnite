# 05.10 — Code complet assemblé (tous les modules)

Tous les modules réunis, en style **événementiel** (le plus simple à faire fonctionner). Copie
chaque bloc dans le fichier correspondant, **compile**, branche les `@editable`, teste.

> ⚠️ **À vérifier avant compilation** : les noms d'API (modules `using`, `GetPlayerUI`,
> `AddWidget`, `text_block`, `canvas_slot`, `anchors`, `AgentEntersEvent`, `Teleport`, `event`,
> `Floor`, `GetRandomInt`, persistance) évoluent selon la version de Fortnite/UEFN. Corrige selon
> l'**API Reference** intégrée (voir `00-introduction/03-references.md`). Considère ce code comme
> une **architecture de référence** à adapter, pas un copier-coller magique.

---

## `quiz_types.verse`
```verse
using { /Verse.org/Simulation }

question := struct:
    Enonce : string
    Reponses : []string
    BonneReponse : int
    Points : int = 100
    Theme : string = ""

answer_result := enum:
    Correct
    Incorrect
    Timeout
```

---

## `question_bank.verse`
```verse
using { /Verse.org/Simulation }
using { /Verse.org/Random }

question_bank := class:
    Questions : []question = array{}

    Count() : int = Questions.Length

    GetQuestion(Index : int)<decides><transacts> : question =
        Questions[Index]

    DefaultOrder() : []int =
        for (I := 0..Count() - 1) { I }

    ShuffledOrder() : []int =
        var Order : []int = DefaultOrder()
        var I : int = Order.Length - 1
        loop:
            if (I <= 0) { break }
            if (J := GetRandomInt(0, I), A := Order[I], B := Order[J]):
                set Order[I] = B
                set Order[J] = A
            set I -= 1
        Order
```

---

## `player_state.verse`
```verse
using { /Verse.org/Simulation }

quiz_player_state := class:
    var Order : []int = array{}
    var Position : int = 0
    var Score : int = 0
    var Streak : int = 0
    var Errors : int = 0
    var Finished : logic = false
    var Locked : logic = false

    CurrentQuestionIndex()<decides><transacts> : int =
        Order[Position]

quiz_registry := class:
    var States : [agent]quiz_player_state = map{}

    Register(Agent : agent, State : quiz_player_state) : void =
        if (set States[Agent] = State) {}

    Get(Agent : agent)<decides><transacts> : quiz_player_state =
        States[Agent]

    Remove(Agent : agent) : void =
        var New : [agent]quiz_player_state = map{}
        for (K -> V : States, not K = Agent):
            if (set New[K] = V) {}
        set States = New

    AllStates() : []quiz_player_state =
        for (_ -> S : States) { S }
```

---

## `quiz_hud.verse`
```verse
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }

StringToMessage<localizes>(Value : string) : message = "{Value}"

quiz_hud := class:
    var MaybeCanvas : ?canvas = false
    var MaybeStatus : ?text_block = false
    var MaybeQuestion : ?text_block = false
    var MaybeAnswers : []text_block = array{}

    AnswerColors : []color = array{
        NamedColors.Red, NamedColors.Blue, NamedColors.Green, NamedColors.Yellow
    }

    Lettre(Index : int) : string =
        case (Index):
            0 => "A"
            1 => "B"
            2 => "C"
            3 => "D"
            _ => "?"

    Show(Player : player) : void =
        Status := text_block{ DefaultText := StringToMessage("Score : 0"), DefaultTextColor := NamedColors.White }
        Question := text_block{ DefaultText := StringToMessage("..."), DefaultTextColor := NamedColors.White }
        var Blocks : []text_block = array{}
        for (I := 0..3):
            Color := if (C := AnswerColors[I]) { C } else { NamedColors.White }
            set Blocks += array{ text_block{ DefaultText := StringToMessage(""), DefaultTextColor := Color } }

        Root := canvas:
            Slots := array:
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.5, Y := 0.07}, Maximum := vector2{X := 0.5, Y := 0.07} }
                    Alignment := vector2{X := 0.5, Y := 0.0}
                    SizeToContent := true
                    Widget := Status
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{X := 0.5, Y := 0.16}, Maximum := vector2{X := 0.5, Y := 0.16} }
                    Alignment := vector2{X := 0.5, Y := 0.0}
                    SizeToContent := true
                    Widget := Question
                # Pour A,B,C,D : ajoute 4 canvas_slot supplémentaires avec Widget := Blocks[i]
                # (positions Y échelonnées, ex. 0.78 / 0.84 / 0.90 / 0.96)

        if (PlayerUI := GetPlayerUI[Player]):
            PlayerUI.AddWidget(Root)

        set MaybeCanvas = option{ Root }
        set MaybeStatus = option{ Status }
        set MaybeQuestion = option{ Question }
        set MaybeAnswers = Blocks

    SetQuestion(Q : question) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Q.Enonce)) }
        for (I -> Block : MaybeAnswers):
            if (Texte := Q.Reponses[I]):
                Block.SetText(StringToMessage("{Lettre(I)} : {Texte}"))

    SetStatus(Score : int, Numero : int, Total : int, Secondes : int) : void =
        if (T := MaybeStatus?):
            T.SetText(StringToMessage("Score : {Score}   Question {Numero}/{Total}   Temps : {Secondes}s"))

    Hide(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := MaybeCanvas?):
            PlayerUI.RemoveWidget(C)
```

---

## `answer_portal.verse`
```verse
using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }

answer_portal := class:
    Zone : mutator_zone_device
    Index : int
    SelectedEvent : event(tuple(agent, int)) = event(tuple(agent, int)){}

    Init() : void =
        Zone.AgentEntersEvent.Subscribe(OnEnter)

    OnEnter(Agent : agent) : void =
        SelectedEvent.Signal((Agent, Index))
```

---

## `leaderboard.verse`
```verse
using { /Verse.org/Simulation }

score_entry := struct:
    Player : agent
    Score : int

leaderboard := class:
    var Scores : [agent]int = map{}

    Submit(Agent : agent, Score : int) : void =
        if (set Scores[Agent] = Score) {}

    Ranking() : []score_entry =
        var Entries : []score_entry = array{}
        for (Agent -> Score : Scores):
            set Entries += array{ score_entry{ Player := Agent, Score := Score } }
        SortByScoreDesc(Entries)

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

---

## `quiz_manager.verse` (orchestrateur — creative_device)
```verse
using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Playspaces }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }

quiz_manager := class(creative_device):

    @editable
    PortalZones : []mutator_zone_device = array{}
    @editable
    FeedbackTeleporter : teleporter_device = teleporter_device{}
    @editable
    StartTeleporter : teleporter_device = teleporter_device{}
    @editable
    Randomize : logic = true
    @editable
    QuestionTimeSeconds : float = 20.0
    @editable
    PenaltyPoints : int = 0
    @editable
    StreakBonus : int = 25

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

    SetupPortals() : void =
        var Built : []answer_portal = array{}
        for (I -> Zone : PortalZones):
            Portal := answer_portal{ Zone := Zone, Index := I }
            Portal.Init()
            Portal.SelectedEvent.Subscribe(OnAnswerSelected)
            set Built += array{ Portal }
        set Portals = Built

    OnAnswerSelected(Payload : tuple(agent, int)) : void =
        EvaluateAnswer(Payload(0), Payload(1))

    OnPlayerAdded(Player : player) : void = InitPlayer(Player)

    OnPlayerRemoved(Player : player) : void =
        Registry.Remove(Player)
        if (Hud := Huds[Player]) { Hud.Hide(Player) }
        var New : [agent]quiz_hud = map{}
        for (K -> V : Huds, not K = Player) { if (set New[K] = V) {} }
        set Huds = New

    InitPlayer(Player : player) : void =
        State := quiz_player_state{}
        if (Randomize?) { set State.Order = Bank.ShuffledOrder() }
        else { set State.Order = Bank.DefaultOrder() }
        Registry.Register(Player, State)
        Hud := quiz_hud{}
        Hud.Show(Player)
        if (set Huds[Player] = Hud) {}
        StartTeleporter.Teleport(Player)
        LoadQuestion(Player)

    LoadQuestion(Agent : agent) : void =
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            QIndex := State.CurrentQuestionIndex[]
            Q := Bank.GetQuestion[QIndex]
            Hud := Huds[Agent]
        then:
            Hud.SetQuestion(Q)
            Hud.SetStatus(State.Score, State.Position + 1, Bank.Count(), Floor[QuestionTimeSeconds])
            set State.Locked = false

    EvaluateAnswer(Agent : agent, Index : int) : void =
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            not State.Locked?
            QIndex := State.CurrentQuestionIndex[]
            Q := Bank.GetQuestion[QIndex]
        then:
            set State.Locked = true
            if (Index = Q.BonneReponse):
                OnCorrect(Agent, State, Q)
            else:
                OnIncorrect(Agent, State, Q)

    OnCorrect(Agent : agent, State : quiz_player_state, Q : question) : void =
        set State.Streak += 1
        set State.Score += Q.Points + (State.Streak - 1) * StreakBonus
        set State.Position += 1
        FeedbackTeleporter.Teleport(Agent)
        if (State.Position >= Bank.Count()):
            FinishPlayer(Agent, State)
        else:
            LoadQuestion(Agent)

    OnIncorrect(Agent : agent, State : quiz_player_state, Q : question) : void =
        set State.Streak = 0
        set State.Errors += 1
        set State.Score = Max(0, State.Score - PenaltyPoints)
        FeedbackTeleporter.Teleport(Agent)
        set State.Locked = false

    FinishPlayer(Agent : agent, State : quiz_player_state) : void =
        set State.Finished = true
        Board.Submit(Agent, State.Score)
        if (Hud := Huds[Agent]):
            Hud.SetStatus(State.Score, Bank.Count(), Bank.Count(), 0)
        Print("Quiz termine - score {State.Score}")

    Max(A : int, B : int) : int = if (A > B) { A } else { B }

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

> 🔧 `Floor[...]` est faillible selon l'API ; si erreur, encapsule-le dans un `if` ou utilise la
> bonne fonction d'arrondi de ta version (`Floor`, `Round`, `Int[]`…).

## ✅ Branchements après compilation (`quiz_manager` dans la map)
- `PortalZones` → les **4 mutator zones** (ordre A,B,C,D, couleurs assorties à l'UI).
- `FeedbackTeleporter` → téléporteur de recentrage/feedback.
- `StartTeleporter` → point de départ (optionnel).
- Règle `Randomize`, `QuestionTimeSeconds`, `PenaltyPoints`, `StreakBonus`.

→ Suite : [`11-debug-compilation.md`](./11-debug-compilation.md)
