using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Playspaces }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ============================================================
#  quiz_manager.verse — ORCHESTRATEUR (le seul device a poser)
#  - genere la map en Verse (map_builder) selon le nombre de questions
#  - gere l'etat par joueur, l'UI, la detection par position, le score
# ============================================================

quiz_manager := class(creative_device):

    # --- Assets de props pour la generation (a brancher dans Details) ---
    @editable
    FloorAsset : creative_prop_asset = creative_prop_asset{}
    @editable
    PortalAsset : creative_prop_asset = creative_prop_asset{}

    # --- Reglages de jeu ---
    @editable
    Randomize : logic = true          # melange l'ordre des questions par joueur
    @editable
    StreakBonus : int = 25            # bonus par bonne reponse consecutive
    @editable
    PollSeconds : float = 0.1         # frequence de detection de position

    # --- Modules ---
    Builder : map_builder = map_builder{ FloorAsset := FloorAsset, PortalAsset := PortalAsset }
    Bank : question_bank = question_bank{ Questions := MakeQuestions() }
    Registry : quiz_registry = quiz_registry{}
    Board : leaderboard = leaderboard{}
    var Huds : [agent]quiz_hud = map{}

    # ===== Demarrage =====
    OnBegin<override>()<suspends> : void =
        # 1) La map se construit ICI, en Verse, selon le nombre de questions.
        Builder.Build(Bank.Count())

        # 2) Joueurs presents + a venir.
        Playspace := GetPlayspace()
        for (Player : Playspace.GetPlayers()):
            InitPlayer(Player)
        Playspace.PlayerAddedEvent().Subscribe(OnPlayerAdded)
        Playspace.PlayerRemovedEvent().Subscribe(OnPlayerRemoved)

    OnPlayerAdded(Player : player) : void =
        InitPlayer(Player)

    OnPlayerRemoved(Player : player) : void =
        Registry.Remove(Player)
        if (Hud := Huds[Player]) { Hud.Hide(Player) }
        var New : [agent]quiz_hud = map{}
        for (K -> V : Huds, not K = Player) { if (set New[K] = V) {} }
        set Huds = New

    # ===== Initialisation d'un joueur =====
    InitPlayer(Player : player) : void =
        State := quiz_player_state{}
        if (Randomize?) { set State.Order = Bank.ShuffledOrder() }
        else { set State.Order = Bank.DefaultOrder() }
        Registry.Register(Player, State)

        Hud := quiz_hud{}
        Hud.Show(Player)
        if (set Huds[Player] = Hud) {}

        # Place le joueur au depart EN VERSE (aucun spawn pad a positionner).
        if (Char := Player.GetFortCharacter[]):
            if (Char.TeleportTo[Builder.StartPosition(), IdentityRotation()]) {}

        LoadQuestion(Player)
        # Lance la boucle de detection par position pour ce joueur.
        branch:
            RunPlayer(Player)

    # ===== Affichage de la question courante =====
    LoadQuestion(Agent : agent) : void =
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            QIndex := State.CurrentQuestionIndex[]
            Q := Bank.GetQuestion[QIndex]
            Hud := Huds[Agent]
        then:
            Hud.SetQuestion(Q)
            Hud.SetStatus(State.Score, State.Position + 1, Bank.Count())
            set State.Locked = false

    # ===== Boucle de detection (position du joueur vs ligne de portails) =====
    RunPlayer(Agent : agent)<suspends> : void =
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
            Sleep(PollSeconds)

    # Lane la plus proche d'une position Y (0..LaneCount-1).
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

    # ===== Evaluation d'une reponse =====
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
                OnCorrect(Agent, State, Q, Index)
            else:
                OnIncorrect(Agent, State, Q)

    OnCorrect(Agent : agent, State : quiz_player_state, Q : question, Index : int) : void =
        SegmentBefore := State.Position
        set State.Streak += 1
        set State.Score += Q.Points + (State.Streak - 1) * StreakBonus
        # Feedback "CORRECT !" + impulsion du portail (pur Verse, async).
        if (Hud := Huds[Agent]) { spawn { Hud.ShowFeedback(true) } }
        spawn { Builder.PulsePortal(SegmentBefore, Index) }
        set State.Position += 1
        if (State.Position >= Bank.Count()):
            FinishPlayer(Agent, State)
        else:
            LoadQuestion(Agent)   # le joueur continue d'avancer vers le segment suivant

    OnIncorrect(Agent : agent, State : quiz_player_state, _Q : question) : void =
        set State.Streak = 0
        if (Hud := Huds[Agent]) { spawn { Hud.ShowFeedback(false) } }
        # On renvoie le joueur au debut du segment courant.
        TeleportToSegmentStart(Agent, State.Position)
        if (Hud := Huds[Agent]):
            Hud.SetStatus(State.Score, State.Position + 1, Bank.Count())
        set State.Locked = false

    TeleportToSegmentStart(Agent : agent, Q : int) : void =
        BackX := Builder.SegmentStartX(Q) + 50.0
        if (Char := Agent.GetFortCharacter[]):
            if (Char.TeleportTo[vector3{ X := BackX, Y := 0.0, Z := 100.0 }, IdentityRotation()]) {}

    FinishPlayer(Agent : agent, State : quiz_player_state) : void =
        set State.Finished = true
        Board.Submit(Agent, State.Score)
        Rank := Board.RankOf(Agent)
        Total := Board.Size()
        if (Hud := Huds[Agent]):
            Hud.ShowEndScreen(State.Score, Rank, Total)
        Print("Quiz termine - score {State.Score} - rang {Rank}/{Total}")

    # ===== Banque de questions (EDITE CETTE LISTE) =====
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
            question:
                Enonce := "Quelle est la monnaie premium ?"
                Reponses := array{"Or", "V-Bucks", "Credits", "Gemmes"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Quel objet fait danser les ennemis touches ?"
                Reponses := array{"Boogie Bomb", "Grenade", "Piege", "Mur"}
                BonneReponse := 0
                Points := 150
