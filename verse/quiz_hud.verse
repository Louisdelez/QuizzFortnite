using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Verse.org/Colors }
using { /Verse.org/Simulation }
using { /Verse.org/Assets }

# ============================================================
#  quiz_hud.verse — UI Verse par joueur
#  Implementation du design system "HUD Quizz Fortnite (UEFN)" :
#   - Palette ABCD vibrante (A rouge / B bleu / C vert / D jaune)
#   - Panneaux bleu nuit translucides, hierarchie typographique
#   - Bandeau question (chip "QUESTION x/25") en haut centre
#   - Chrono (chiffre + "SEC") colore par urgence (cyan -> jaune -> rouge)
#   - Leaderboard "CLASSEMENT" a droite
#   - 4 reponses A/B/C/D en bas, en cartes colorees (calees sur les portails)
# ============================================================

StringToMessage<localizes>(Value : string) : message = "{Value}"

# Pseudo Fortnite du joueur : interpoler un agent dans un message <localizes>
# rend son nom d'affichage en jeu (seule methode exposee par Epic pour les UI custom).
PlayerNameMessage<localizes>(Agent : agent) : message = "{Agent}"

# Textures arrondies optionnelles (1 par taille de panneau). Assignees dans le device.
# Si false -> repli sur un color_block (rectangle a coins droits).
hud_textures := struct:
    Banner : ?texture = false
    Board : ?texture = false
    Card : ?texture = false
    Key : ?texture = false
    Timer : ?texture = false
    Chip : ?texture = false

# Une ligne de classement (design system) : le joueur (pour son pseudo) + son score.
leaderboard_entry := struct:
    Agent : agent
    Score : int = 0

