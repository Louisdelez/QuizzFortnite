using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }

# ============================================================
#  quiz_hud.verse — UI Verse par joueur (question, reponses, score)
# ============================================================

# string -> message (requis par les widgets de texte).
StringToMessage<localizes>(Value : string) : message = "{Value}"

quiz_hud := class:
    var MaybeCanvas : ?canvas = false
    var MaybeStatus : ?text_block = false
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
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.06 }, Maximum := vector2{ X := 0.5, Y := 0.06 } }
                    Alignment := vector2{ X := 0.5, Y := 0.0 }
                    SizeToContent := true
                    Widget := Status
                canvas_slot:
                    Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.15 }, Maximum := vector2{ X := 0.5, Y := 0.15 } }
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
        set MaybeQuestion = option{ Question }
        set MaybeFeedback = option{ Feedback }
        set MaybeAnswers = Blocks

    # Renvoie le text_block d'index I, ou un widget vide de secours.
    AnswerOrEmpty(Blocks : []text_block, I : int) : widget =
        if (B := Blocks[I]) { B } else { text_block{ DefaultText := StringToMessage("") } }

    # Met a jour l'enonce + les 4 reponses.
    SetQuestion(Q : question) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Q.Enonce)) }
        for (I -> Block : MaybeAnswers):
            if (Texte := Q.Reponses[I]):
                Block.SetText(StringToMessage("{Lettre(I)} : {Texte}"))

    # Met a jour le bandeau (score, n0 question, total).
    SetStatus(Score : int, Numero : int, Total : int) : void =
        if (T := MaybeStatus?):
            T.SetText(StringToMessage("Score : {Score}    Question {Numero}/{Total}"))

    # Flash "CORRECT !" / "FAUX !" pendant ~1s, puis efface (pur Verse, async).
    ShowFeedback(IsCorrect : logic)<suspends> : void =
        if (T := MaybeFeedback?):
            if (IsCorrect?):
                T.SetText(StringToMessage("CORRECT !"))
                # Couleur optionnelle (si l'API le permet) : T.SetTextColor(NamedColors.Green)
            else:
                T.SetText(StringToMessage("FAUX !"))
                # T.SetTextColor(NamedColors.Red)
            Sleep(1.0)
            T.SetText(StringToMessage(""))

    # Ecran de fin : remplace la question par le bilan + le rang.
    ShowEndScreen(Score : int, Rank : int, Total : int) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage("BRAVO - Quiz termine !")) }
        if (S := MaybeStatus?) { S.SetText(StringToMessage("Score : {Score}    Rang : {Rank}/{Total}")) }
        if (F := MaybeFeedback?) { F.SetText(StringToMessage("")) }
        for (Block : MaybeAnswers) { Block.SetText(StringToMessage("")) }

    Hide(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := MaybeCanvas?):
            PlayerUI.RemoveWidget(C)
