using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Playspaces }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ============================================================
#  quiz_manager.verse — ORCHESTRATEUR (le seul device a poser)
#  Genere la map en Verse, gere etat/UI/detection/score/chrono,
#  feedback, bonus de rapidite et classement final partage.
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
    QuestionTimeSeconds : float = 20.0 # temps par question
    @editable
    MaxSpeedBonus : int = 100         # bonus max si reponse instantanee
    @editable
    PollSeconds : float = 0.1         # frequence detection + chrono

    # --- Modules ---
    Builder : map_builder = map_builder{ FloorAsset := FloorAsset, PortalAsset := PortalAsset }
    Bank : question_bank = question_bank{ Questions := MakeQuestions() }
    Registry : quiz_registry = quiz_registry{}
    Board : leaderboard = leaderboard{}
    var Huds : [agent]quiz_hud = map{}
    var FinishedCount : int = 0

    # ===== Demarrage =====
    OnBegin<override>()<suspends> : void =
        # La map se construit ICI, en Verse, selon le nombre de questions.
        Builder.Build(Bank.Count())

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
        branch:
            RunPlayer(Player)

    # ===== Affichage + (re)demarrage du chrono de la question courante =====
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
            set State.TimeLeft = QuestionTimeSeconds
            set State.LastShownSecond = -1
            Hud.SetTimer(Builder.CeilInt(QuestionTimeSeconds))
            set State.Locked = false

    # ===== Boucle par joueur : chrono + detection par position =====
    RunPlayer(Agent : agent)<suspends> : void =
        loop:
            if (S := Registry.Get[Agent], S.Finished?) { break }
            if:
                State := Registry.Get[Agent]
                not State.Locked?
                Char := Agent.GetFortCharacter[]
            then:
                # 1) Chrono
                set State.TimeLeft -= PollSeconds
                UpdateTimerHud(Agent, State)
                if (State.TimeLeft <= 0.0):
                    OnTimeout(Agent, State)
                else:
                    # 2) Detection de la lane franchie
                    Pos := Char.GetTransform().Translation
                    if (Pos.X >= Builder.GateX(State.Position)):
                        EvaluateAnswer(Agent, NearestLane(Pos.Y))
            Sleep(PollSeconds)

    UpdateTimerHud(Agent : agent, State : quiz_player_state) : void =
        Sec := Builder.CeilInt(State.TimeLeft)
        if (not Sec = State.LastShownSecond):
            set State.LastShownSecond = Sec
            if (Hud := Huds[Agent]):
                Hud.SetTimer(Sec)

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

    # Bonus de rapidite : proportionnel au temps restant.
    SpeedBonusFor(TimeLeft : float) : int =
        if (QuestionTimeSeconds > 0.0):
            Ratio := TimeLeft / QuestionTimeSeconds
            Clamped := if (Ratio > 1.0) { 1.0 } else { if (Ratio < 0.0) { 0.0 } else { Ratio } }
            Builder.CeilInt(Clamped * (MaxSpeedBonus * 1.0))
        else:
            0

    # ===== Evaluation =====
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
                OnIncorrect(Agent, State)

    OnCorrect(Agent : agent, State : quiz_player_state, Q : question, Index : int) : void =
        SegmentBefore := State.Position
        set State.Streak += 1
        Speed := SpeedBonusFor(State.TimeLeft)
        Gain := Q.Points + (State.Streak - 1) * StreakBonus + Speed
        set State.Score += Gain
        if (Hud := Huds[Agent]) { spawn { Hud.Flash("CORRECT !  +{Gain}") } }
        spawn { Builder.PulsePortal(SegmentBefore, Index) }
        set State.Position += 1
        if (State.Position >= Bank.Count()):
            FinishPlayer(Agent, State)
        else:
            LoadQuestion(Agent)

    OnIncorrect(Agent : agent, State : quiz_player_state) : void =
        set State.Streak = 0
        if (Hud := Huds[Agent]) { spawn { Hud.Flash("FAUX !") } }
        TeleportToSegmentStart(Agent, State.Position)
        if (Hud := Huds[Agent]) { Hud.SetStatus(State.Score, State.Position + 1, Bank.Count()) }
        # On recharge la meme question (remet le chrono a zero) puis deverrouille.
        LoadQuestion(Agent)

    OnTimeout(Agent : agent, State : quiz_player_state) : void =
        set State.Locked = true
        set State.Streak = 0
        if (Hud := Huds[Agent]) { spawn { Hud.Flash("TEMPS ECOULE !") } }
        TeleportToSegmentStart(Agent, State.Position)
        LoadQuestion(Agent)   # remet le chrono et deverrouille

    TeleportToSegmentStart(Agent : agent, Q : int) : void =
        BackX := Builder.SegmentStartX(Q) + 50.0
        if (Char := Agent.GetFortCharacter[]):
            if (Char.TeleportTo[vector3{ X := BackX, Y := 0.0, Z := 100.0 }, IdentityRotation()]) {}

    # ===== Fin de partie =====
    FinishPlayer(Agent : agent, State : quiz_player_state) : void =
        set State.Finished = true
        set FinishedCount += 1
        Board.Submit(Agent, State.Score)
        Rank := Board.RankOf(Agent)
        Total := Board.Size()
        if (Hud := Huds[Agent]):
            Hud.ShowEndScreen(State.Score, Rank, Total)
        Print("Quiz termine - score {State.Score} - rang {Rank}/{Total}")
        # Quand tout le monde a fini : classement final partage a tous.
        if (FinishedCount >= PlayerCount()):
            BroadcastLeaderboard()

    PlayerCount() : int =
        var N : int = 0
        for (_ : GetPlayspace().GetPlayers()) { set N += 1 }
        N

    BroadcastLeaderboard() : void =
        Lines := Board.RankingLines()
        for (Player : GetPlayspace().GetPlayers()):
            if (Hud := Huds[Player]):
                Hud.ShowLeaderboard("CLASSEMENT FINAL", Lines)

    # ===== Banque de questions (25) — EDITE CETTE LISTE =====
    MakeQuestions() : []question =
        array:
            question:
                Enonce := "Combien de joueurs max en Battle Royale classique ?"
                Reponses := array{"50", "100", "150", "200"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Quel est le vehicule qui amene les joueurs au debut ?"
                Reponses := array{"Battle Bus", "Sky Van", "War Jet", "Combat Cab"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Comment s'appelle la monnaie premium de Fortnite ?"
                Reponses := array{"Or", "V-Bucks", "Credits", "Gemmes"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Quel materiau de construction est le plus resistant ?"
                Reponses := array{"Bois", "Pierre", "Metal", "Verre"}
                BonneReponse := 2
                Points := 100
            question:
                Enonce := "Comment appelle-t-on le danger qui reduit la zone ?"
                Reponses := array{"La Brume", "La Tempete", "Le Vide", "Le Mur"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Quel objet permet de planer apres le saut du bus ?"
                Reponses := array{"Parachute", "Jetpack", "Aile", "Ballon"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Comment appelle-t-on l'animal en metal plein de loot ?"
                Reponses := array{"Lama", "Cochon", "Renard", "Loup"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Quel mode oppose tous les joueurs sans coequipiers ?"
                Reponses := array{"Solo", "Duo", "Trio", "Escouade"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Combien de joueurs dans une Escouade classique ?"
                Reponses := array{"2", "3", "4", "5"}
                BonneReponse := 2
                Points := 100
            question:
                Enonce := "Quel item fait danser les ennemis touches ?"
                Reponses := array{"Boogie Bomb", "Bombe collante", "Grenade", "Piege"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "Quel vehicule permet de reanimer un equipier elimine ?"
                Reponses := array{"Reboot Van", "Battle Bus", "Lama", "Coffre"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "En quelle annee est sorti Fortnite Battle Royale ?"
                Reponses := array{"2015", "2016", "2017", "2019"}
                BonneReponse := 2
                Points := 150
            question:
                Enonce := "Comment s'appelle la progression saisonniere a recompenses ?"
                Reponses := array{"Battle Pass", "Season Card", "Loot Path", "Tier List"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "Quel consommable restaure vie ET bouclier au maximum ?"
                Reponses := array{"Mini-bouclier", "Bandage", "Chug Jug", "Pomme"}
                BonneReponse := 2
                Points := 150
            question:
                Enonce := "Quelle est la couleur d'un objet de rarete Legendaire ?"
                Reponses := array{"Vert", "Bleu", "Violet", "Orange"}
                BonneReponse := 3
                Points := 150
            question:
                Enonce := "Quel lieu emblematique du Chapitre 1 etait tres frequente ?"
                Reponses := array{"Tilted Towers", "Calme Plaines", "Petit Bois", "Mont Doux"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "Comment s'appelle l'objet violet geant surnomme Kevin ?"
                Reponses := array{"Le Cube", "La Sphere", "L'Orbe", "Le Prisme"}
                BonneReponse := 0
                Points := 200
            question:
                Enonce := "Quelle rarete est associee a la couleur bleue ?"
                Reponses := array{"Commune", "Peu commune", "Rare", "Epique"}
                BonneReponse := 2
                Points := 150
            question:
                Enonce := "Quel element du decor sert souvent a se cacher au sol ?"
                Reponses := array{"Buisson", "Rocher", "Tonneau", "Caisse"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Comment s'appellent les coffres lumineux d'armes ?"
                Reponses := array{"Coffres", "Banques", "Casiers", "Soutes"}
                BonneReponse := 0
                Points := 100
            question:
                Enonce := "Quelle action permet de recolter des materiaux ?"
                Reponses := array{"Tirer", "Miner avec la pioche", "Courir", "Nager"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Combien de joueurs dans un Duo ?"
                Reponses := array{"1", "2", "3", "4"}
                BonneReponse := 1
                Points := 100
            question:
                Enonce := "Quel type de partie permet de creer ses propres maps ?"
                Reponses := array{"Creatif", "Sauver le Monde", "Arene", "Ligue"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "Quelle rarete est la plus basse de base ?"
                Reponses := array{"Commune", "Rare", "Epique", "Legendaire"}
                BonneReponse := 0
                Points := 150
            question:
                Enonce := "Quel est le mode PvE cooperatif historique de Fortnite ?"
                Reponses := array{"Sauver le Monde", "Battle Royale", "Creatif", "Zero Build"}
                BonneReponse := 0
                Points := 200