quiz_hud := class:
    var MaybeCanvas : ?canvas = false
    var MaybeQNum : ?text_block = false
    var MaybeQuestion : ?text_block = false
    var MaybeTimerNum : ?text_block = false
    var MaybeFeedback : ?text_block = false
    var MaybeAnswers : []text_block = array{}
    var MaybeFlag : ?texture_block = false
    # ---- Classement (lignes : rang / nom / score) ----
    var RowRanks : []text_block = array{}
    var RowNames : []text_block = array{}
    var RowScores : []text_block = array{}

    # Nombre max de lignes affichables au classement.
    MaxRows : int = 10
    # Couleur du rang : or / argent / bronze pour le podium, sinon attenue.
    RankColor(I : int) : color =
        case (I):
            0 => MakeColorFromHex("FFD24A")
            1 => MakeColorFromHex("D7E2F2")
            2 => MakeColorFromHex("E8965A")
            _ => MakeColorFromHex("A9B4CC")

    # ---- Palette du design system (calee sur les piliers de la map) ----
    Night  : color = MakeColorFromHex("19223F")   # panneaux bleu nuit
    Violet : color = MakeColorFromHex("7C5CFF")   # accent marque
    Cyan   : color = MakeColorFromHex("36E0FF")   # chrono calme / titres
    Gold   : color = MakeColorFromHex("FFD24A")   # feedback
    White  : color = MakeColorFromHex("FFFFFF")
    Dim    : color = MakeColorFromHex("A9B4CC")
    # A rouge, B bleu, C vert, D jaune
    AnsCols : []color = array{
        MakeColorFromHex("FF3D57"), MakeColorFromHex("2E9BFF"),
        MakeColorFromHex("23D26A"), MakeColorFromHex("FFC21F")
    }

    Lettre(Index : int) : string =
        case (Index):
            0 => "A"
            1 => "B"
            2 => "C"
            3 => "D"
            _ => "?"

    AnsColAt(I : int) : color =
        if (C := AnsCols[I]) { C } else { White }

    # --- Fabriques de widgets (texture arrondie teintee si dispo, sinon rectangle) ---
    Panel(W : float, H : float, Col : color, Tx : ?texture) : widget =
        if (T := Tx?):
            texture_block:
                DefaultImage := T
                DefaultTint := Col
                DefaultDesiredSize := vector2{ X := W, Y := H }
        else:
            color_block:
                DefaultColor := Col
                DefaultOpacity := 0.92
                DefaultDesiredSize := vector2{ X := W, Y := H }

    KeySquare(Col : color, Tx : ?texture) : widget =
        if (T := Tx?):
            texture_block:
                DefaultImage := T
                DefaultTint := Col
                DefaultDesiredSize := vector2{ X := 54.0, Y := 54.0 }
        else:
            color_block:
                DefaultColor := Col
                DefaultOpacity := 1.0
                DefaultDesiredSize := vector2{ X := 54.0, Y := 54.0 }

    Label(Text : string, Size : float, Col : color, Just : text_justification) : text_block =
        text_block:
            DefaultText := StringToMessage(Text)
            DefaultTextColor := Col
            DefaultTextSize := Size
            DefaultJustification := Just

    # canvas_slot ancre a un point (AX,AY) normalise, aligne (AlignX,AlignY).
    At(W : widget, AX : float, AY : float, AlignX : float, AlignY : float) : canvas_slot =
        canvas_slot:
            Anchors := anchors{ Minimum := vector2{ X := AX, Y := AY }, Maximum := vector2{ X := AX, Y := AY } }
            Alignment := vector2{ X := AlignX, Y := AlignY }
            SizeToContent := true
            Widget := W

    # Elements HUD natifs masques pour un quiz (minimap, ressources, pieces de construction).
    # NB: l'identifiant de la minimap = "mimimap" (faute de frappe d'Epic).
    NativeHudToHide() : []hud_element_identifier =
        array:
            creative_hud_identifier_mimimap{}
            creative_hud_identifier_minimap{}
            creative_hud_identifier_crafting_resources{}
            hud_identifier_world_resource_wood{}
            hud_identifier_world_resource_stone{}
            hud_identifier_world_resource_metal{}
            creative_hud_identifier_build_menu{}
            creative_hud_identifier_player_inventory{}

    HideNativeHud(PlayerUI : player_ui) : void =
        PlayerUI.HideHUDElements(NativeHudToHide())

    # Re-masque sur ~4s : certains elements (minimap) s'initialisent apres l'UI.
    HideNativeHudRetry(PlayerUI : player_ui)<suspends> : void =
        var I : int = 0
        loop:
            Sleep(0.5)
            HideNativeHud(PlayerUI)
            if (I >= 7) { break }
            set I += 1

    # Mots localises du HUD (fournis par le manager dans la langue du joueur).
    var QWord : string = "QUESTION"

    # Construit et affiche l'UI pour un joueur.
    # SeedFlag : une texture quelconque pour initialiser le bloc image (drapeau), changee ensuite par question.
    # QWordStr/SecWordStr : libelles "QUESTION" et "SEC" dans la langue du joueur.
    Show(Player : player, Tex : hud_textures, SeedFlag : ?texture, BoardTitleStr : string, QWordStr : string, SecWordStr : string)<suspends> : void =
        set QWord = QWordStr
        # ---- Bandeau question : carte verticale (chip / question / drapeau) ----
        QNum := Label("{QWordStr}  1 / 25", 20.0, White, text_justification.Center)
        Chip := overlay:
            Slots := array:
                overlay_slot:
                    Widget := Panel(300.0, 46.0, Violet, Tex.Chip)
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Fill
                overlay_slot:
                    Widget := QNum
                    HorizontalAlignment := horizontal_alignment.Center
                    VerticalAlignment := vertical_alignment.Center

        Question := text_block:
            DefaultText := StringToMessage("...")
            DefaultTextColor := White
            DefaultTextSize := 28.0
            DefaultJustification := text_justification.Center
            AutoWrap := true
            WrapWidth := 340.0

        var BannerSlots : []stack_box_slot = array:
            stack_box_slot:
                Widget := Chip
                HorizontalAlignment := horizontal_alignment.Center
                Padding := margin{ Left := 0.0, Top := 2.0, Right := 0.0, Bottom := 10.0 }
            stack_box_slot:
                Widget := Question
                HorizontalAlignment := horizontal_alignment.Center
                Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 10.0 }

        # Drapeau integre dans la carte (sous la question) si une texture d'amorce est fournie.
        if (Seed := SeedFlag?):
            FlagImg := texture_block:
                DefaultImage := Seed
                DefaultDesiredSize := vector2{ X := 246.0, Y := 164.0 }
            set MaybeFlag = option{ FlagImg }
            set BannerSlots += array:
                stack_box_slot:
                    Widget := FlagImg
                    HorizontalAlignment := horizontal_alignment.Center

        BannerStack := stack_box:
            Orientation := orientation.Vertical
            Slots := BannerSlots
        Banner := overlay:
            Slots := array:
                overlay_slot:
                    Widget := Panel(392.0, 352.0, Night, Tex.Board)
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Fill
                overlay_slot:
                    Widget := BannerStack
                    HorizontalAlignment := horizontal_alignment.Center
                    VerticalAlignment := vertical_alignment.Center
                    Padding := margin{ Left := 20.0, Top := 16.0, Right := 20.0, Bottom := 16.0 }

        # ---- Chrono (chiffre + SEC) ----
        TimerNum := Label("--", 46.0, Cyan, text_justification.Center)
        TimerStack := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot:
                    Widget := TimerNum
                    HorizontalAlignment := horizontal_alignment.Center
                stack_box_slot:
                    Widget := Label(SecWordStr, 12.0, Dim, text_justification.Center)
                    HorizontalAlignment := horizontal_alignment.Center
        TimerBox := overlay:
            Slots := array:
                overlay_slot:
                    Widget := Panel(150.0, 104.0, Night, Tex.Timer)
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Fill
                overlay_slot:
                    Widget := TimerStack
                    HorizontalAlignment := horizontal_alignment.Center
                    VerticalAlignment := vertical_alignment.Center

        # ---- Leaderboard "CLASSEMENT" (design system : etroit, lignes rang/nom/score) ----
        HeadRow := Label(BoardTitleStr, 22.0, White, text_justification.Left)
        var RowSlots : []stack_box_slot = array:
            stack_box_slot:
                Widget := HeadRow
                HorizontalAlignment := horizontal_alignment.Fill
                Padding := margin{ Left := 4.0, Top := 0.0, Right := 4.0, Bottom := 12.0 }
        var RankRefs : []text_block = array{}
        var NameRefs : []text_block = array{}
        var ScoreRefs : []text_block = array{}
        for (I := 0..MaxRows - 1):
            RankLbl := Label("", 18.0, RankColor(I), text_justification.Center)
            NameLbl := Label("", 16.0, White, text_justification.Left)
            ScoreLbl := Label("", 18.0, White, text_justification.Right)
            RowBox := stack_box:
                Orientation := orientation.Horizontal
                Slots := array:
                    stack_box_slot:
                        Widget := RankLbl
                        VerticalAlignment := vertical_alignment.Center
                        Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 }
                    stack_box_slot:
                        Widget := NameLbl
                        HorizontalAlignment := horizontal_alignment.Fill
                        VerticalAlignment := vertical_alignment.Center
                    stack_box_slot:
                        Widget := ScoreLbl
                        VerticalAlignment := vertical_alignment.Center
            set RowSlots += array{ stack_box_slot{ Widget := RowBox, HorizontalAlignment := horizontal_alignment.Fill, Padding := margin{ Left := 4.0, Top := 0.0, Right := 4.0, Bottom := 7.0 } } }
            set RankRefs += array{ RankLbl }
            set NameRefs += array{ NameLbl }
            set ScoreRefs += array{ ScoreLbl }
        BoardStack := stack_box:
            Orientation := orientation.Vertical
            Slots := RowSlots
        Board := overlay:
            Slots := array:
                overlay_slot:
                    Widget := Panel(250.0, 330.0, Night, Tex.Board)
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Fill
                overlay_slot:
                    Widget := BoardStack
                    HorizontalAlignment := horizontal_alignment.Fill
                    VerticalAlignment := vertical_alignment.Top
                    Padding := margin{ Left := 16.0, Top := 14.0, Right := 16.0, Bottom := 14.0 }

        # ---- Feedback central (CORRECT / FAUX) ----
        Feedback := Label("", 44.0, Gold, text_justification.Center)

        # ---- Assemblage du canvas (chrono en haut-droite, bandeau+drapeau en haut-centre) ----
        var Slots : []canvas_slot = array:
            At(Banner, 0.5, 0.02, 0.5, 0.0)
            At(TimerBox, 0.965, 0.10, 1.0, 0.0)
            At(Board, 0.985, 0.30, 1.0, 0.0)
            At(Feedback, 0.5, 0.52, 0.5, 0.5)

        # ---- 4 cartes reponses A/B/C/D en bas (calees sur les portails) ----
        var Blocks : []text_block = array{}
        for (I := 0..3):
            Col := AnsColAt(I)
            LetterTxt := Label(Lettre(I), 30.0, White, text_justification.Center)
            KeyOv := overlay:
                Slots := array:
                    overlay_slot:
                        Widget := KeySquare(Col, Tex.Key)
                        HorizontalAlignment := horizontal_alignment.Fill
                        VerticalAlignment := vertical_alignment.Fill
                    overlay_slot:
                        Widget := LetterTxt
                        HorizontalAlignment := horizontal_alignment.Center
                        VerticalAlignment := vertical_alignment.Center
            AnsText := Label("", 24.0, White, text_justification.Left)
            Card := overlay:
                Slots := array:
                    overlay_slot:
                        Widget := Panel(300.0, 74.0, Night, Tex.Card)
                        HorizontalAlignment := horizontal_alignment.Fill
                        VerticalAlignment := vertical_alignment.Fill
                    overlay_slot:
                        Widget := KeyOv
                        HorizontalAlignment := horizontal_alignment.Left
                        VerticalAlignment := vertical_alignment.Center
                        Padding := margin{ Left := 10.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }
                    overlay_slot:
                        Widget := AnsText
                        HorizontalAlignment := horizontal_alignment.Left
                        VerticalAlignment := vertical_alignment.Center
                        Padding := margin{ Left := 78.0, Top := 0.0, Right := 8.0, Bottom := 0.0 }
            AX := 0.5 + (I * 1.0 - 1.5) * 0.17
            set Slots += array{ At(Card, AX, 0.77, 0.5, 0.5) }
            set Blocks += array{ AnsText }

        Root := canvas{ Slots := Slots }

        # On reessaie jusqu'a ce que l'UI du joueur soit prete.
        var UITries : int = 0
        loop:
            if (PlayerUI := GetPlayerUI[Player]):
                PlayerUI.AddWidget(Root)
                HideNativeHud(PlayerUI)
                # La minimap s'initialise APRES l'UI : on re-masque sur ~4s pour fiabiliser.
                spawn { HideNativeHudRetry(PlayerUI) }
                break
            if (UITries >= 40) { break }
            set UITries += 1
            Sleep(0.25)

        set MaybeCanvas = option{ Root }
        set MaybeQNum = option{ QNum }
        set MaybeQuestion = option{ Question }
        set MaybeTimerNum = option{ TimerNum }
        set RowRanks = RankRefs
        set RowNames = NameRefs
        set RowScores = ScoreRefs
        set MaybeFeedback = option{ Feedback }
        set MaybeAnswers = Blocks

    # Met a jour l'enonce, l'image (drapeau) + les 4 reponses.
    SetQuestion(Q : question) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Q.Enonce)) }
        if (F := MaybeFlag?):
            if (Img := Q.Image?):
                F.SetImage(Img)
                F.SetVisibility(widget_visibility.Visible)
            else:
                F.SetVisibility(widget_visibility.Collapsed)
        for (I -> Block : MaybeAnswers):
            if (Texte := Q.Reponses[I]):
                Block.SetText(StringToMessage(Texte))

    # Numero de question (dans le chip).
    SetQNum(Numero : int, Total : int) : void =
        if (T := MaybeQNum?):
            T.SetText(StringToMessage("{QWord}  {Numero} / {Total}"))

    # Chrono : chiffre + couleur d'urgence (cyan > jaune > rouge).
    SetTimer(Secondes : int) : void =
        if (T := MaybeTimerNum?):
            T.SetText(StringToMessage("{Secondes}"))
            var Tone : color = Cyan
            if (Secondes <= 3):
                set Tone = MakeColorFromHex("FF3D57")
            else if (Secondes <= 8):
                set Tone = MakeColorFromHex("FFC21F")
            T.SetTextColor(Tone)

    # Classement : remplit les lignes (rang / nom / score) et le compteur de joueurs.
    # Les lignes sans donnee sont videes. Entries est suppose deja trie (rang 1 en tete).
    SetLeaderboard(Entries : []leaderboard_entry) : void =
        for (I := 0..MaxRows - 1):
            if (RankLbl := RowRanks[I], NameLbl := RowNames[I], ScoreLbl := RowScores[I]):
                if (E := Entries[I]):
                    RankLbl.SetText(StringToMessage("{I + 1}"))
                    NameLbl.SetText(PlayerNameMessage(E.Agent))
                    ScoreLbl.SetText(StringToMessage("{E.Score}"))
                else:
                    RankLbl.SetText(StringToMessage(""))
                    NameLbl.SetText(StringToMessage(""))
                    ScoreLbl.SetText(StringToMessage(""))

    # Encart RANG en haut a gauche pendant le round (mode classe) :
    # embleme + palier + % de progression. Ajoute au canvas existant.
    ShowRank(Bg : ?texture, Emblem : texture, LabelStr : string, NameStr : string, PctStr : string) : void =
        EmblemTex := texture_block:
            DefaultImage := Emblem
            DefaultDesiredSize := vector2{ X := 44.0, Y := 44.0 }
        Lab := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := Label(LabelStr, 11.0, Dim, text_justification.Left) }
                stack_box_slot{ Widget := Label("{NameStr} - {PctStr}", 16.0, White, text_justification.Left) }
        Row := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := EmblemTex, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Lab, VerticalAlignment := vertical_alignment.Center }
        Box := overlay:
            Slots := array:
                overlay_slot:
                    Widget := Panel(230.0, 64.0, Night, Bg)
                    HorizontalAlignment := horizontal_alignment.Center
                    VerticalAlignment := vertical_alignment.Center
                overlay_slot:
                    Widget := Row
                    HorizontalAlignment := horizontal_alignment.Left
                    VerticalAlignment := vertical_alignment.Center
                    Padding := margin{ Left := 14.0, Top := 0.0, Right := 14.0, Bottom := 0.0 }
        if (C := MaybeCanvas?):
            C.AddWidget(At(Box, 0.015, 0.02, 0.0, 0.0))

    # Flash temporaire (CORRECT ! / FAUX ! ...), ~1.2s.
    Flash(Text : string)<suspends> : void =
        if (T := MaybeFeedback?):
            T.SetText(StringToMessage(Text))
            Sleep(1.2)
            T.SetText(StringToMessage(""))

    # Ecran de fin individuel.
    ShowEndScreen(Score : int, Rank : int, Total : int) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage("BRAVO - Quiz termine ! Score {Score} - Rang {Rank}/{Total}")) }
        if (Tm := MaybeTimerNum?) { Tm.SetText(StringToMessage("")) }
        for (Block : MaybeAnswers) { Block.SetText(StringToMessage("")) }

    # Classement final partage (reutilise les memes lignes que le classement live).
    ShowLeaderboard(Title : string, Entries : []leaderboard_entry) : void =
        if (T := MaybeQuestion?) { T.SetText(StringToMessage(Title)) }
        SetLeaderboard(Entries)

    Hide(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := MaybeCanvas?):
            PlayerUI.RemoveWidget(C)
