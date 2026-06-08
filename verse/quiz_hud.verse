using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }

# ============================================================
#  quiz_hud.verse — UI Verse par joueur
#  question, reponses A/B/C/D colorees, score, chrono,
#  flash Correct/Faux/Timeout, classement final.
# ============================================================

# string -> message (requis par les widgets de texte).
StringToMessage<localizes>(Value : string) : message = "{Value}"

quiz_hud := class:
    var MaybeCanvas : ?canvas = false
    var MaybeStatus : ?text_block = false
    var MaybeTimer : ?text_block = false
    var MaybeQuestion : ?text_block = false
    var MaybeFeedback : ?text_block = false
    var MaybeAnswers : []text_block = array{}

    # Couleurs par lane : A=rouge, B=bleu, C=vert, D=jaune (= couleurs des portails).
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

    # Construit et affiche l'UI pour un joueur.
    Show(Player : player) : void =
        Status := text_block:
            DefaultText := StringToMessage("Score : 0")
            DefaultTextColor := NamedColors.White
        Timer := text_block:
            DefaultText := StringToMessage("")
            DefaultTextColor := NamedColors.White
        Question := text_block:
            DefaultText := StringToMessage("...")
            DefaultTextColor := NamedColors.White
        Feedback := text_block:
            DefaultText := StringToMessage("")
            DefaultTextColor := NamedColors.White

        var Blocks : []text_block = array{}
        for (I := 0..3):
            Col := if (C := AnswerColors[I]) { C } else { NamedColors.White }
            B := text_block:
                DefaultText := StringToMessage("")
                DefaultTextColor := Col
            set Blocks += array{ B }

        Root := canvas:
            Slots := array:
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.05 }, Maximum := vector2{ X := 0.5, Y := 0.05 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := Status
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.10 }, Maximum := vector2{ X := 0.5, Y := 0.10 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := Timer
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.16 }, Maximum := vector2{ X := 0.5, Y := 0.16 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := Question
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.42 }, Maximum := vector2{ X := 0.5, Y := 0.42 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := Feedback
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.80 }, Maximum := vector2{ X := 0.5, Y := 0.80 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := AnswerOrEmpty(Blocks, 0)
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.85 }, Maximum := vector2{ X := 0.5, Y := 0.85 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := AnswerOrEmpty(Blocks, 1)
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.90 }, Maximum := vector2{ X := 0.5, Y := 0.90 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := AnswerOrEmpty(Blocks, 2)
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.95 }, Maximum := vector2{ X := 0.5, Y := 0.95 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := AnswerOrEmpty(Blocks, 3)

        if (PlayerUI := GetPlayerUI[Player]):
            PlayerUI.AddWidget(Root)

        set MaybeCanvas = option{ Root }
        set MaybeStatus = option{ Status }
        set MaybeTimer = option{ Timer }
        set MaybeQuestion = option{ Question }
        set MaybeFeedback = option{ Feedback }
        set MaybeAnswers = Blocks

    AnswerOrEmpty(Blocks : []text_block, I : int) : widget =
        if (B := Blocks[I]) { B } else { text_block{ DefaultText := StringToMessage("") } }

    # Met a jour l'enonce + les 4 reponses.
    SetQuestion(Q : question) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Q.Enonce)) }
        for (I -> Block : MaybeAnswers):
            if (Texte := Q.Reponses[I]):
                Block.SetText(StringToMessage("{Lettre(I)} : {Texte}"))

    # Bandeau (score, n0 question, total).
    SetStatus(Score : int, Numero : int, Total : int) : void =
        if (T := MaybeStatus?):
            T.SetText(StringToMessage("Score : {Score}    Question {Numero}/{Total}"))

    # Ligne de chronometre.
    SetTimer(Secondes : int) : void =
        if (T := MaybeTimer?):
            T.SetText(StringToMessage("Temps : {Secondes}s"))

    # Flash temporaire (CORRECT ! / FAUX ! / TEMPS ECOULE !), ~1s, puis efface.
    Flash(Text : string)<suspends> : void =
        if (T := MaybeFeedback?):
            T.SetText(StringToMessage(Text))
            Sleep(1.0)
            T.SetText(StringToMessage(""))

    # Ecran de fin individuel (score + rang).
    ShowEndScreen(Score : int, Rank : int, Total : int) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage("BRAVO - Quiz termine !")) }
        if (S := MaybeStatus?) { S.SetText(StringToMessage("Score : {Score}    Rang : {Rank}/{Total}")) }
        if (Tm := MaybeTimer?) { Tm.SetText(StringToMessage("")) }
        if (F := MaybeFeedback?) { F.SetText(StringToMessage("")) }
        for (Block : MaybeAnswers) { Block.SetText(StringToMessage("")) }

    # Classement final partage (multi-lignes) affiche a tous.
    ShowLeaderboard(Title : string, Lines : []string) : void =
        var Body : string = Title
        for (L : Lines):
            set Body = "{Body}\n{L}"
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Body)) }
        if (S := MaybeStatus?) { S.SetText(StringToMessage("Partie terminee")) }
        if (Tm := MaybeTimer?) { Tm.SetText(StringToMessage("")) }
        if (F := MaybeFeedback?) { F.SetText(StringToMessage("")) }
        for (Block : MaybeAnswers) { Block.SetText(StringToMessage("")) }

    Hide(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := MaybeCanvas?):
            PlayerUI.RemoveWidget(C)
