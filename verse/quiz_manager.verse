using { /Fortnite.com/Devices }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Playspaces }
using { /Fortnite.com/UI }
using { /UnrealEngine.com/Temporary/UI }
using { /Verse.org/Assets }
using { /Verse.org/Colors }
using { /Verse.org/Random }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }

# ============================================================
#  quiz_manager.verse — ORCHESTRATEUR (le seul device a poser)
#  Genere la map en Verse, gere etat/UI/detection/score/chrono,
#  feedback, bonus de rapidite et classement final partage.
# ============================================================

# Progression de RANG persistante entre les sessions (weak_map module = sauvegarde UEFN).
# Unite : points de pourcentage cumules ; 100 pts = 1 palier (18 paliers, 0..1700).
var RankPts : weak_map(player, int) = map{}

# UEFN limite le nombre de variables persistantes : on REGROUPE tout en 3 weak_map.
# Meilleur score PAR (quizz x difficulte), entrelace : index 2*combo = score, 2*combo+1 = bonnes reps.
# combo = Gi*3 + Diff. + le TOTAL DES FLAMMES stocke a l'index reserve FlameSlot (250).
# Persistant par joueur -> retrouve a la reconnexion ; alimente le TOP 10 par combo.
var BestSave : weak_map(player, []int) = map{}
# Reglages AUDIO par joueur (alignes sur les sons du jeu) :
#  {vol General, vol Musique, vol Effets, vol Chrono, vol Clics,
#   mute General, mute Musique, mute Effets, mute Chrono, mute Clics}.
var SndSave : weak_map(player, []int) = map{}

# Un quizz proposable dans le lobby (design "Selection du Quizz").
lobby_quiz := struct:
    Name : string = ""
    QCount : int = 25
    Tag : string = ""           # categorie affichee
    Real : logic = false        # true = a du vrai contenu (Drapeaux)

# Bouton survolable : swap de la texture de fond (normal <-> hover) via
# HighlightEvent()/UnhighlightEvent() du button generique (le seul mecanisme de "hover"
# dispo en Verse). Reproduit le `:hover` du design (fond eclairci).
# Voir docs/UEFN-interface-verse.md.
hover_btn := class:
    Btn : button
    Bg : texture_block
    Normal : texture
    Hover : texture
    Wire() : void =
        Btn.HighlightEvent().Subscribe(OnHi)
        Btn.UnhighlightEvent().Subscribe(OnLo)
    OnHi(M : widget_message) : void = Bg.SetImage(Hover)
    OnLo(M : widget_message) : void = Bg.SetImage(Normal)

# Clic d'une carte quizz : connait l'index global du quizz + renvoie vers le manager.
quiz_pick := class:
    Mgr : quiz_manager
    Gi : int
    OnClick(M : widget_message) : void = Mgr.AddToQueue(M.Player, Gi)

# Clic d'une carte categorie : applique le filtre puis ferme la sous-page.
cat_pick := class:
    Mgr : quiz_manager
    Ci : int
    OnClick(M : widget_message) : void = Mgr.PickCategory(M.Player, Ci)

# Clic d'une zone de la barre de volume (canal + valeur 10..100).
snd_vol := class:
    Mgr : quiz_manager
    Chan : int
    Val : int
    OnClick(M : widget_message) : void = Mgr.SetSndVol(M.Player, Chan, Val)

# Clic d'un bouton -5/+5 de volume.
snd_step := class:
    Mgr : quiz_manager
    Chan : int
    Delta : int
    OnClick(M : widget_message) : void = Mgr.StepSndVol(M.Player, Chan, Delta)

# Clic du bouton mute d'un canal audio.
snd_mute := class:
    Mgr : quiz_manager
    Chan : int
    OnClick(M : widget_message) : void = Mgr.ToggleSndMute(M.Player, Chan)

# Clic du bouton poubelle d'un slot de file : retire l'entree.
slot_rm := class:
    Mgr : quiz_manager
    Idx : int
    OnClick(M : widget_message) : void = Mgr.RemoveFromQueue(Idx)

quiz_manager := class(creative_device):

    # --- Assets de props pour la generation (a brancher dans Details) ---
    @editable
    FloorAsset : ?creative_prop_asset = false
    @editable
    PortalAsset : ?creative_prop_asset = false

    # --- Device Button du lobby (le "E") : choisis "Bouton" dans le menu deroulant ---
    @editable
    LobbyButton : button_device = button_device{}

    # --- Sons & musiques (Lecteurs audio OPTIONNELS, a glisser dans Details) ---
    # SFX generes par tools/build_sfx.py (sfx/*.wav) ; musiques = pistes Suno (WAV 16-bit).
    @editable
    SfxCorrect : audio_player_device = audio_player_device{}   # bonne reponse (ding)
    @editable
    SfxWrong : audio_player_device = audio_player_device{}     # mauvaise reponse (buzz)
    @editable
    SfxTimeout : audio_player_device = audio_player_device{}   # temps ecoule
    @editable
    SfxTick : audio_player_device = audio_player_device{}      # tic du chrono (<= 5 s)
    @editable
    SfxShield : audio_player_device = audio_player_device{}    # +25 bouclier (classe)
    @editable
    SfxFanfare : audio_player_device = audio_player_device{}   # fin de round
    @editable
    SfxRankUp : audio_player_device = audio_player_device{}    # montee de palier de rang
    @editable
    SfxClick : audio_player_device = audio_player_device{}     # clics du menu
    @editable
    MusicLobby : audio_player_device = audio_player_device{}   # musique du lobby (boucle, 2D)
    @editable
    MusicGameEasy : audio_player_device = audio_player_device{}   # variante round Facile (sinon MusicGame)
    @editable
    MusicGameMedium : audio_player_device = audio_player_device{} # variante round Moyen (sinon MusicGame)
    @editable
    MusicGameHard : audio_player_device = audio_player_device{}   # variante round Difficile (sinon MusicGame)
    @editable
    MusicResults : audio_player_device = audio_player_device{}    # musique de l'ecran de resultats (boucle)
    @editable
    MusicLobbyLow : audio_player_device = audio_player_device{}   # variante FAIBLE (fichier _low) du lobby
    @editable
    MusicGameEasyLow : audio_player_device = audio_player_device{}   # variante FAIBLE round Facile
    @editable
    MusicGameMediumLow : audio_player_device = audio_player_device{} # variante FAIBLE round Moyen
    @editable
    MusicGameHardLow : audio_player_device = audio_player_device{}   # variante FAIBLE round Difficile
    @editable
    MusicResultsLow : audio_player_device = audio_player_device{} # variante FAIBLE des resultats

    # --- XP Fortnite (devices Accolade ; actifs uniquement sur l'ile PUBLIEE) ---
    # Paliers ponderes calibres par Epic : bonne reponse = frequent => palier bas,
    # fin de quizz = rare => palier haut. Vise ~1000 XP / ~10 000 XP apres calibration.
    @editable
    AccoladeCorrect : accolades_device = accolades_device{}   # XP par bonne reponse
    @editable
    AccoladeFinish : accolades_device = accolades_device{}    # XP par quizz termine
    @editable
    AccoladeRankUp : accolades_device = accolades_device{}    # XP au passage d'un rang MAJEUR

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

    # --- Textures arrondies du HUD : importees dans le module HUD (Content\HUD), referencees directement. ---

    # --- Modules ---
    Builder : map_builder = map_builder{}
    var Bank : question_bank = question_bank{}
    var BankEN : question_bank = question_bank{}     # meme tirage, textes anglais
    var BankES : question_bank = question_bank{}     # meme tirage, textes espagnols
    var BankDE : question_bank = question_bank{}     # meme tirage, textes allemands
    var BankIT : question_bank = question_bank{}     # meme tirage, textes italiens
    Registry : quiz_registry = quiz_registry{}
    Board : leaderboard = leaderboard{}
    var Huds : [agent]quiz_hud = map{}
    var SetupDone : [player]logic = map{}

    # --- Etat du LOBBY (choix par joueur) ---
    var LobbyDiff : [player]int = map{}    # 0=Facile 1=Moyen 2=Difficile
    var LobbyLang : [player]int = map{}    # 0=FR 1=EN 2=ES 3=DE 4=IT
    var LobbyCanvas : [player]canvas = map{}
    var LobbyShown : [player]logic = map{} # la fenetre lobby est-elle affichee ?
    var LobbyBtnSub : ?cancelable = false  # garde l'abonnement du bouton (sinon annule)

    # --- File de la partie : max 4 quizz au total ; quota par joueur selon le
    #     nombre de joueurs (1 joueur = 4 choix, 2 joueurs = 2 chacun, 3+ = 1 chacun) ---
    var LobbyQueue : []int = array{}                 # indices quizz (dans QzName)
    var LobbyQueueBy : []player = array{}            # qui a ajoute chaque entree (parallele)
    var PlayerNum : [player]int = map{}              # numero P1..P4 (ordre d'arrivee)
    var NextPNum : int = 1
    # HOTE (chef de groupe) = premier joueur arrive sur l'ile. Verse n'expose pas le
    # chef d'escouade Fortnite ; en groupe, celui qui lance la partie charge en premier.
    # Seul l'hote change Classe/Non classe + difficulte, et VALIDER lance pour TOUS.
    var HostPlayer : ?player = false
    var LobbySubCanvas : [player]canvas = map{}      # sous-page langue/categorie superposee
    var HoverHolders : []hover_btn = array{}         # garde en vie les abonnements de survol
    var PickHolders : []quiz_pick = array{}          # garde en vie les clics des cartes quizz
    var CatHolders : []cat_pick = array{}            # garde en vie les clics des categories
    var RmHolders : []slot_rm = array{}              # garde en vie les clics "retirer" de la file
    var LobbyScroll : [player]int = map{}            # 1ere carte visible (scroll de la liste)
    var LobbyCatFilter : [player]int = map{}         # -1 = toutes, sinon index categorie
    var LobbyListHost : [player]canvas = map{}       # sous-canvas conteneur de la liste (swap au scroll)
    var LobbyListContent : [player]widget = map{}    # contenu courant de la liste (a retirer au swap)
    var LobbyQueueHost : [player]canvas = map{}      # sous-canvas conteneur de la file (swap au refresh)
    var LobbyQueueContent : [player]widget = map{}   # contenu courant de la file
    var LobbyFiltVal : [player]text_block = map{}    # libelle "Toutes"/categorie du filtre
    var LobbyDispoT : [player]text_block = map{}     # texte "N dispo"
    var LobbyFlameT : [player]text_block = map{}     # nombre de flammes (maj ciblee, sans rebuild)
    var LobbyQCountT : [player]text_block = map{}    # pastille "n/4"
    var LobbyRanked : [player]logic = map{}          # true = Classe, false = Non classe
    var LobbyRankRing : [player][]widget = map{}     # anneaux or/cyan (Classe / Non classe)
    var LobbyRankIco : [player][]texture_block = map{} # icones trophee/smiley (teinte selon selection)
    var LobbyDiffRing : [player][]widget = map{}     # anneaux de selection difficulte (vert/jaune/rouge)
    var LobbyDiffDotsOn : [player][]widget = map{}   # rangee de dots allumes (bouton selectionne)
    var LobbyDiffDotsOff : [player][]widget = map{}  # rangee de dots eteints (boutons non selectionnes)
    var LobbyValidBg : [player]texture_block = map{} # fond du bouton VALIDER (grise si file vide)
    var LobbyValidBtn : [player]button = map{}       # bouton VALIDER (desactive si file vide)
    var LobbyValidTxt : [player]text_block = map{}   # suffixe "- N quizz" du bouton VALIDER
    var LobbyMoreBg : [player]texture_block = map{}  # fond du bouton LIRE PLUS (a griser en bas)
    var LobbyMoreBtn : [player]button = map{}        # bouton LIRE PLUS (a desactiver en bas)
    var ResCanvas : [player]canvas = map{}           # ecran de resultats (racine)
    var ResScroll : [player]int = map{}              # scroll du classement des resultats
    var ResListHost : [player]canvas = map{}         # hote de la liste des resultats
    var ResListContent : [player]widget = map{}      # contenu courant de cette liste
    var SndVolHolders : []snd_vol = array{}          # clics des zones de volume
    var SndMuteHolders : []snd_mute = array{}        # clics des boutons mute
    var SndStepHolders : []snd_step = array{}        # clics des boutons -5/+5
    var SetHost : [player]canvas = map{}             # hote de la page Parametres (swap au clic)
    var SetContent : [player]widget = map{}          # contenu courant de la page Parametres
    var TmpRing : []widget = array{}                 # tampons de construction (anneaux / dots / icones)
    var TmpIco : []texture_block = array{}
    var TmpDotsOn : []widget = array{}
    var TmpDotsOff : []widget = array{}
    MapVersion : string = "BETA v0.3.0"               # affichee en bas a gauche de l'ecran
    RepoUrl    : string = "github.com/louisdelez/quizzfortnite"   # lien depot (texte, UEFN n'ouvre pas d'URL)
    MaxQueue : int = 4
    VisibleCards : int = 5                            # 5 cartes de 76px + gaps 9 dans la liste de 443px
    SessionQuestions : int = 25                       # questions par partie (= segments du couloir)
    var CurrentQuiz : int = 0                         # quizz joue (indice dans QzName)
    var RoundDiff : int = 1                           # difficulte REELLE du round (partagee, fixee par le chef)
    # Permutations des reponses du round (1 par question), generees par le chef et
    # PARTAGEES a tout le groupe -> memes questions, memes reponses, meme ordre des reponses.
    var SessionPerms : [][]int = array{}
    # --- Playlist : la file s'enchaine round apres round (round 1 = quizz 1...) ---
    var QueuePos : int = 0                            # position courante dans la file
    var RoundPlayers : []player = array{}             # joueurs du round en cours
    var ChainArmed : logic = false                    # anti double-enchainement

    # ===== Donnees du lobby : refonte en cours, une seule categorie (Drapeaux) =====
    # Les autres categories (Jeux Video, Animes) et quizz reviendront un par un, retravailles.
    CatName   : []string  = array{"Culture Generale"}
    CatColHex : []string  = array{"FF8A3D"}
    CatIcon   : []texture = array{ icons.ic_culture }
    CatTag    : []string  = array{"CULTURE G"}
    CatTagW   : []float   = array{110.0}

    # Quizz actifs (chacun 3 paliers — Facile communs / Moyen moins communs /
    # Difficile = tous, pixelises). Chaque session tire 25 questions au hasard dans le palier.
    QzName : []string = array{"Drapeaux du monde", "Pays sur carte", "Drapeaux des departements de France", "Departements de France sur carte", "Capitales du monde", "Culture Generale"}
    QzCat  : []int    = array{0, 0, 0, 0, 0, 0}
    QzQ    : []int    = array{25, 25, 25, 25, 25, 25}

    # Position de spawn dans la salle de lobby (calee sur build_map_gltf.py : centre X=-1568).
    LobbySpawnPos()<transacts> : vector3 = vector3{ X := -1568.0, Y := 300.0, Z := 120.0 }

    # Palier de chaque question (index aligne sur MakeQuestions) — GENERE par build_flags.py.
    FlagDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}


    # Banque d'un quizz (0 = Drapeaux, 1 = Capitales, 2 = Pokemon) dans la langue demandee (0=FR 1=EN 2=ES 3=DE 4=IT).
    BankQuestionsOf(Gi : int, L : int) : []question =
        # Quizz actifs : 0 = Drapeaux monde (integre), 1 = Pays sur carte (carte_bank),
        # 2 = Drapeaux departements (depflags_bank), 3 = Departements sur carte (depcarte_bank),
        # 4 = Capitales du monde (banque CAPITALES integree, texte seul),
        # 5 = Culture Generale (culture_bank.verse, texte seul, 900 q).
        var Qs : []question = array{}
        if (Gi = 5):
            if (L = 1) { set Qs = MakeCultureQuestionsEN() }
            else if (L = 2) { set Qs = MakeCultureQuestionsES() }
            else if (L = 3) { set Qs = MakeCultureQuestionsDE() }
            else if (L = 4) { set Qs = MakeCultureQuestionsIT() }
            else { set Qs = MakeCultureQuestions() }
        else if (Gi = 4):
            if (L = 1) { set Qs = MakeCapitalQuestionsEN() }
            else if (L = 2) { set Qs = MakeCapitalQuestionsES() }
            else if (L = 3) { set Qs = MakeCapitalQuestionsDE() }
            else if (L = 4) { set Qs = MakeCapitalQuestionsIT() }
            else { set Qs = MakeCapitalQuestions() }
        else if (Gi = 1):
            if (L = 1) { set Qs = MakeCarteQuestionsEN() }
            else if (L = 2) { set Qs = MakeCarteQuestionsES() }
            else if (L = 3) { set Qs = MakeCarteQuestionsDE() }
            else if (L = 4) { set Qs = MakeCarteQuestionsIT() }
            else { set Qs = MakeCarteQuestions() }
        else if (Gi = 2):
            if (L = 1) { set Qs = MakeDepFlagsQuestionsEN() }
            else if (L = 2) { set Qs = MakeDepFlagsQuestionsES() }
            else if (L = 3) { set Qs = MakeDepFlagsQuestionsDE() }
            else if (L = 4) { set Qs = MakeDepFlagsQuestionsIT() }
            else { set Qs = MakeDepFlagsQuestions() }
        else if (Gi = 3):
            if (L = 1) { set Qs = MakeDepCarteQuestionsEN() }
            else if (L = 2) { set Qs = MakeDepCarteQuestionsES() }
            else if (L = 3) { set Qs = MakeDepCarteQuestionsDE() }
            else if (L = 4) { set Qs = MakeDepCarteQuestionsIT() }
            else { set Qs = MakeDepCarteQuestions() }
        else:
            if (L = 1) { set Qs = MakeQuestionsEN() }
            else if (L = 2) { set Qs = MakeQuestionsES() }
            else if (L = 3) { set Qs = MakeQuestionsDE() }
            else if (L = 4) { set Qs = MakeQuestionsIT() }
            else { set Qs = MakeQuestions() }
        Qs

    BankDiffsOf(Gi : int) : []int =
        var Ds : []int = FlagDiff
        if (Gi = 1) { set Ds = CarteDiff }
        else if (Gi = 2) { set Ds = DepFlagsDiff }
        else if (Gi = 3) { set Ds = DepCarteDiff }
        else if (Gi = 4) { set Ds = CapDiff }
        else if (Gi = 5) { set Ds = CultureDiff }
        Ds

    # Questions du palier choisi pour le quizz donne (indices IDENTIQUES dans les 5 langues).
    QuestionsForDifficulty(Gi : int, Diff : int, L : int) : []question =
        All := BankQuestionsOf(Gi, L)
        Ds := BankDiffsOf(Gi)
        for (I := 0..All.Length - 1, D := Ds[I], D = Diff, Q := All[I]) { Q }

    # Banque dans la langue du joueur (le tirage/les indices sont partages).
    BankForAgent(A : agent) : question_bank =
        var B : question_bank = Bank
        if (P := player[A], L := LobbyLang[P]):
            if (L = 1) { set B = BankEN }
            else if (L = 2) { set B = BankES }
            else if (L = 3) { set B = BankDE }
            else if (L = 4) { set B = BankIT }
        B

    # Les N premiers elements d'un tableau (tirage de session dans l'ordre melange).
    TakeFirst(Arr : []int, N : int) : []int =
        for (I := 0..Arr.Length - 1, I < N, X := Arr[I]) { X }

    # ===== Brassage des reponses (runtime, partage dans le groupe) =====
    # Retire l'element a l'index Idx (reconstruction fonctionnelle).
    RemoveAtI(Arr : []int, Idx : int) : []int =
        for (K := 0..Arr.Length - 1, K <> Idx, X := Arr[K]) { X }

    # Permutation aleatoire de [0,1,2,3] (tirage sans remise via le RNG moteur).
    RandomPerm4() : []int =
        var Rem : []int = array{0, 1, 2, 3}
        var Res : []int = array{}
        loop:
            if (Rem.Length <= 0) { break }
            if (J := GetRandomInt(0, Rem.Length - 1), P := Rem[J]):
                set Res += array{ P }
                set Rem = RemoveAtI(Rem, J)
            else:
                break
        Res

    # Genere SessionQuestions permutations (1 par question) -> a diffuser a tout le groupe.
    MakeSessionPerms(N : int) : [][]int =
        for (I := 0..N - 1) { RandomPerm4() }

    # Applique une permutation aux 4 reponses d'une question + remappe la bonne reponse.
    # Identite/securite : si Perm n'est pas valide, renvoie Q inchangee.
    ApplyPerm(Q : question, Perm : []int) : question =
        var Out : question = Q
        if (Perm.Length = 4):
            NewRep := for (K : Perm, R := Q.Reponses[K]) { R }
            var NB : int = Q.BonneReponse
            for (I := 0..Perm.Length - 1, K := Perm[I], K = Q.BonneReponse):
                set NB = I
            if (NewRep.Length = Q.Reponses.Length):
                set Out = question{ Enonce := Q.Enonce, Reponses := NewRep, BonneReponse := NB, Points := Q.Points, Image := Q.Image }
        Out

    # ===== Demarrage =====
    OnBegin<override>()<suspends> : void =
        # La banque est remplie ICI (appel autorise dans OnBegin, pas en init de champ).
        set Bank = question_bank{ Questions := MakeQuestions() }

        # La map est desormais le mesh importe "QuizMap" (pose a l'origine).
        # Plus AUCUN spawn ici : ce device ne gere que la LOGIQUE (questions, score, detection, HUD).
        # Interaction "E" du lobby : ouvre la fenetre de choix.
        LobbyButton.Enable()                       # s'assurer que le device est actif
        LobbyButton.SetInteractionTime(0.0)        # interaction instantanee (pas de maintien)
        LobbyButton.SetInteractionText(StringToMessage("Ouvrir le quizz / Open the quiz"))  # texte device = partage, donc bilingue
        set LobbyBtnSub = option{ LobbyButton.InteractedWithEvent.Subscribe(OnLobbyInteract) }
        Print("LOBBY: bouton abonne OK")

        Playspace := GetPlayspace()
        for (Player : Playspace.GetPlayers()):
            InitPlayer(Player)
            # les joueurs DEJA presents au lancement (dont l'hote) doivent aussi compter leurs heures
            NewGen := FlameGenOf(Player) + 1
            if (set FlameGen[Player] = NewGen) {}
            spawn { FlameLoop(Player, NewGen) }
        Playspace.PlayerAddedEvent().Subscribe(OnPlayerAdded)
        Playspace.PlayerRemovedEvent().Subscribe(OnPlayerRemoved)

    OnPlayerAdded(Player : player) : void =
        InitPlayer(Player)
        # demarre le comptage des heures consecutives (la nouvelle generation invalide une ancienne boucle)
        NewGen := FlameGenOf(Player) + 1
        if (set FlameGen[Player] = NewGen) {}
        spawn { FlameLoop(Player, NewGen) }

    OnPlayerRemoved(Player : player) : void =
        # si le chef quitte, le premier joueur restant devient chef (boutons reactives)
        if (H := HostPlayer?, H = Player):
            set HostPlayer = false
            Ps := GetPlayspace().GetPlayers()
            for (Pl : Ps, not Pl = Player):
                if (not HostPlayer?) { set HostPlayer = option{ Pl } }
            for (Pl : Ps, not Pl = Player):
                var InL : logic = false
                if (X := LobbyShown[Pl]) { set InL = X }
                if (InL?) { RebuildLobby(Pl) }
        Registry.Remove(Player)
        if (Hud := Huds[Player]) { Hud.Hide(Player) }
        var New : [agent]quiz_hud = map{}
        for (K -> V : Huds, not K = Player) { if (set New[K] = V) {} }
        set Huds = New
        UpdateScoreboards()

    # ===== Initialisation d'un joueur =====
    InitPlayer(Player : player) : void =
        spawn { SetupPlayer(Player) }

    # Init robuste : on ATTEND que le perso/UI du joueur soit pret (sinon GetPlayerUI/GetFortCharacter echouent en silence).
    SetupPlayer(Player : player)<suspends> : void =
        if (not SetupDone[Player]):
            if (set SetupDone[Player] = true) {}
            var Tries : int = 0
            loop:
                if (Player.GetFortCharacter[]) { break }
                if (Tries >= 60) { break }
                set Tries += 1
                Sleep(0.25)

            State := quiz_player_state{}
            Registry.Register(Player, State)
            if (set LobbyDiff[Player] = 1) {}        # Moyen par defaut (comme le design)
            if (set LobbyLang[Player] = 0) {}
            if (set LobbyShown[Player] = false) {}
            if (set LobbyScroll[Player] = 0) {}
            if (set LobbyCatFilter[Player] = -1) {}
            if (set LobbyRanked[Player] = true) {}
            if (not PlayerNum[Player]):              # numero P1..P4 (couleur dans la file)
                if (set PlayerNum[Player] = NextPNum) {}
                set NextPNum += 1
            if (not HostPlayer?):                    # le 1er arrive = chef de groupe
                set HostPlayer = option{ Player }
            # Charge les meilleurs scores SAUVEGARDES du joueur dans le TOP 10 de CHAQUE combo.
            for (C := 0..QzName.Length * 3 - 1):
                Sc := BestComboScore(Player, C)
                if (Sc > 0) { UpdateHallC(C, Player, Sc, BestComboGood(Player, C)) }

            # Teleport au lobby (confirme correct : sans lui on spawn dans le couloir).
            if (Char := Player.GetFortCharacter[]):
                if (Char.TeleportTo[LobbySpawnPos(), IdentityRotation()]) {}
            # Masque la minimap + barre d'inventaire/constructions des le lobby.
            spawn { HideNativeHudRetry(Player) }
            # Menu plein ecran lance AUTOMATIQUEMENT a l'arrivee (le bouton E sert a rouvrir).
            spawn { AutoOpenLobby(Player) }

    # Laisse l'UI du joueur s'initialiser, puis ouvre le menu plein ecran.
    AutoOpenLobby(Player : player)<suspends> : void =
        Sleep(0.7)
        OpenLobby(Player)

    # ===== LOBBY : fenetre de choix (langue / difficulte / demarrer) =====
    OnLobbyInteract(Agent : agent) : void =
        Print("LOBBY: interact recu")
        if (P := player[Agent]):
            OpenLobby(P)
        else:
            Print("LOBBY: agent->player echoue")

    # ============================================================
    #  UI lobby — design "Selection du Quizz" reproduit a l'identique.
    #  Source : docs/design/lobby-design.css (+ lobby-app.jsx).
    #  Fenetre 1180x760, reference ecran 1920x1080. Toutes les cotes
    #  ci-dessous sont CALCULEES depuis le CSS (box-sizing border-box) :
    #    en-tete padding 22/24/18 (badge 50, titre 32, sous-titre 14)
    #    corps padding 20/24/24, colonnes 630 / 478, gouttiere 20
    #    carte quizz 591x76 (gap 9, rail scrollbar 26), bouton Categorie 630x68,
    #    LIRE PLUS 630x48, slots 478x66 (vide 478x54 pointille),
    #    Classe/Non classe 234x46, difficulte 152.7x58, VALIDER 478x65.
    #  Les degrades / verres / anneaux exacts sont cuits dans les PNG
    #  par tools/build_lobby_textures.py ; cartes cliquables via le
    #  `button` generique, survol par swap de texture.
    #  Voir docs/UEFN-interface-verse.md.
    # ============================================================
    LbWhite : color = MakeColorFromHex("FFFFFF")
    LbDim   : color = MakeColorFromHex("B2B5C0")   # rgba(255,255,255,.66) sur fond fenetre
    LbMute  : color = MakeColorFromHex("7C8295")   # rgba(255,255,255,.42)
    LbDotOff: color = MakeColorFromHex("535A6F")   # dot eteint rgba(255,255,255,.22)
    LbHalf  : color = MakeColorFromHex("8A91A4")   # blanc ~.5 (carte deja en file, opacity .5)
    LbMuteHalf : color = MakeColorFromHex("4B546C") # mute ~.5 (carte deja en file)
    LbGrey  : color = MakeColorFromHex("9A9A9A")   # attenuation textures "deja en file"
    LbViolet: color = MakeColorFromHex("7C5CFF")   # --brand
    LbCyan  : color = MakeColorFromHex("36E0FF")   # --brand-2
    LbGold  : color = MakeColorFromHex("FFD24A")   # --gold
    LbGreen : color = MakeColorFromHex("23D26A")   # --c
    LbYellow: color = MakeColorFromHex("FFC21F")   # --d
    LbRed   : color = MakeColorFromHex("FF3D57")   # --a
    LbOrange: color = MakeColorFromHex("FF8A3D")   # stat "meilleure serie"
    # Couleurs joueurs P1..P4 (pastille de la file, lobby-data.jsx)
    PColHex : []string = array{"FF3D57", "2E9BFF", "23D26A", "FFC21F"}
    # Couleurs categorie attenuees (~50% vers le fond) pour les cartes deja en file
    CatColDimHex : []string = array{"8E5842"}

    # ===== LOCALISATION FR/EN/ES/DE/IT (langue du lobby ; les RANGS restent en anglais) =====
    LangOf(P : player) : int =
        var L : int = 0
        if (V := LobbyLang[P]) { set L = V }
        L

    Tr(P : player, Fr : string, En : string, Es : string, De : string, It : string) : string =
        L := LangOf(P)
        var S : string = Fr
        if (L = 1) { set S = En }
        else if (L = 2) { set S = Es }
        else if (L = 3) { set S = De }
        else if (L = 4) { set S = It }
        S

    TrA(A : agent, Fr : string, En : string, Es : string, De : string, It : string) : string =
        var S : string = Fr
        if (P := player[A]) { set S = Tr(P, Fr, En, Es, De, It) }
        S

    # Choix par index de langue dans un tableau {FR, EN, ES, DE, IT}.
    TrL(P : player, Arr : []string) : string =
        var S : string = ""
        L := LangOf(P)
        if (N := Arr[L]) { set S = N }
        else if (N := Arr[0]) { set S = N }
        S

    QzNameEN : []string = array{"World Flags", "Countries on the Map", "French Department Flags", "French Departments on the Map", "World Capitals", "General Knowledge"}
    QzNameES : []string = array{"Banderas del mundo", "Paises en el mapa", "Banderas de los departamentos de Francia", "Departamentos de Francia en el mapa", "Capitales del mundo", "Cultura General"}
    QzNameDE : []string = array{"Flaggen der Welt", "Laender auf der Karte", "Flaggen der Departements Frankreichs", "Departements Frankreichs auf der Karte", "Hauptstaedte der Welt", "Allgemeinwissen"}
    QzNameIT : []string = array{"Bandiere del mondo", "Paesi sulla mappa", "Bandiere dei dipartimenti francesi", "Dipartimenti francesi sulla mappa", "Capitali del mondo", "Cultura Generale"}
    # Noms/tags de categorie par langue : un tableau {FR,EN,ES,DE,IT} par categorie.
    CatNamesL : [][]string = array{array{"Culture Generale", "General Knowledge", "Cultura General", "Allgemeinwissen", "Cultura Generale"}}
    CatTagsL : [][]string = array{array{"CULTURE G", "GENERAL", "CULTURA G", "WISSEN", "CULTURA G"}}

    QuizNameOf(P : player, Gi : int) : string =
        L := LangOf(P)
        var S : string = "?"
        if (L = 1):
            if (N := QzNameEN[Gi]) { set S = N }
        else if (L = 2):
            if (N := QzNameES[Gi]) { set S = N }
        else if (L = 3):
            if (N := QzNameDE[Gi]) { set S = N }
        else if (L = 4):
            if (N := QzNameIT[Gi]) { set S = N }
        else:
            if (N := QzName[Gi]) { set S = N }
        S

    CatNameOf(P : player, Ci : int) : string =
        var S : string = ""
        if (Row := CatNamesL[Ci]) { set S = TrL(P, Row) }
        S

    CatTagOf(P : player, Ci : int) : string =
        var S : string = ""
        if (Row := CatTagsL[Ci]) { set S = TrL(P, Row) }
        S

    DiffNameOf(P : player, D : int) : string =
        var S : string = Tr(P, "Moyen", "Medium", "Medio", "Mittel", "Medio")
        if (D = 0) { set S = Tr(P, "Facile", "Easy", "Facil", "Leicht", "Facile") }
        if (D = 2) { set S = Tr(P, "Difficile", "Hard", "Dificil", "Schwer", "Difficile") }
        S

    # texture (eventuellement teintee) qui NE capte PAS le clic.
    LbTex(Img : texture, Tint : color, W : float, H : float) : texture_block =
        T := texture_block:
            DefaultImage := Img
            DefaultTint := Tint
            DefaultDesiredSize := vector2{ X := W, Y := H }
        T

    # texte qui ne capte pas le clic.
    LbText2(S : string, Size : float, Col : color, Just : text_justification) : text_block =
        T := text_block:
            DefaultText := StringToMessage(S)
            DefaultTextColor := Col
            DefaultTextSize := Size
            DefaultJustification := Just
        T

    # Survol fidele au design : le fond passe sur sa variante "_hi" (fond eclairci).
    RegisterHover(B : button, Bg : texture_block, Normal : texture, Hover : texture) : void =
        Holder := hover_btn{ Btn := B, Bg := Bg, Normal := Normal, Hover := Hover }
        Holder.Wire()
        set HoverHolders += array{ Holder }

    # Texture du carre d'icone d'une categorie (degrade exact c -> c@69%). -1 = "Toutes".
    CatTexOf(Ci : int) : texture =
        var T : texture = lobby.lobby_cat_all
        if (Ci = 0) { set T = lobby.lobby_cat_0 }
        if (Ci = 1) { set T = lobby.lobby_cat_1 }
        if (Ci = 2) { set T = lobby.lobby_cat_2 }
        if (Ci = 3) { set T = lobby.lobby_cat_3 }
        if (Ci = 4) { set T = lobby.lobby_cat_4 }
        if (Ci = 5) { set T = lobby.lobby_cat_5 }
        if (Ci = 6) { set T = lobby.lobby_cat_6 }
        if (Ci = 7) { set T = lobby.lobby_cat_7 }
        if (Ci = 8) { set T = lobby.lobby_cat_8 }
        if (Ci = 9) { set T = lobby.lobby_cat_9 }
        T

    # Carre arrondi degrade d'une categorie + icone blanche centree.
    CatSquare(Ci : int, Sq : float, IcoSz : float, Tint : color) : overlay =
        Ico := if (Ci >= 0, I := CatIcon[Ci]) { I } else { icons.ic_grid }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(CatTexOf(Ci), Tint, Sq, Sq), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(Ico, Tint, IcoSz, IcoSz), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Tag de categorie (fond couleur, radius 6, texte 11) — .lb-tag du design.
    TagPill(Txt : string, Col : color, W : float) : overlay =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_tag, Col, W, 18.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2(Txt, 11.0, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Pastille d'info "N dispo" / "0/4" (fond blanc .08, radius 999, texte 12 mute).
    InfoPill(Txt : text_block, Img : texture, W : float) : overlay =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(Img, LbWhite, W, 22.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Txt, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Couleur d'une categorie (depuis CatColHex).
    ColOf(Ci : int) : color =
        if (Hex := CatColHex[Ci]) { MakeColorFromHex(Hex) } else { LbViolet }

    # Rangee de 3 points 8px (gap 4) ; les `Filled` premiers en couleur OnCol.
    DotsRow(Filled : int, OnCol : color) : stack_box =
        stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.dot, if (0 < Filled) { OnCol } else { LbDotOff }, 8.0, 8.0), Padding := margin{ Left := 0.0, Top := 0.0, Right := 4.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(icons.dot, if (1 < Filled) { OnCol } else { LbDotOff }, 8.0, 8.0), Padding := margin{ Left := 0.0, Top := 0.0, Right := 4.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(icons.dot, if (2 < Filled) { OnCol } else { LbDotOff }, 8.0, 8.0) }

    # Separateur horizontal de l'en-tete (border-bottom 2px blanc .09 du design).
    LbDivider() : color_block =
        D := color_block:
            DefaultColor := LbWhite
            DefaultOpacity := 0.09
            DefaultDesiredSize := vector2{ X := 1176.0, Y := 2.0 }
        D

    # Sizer transparent : force la taille d'un conteneur.
    LbSizer(W : float, H : float) : color_block =
        S := color_block:
            DefaultColor := LbWhite
            DefaultOpacity := 0.0
            DefaultDesiredSize := vector2{ X := W, Y := H }
        S

    # Elements HUD natifs a masquer (minimap + ressources + inventaire/constructions).
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

    # Re-masque sur ~4s (la minimap s'initialise apres l'UI).
    HideNativeHudRetry(Player : player)<suspends> : void =
        var I : int = 0
        loop:
            if (PlayerUI := GetPlayerUI[Player]):
                PlayerUI.HideHUDElements(NativeHudToHide())
            Sleep(0.5)
            if (I >= 8) { break }
            set I += 1

    # ===== Racine plein ecran : decor + fenetre 1180x760 centree =====
    LobbyRoot(Modal : widget) : canvas =
        FullBg := texture_block:
            DefaultImage := icons.bg_lobby
        canvas:
            Slots := array:
                canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := FullBg }
                canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }, Alignment := vector2{ X := 0.5, Y := 0.5 }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 1180.0, Bottom := 760.0 }, SizeToContent := false, Widget := Modal }
                canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 1.0 }, Maximum := vector2{ X := 0.0, Y := 1.0 } }, Alignment := vector2{ X := 0.0, Y := 1.0 }, Offsets := margin{ Left := 18.0, Top := -16.0, Right := 480.0, Bottom := 22.0 }, SizeToContent := true, Widget := stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbText2(MapVersion, 12.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Center }, stack_box_slot{ Widget := LbTex(icons.ic_github, LbMute, 13.0, 13.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 12.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2(RepoUrl, 12.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Center } } } }

    # Fenetre 1180x760 : la texture porte degrade + bordure 2px + lisere haut exacts.
    # Le contenu remplit l'interieur de la bordure (1176x756).
    ModalFrame(Inner : widget) : widget =
        overlay:
            Slots := array:
                overlay_slot{ Widget := texture_block{ DefaultImage := lobby.lobby_modal }, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill }
                overlay_slot{ Widget := Inner, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill, Padding := margin{ Left := 2.0, Top := 2.0, Right := 2.0, Bottom := 2.0 } }

    OpenLobby(Player : player) : void =
        # Ne pas rouvrir si deja affichee (auto-lance au spawn + re-ouvrable au bouton E).
        if (Shown := LobbyShown[Player], not Shown?, PlayerUI := GetPlayerUI[Player]):
            if (not LobbyScroll[Player]) { if (set LobbyScroll[Player] = 0) {} }
            if (not LobbyCatFilter[Player]) { if (set LobbyCatFilter[Player] = -1) {} }
            Content := stack_box:
                Orientation := orientation.Vertical
                Slots := array:
                    stack_box_slot{ Widget := BuildHeader(Player) }
                    stack_box_slot{ Widget := LbDivider() }
                    stack_box_slot{ Widget := BuildBody(Player) }
            Root := LobbyRoot(ModalFrame(Content))
            PlayerUI.AddWidget(Root, player_ui_slot{ InputMode := ui_input_mode.All })
            if (set LobbyCanvas[Player] = Root) {}
            if (set LobbyShown[Player] = true) {}
            PlayLobbyMusic(Player)
            RefreshQueue()   # remplit les slots de file + etat du bouton VALIDER

    CloseLobby(Player : player) : void =
        if (set LobbyShown[Player] = false) {}
        if (PlayerUI := GetPlayerUI[Player], C := LobbyCanvas[Player]):
            PlayerUI.RemoveWidget(C)

    RebuildLobby(Player : player) : void =
        CloseLobby(Player)
        OpenLobby(Player)

    # ===== EN-TETE (.lb-head : padding 22/24/18, gap 18, separateur en dessous) =====
    BuildHeader(Player : player) : widget =
        # badge fusee 50x50 (degrade brand, radius 14)
        Badge := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_badge, LbWhite, 50.0, 50.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_rocket, LbWhite, 24.0, 24.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        Title := LbText2(Tr(Player, "SELECTION DU QUIZZ", "QUIZ SELECTION", "SELECCION DE QUIZ", "QUIZ-AUSWAHL", "SELEZIONE QUIZ"), 32.0, LbWhite, text_justification.Left)
        Subtitle := LbText2(Tr(Player, "Composez la playlist de la partie - jusqu'a 4 quizz", "Build the game playlist - up to 4 quizzes", "Crea la playlist de la partida - hasta 4 quiz", "Stelle die Playlist zusammen - bis zu 4 Quiz", "Componi la playlist della partita - fino a 4 quiz"), 14.0, LbDim, text_justification.Left)
        TitleCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := Title }
                stack_box_slot{ Widget := Subtitle, Padding := margin{ Left := 0.0, Top := 4.0, Right := 0.0, Bottom := 0.0 } }
        LeftHead := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Badge, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 18.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TitleCol, VerticalAlignment := vertical_alignment.Center }
        # bouton Langue 170x53 (drapeau 26x18 + "LANGUE"/nom + chevron)
        LangUI := LangOf(Player)
        var FlagTex : texture = icons.flag_fr
        if (LangUI = 1) { set FlagTex = icons.flag_uk }
        else if (LangUI = 2) { set FlagTex = icons.flag_es }
        else if (LangUI = 3) { set FlagTex = icons.flag_de }
        else if (LangUI = 4) { set FlagTex = icons.flag_it }
        var LangNm : string = "Francais"
        if (LangUI = 1) { set LangNm = "English" }
        else if (LangUI = 2) { set LangNm = "Espanol" }
        else if (LangUI = 3) { set LangNm = "Deutsch" }
        else if (LangUI = 4) { set LangNm = "Italiano" }
        LangLab := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Tr(Player, "LANGUE", "LANGUAGE", "IDIOMA", "SPRACHE", "LINGUA"), 11.0, LbMute, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(LangNm, 15.0, LbWhite, text_justification.Left) }
        LangRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(FlagTex, LbWhite, 26.0, 18.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LangLab, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(icons.ic_chevron, LbDim, 16.0, 16.0), VerticalAlignment := vertical_alignment.Center }
        LangBg := LbTex(lobby.lobby_btn, LbWhite, 170.0, 53.0)
        LangInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LangBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LangRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BtnLang := button{ Slot := button_slot{ Widget := LangInner } }
        RegisterHover(BtnLang, LangBg, lobby.lobby_btn, lobby.lobby_btn_hi)
        BtnLang.OnClick().Subscribe(OnOpenLang)
        # pastille de RANG (embleme + palier + %), persistant entre sessions
        Pts := RankPtsOf(Player)
        T := RankTierOf(Pts)
        Pct := RankPctWithin(Pts)
        Unr := IsUnranked(Player)
        RName := if (N := RankNames[T]) { N } else { "" }
        PctS := if (T >= 17) { "MAX" } else { "{Pct}%" }
        RLine := if (Unr?) { "Unranked" } else { "{RName} - {PctS}" }
        RankLab := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Tr(Player, "RANG", "RANK", "RANGO", "RANG", "RANGO"), 11.0, LbMute, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(RLine, 16.0, LbWhite, text_justification.Left), Padding := margin{ Left := 0.0, Top := 1.0, Right := 0.0, Bottom := 0.0 } }
        Plate := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(RankEmblemFor(Player), LbWhite, 40.0, 40.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        RankRowH := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Plate, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := RankLab, VerticalAlignment := vertical_alignment.Center }
        RankChip := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_rankchip, LbWhite, 185.0, 58.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := RankRowH, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 8.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
        GearBg := LbTex(lobby.lobby_gear, LbWhite, 50.0, 50.0)
        GearInner := overlay:
            Slots := array:
                overlay_slot{ Widget := GearBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_gear, LbWhite, 22.0, 22.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BtnSet := button{ Slot := button_slot{ Widget := GearInner } }
        RegisterHover(BtnSet, GearBg, lobby.lobby_gear, lobby.lobby_gear_hi)
        BtnSet.OnClick().Subscribe(OnOpenSettings)
        # pastille FLAMMES (heures consecutives), a GAUCHE du rang
        FlameN := FlamesOf(Player)
        FlameNumT := LbText2("{FlameN}", 22.0, LbWhite, text_justification.Left)
        if (set LobbyFlameT[Player] = FlameNumT) {}   # ref gardee pour maj ciblee (sans rebuild complet)
        FlameTxtCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := FlameNumT }
                stack_box_slot{ Widget := LbText2("HEURES", 10.0, MakeColorFromHex("FFCB7A"), text_justification.Left), Padding := margin{ Left := 0.0, Top := 1.0, Right := 0.0, Bottom := 0.0 } }
        FlameRowH := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_flame, MakeColorFromHex("FF9F1C"), 26.0, 26.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := FlameTxtCol, VerticalAlignment := vertical_alignment.Center }
        StreakChip := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_streak, LbWhite, 120.0, 58.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := FlameRowH, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 13.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
        RightHead := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := StreakChip, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := RankChip, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnLang, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnSet, VerticalAlignment := vertical_alignment.Center }
        Head := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(1128.0, 53.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LeftHead, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := RightHead, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center }
        overlay:
            Slots := array:
                overlay_slot{ Widget := Head, Padding := margin{ Left := 24.0, Top := 22.0, Right := 24.0, Bottom := 18.0 } }

    # ===== CORPS (.lb-body : padding 20/24/24, colonnes 630 / 478, gouttiere 20) =====
    BuildBody(Player : player) : widget =
        Cols := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := BuildLeftCol(Player), Padding := margin{ Left := 0.0, Top := 0.0, Right := 20.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BuildRightCol(Player) }
        overlay:
            Slots := array:
                overlay_slot{ Widget := Cols, Padding := margin{ Left := 24.0, Top := 20.0, Right := 24.0, Bottom := 24.0 } }

    # ===== COLONNE GAUCHE (630) : Categorie 630x68, titre, liste 443, LIRE PLUS 630x48 =====
    BuildLeftCol(Player : player) : widget =
        # -- bouton Categorie (.lb-subbtn : padding 13/16, icone 38, valeur cyan 14) --
        var FiltName : string = Tr(Player, "Toutes", "All", "Todas", "Alle", "Tutte")
        if (F := LobbyCatFilter[Player], F >= 0) { set FiltName = CatNameOf(Player, F) }
        SubIc := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_sub_ic, LbWhite, 38.0, 38.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_grid, LbWhite, 18.0, 18.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        FiltLab := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Tr(Player, "FILTRER PAR", "FILTER BY", "FILTRAR POR", "FILTERN NACH", "FILTRA PER"), 11.0, LbMute, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(Tr(Player, "Categorie", "Category", "Categoria", "Kategorie", "Categoria"), 17.0, LbWhite, text_justification.Left) }
        FiltLeft := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := SubIc, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := FiltLab, VerticalAlignment := vertical_alignment.Center }
        FiltValT := LbText2(FiltName, 14.0, LbCyan, text_justification.Right)
        if (set LobbyFiltVal[Player] = FiltValT) {}
        FiltRight := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := FiltValT, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(icons.ic_chevron, LbWhite, 16.0, 16.0), VerticalAlignment := vertical_alignment.Center }
        FiltBg := LbTex(lobby.lobby_subbtn, LbWhite, 630.0, 68.0)
        FiltInner := overlay:
            Slots := array:
                overlay_slot{ Widget := FiltBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := FiltLeft, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 16.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := FiltRight, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
        BtnFilt := button{ Slot := button_slot{ Widget := FiltInner } }
        RegisterHover(BtnFilt, FiltBg, lobby.lobby_subbtn, lobby.lobby_subbtn_hi)
        BtnFilt.OnClick().Subscribe(OnOpenCat)

        # -- titre de liste (.lb-col__title : marge 4, gap 9, Anton 20 + pastille) --
        DispoW := Tr(Player, "dispo", "avail.", "disp.", "verf.", "disp.")
        DispoT := LbText2("{FilteredIdx(Player).Length} {DispoW}", 12.0, LbMute, text_justification.Center)
        if (set LobbyDispoT[Player] = DispoT) {}
        ListHeadL := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_grid, LbWhite, 18.0, 18.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 4.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "Tous les quizz", "All quizzes", "Todos los quiz", "Alle Quiz", "Tutti i quiz"), 20.0, LbWhite, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        ListHead := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(630.0, 24.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := ListHeadL, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := InfoPill(DispoT, lobby.lobby_pill, 78.0), HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 4.0, Bottom := 0.0 } }

        # -- zone liste 630x443 : sous-canvas hote, SEUL ce contenu est reconstruit au
        #    scroll (la racine n'est pas re-ajoutee => curseur stable, pas de flicker) --
        LH := canvas{}
        Content0 := BuildListArea(Player)
        if (set LobbyListHost[Player] = LH) {}
        if (set LobbyListContent[Player] = Content0) {}
        LH.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := Content0 })
        HostWrap := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(630.0, 443.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := LH, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill }

        # -- LIRE PLUS 630x48 (.lb-scrolldown : chevron 20 + Anton 17, descend d'1 carte) --
        MoreBg := LbTex(lobby.lobby_more, LbWhite, 630.0, 48.0)
        MoreRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_down, LbWhite, 20.0, 20.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "LIRE PLUS", "SEE MORE", "VER MAS", "MEHR", "VEDI ALTRO"), 17.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
        MoreInner := overlay:
            Slots := array:
                overlay_slot{ Widget := MoreBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := MoreRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        MoreBtn := button{ Slot := button_slot{ Widget := MoreInner } }
        MoreBtn.OnClick().Subscribe(OnMore)
        if (set LobbyMoreBg[Player] = MoreBg) {}
        if (set LobbyMoreBtn[Player] = MoreBtn) {}
        UpdateMoreBtn(Player)

        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := BtnFilt, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := ListHead, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := HostWrap, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 10.0 } }
                stack_box_slot{ Widget := MoreBtn }

    # Active/grise le bouton LIRE PLUS selon qu'on est en bas de la liste (design .is-disabled).
    UpdateMoreBtn(Player : player) : void =
        Idx := FilteredIdx(Player)
        Cap := if (Idx.Length - VisibleCards > 0) { Idx.Length - VisibleCards } else { 0 }
        var S : int = 0
        if (X := LobbyScroll[Player]) { set S = X }
        AtBottom : logic = if (S >= Cap) { true } else { false }
        if (Bg := LobbyMoreBg[Player]):
            if (AtBottom?) { Bg.SetImage(lobby.lobby_more_off) } else { Bg.SetImage(lobby.lobby_more) }
        if (Btn := LobbyMoreBtn[Player]):
            Btn.SetEnabled(if (AtBottom?) { false } else { true })

    OnMore(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ScrollBy(M.Player, 1)

    # Contenu de la liste (.lb-listrow) : cartes 591 (gap 9, retrait 4)
    # + rail scrollbar custom 26px a droite (gap 7).
    BuildListArea(Player : player) : widget =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(630.0, 443.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := BuildQuizList(Player), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 4.0, Top := 4.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := ScrollRail(Player), HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Top }

    # Swap UNIQUEMENT le contenu de la liste (pas de re-add racine => curseur stable).
    RefreshList(Player : player) : void =
        if (LH := LobbyListHost[Player]):
            if (Old := LobbyListContent[Player]) { LH.RemoveWidget(Old) }
            New := BuildListArea(Player)
            if (set LobbyListContent[Player] = New) {}
            LH.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := New })
        DispoW := Tr(Player, "dispo", "avail.", "disp.", "verf.", "disp.")
        if (DT := LobbyDispoT[Player]) { DT.SetText(StringToMessage("{FilteredIdx(Player).Length} {DispoW}")) }
        UpdateMoreBtn(Player)

    # Les coches "deja en file" concernent TOUS les joueurs (file partagee).
    RefreshListAll() : void =
        for (P -> _H : LobbyListHost):
            RefreshList(P)

    # ===== COLONNE DROITE (478) : file + Classe/Non classe + difficulte + VALIDER =====
    BuildRightCol(Player : player) : widget =
        CntT := LbText2("{LobbyQueue.Length}/{MaxQueue}", 12.0, LbMute, text_justification.Center)
        if (set LobbyQCountT[Player] = CntT) {}
        FileHead := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(478.0, 24.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2(Tr(Player, "File de la partie", "Game queue", "Cola de la partida", "Warteschlange", "Coda della partita"), 20.0, LbWhite, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 4.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := InfoPill(CntT, lobby.lobby_pill_sm, 54.0), HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 4.0, Bottom := 0.0 } }

        # -- hote de la file : seul le contenu est reconstruit au refresh --
        QH := canvas{}
        QContent0 := BuildQueueWidget(Player)
        if (set LobbyQueueHost[Player] = QH) {}
        if (set LobbyQueueContent[Player] = QContent0) {}
        QH.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := QContent0 })
        QueueWrap := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(478.0, 374.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := QH, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill }

        # -- Classe / Non classe (.lb-ranked : 2 x 234x46, gap 10, anneau or / cyan) --
        set TmpRing = array{}
        set TmpIco = array{}
        BtnClasse := RankBtn(Tr(Player, "Classe", "Ranked", "Competitivo", "Gewertet", "Competitiva"), icons.ic_trophy, LbGold)
        BtnNon := RankBtn(Tr(Player, "Non classe", "Unranked", "Normal", "Ungewertet", "Normale"), icons.ic_smile, LbCyan)
        BtnClasse.OnClick().Subscribe(OnRankOn)
        BtnNon.OnClick().Subscribe(OnRankOff)
        HostOk := IsHost(Player)
        if (not HostOk?):
            BtnClasse.SetEnabled(false)
            BtnNon.SetEnabled(false)
        if (set LobbyRankRing[Player] = TmpRing) {}
        if (set LobbyRankIco[Player] = TmpIco) {}
        var Rk : logic = true
        if (X := LobbyRanked[Player]) { set Rk = X }
        SetRank(Player, Rk)
        RankRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := BtnClasse, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnNon }

        # -- Difficulte (.lb-diff : 3 x 152.7x58, gap 10, anneau vert/jaune/rouge) --
        set TmpRing = array{}
        set TmpDotsOn = array{}
        set TmpDotsOff = array{}
        BtnFa := DiffBtn(DiffNameOf(Player, 0), 1, LbGreen)
        BtnMo := DiffBtn(DiffNameOf(Player, 1), 2, LbYellow)
        BtnDi := DiffBtn(DiffNameOf(Player, 2), 3, LbRed)
        BtnFa.OnClick().Subscribe(OnDiffFacile)
        BtnMo.OnClick().Subscribe(OnDiffMoyen)
        BtnDi.OnClick().Subscribe(OnDiffDifficile)
        HostOk2 := IsHost(Player)
        if (not HostOk2?):
            BtnFa.SetEnabled(false)
            BtnMo.SetEnabled(false)
            BtnDi.SetEnabled(false)
        if (set LobbyDiffRing[Player] = TmpRing) {}
        if (set LobbyDiffDotsOn[Player] = TmpDotsOn) {}
        if (set LobbyDiffDotsOff[Player] = TmpDotsOff) {}
        var Dsel : int = 1
        if (D := LobbyDiff[Player]) { set Dsel = D }
        SetDiff(Player, Dsel)
        DiffRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := BtnFa, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnMo, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnDi }

        # -- VALIDER 478x65 (.lb-validate : check 20 + Anton 24 + "- N quizz" 13) --
        ValBg := LbTex(lobby.lobby_valid, LbWhite, 478.0, 65.0)
        ValSmall := LbText2("", 13.0, LbWhite, text_justification.Left)
        ValRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_check, LbWhite, 20.0, 20.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "VALIDER", "CONFIRM", "CONFIRMAR", "BESTAETIGEN", "CONFERMA"), 24.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
                stack_box_slot{ Widget := ValSmall, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 8.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
        ValInner := overlay:
            Slots := array:
                overlay_slot{ Widget := ValBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := ValRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BtnGo := button{ Slot := button_slot{ Widget := ValInner } }
        BtnGo.OnClick().Subscribe(OnStartClicked)
        if (set LobbyValidBg[Player] = ValBg) {}
        if (set LobbyValidBtn[Player] = BtnGo) {}
        if (set LobbyValidTxt[Player] = ValSmall) {}
        UpdateValidate(Player)

        # File en HAUT (flex:1), controles ancres en BAS (comme le design).
        TopGroup := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := FileHead, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := QueueWrap }
        BotGroup := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := RankRow, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := DiffRow, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := BtnGo }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(478.0, 617.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := TopGroup, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := BotGroup, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Bottom }

    # Grise/active VALIDER : file non vide ET joueur = chef de groupe.
    UpdateValidate(Player : player) : void =
        N := LobbyQueue.Length
        HostOk := IsHost(Player)
        CanGo : logic = if (N > 0, HostOk?) { true } else { false }
        if (Bg := LobbyValidBg[Player]):
            if (CanGo?) { Bg.SetImage(lobby.lobby_valid) } else { Bg.SetImage(lobby.lobby_valid_off) }
        if (B := LobbyValidBtn[Player]):
            B.SetEnabled(CanGo)
        if (T := LobbyValidTxt[Player]):
            VW := Tr(Player, "quizz", "quiz", "quiz", "Quiz", "quiz")
            if (N > 0) { T.SetText(StringToMessage("- {N} {VW}")) }
            else { T.SetText(StringToMessage("")) }

    # ===== File : 4 slots (vide 478x54 pointille / rempli 478x66), gap 9 =====
    BuildQueueWidget(Player : player) : widget =
        Slots := for (I := 0..MaxQueue - 1):
            stack_box_slot{ Widget := QSlotRow(Player, I), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 9.0 } }
        stack_box{ Orientation := orientation.Vertical, Slots := Slots }

    QSlotRow(P : player, I : int) : widget =
        if (Gi := LobbyQueue[I]):
            FilledSlot(P, I, Gi)
        else:
            EmptySlot(P, I)

    # Slot vide : bordure pointillee, numero + "En attente d'un choix..." (15 mute).
    EmptySlot(P : player, I : int) : widget =
        Num := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_num, LbWhite, 30.0, 30.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{I + 1}", 17.0, LbDim, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        Row := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Num, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(P, "En attente d'un choix...", "Waiting for a pick...", "Esperando una eleccion...", "Warten auf eine Wahl...", "In attesa di una scelta..."), 15.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_slot_empty, LbWhite, 478.0, 54.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Row, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 12.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }

    # Slot rempli : numero (brand), icone categorie 42, nom + "Choisi par PN - N q.", poubelle.
    FilledSlot(P : player, I : int, Gi : int) : widget =
        Ci := if (X := QzCat[Gi]) { X } else { 0 }
        Name := QuizNameOf(P, Gi)
        Qn := BankDiffsOf(Gi).Length   # total de la banque (somme des 3 difficultes), pas les 25/round
        var PN : int = I + 1
        if (Who := LobbyQueueBy[I], X := PlayerNum[Who]) { set PN = X }
        var PCol : color = LbRed
        if (PIdx := Mod[PN - 1, 4], H := PColHex[PIdx]) { set PCol = MakeColorFromHex(H) }
        Num := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_num_on, LbWhite, 30.0, 30.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{I + 1}", 17.0, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        PDot := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(icons.dot, PCol, 16.0, 16.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{PN}", 9.0, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        PlayerRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := PDot, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 5.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(P, "Choisi par P{PN} - {Qn} q.", "Picked by P{PN} - {Qn} q.", "Elegido por P{PN} - {Qn} p.", "Gewaehlt von P{PN} - {Qn} F.", "Scelto da P{PN} - {Qn} d."), 12.0, LbDim, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        TxtCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Name, 16.0, LbWhite, text_justification.Left) }
                stack_box_slot{ Widget := PlayerRow, Padding := margin{ Left := 0.0, Top := 2.0, Right := 0.0, Bottom := 0.0 } }
        LeftG := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Num, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := CatSquare(Ci, 42.0, 22.0, LbWhite), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TxtCol, VerticalAlignment := vertical_alignment.Center }
        RmInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_rm, LbWhite, 30.0, 30.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_trash, LbWhite, 15.0, 15.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        RmBtn := button{ Slot := button_slot{ Widget := RmInner } }
        Holder := slot_rm{ Mgr := Self, Idx := I }
        RmBtn.OnClick().Subscribe(Holder.OnClick)
        set RmHolders += array{ Holder }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_slot, LbWhite, 478.0, 66.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LeftG, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 12.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := RmBtn, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }

    # ===== Classe / Non classe (234x46, anneau + voile teinte or/cyan quand actif) =====
    RankBtn(Label : string, IconTex : texture, SelTint : color) : button =
        Ring := LbTex(lobby.lobby_rank_on, SelTint, 238.0, 50.0)
        Ring.SetVisibility(widget_visibility.Hidden)
        set TmpRing += array{ Ring }
        Ico := LbTex(IconTex, LbMute, 18.0, 18.0)
        set TmpIco += array{ Ico }
        Bg := LbTex(lobby.lobby_rank, LbWhite, 234.0, 46.0)
        Row := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Ico, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Label, 15.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
        Inner := overlay:
            Slots := array:
                overlay_slot{ Widget := Bg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Ring, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Row, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        B := button{ Slot := button_slot{ Widget := Inner } }
        RegisterHover(B, Bg, lobby.lobby_rank, lobby.lobby_rank_hi)
        B

    SetRank(Player : player, Ranked : logic) : void =
        if (set LobbyRanked[Player] = Ranked) {}
        SelIdx := if (Ranked?) { 0 } else { 1 }
        if (Rings := LobbyRankRing[Player]):
            for (I := 0..Rings.Length - 1, W := Rings[I]):
                if (I = SelIdx) { W.SetVisibility(widget_visibility.Visible) }
                else { W.SetVisibility(widget_visibility.Hidden) }
        if (Icos := LobbyRankIco[Player]):
            for (I := 0..Icos.Length - 1, Ic := Icos[I]):
                if (I = SelIdx):
                    Ic.SetTint(if (SelIdx = 0) { LbGold } else { LbCyan })
                else:
                    Ic.SetTint(LbMute)

    # Seul le chef change le mode ; applique a TOUS les joueurs (parametres de groupe).
    OnRankOn(M : widget_message) : void = HostSetRank(M.Player, true)
    OnRankOff(M : widget_message) : void = HostSetRank(M.Player, false)
    HostSetRank(P : player, Ranked : logic) : void =
        HostOk := IsHost(P)
        if (HostOk?):
            PlayFx(P, 3, SfxClick)
            Ps := GetPlayspace().GetPlayers()
            for (Pl : Ps) { SetRank(Pl, Ranked) }

    # ===== Difficulte (152.7x58 : dots 8px + nom Anton 17, anneau couleur niveau) =====
    DiffBtn(Label : string, Dots : int, LvlCol : color) : button =
        Ring := LbTex(lobby.lobby_diff_on, LvlCol, 156.7, 62.0)
        Ring.SetVisibility(widget_visibility.Hidden)
        set TmpRing += array{ Ring }
        DOn := DotsRow(Dots, LvlCol)
        DOn.SetVisibility(widget_visibility.Collapsed)
        DOff := DotsRow(0, LbDotOff)
        set TmpDotsOn += array{ DOn }
        set TmpDotsOff += array{ DOff }
        DotsWrap := overlay:
            Slots := array:
                overlay_slot{ Widget := DOff, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := DOn, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        Content := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := DotsWrap, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 5.0 } }
                stack_box_slot{ Widget := LbText2(Label, 17.0, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center }
        Bg := LbTex(lobby.lobby_diff, LbWhite, 152.7, 58.0)
        Inner := overlay:
            Slots := array:
                overlay_slot{ Widget := Bg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Ring, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Content, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        B := button{ Slot := button_slot{ Widget := Inner } }
        RegisterHover(B, Bg, lobby.lobby_diff, lobby.lobby_diff_hi)
        B

    SetDiff(Player : player, D : int) : void =
        if (set LobbyDiff[Player] = D) {}
        if (Rings := LobbyDiffRing[Player]):
            for (I := 0..Rings.Length - 1, W := Rings[I]):
                if (I = D) { W.SetVisibility(widget_visibility.Visible) }
                else { W.SetVisibility(widget_visibility.Hidden) }
        if (Ons := LobbyDiffDotsOn[Player]):
            for (I := 0..Ons.Length - 1, W := Ons[I]):
                if (I = D) { W.SetVisibility(widget_visibility.Visible) }
                else { W.SetVisibility(widget_visibility.Collapsed) }
        if (Offs := LobbyDiffDotsOff[Player]):
            for (I := 0..Offs.Length - 1, W := Offs[I]):
                if (I = D) { W.SetVisibility(widget_visibility.Collapsed) }
                else { W.SetVisibility(widget_visibility.Visible) }

    # ===== Liste de quizz =====
    # Ordre ALPHABETIQUE des quizz par langue (indices Gi). Precalcule (pas de tri de string en Verse).
    # ⚠️ Si on ajoute/retire un quizz, mettre a jour ces ordres (les Gi absents seront ajoutes a la fin).
    AlphaOrder(P : player) : []int =
        L := LangOf(P)
        var O : []int = array{4, 5, 3, 2, 0, 1}        # FR
        if (L = 1) { set O = array{1, 2, 3, 5, 4, 0} }  # EN
        else if (L = 2) { set O = array{2, 0, 4, 5, 3, 1} }  # ES
        else if (L = 3) { set O = array{5, 3, 2, 0, 4, 1} }  # DE
        else if (L = 4) { set O = array{2, 0, 4, 5, 3, 1} }  # IT
        O

    FilteredIdx(Player : player) : []int =
        var F : int = -1
        if (X := LobbyCatFilter[Player]) { set F = X }
        Order := AlphaOrder(Player)
        var Out : []int = array{}
        # 1) quizz dans l'ordre alphabetique (filtres par categorie)
        for (Gi : Order):
            if (Gi >= 0, Gi < QzName.Length, C := QzCat[Gi], (F < 0) or (C = F)):
                set Out += array{ Gi }
        # 2) securite : quizz actifs absents de l'ordre -> ajoutes a la fin
        for (I := 0..QzName.Length - 1):
            var Seen : logic = false
            for (G : Order, G = I) { set Seen = true }
            if (not Seen?, C := QzCat[I], (F < 0) or (C = F)):
                set Out += array{ I }
        Out

    IsQueued(Gi : int) : logic =
        var R : logic = false
        for (Q : LobbyQueue, Q = Gi) { set R = true }
        R

    CountCat(Ci : int) : int =
        var N : int = 0
        for (C : QzCat, C = Ci) { set N += 1 }
        N

    # Carte quizz 591x76 (.lb-quiz : icone 50, nom 18, tag + N questions, bouton +).
    # Deja en file = opacite .5 du design (textes/teintes attenues + coche verte).
    QuizCardFor(Player : player, Gi : int) : button =
        Ci := if (X := QzCat[Gi]) { X } else { 0 }
        Name := QuizNameOf(Player, Gi)
        Qn := BankDiffsOf(Gi).Length   # total de la banque (somme des 3 difficultes), pas les 25/round
        TagTxt := CatTagOf(Player, Ci)
        TagW := if (T := CatTagW[Ci]) { T } else { 100.0 }
        Queued := IsQueued(Gi)
        IcTint := if (Queued?) { LbGrey } else { LbWhite }
        NameCol := if (Queued?) { LbHalf } else { LbWhite }
        MetaCol := if (Queued?) { LbMuteHalf } else { LbMute }
        var TagCol : color = ColOf(Ci)
        if (Queued?, H := CatColDimHex[Ci]) { set TagCol = MakeColorFromHex(H) }
        MetaRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := TagPill(TagTxt, TagCol, TagW), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "Base de donnees de {Qn} questions", "Database of {Qn} questions", "Base de datos de {Qn} preguntas", "Datenbank mit {Qn} Fragen", "Database di {Qn} domande"), 13.0, MetaCol, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        TextCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Name, 18.0, NameCol, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left }
                stack_box_slot{ Widget := MetaRow, HorizontalAlignment := horizontal_alignment.Left, Padding := margin{ Left := 0.0, Top := 4.0, Right := 0.0, Bottom := 0.0 } }
        LeftGroup := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := CatSquare(Ci, 50.0, 24.0, IcTint), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 14.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TextCol, VerticalAlignment := vertical_alignment.Center }
        AddBgTex := if (Queued?) { lobby.lobby_quizadd_on } else { lobby.lobby_quizadd }
        AddIcoTex := if (Queued?) { icons.ic_check } else { icons.ic_plus }
        AddIcoSz := if (Queued?) { 16.0 } else { 18.0 }   # design : check(16) / plus(18)
        AddSq := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(AddBgTex, LbWhite, 34.0, 34.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(AddIcoTex, LbWhite, AddIcoSz, AddIcoSz), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        CardBg := LbTex(lobby.lobby_card, IcTint, 591.0, 76.0)
        Inner := overlay:
            Slots := array:
                overlay_slot{ Widget := CardBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LeftGroup, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 12.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := AddSq, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
        B := button{ Slot := button_slot{ Widget := Inner } }
        if (not Queued?):
            RegisterHover(B, CardBg, lobby.lobby_card, lobby.lobby_card_hi)
        Holder := quiz_pick{ Mgr := Self, Gi := Gi }
        B.OnClick().Subscribe(Holder.OnClick)
        set PickHolders += array{ Holder }
        B

    BuildQuizList(Player : player) : widget =
        Idx := FilteredIdx(Player)
        var Start : int = 0
        if (S := LobbyScroll[Player]) { set Start = S }
        Slots := for (J := 0..VisibleCards - 1, K := Start + J, K < Idx.Length, Gi := Idx[K]):
            stack_box_slot{ Widget := QuizCardFor(Player, Gi), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 9.0 } }
        stack_box{ Orientation := orientation.Vertical, Slots := Slots }

    # Rail scrollbar custom du design (.lb-scroll, colonne 26px) : fleche haut 26x26,
    # piste 12x379 + curseur violet (min 26), fleche bas — gaps 6, alignes.
    # (Pas de glisser-deposer du curseur en Verse : les fleches montent/descendent d'1 carte.)
    ScrollRail(Player : player) : widget =
        TrackH : float = 379.0   # 443 - 2x26 (fleches) - 2x6 (gaps)
        Idx := FilteredIdx(Player)
        Total := Idx.Length
        var Scroll : int = 0
        if (S := LobbyScroll[Player]) { set Scroll = S }
        Cap := if (Total - VisibleCards > 0) { Total - VisibleCards } else { 0 }
        AtTop : logic = if (Scroll <= 0) { true } else { false }
        AtBottom : logic = if (Scroll >= Cap) { true } else { false }
        # embouts fleches (grises + desactives en butee, design .is-disabled)
        UpTex := if (AtTop?) { lobby.lobby_scrollcap_off } else { lobby.lobby_scrollcap }
        DnTex := if (AtBottom?) { lobby.lobby_scrollcap_off } else { lobby.lobby_scrollcap }
        UpInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(UpTex, LbWhite, 26.0, 26.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_up, LbWhite, 15.0, 15.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        UpBtn := button{ Slot := button_slot{ Widget := UpInner } }
        UpBtn.OnClick().Subscribe(OnScrollUp)
        UpBtn.SetEnabled(if (AtTop?) { false } else { true })
        DnInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(DnTex, LbWhite, 26.0, 26.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_down, LbWhite, 15.0, 15.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        DnBtn := button{ Slot := button_slot{ Widget := DnInner } }
        DnBtn.OnClick().Subscribe(OnScrollDown)
        DnBtn.SetEnabled(if (AtBottom?) { false } else { true })
        # piste + curseur (curseur cache s'il n'y a pas de depassement, comme le design)
        var Frac : float = 1.0
        if (Total > VisibleCards, F := (VisibleCards * 1.0) / (Total * 1.0)) { set Frac = F }
        var TH : float = TrackH * Frac
        if (TH < 26.0) { set TH = 26.0 }   # min-height 26px du design
        var Pos : float = 0.0
        if (Cap > 0, P := (Scroll * 1.0) / (Cap * 1.0)) { set Pos = P }
        ThumbY := (TrackH - TH) * Pos
        Thumb := LbTex(lobby.lobby_thumb, LbWhite, 10.0, TH)
        if (Total <= VisibleCards) { Thumb.SetVisibility(widget_visibility.Hidden) }
        Track := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_track, LbWhite, 12.0, TrackH), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Thumb, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 0.0, Top := ThumbY, Right := 0.0, Bottom := 0.0 } }
        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := UpBtn, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 6.0 } }
                stack_box_slot{ Widget := Track, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 6.0 } }
                stack_box_slot{ Widget := DnBtn, HorizontalAlignment := horizontal_alignment.Center }

    ScrollBy(Player : player, D : int) : void =
        Idx := FilteredIdx(Player)
        Cap := if (Idx.Length - VisibleCards > 0) { Idx.Length - VisibleCards } else { 0 }
        var S : int = 0
        if (X := LobbyScroll[Player]) { set S = X }
        set S += D
        if (S < 0) { set S = 0 }
        if (S > Cap) { set S = Cap }
        if (set LobbyScroll[Player] = S) {}
        RefreshList(Player)   # swap liste seule => curseur stable, pas de flicker

    PickCategory(Player : player, Ci : int) : void =
        if (set LobbyCatFilter[Player] = Ci) {}
        if (set LobbyScroll[Player] = 0) {}
        var FN : string = Tr(Player, "Toutes", "All", "Todas", "Alle", "Tutte")
        if (Ci >= 0) { set FN = CatNameOf(Player, Ci) }
        if (FV := LobbyFiltVal[Player]) { FV.SetText(StringToMessage(FN)) }
        CloseSub(Player)
        RefreshList(Player)   # met a jour la liste filtree sans recentrer le curseur

    # ===== File : max 4 quizz au total, quota par joueur selon le nombre de joueurs =====
    # 1 joueur seul = 4 choix ; 2 joueurs = 2 chacun ; 3 ou 4 joueurs = 1 chacun.
    PickQuota() : int =
        N := GetPlayspace().GetPlayers().Length
        var Q : int = 1
        if (N <= 1) { set Q = 4 }
        if (N = 2) { set Q = 2 }
        Q

    # Nombre de quizz deja ajoutes par ce joueur (derive de la file).
    PicksBy(P : player) : int =
        var N : int = 0
        for (W : LobbyQueueBy, W = P) { set N += 1 }
        N

    AddToQueue(P : player, Gi : int) : void =
        Dup := IsQueued(Gi)
        Mine := PicksBy(P)        # hors du `if` : GetPlayspace est no_rollback,
        Quota := PickQuota()      # interdit dans un contexte d'echec
        if:
            Mine < Quota
            LobbyQueue.Length < MaxQueue
            not Dup?
        then:
            set LobbyQueue += array{ Gi }
            set LobbyQueueBy += array{ P }
            PlayFx(P, 3, SfxClick)
            RefreshListAll()   # coche visible chez tous (file partagee)
            RefreshQueue()

    RemoveFromQueue(Idx : int) : void =
        set LobbyQueue = for (I := 0..LobbyQueue.Length - 1, I <> Idx, G := LobbyQueue[I]) { G }
        set LobbyQueueBy = for (I := 0..LobbyQueueBy.Length - 1, I <> Idx, W := LobbyQueueBy[I]) { W }
        RefreshListAll()
        RefreshQueue()

    # Reconstruit la file de CHAQUE joueur (etat partage) + pastille n/4 + VALIDER.
    RefreshQueue() : void =
        for (P -> Host : LobbyQueueHost):
            if (Old := LobbyQueueContent[P]) { Host.RemoveWidget(Old) }
            New := BuildQueueWidget(P)
            if (set LobbyQueueContent[P] = New) {}
            Host.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := New })
        for (_P -> CT : LobbyQCountT):
            CT.SetText(StringToMessage("{LobbyQueue.Length}/{MaxQueue}"))
        for (P -> _B : LobbyValidBtn):
            UpdateValidate(P)

    # --- Handlers ---
    OnOpenLang(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ShowLangSub(M.Player)
    OnOpenCat(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ShowCatSub(M.Player)
    OnStartClicked(M : widget_message) : void =
        HostOk := IsHost(M.Player)
        if (HostOk?, LobbyQueue.Length > 0):
            set QueuePos = 0   # debut de la playlist
            # UN SEUL tirage de 25 questions pour tout le groupe : memes questions,
            # meme ordre (et memes reponses A/B/C/D, figees dans la banque).
            SharedOrder := PrepareSessionOrder(M.Player)
            # le chef lance la partie pour TOUS les joueurs dans le lobby
            Ps := GetPlayspace().GetPlayers()
            var Launched : []player = array{}
            for (Pl : Ps):
                var InL : logic = false
                if (X := LobbyShown[Pl]) { set InL = X }
                if (InL?):
                    set Launched += array{ Pl }
                    spawn { StartQuizForPlayer(Pl, SharedOrder) }
            set RoundPlayers = Launched
    OnDiffFacile(M : widget_message) : void = HostSetDiff(M.Player, 0)
    OnDiffMoyen(M : widget_message) : void = HostSetDiff(M.Player, 1)
    OnDiffDifficile(M : widget_message) : void = HostSetDiff(M.Player, 2)
    HostSetDiff(P : player, D : int) : void =
        HostOk := IsHost(P)
        if (HostOk?):
            PlayFx(P, 3, SfxClick)
            Ps := GetPlayspace().GetPlayers()
            for (Pl : Ps) { SetDiff(Pl, D) }
    OnScrollUp(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ScrollBy(M.Player, -1)
    OnScrollDown(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ScrollBy(M.Player, 1)
    OnBackSub(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        CloseSub(M.Player)
    OnPickFR(M : widget_message) : void =
        if (set LobbyLang[M.Player] = 0) {}
        CloseSub(M.Player)
        RebuildLobby(M.Player)
    OnPickEN(M : widget_message) : void =
        if (set LobbyLang[M.Player] = 1) {}
        CloseSub(M.Player)
        RebuildLobby(M.Player)
    OnPickES(M : widget_message) : void =
        if (set LobbyLang[M.Player] = 2) {}
        CloseSub(M.Player)
        RebuildLobby(M.Player)
    OnPickDE(M : widget_message) : void =
        if (set LobbyLang[M.Player] = 3) {}
        CloseSub(M.Player)
        RebuildLobby(M.Player)
    OnPickIT(M : widget_message) : void =
        if (set LobbyLang[M.Player] = 4) {}
        CloseSub(M.Player)
        RebuildLobby(M.Player)

    CloseSub(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := LobbySubCanvas[Player]):
            PlayerUI.RemoveWidget(C)

    # ===== Sous-pages (.lb-sub : REMPLACENT tout le contenu de la fenetre) =====
    # En-tete propre : retour 46x46 + titre Anton 28 (padding 22/24/18) + separateur.
    ShowSubPage(Player : player, TitleStr : string, BodyW : widget, CenterBody : logic) : void =
        if (PlayerUI := GetPlayerUI[Player]):
            BackBg := LbTex(lobby.lobby_back, LbWhite, 46.0, 46.0)
            BackInner := overlay:
                Slots := array:
                    overlay_slot{ Widget := BackBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                    overlay_slot{ Widget := LbTex(icons.ic_back, LbWhite, 22.0, 22.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
            BtnBack := button{ Slot := button_slot{ Widget := BackInner } }
            RegisterHover(BtnBack, BackBg, lobby.lobby_back, lobby.lobby_back_hi)
            BtnBack.OnClick().Subscribe(OnBackSub)
            HeadRow := stack_box:
                Orientation := orientation.Horizontal
                Slots := array:
                    stack_box_slot{ Widget := BtnBack, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                    stack_box_slot{ Widget := LbText2(TitleStr, 28.0, LbWhite, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
            Head := overlay:
                Slots := array:
                    overlay_slot{ Widget := LbSizer(1128.0, 46.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                    overlay_slot{ Widget := HeadRow, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
            HeadPad := overlay:
                Slots := array:
                    overlay_slot{ Widget := Head, Padding := margin{ Left := 24.0, Top := 22.0, Right := 24.0, Bottom := 18.0 } }
            BodyAlign := if (CenterBody?) { horizontal_alignment.Center } else { horizontal_alignment.Left }
            Body := overlay:
                Slots := array:
                    overlay_slot{ Widget := LbSizer(1176.0, 624.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                    overlay_slot{ Widget := BodyW, HorizontalAlignment := BodyAlign, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 24.0, Top := 22.0, Right := 24.0, Bottom := 22.0 } }
            Content := stack_box:
                Orientation := orientation.Vertical
                Slots := array:
                    stack_box_slot{ Widget := HeadPad }
                    stack_box_slot{ Widget := LbDivider() }
                    stack_box_slot{ Widget := Body }
            Root := LobbyRoot(ModalFrame(Content))
            PlayerUI.AddWidget(Root, player_ui_slot{ InputMode := ui_input_mode.All })
            if (set LobbySubCanvas[Player] = Root) {}

    OnOpenSettings(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ShowSettingsSub(M.Player)

    # ===== Page PARAMETRES AUDIO (design .lb-audio) =====
    # 4 canaux : General / Musique / Effets / Interface. Chaque rangee 780x84 :
    # icone 48 coloree, libelles (190px), bouton mute 42 (rouge si coupe),
    # barre 358x14 (10 zones cliquables = paliers de 10%) + curseur + %.
    # Volume reel mappe sur les fichiers : >50 plein, 1..50 variante _low, 0 coupe.
    SndChanName(P : player, C : int) : string =
        var N : string = Tr(P, "Volume general", "Master volume", "Volumen general", "Gesamtlautstaerke", "Volume generale")
        if (C = 1) { set N = Tr(P, "Musique", "Music", "Musica", "Musik", "Musica") }
        if (C = 2) { set N = Tr(P, "Effets sonores", "Sound effects", "Efectos de sonido", "Soundeffekte", "Effetti sonori") }
        if (C = 3) { set N = Tr(P, "Chrono", "Timer", "Cronometro", "Timer", "Cronometro") }
        if (C = 4) { set N = Tr(P, "Clics du menu", "Menu clicks", "Clics del menu", "Menue-Klicks", "Clic del menu") }
        N

    SndChanSub(P : player, C : int) : string =
        var N : string = Tr(P, "Tous les sons", "All sounds", "Todos los sonidos", "Alle Sounds", "Tutti i suoni")
        if (C = 1) { set N = Tr(P, "Lobby, parties, victoire", "Lobby, rounds, victory", "Lobby, partidas, victoria", "Lobby, Runden, Sieg", "Lobby, partite, vittoria") }
        if (C = 2) { set N = Tr(P, "Reponses, bouclier, fanfares", "Answers, shield, fanfares", "Respuestas, escudo, fanfarrias", "Antworten, Schild, Fanfaren", "Risposte, scudo, fanfare") }
        if (C = 3) { set N = Tr(P, "Tic-tac des 5 dernieres sec.", "Last 5 seconds tick", "Tic-tac de los ultimos 5 seg.", "Ticken der letzten 5 Sek.", "Tic-tac degli ultimi 5 sec.") }
        if (C = 4) { set N = Tr(P, "Boutons des menus", "Menu buttons", "Botones de los menus", "Menue-Tasten", "Pulsanti dei menu") }
        N

    SndChanColor(C : int) : color =
        var Col : color = LbViolet
        if (C = 1) { set Col = LbCyan }
        if (C = 2) { set Col = LbGreen }
        if (C = 3) { set Col = LbOrange }
        if (C = 4) { set Col = LbYellow }
        Col

    SndChanIcon(C : int) : texture =
        var T : texture = icons.ic_speaker
        if (C = 1) { set T = icons.ic_music }
        if (C = 2) { set T = icons.ic_wave }
        if (C = 3) { set T = icons.ic_timer }
        if (C = 4) { set T = icons.ic_pointer }
        T

    # Rangee d'un canal (.lb-arow 780x84).
    SndRowW(P : player, Chan : int) : widget =
        Col := SndChanColor(Chan)
        Muted := SndMuteOf(P, Chan)
        Vol := SndVolOf(P, Chan)
        DispV := if (Muted?) { 0 } else { Vol }
        TxtCol := if (Muted?) { LbHalf } else { LbWhite }
        SubCol := if (Muted?) { LbMuteHalf } else { LbMute }
        IcTint := if (Muted?) { LbGrey } else { Col }
        IcoBox := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.set_ic, IcTint, 48.0, 48.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(SndChanIcon(Chan), LbWhite, 22.0, 22.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        Texts := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(SndChanName(P, Chan), 16.0, TxtCol, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left }
                stack_box_slot{ Widget := LbText2(SndChanSub(P, Chan), 11.0, SubCol, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left, Padding := margin{ Left := 0.0, Top := 2.0, Right := 0.0, Bottom := 0.0 } }
        TextsBox := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(190.0, 48.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Texts, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
        # bouton mute (rouge quand coupe)
        MuteTex := if (Muted?) { lobby.set_mute_on } else { lobby.set_mute }
        MuteIco := if (Muted?) { icons.ic_mute } else { icons.ic_speaker }
        MuteInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(MuteTex, LbWhite, 42.0, 42.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(MuteIco, LbWhite, 19.0, 19.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        MuteBtn := button{ Slot := button_slot{ Widget := MuteInner } }
        MHolder := snd_mute{ Mgr := Self, Chan := Chan }
        MuteBtn.OnClick().Subscribe(MHolder.OnClick)
        set SndMuteHolders += array{ MHolder }
        # barre de volume : piste + remplissage + curseur + 10 zones cliquables
        FillTex := if (Muted?) { lobby.set_fill_off } else { lobby.set_fill }
        FillTint := if (Muted?) { LbWhite } else { Col }
        var FillW : float = 264.0 * DispV * 0.01
        Fill := LbTex(FillTex, FillTint, FillW, 14.0)
        if (FillW < 8.0) { Fill.SetVisibility(widget_visibility.Hidden) }
        var KnobPad : float = 264.0 * DispV * 0.01 - 11.0
        if (KnobPad < 0.0) { set KnobPad = 0.0 }
        if (KnobPad > 242.0) { set KnobPad = 242.0 }
        var ZoneSlots : []stack_box_slot = array{}
        for (I := 0..9):
            # opacite quasi nulle (0 = parfois non cliquable selon le hit-test)
            ZInner := color_block:
                DefaultColor := LbWhite
                DefaultOpacity := 0.01
                DefaultDesiredSize := vector2{ X := 26.4, Y := 26.0 }
            ZBtn := button{ Slot := button_slot{ Widget := ZInner } }
            VHolder := snd_vol{ Mgr := Self, Chan := Chan, Val := (I + 1) * 10 }
            ZBtn.OnClick().Subscribe(VHolder.OnClick)
            set SndVolHolders += array{ VHolder }
            set ZoneSlots += array{ stack_box_slot{ Widget := ZBtn } }
        Zones := stack_box{ Orientation := orientation.Horizontal, Slots := ZoneSlots }
        Bar := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(264.0, 26.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(lobby.set_track, LbWhite, 264.0, 14.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Fill, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(lobby.set_knob, LbWhite, 22.0, 22.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := KnobPad, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := Zones, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
        Pct := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(56.0, 24.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{DispV}%", 17.0, TxtCol, text_justification.Right), HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center }
        # boutons -5 / +5 (.lb-vstep : verre, survol violet, desactives si coupe)
        MinusBg := LbTex(lobby.set_step, LbWhite, 34.0, 34.0)
        MinusInner := overlay:
            Slots := array:
                overlay_slot{ Widget := MinusBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_left, LbWhite, 16.0, 16.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        MinusBtn := button{ Slot := button_slot{ Widget := MinusInner } }
        SHolderM := snd_step{ Mgr := Self, Chan := Chan, Delta := -5 }
        MinusBtn.OnClick().Subscribe(SHolderM.OnClick)
        set SndStepHolders += array{ SHolderM }
        PlusBg := LbTex(lobby.set_step, LbWhite, 34.0, 34.0)
        PlusInner := overlay:
            Slots := array:
                overlay_slot{ Widget := PlusBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_chevron, LbWhite, 16.0, 16.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        PlusBtn := button{ Slot := button_slot{ Widget := PlusInner } }
        SHolderP := snd_step{ Mgr := Self, Chan := Chan, Delta := 5 }
        PlusBtn.OnClick().Subscribe(SHolderP.OnClick)
        set SndStepHolders += array{ SHolderP }
        if (Muted?):
            MinusBtn.SetEnabled(false)
            PlusBtn.SetEnabled(false)
            MinusBg.SetTint(LbGrey)
            PlusBg.SetTint(LbGrey)
        else:
            RegisterHover(MinusBtn, MinusBg, lobby.set_step, lobby.set_step_hi)
            RegisterHover(PlusBtn, PlusBg, lobby.set_step, lobby.set_step_hi)
        Row := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := IcoBox, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TextsBox, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := MuteBtn, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := MinusBtn, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Bar, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := PlusBtn, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Pct, VerticalAlignment := vertical_alignment.Center }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.set_row, LbWhite, 780.0, 84.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Row, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 18.0, Top := 0.0, Right := 18.0, Bottom := 0.0 } }

    BuildSndRows(P : player) : widget =
        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := SndRowW(P, 0), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } }
                stack_box_slot{ Widget := SndRowW(P, 1), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } }
                stack_box_slot{ Widget := SndRowW(P, 2), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } }
                stack_box_slot{ Widget := SndRowW(P, 3), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } }
                stack_box_slot{ Widget := SndRowW(P, 4) }

    # Swap du contenu seul (curseur souris stable, pas de recentrage).
    RefreshSettings(P : player) : void =
        if (H := SetHost[P]):
            if (Old := SetContent[P]) { H.RemoveWidget(Old) }
            New := BuildSndRows(P)
            if (set SetContent[P] = New) {}
            H.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := New })

    ShowSettingsSub(Player : player) : void =
        H := canvas{}
        C0 := BuildSndRows(Player)
        if (set SetHost[Player] = H) {}
        if (set SetContent[Player] = C0) {}
        H.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := C0 })
        Wrap := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(780.0, 476.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := H, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill }
        ShowSubPage(Player, Tr(Player, "Parametres audio", "Audio settings", "Ajustes de audio", "Audio-Einstellungen", "Impostazioni audio"), Wrap, true)

    # Clic zone de volume / mute : sauvegarde + refresh + retour sonore immediat.
    SetSndVol(P : player, Chan : int, V : int) : void =
        WriteSnd(P, Chan, V, false)
        RefreshSettings(P)
        PlayFx(P, 3, SfxClick)
        if (Chan <= 1):   # general ou musique -> la musique du lobby reflete le niveau
            StopAllMusic(P)
            PlayLobbyMusic(P)

    StepSndVol(P : player, Chan : int, Delta : int) : void =
        var V : int = SndVolOf(P, Chan) + Delta
        if (V < 0) { set V = 0 }
        if (V > 100) { set V = 100 }
        SetSndVol(P, Chan, V)

    ToggleSndMute(P : player, Chan : int) : void =
        WriteSnd(P, Chan, 0, true)
        RefreshSettings(P)
        PlayFx(P, 3, SfxClick)
        if (Chan <= 1):
            StopAllMusic(P)
            PlayLobbyMusic(P)

    # Carte langue 372x86 (.lb-langcard : drapeau 62x42, nom Anton 24, natif 14, check).
    LangCard(Player : player, LangId : int, FlagTex : texture, Name : string, Native : string) : button =
        var IsSel : logic = false
        if (L := LobbyLang[Player], L = LangId) { set IsSel = true }
        Bg := LbTex(lobby.lobby_langcard, LbWhite, 372.0, 86.0)
        Ring := LbTex(lobby.lobby_langcard_on, LbViolet, 376.0, 90.0)
        if (not IsSel?) { Ring.SetVisibility(widget_visibility.Hidden) }
        TextCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Name, 24.0, LbWhite, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(Native, 14.0, LbDim, text_justification.Left), Padding := margin{ Left := 0.0, Top := 2.0, Right := 0.0, Bottom := 0.0 } }
        Left := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(FlagTex, LbWhite, 62.0, 42.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TextCol, VerticalAlignment := vertical_alignment.Center }
        ChkBgTex := if (IsSel?) { lobby.lobby_chk_on } else { lobby.lobby_chk }
        ChkIco := LbTex(icons.ic_check, LbWhite, 16.0, 16.0)
        if (not IsSel?) { ChkIco.SetVisibility(widget_visibility.Hidden) }
        Chk := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(ChkBgTex, LbWhite, 30.0, 30.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := ChkIco, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        Inner := overlay:
            Slots := array:
                overlay_slot{ Widget := Bg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Ring, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Left, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 20.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := Chk, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 20.0, Bottom := 0.0 } }
        B := button{ Slot := button_slot{ Widget := Inner } }
        RegisterHover(B, Bg, lobby.lobby_langcard, lobby.lobby_langcard_hi)
        if (LangId = 0) { B.OnClick().Subscribe(OnPickFR) }
        else if (LangId = 1) { B.OnClick().Subscribe(OnPickEN) }
        else if (LangId = 2) { B.OnClick().Subscribe(OnPickES) }
        else if (LangId = 3) { B.OnClick().Subscribe(OnPickDE) }
        else { B.OnClick().Subscribe(OnPickIT) }
        B

    # Sous-page Langue : grille 2 colonnes (gap 16) x 3 rangees, centree (max-width 760 du design).
    ShowLangSub(Player : player) : void =
        FrB := LangCard(Player, 0, icons.flag_fr, Tr(Player, "Francais", "French", "Frances", "Franzoesisch", "Francese"), "Francais")
        EnB := LangCard(Player, 1, icons.flag_uk, Tr(Player, "Anglais", "English", "Ingles", "Englisch", "Inglese"), "English")
        EsB := LangCard(Player, 2, icons.flag_es, Tr(Player, "Espagnol", "Spanish", "Espanol", "Spanisch", "Spagnolo"), "Espanol")
        DeB := LangCard(Player, 3, icons.flag_de, Tr(Player, "Allemand", "German", "Aleman", "Deutsch", "Tedesco"), "Deutsch")
        ItB := LangCard(Player, 4, icons.flag_it, Tr(Player, "Italien", "Italian", "Italiano", "Italienisch", "Italiano"), "Italiano")
        Row1 := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := FrB, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := EnB }
        Row2 := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := EsB, Padding := margin{ Left := 0.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := DeB }
        Row3 := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := ItB }
        Grid := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := Row1, HorizontalAlignment := horizontal_alignment.Center }
                stack_box_slot{ Widget := Row2, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 16.0, Right := 0.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Row3, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 16.0, Right := 0.0, Bottom := 0.0 } }
        ShowSubPage(Player, Tr(Player, "Choisir la langue", "Choose language", "Elegir idioma", "Sprache waehlen", "Scegli la lingua"), Grid, true)

    # Carte categorie 367x78 (.lb-catcard : icone 46, nom 17, N quizz). Ci=-1 => Toutes.
    CatCard(Player : player, Ci : int) : button =
        var Name : string = Tr(Player, "Toutes", "All", "Todas", "Alle", "Tutte")
        if (Ci >= 0) { set Name = CatNameOf(Player, Ci) }
        Cnt := if (Ci < 0) { QzName.Length } else { CountCat(Ci) }
        RingCol := if (Ci < 0) { LbWhite } else { ColOf(Ci) }   # is-on : --cc (#fff pour Toutes)
        var IsSel : logic = false
        if (F := LobbyCatFilter[Player], F = Ci) { set IsSel = true }
        Bg := LbTex(lobby.lobby_catcard, LbWhite, 367.0, 78.0)
        Ring := LbTex(lobby.lobby_catring, RingCol, 371.0, 82.0)
        if (not IsSel?) { Ring.SetVisibility(widget_visibility.Hidden) }
        TextCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Name, 17.0, LbWhite, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left }
                stack_box_slot{ Widget := LbText2("{Cnt} " + Tr(Player, "quizz", "quizzes", "quiz", "Quiz", "quiz"), 13.0, LbMute, text_justification.Left), HorizontalAlignment := horizontal_alignment.Left, Padding := margin{ Left := 0.0, Top := 2.0, Right := 0.0, Bottom := 0.0 } }
        Left := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := CatSquare(Ci, 46.0, 22.0, LbWhite), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 13.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := TextCol, VerticalAlignment := vertical_alignment.Center }
        Inner := overlay:
            Slots := array:
                overlay_slot{ Widget := Bg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Ring, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Left, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 14.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
        B := button{ Slot := button_slot{ Widget := Inner } }
        RegisterHover(B, Bg, lobby.lobby_catcard, lobby.lobby_catcard_hi)
        Holder := cat_pick{ Mgr := Self, Ci := Ci }
        B.OnClick().Subscribe(Holder.OnClick)
        set CatHolders += array{ Holder }
        B

    # Sous-page Categories : grille 3 colonnes, gap 14 (1re carte = Toutes).
    ShowCatSub(Player : player) : void =
        var Ids : []int = array{ -1 }
        for (I := 0..CatName.Length - 1) { set Ids += array{ I } }
        var Rows : []stack_box_slot = array{}
        var K : int = 0
        loop:
            if (K >= Ids.Length) { break }
            RowSlots := for (Cc := 0..2, J := K + Cc, J < Ids.Length, Ci := Ids[J]):
                stack_box_slot{ Widget := CatCard(Player, Ci), Padding := margin{ Left := 0.0, Top := 0.0, Right := 14.0, Bottom := 0.0 } }
            set Rows += array{ stack_box_slot{ Widget := stack_box{ Orientation := orientation.Horizontal, Slots := RowSlots }, HorizontalAlignment := horizontal_alignment.Left, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } } }
            set K += 3
        Grid := stack_box{ Orientation := orientation.Vertical, Slots := Rows }
        ShowSubPage(Player, "Categories", Grid, false)

    # ============================================================
    #  ECRAN DE RESULTATS — design "Fin de Quizz - Resultats"
    #  (docs/design/end-quiz.css ; carte 1180x828 centree sur fond
    #  celebration res_bg). Cotes calculees du CSS (border-box) :
    #  padding carte 28/34/24, en-tete centre (kicker 13 / titre 54 /
    #  chips 34), corps 663 / 427 (gap 22), podium 178/158, lignes de
    #  classement 630x57 (gap 6) + rail scrollbar 26, carte rang 427x192,
    #  points 427x84, stats 209x106, boutons 439/659 x65 (gap 14).
    #  Textures cuites par tools/build_results_textures.py.
    # ============================================================
    ResVisibleRows : int = 2   # lignes visibles du classement (zone 164px : 2x57 + gaps)

    # ============================================================
    #  RANGS (systeme Fortnite) : 18 paliers — Bronze I-III,
    #  Argent I-III, Or I-III, Platine I-III, Diamant I-III,
    #  Elite, Champion, Irreel. Progression en % dans le palier ;
    #  un round CLASSE termine rapporte : Facile +10%, Moyen +20%,
    #  Difficile +30%. Persistant entre les sessions (RankPts).
    # ============================================================
    # Noms de rangs en ANGLAIS (comme Fortnite, non traduits — demande utilisateur).
    RankNames : []string = array{"Bronze I","Bronze II","Bronze III","Silver I","Silver II","Silver III","Gold I","Gold II","Gold III","Platinum I","Platinum II","Platinum III","Diamond I","Diamond II","Diamond III","Elite","Champion","Unreal"}
    MaxRankPts : int = 1700    # palier 17 (Irreel) atteint, plus de progression au-dela
    var ResLastGain : [player]int = map{}   # % gagne au dernier round (affiche aux resultats)
    # TOP 10 par (quizz x difficulte) : map combo -> classement. Reconstruit a partir des
    # meilleurs scores persistes (BestSave) des joueurs presents sur le serveur.
    var HallByCombo : [int][]leaderboard_entry = map{}
    # "Hall" = le classement du combo AFFICHE (rempli juste avant l'ecran de resultats) ;
    # les fonctions de rendu lisent ce champ.
    var Hall : []leaderboard_entry = array{}

    TakeEntries(Arr : []leaderboard_entry, N : int) : []leaderboard_entry =
        for (I := 0..Arr.Length - 1, I < N, E := Arr[I]) { E }

    # combo = indice unique (quizz, difficulte).
    Combo(Gi : int, Diff : int) : int = Gi * 3 + Diff

    # Tableau de N zeros (padding en UNE passe : evite le O(n^2) d'un loop set Arr += array{0}).
    Zeros(N : int) : []int =
        for (_I := 0..N - 1) { 0 }

    # Affectation fonctionnelle Arr[Idx] = V (Verse evite set Arr[i]=).
    SetAtI(Arr : []int, Idx : int, V : int) : []int =
        for (K := 0..Arr.Length - 1, X := Arr[K]) { if (K = Idx) { V } else { X } }

    # Meilleur score / bonnes reponses persistes d'un joueur pour un combo.
    BestComboScore(P : player, C : int) : int =
        var V : int = 0
        if (Arr := BestSave[P], X := Arr[2 * C]) { set V = X }
        V
    BestComboGood(P : player, C : int) : int =
        var V : int = 0
        if (Arr := BestSave[P], X := Arr[2 * C + 1]) { set V = X }
        V

    # Sauvegarde persistante du meilleur score d'un combo (garde le max).
    SaveBestCombo(P : player, Gi : int, Diff : int, Score : int, Good : int) : void =
        C := Combo(Gi, Diff)
        Need := 2 * C + 2
        var Arr : []int = array{}
        if (Old := BestSave[P]) { set Arr = Old }
        if (Arr.Length < Need) { set Arr += Zeros(Need - Arr.Length) }
        var Cur : int = 0
        if (X := Arr[2 * C]) { set Cur = X }
        if (Score > Cur):
            set Arr = SetAtI(Arr, 2 * C, Score)
            set Arr = SetAtI(Arr, 2 * C + 1, Good)
            if (set BestSave[P] = Arr) {}

    HallGet(C : int) : []leaderboard_entry =
        var R : []leaderboard_entry = array{}
        if (X := HallByCombo[C]) { set R = X }
        R

    # Insere/actualise le meilleur score d'un joueur dans le TOP 10 d'un combo.
    UpdateHallC(C : int, P : player, Score : int, Good : int) : void =
        Cur := HallGet(C)                       # hisse hors de l'iterable du for
        var Kept : []leaderboard_entry = array{}
        for (E : Cur, not E.Agent = P) { set Kept += array{ E } }
        set Kept += array{ leaderboard_entry{ Agent := P, Score := Score, Good := Good } }
        Top := TakeEntries(SortEntries(Kept), 10)   # hisse hors de la condition if(set ...)
        if (set HallByCombo[C] = Top) {}

    RankPtsOf(P : player) : int =
        var N : int = 0
        if (X := RankPts[P]) { set N = X }
        if (N > MaxRankPts) { set N = MaxRankPts }
        if (N < 0) { set N = 0 }
        N

    # Palier 0..17 (100 points = 1 palier ; sans division entiere Verse).
    RankTierOf(Pts : int) : int =
        var T : int = 0
        var R : int = Pts
        loop:
            if (R < 100 or T >= 17) { break }
            set R -= 100
            set T += 1
        T

    # % restant DANS le palier courant (0..99).
    RankPctWithin(Pts : int) : int =
        var R : int = Pts
        var T : int = 0
        loop:
            if (R < 100 or T >= 17) { break }
            set R -= 100
            set T += 1
        if (R > 99) { set R = 99 }
        R

    # Groupe MAJEUR d'un palier (Bronze/Silver/Gold/... sans les divisions I-III).
    RankGroupOf(Tier : int) : int =
        var G : int = 0
        var R : int = Tier
        loop:
            if (R < 3 or G >= 4) { break }   # 5 groupes a divisions (0..4)
            set R -= 3
            set G += 1
        if (Tier >= 15) { set G = Tier - 10 }   # Elite=5, Champion=6, Unreal=7
        G

    # Gain de % d'un round classe selon la difficulte jouee.
    RankGainFor(P : player) : int =
        var D : int = 1
        if (X := LobbyDiff[P]) { set D = X }
        var G : int = 20
        if (D = 0) { set G = 10 }
        if (D = 2) { set G = 30 }
        G

    # Applique le gain (persistant) et le retourne.
    AwardRankProgress(P : player) : int =
        G := RankGainFor(P)
        var Pts : int = RankPtsOf(P)
        set Pts += G
        if (Pts > MaxRankPts) { set Pts = MaxRankPts }
        if (set RankPts[P] = Pts) {}
        G

    # Embleme du palier (rank_textures/, importes dans Content/HUD).
    RankTexOf(T : int) : texture =
        var X : texture = rangs.rank_00
        if (T = 1) { set X = rangs.rank_01 }
        if (T = 2) { set X = rangs.rank_02 }
        if (T = 3) { set X = rangs.rank_03 }
        if (T = 4) { set X = rangs.rank_04 }
        if (T = 5) { set X = rangs.rank_05 }
        if (T = 6) { set X = rangs.rank_06 }
        if (T = 7) { set X = rangs.rank_07 }
        if (T = 8) { set X = rangs.rank_08 }
        if (T = 9) { set X = rangs.rank_09 }
        if (T = 10) { set X = rangs.rank_10 }
        if (T = 11) { set X = rangs.rank_11 }
        if (T = 12) { set X = rangs.rank_12 }
        if (T = 13) { set X = rangs.rank_13 }
        if (T = 14) { set X = rangs.rank_14 }
        if (T = 15) { set X = rangs.rank_15 }
        if (T = 16) { set X = rangs.rank_16 }
        if (T = 17) { set X = rangs.rank_17 }
        X

    # UNRANKED : tant qu'aucun round CLASSE n'a ete joue, pas d'entree RankPts -> "?".
    IsUnranked(P : player) : logic =
        var U : logic = true
        if (RankPts[P]) { set U = false }
        U

    # Embleme a afficher : "?" si non classe, sinon l'embleme du palier.
    RankEmblemFor(P : player) : texture =
        var Tex : texture = rangs.rank_unranked
        Unr := IsUnranked(P)
        if (not Unr?) { set Tex = RankTexOf(RankTierOf(RankPtsOf(P))) }
        Tex

    # ===== FLAMMES (heures pleines consecutives) =====
    # Stockees dans BestSave a un index reserve (pas de 4e weak_map -> limite UEFN respectee).
    FlameSlot : int = 250
    var FlameGen : [player]int = map{}   # incremente a chaque (re)connexion : invalide l'ancienne boucle

    FlamesOf(P : player) : int =
        var N : int = 0
        if (Arr := BestSave[P], X := Arr[FlameSlot]) { set N = X }
        N

    # Ecrit le total de flammes dans BestSave[FlameSlot] (pad si besoin).
    SaveFlames(P : player, N : int) : void =
        var Arr : []int = array{}
        if (Old := BestSave[P]) { set Arr = Old }
        if (Arr.Length < FlameSlot + 1) { set Arr += Zeros(FlameSlot + 1 - Arr.Length) }
        set Arr = SetAtI(Arr, FlameSlot, N)
        if (set BestSave[P] = Arr) {}

    FlameGenOf(P : player) : int =
        var G : int = 0
        if (X := FlameGen[P]) { set G = X }
        G

    # Boucle par joueur : +1 flamme par HEURE PLEINE restee connecte (consecutif).
    # La progression (Mins) est locale a la session : perdue si deconnexion avant 60 min.
    FlameLoop(P : player, Gen : int)<suspends> : void =
        var Mins : int = 0
        loop:
            Sleep(60.0)                                  # 1 minute
            CurGen := FlameGenOf(P)                       # hisse hors de la condition if
            if (CurGen <> Gen) { break }                 # une nouvelle session a demarre -> stop
            Ps := GetPlayspace().GetPlayers()
            var Present : logic = false
            for (Pl : Ps, Pl = P) { set Present = true }
            if (not Present?) { break }                  # deconnecte -> heure non pleine perdue
            set Mins += 1
            if (Mins >= 60):
                set Mins = 0
                SaveFlames(P, FlamesOf(P) + 1)               # +1 flamme (persiste dans BestSave)
                var InLobby : logic = false
                if (X := LobbyShown[P]) { set InLobby = X }
                if (InLobby?):                               # maj CIBLEE de la pastille (pas de rebuild complet)
                    NewN := FlamesOf(P)
                    if (T := LobbyFlameT[P]) { T.SetText(StringToMessage("{NewN}")) }

    AgentPNum(A : agent) : int =
        var N : int = 1
        if (P := player[A], X := PlayerNum[P]) { set N = X }
        N

    AgentColor(A : agent) : color =
        var Col : color = LbRed
        N := AgentPNum(A)
        if (PIdx := Mod[N - 1, 4], H := PColHex[PIdx]) { set Col = MakeColorFromHex(H) }
        Col

    # Pseudo Fortnite reel (message localise interpolant l'agent).
    LbNameText(A : agent, Size : float, Col : color) : text_block =
        T := text_block:
            DefaultText := PlayerNameMessage(A)
            DefaultTextColor := Col
            DefaultTextSize := Size
        T

    # Avatar rond : degrade couleur joueur + anneau blanc + numero P.
    ResAvatar(A : agent, Sz : float, FontSz : float) : overlay =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_av, AgentColor(A), Sz, Sz), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(resultats.res_avring, LbWhite, Sz, Sz), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("P{AgentPNum(A)}", FontSz, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Marche de podium (.eq-pod) : couronne (1er), avatar, pseudo, bloc colore.
    ResPod(E : leaderboard_entry, Rank : int) : widget =
        var BlockTex : texture = resultats.res_pod3
        var BW : float = 158.0
        var BH : float = 98.0
        var Av : float = 80.0
        var AvF : float = 32.0
        var NameSz : float = 17.0
        var RankSz : float = 40.0
        var ScoreSz : float = 22.0
        if (Rank = 2):
            set BlockTex = resultats.res_pod2
            set BH = 120.0
        if (Rank = 1):
            set BlockTex = resultats.res_pod1
            set BW = 178.0
            set BH = 150.0
            set Av = 104.0
            set AvF = 42.0
            set NameSz = 20.0
            set RankSz = 52.0
            set ScoreSz = 26.0
        CrownPad : float = if (Rank = 1) { 14.0 } else { 0.0 }   # couronne 40, posee sur l'avatar (-26)
        TotH := CrownPad + Av + 9.0 + 26.0 + 9.0 + BH
        ScoreRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbText2("{E.Score}", ScoreSz, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
                stack_box_slot{ Widget := LbText2("PTS", 12.0, LbDim, text_justification.Center), VerticalAlignment := vertical_alignment.Bottom, Padding := margin{ Left := 5.0, Top := 0.0, Right := 0.0, Bottom := 2.0 } }
        BlockCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2("{Rank}", RankSz, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 4.0 } }
                stack_box_slot{ Widget := ScoreRow, HorizontalAlignment := horizontal_alignment.Center }
        Block := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(BlockTex, LbWhite, BW, BH), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := BlockCol, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        var Slots : []overlay_slot = array{}
        set Slots += array{ overlay_slot{ Widget := LbSizer(BW, TotH), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top } }
        set Slots += array{ overlay_slot{ Widget := Block, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Bottom } }
        set Slots += array{ overlay_slot{ Widget := LbNameText(E.Agent, NameSz, LbWhite), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 0.0, Top := CrownPad + Av + 9.0, Right := 0.0, Bottom := 0.0 } } }
        set Slots += array{ overlay_slot{ Widget := ResAvatar(E.Agent, Av, AvF), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 0.0, Top := CrownPad, Right := 0.0, Bottom := 0.0 } } }
        if (Rank = 1):
            set Slots += array{ overlay_slot{ Widget := LbTex(resultats.res_crown, LbWhite, 40.0, 40.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Top } }
        overlay{ Slots := Slots }

    # Podium top 3 (2e a gauche, 1er au centre, 3e a droite ; gap 18, ancres en bas).
    ResPodium(Entries : []leaderboard_entry) : widget =
        var Slots : []stack_box_slot = array{}
        if (E := Entries[1]):
            set Slots += array{ stack_box_slot{ Widget := ResPod(E, 2), VerticalAlignment := vertical_alignment.Bottom, Padding := margin{ Left := 0.0, Top := 0.0, Right := 18.0, Bottom := 0.0 } } }
        if (E := Entries[0]):
            set Slots += array{ stack_box_slot{ Widget := ResPod(E, 1), VerticalAlignment := vertical_alignment.Bottom } }
        if (E := Entries[2]):
            set Slots += array{ stack_box_slot{ Widget := ResPod(E, 3), VerticalAlignment := vertical_alignment.Bottom, Padding := margin{ Left := 18.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } } }
        Row := stack_box{ Orientation := orientation.Horizontal, Slots := Slots }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(663.0, 312.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := Row, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Bottom }

    # Ligne de classement 630x57 (.eq-row) : rang, avatar 36, pseudo, bonnes rep., score.
    ResRow(Player : player, E : leaderboard_entry, Rank : int) : widget =
        var IsMe : logic = false
        if (E.Agent = Player) { set IsMe = true }
        RowTex := if (IsMe?) { resultats.res_row_me } else { resultats.res_row }
        var G : int = 0
        set G = E.Good
        RankBox := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(26.0, 24.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{Rank}", 19.0, LbDim, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        var NameSlots : []stack_box_slot = array{}
        set NameSlots += array{ stack_box_slot{ Widget := LbNameText(E.Agent, 16.0, LbWhite), VerticalAlignment := vertical_alignment.Center } }
        if (IsMe?):
            set NameSlots += array{ stack_box_slot{ Widget := TagPill(Tr(Player, "VOUS", "YOU", "TU", "DU", "TU"), LbViolet, 52.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 9.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } } }
        var LeftSlots : []stack_box_slot = array{}
        set LeftSlots += array{ stack_box_slot{ Widget := RankBox, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 13.0, Bottom := 0.0 } } }
        set LeftSlots += array{ stack_box_slot{ Widget := ResAvatar(E.Agent, 36.0, 15.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 13.0, Bottom := 0.0 } } }
        set LeftSlots += NameSlots
        LeftRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := LeftSlots
        GoodChip := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_goodchip, LbWhite, 70.0, 24.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbTex(icons.ic_check, LbGreen, 14.0, 14.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 6.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2("{G}/{SessionQuestions}", 13.0, LbDim, text_justification.Center), VerticalAlignment := vertical_alignment.Center } } }, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        ScoreRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbText2("{E.Score}", 19.0, LbWhite, text_justification.Right), VerticalAlignment := vertical_alignment.Center }
                stack_box_slot{ Widget := LbText2("PTS", 10.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Bottom, Padding := margin{ Left := 3.0, Top := 0.0, Right := 0.0, Bottom := 2.0 } }
        RightRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := GoodChip, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 13.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := ScoreRow, VerticalAlignment := vertical_alignment.Center }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(RowTex, LbWhite, 630.0, 57.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LeftRow, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 13.0, Top := 0.0, Right := 0.0, Bottom := 0.0 } }
                overlay_slot{ Widget := RightRow, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 13.0, Bottom := 0.0 } }

    # Lignes visibles du TOP 10 (meilleurs scores sauvegardes), fenetre de ResVisibleRows.
    BuildResRows(Player : player) : widget =
        var Start : int = 0
        if (S := ResScroll[Player]) { set Start = S }
        var Slots : []stack_box_slot = array{}
        for (J := 0..ResVisibleRows - 1, K := Start + J, E := Hall[K]):
            set Slots += array{ stack_box_slot{ Widget := ResRow(Player, E, K + 1), Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 6.0 } } }
        stack_box{ Orientation := orientation.Vertical, Slots := Slots }

    # Rail scrollbar du classement (memes embouts/piste que le lobby, zone 164px).
    ResRail(Player : player) : widget =
        TrackH : float = 100.0   # 164 - 2x26 (fleches) - 2x6 (gaps)
        var Rest : int = Hall.Length
        var Scroll : int = 0
        if (S := ResScroll[Player]) { set Scroll = S }
        Cap := if (Rest - ResVisibleRows > 0) { Rest - ResVisibleRows } else { 0 }
        AtTop : logic = if (Scroll <= 0) { true } else { false }
        AtBottom : logic = if (Scroll >= Cap) { true } else { false }
        UpTex := if (AtTop?) { lobby.lobby_scrollcap_off } else { lobby.lobby_scrollcap }
        DnTex := if (AtBottom?) { lobby.lobby_scrollcap_off } else { lobby.lobby_scrollcap }
        UpInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(UpTex, LbWhite, 26.0, 26.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_up, LbWhite, 15.0, 15.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        UpBtn := button{ Slot := button_slot{ Widget := UpInner } }
        UpBtn.OnClick().Subscribe(OnResUp)
        UpBtn.SetEnabled(if (AtTop?) { false } else { true })
        DnInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(DnTex, LbWhite, 26.0, 26.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(icons.ic_down, LbWhite, 15.0, 15.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        DnBtn := button{ Slot := button_slot{ Widget := DnInner } }
        DnBtn.OnClick().Subscribe(OnResDown)
        DnBtn.SetEnabled(if (AtBottom?) { false } else { true })
        var Frac : float = 1.0
        if (Rest > ResVisibleRows, F := (ResVisibleRows * 1.0) / (Rest * 1.0)) { set Frac = F }
        var TH : float = TrackH * Frac
        if (TH < 26.0) { set TH = 26.0 }
        var Pos : float = 0.0
        if (Cap > 0, P := (Scroll * 1.0) / (Cap * 1.0)) { set Pos = P }
        ThumbY := (TrackH - TH) * Pos
        Thumb := LbTex(lobby.lobby_thumb, LbWhite, 10.0, TH)
        if (Rest <= ResVisibleRows) { Thumb.SetVisibility(widget_visibility.Hidden) }
        Track := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_track, LbWhite, 12.0, TrackH), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Thumb, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Top, Padding := margin{ Left := 0.0, Top := ThumbY, Right := 0.0, Bottom := 0.0 } }
        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := UpBtn, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 6.0 } }
                stack_box_slot{ Widget := Track, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 6.0 } }
                stack_box_slot{ Widget := DnBtn, HorizontalAlignment := horizontal_alignment.Center }

    ResListArea(Player : player) : widget =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(663.0, 164.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := BuildResRows(Player), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := ResRail(Player), HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Top }

    RefreshResList(Player : player) : void =
        if (LH := ResListHost[Player]):
            if (Old := ResListContent[Player]) { LH.RemoveWidget(Old) }
            New := ResListArea(Player)
            if (set ResListContent[Player] = New) {}
            LH.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := New })

    ResScrollBy(Player : player, D : int) : void =
        var Rest : int = Hall.Length
        Cap := if (Rest - ResVisibleRows > 0) { Rest - ResVisibleRows } else { 0 }
        var S : int = 0
        if (X := ResScroll[Player]) { set S = X }
        set S += D
        if (S < 0) { set S = 0 }
        if (S > Cap) { set S = Cap }
        if (set ResScroll[Player] = S) {}
        RefreshResList(Player)

    # Pastille meta de l'en-tete (.eq-meta__chip).
    ResChip(Inner : widget, W : float) : overlay =
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_chip, LbWhite, W, 34.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Inner, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Carte stat 209x106 (.eq-stat) : icone 30 teintee, valeur 24 (+unite), libelle 11.
    ResStat(IcoTex : texture, IcoCol : color, Val : string, Unit : string, Label : string) : widget =
        IcoBox := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_statico, IcoCol, 30.0, 30.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbTex(IcoTex, LbWhite, 17.0, 17.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        ValRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbText2(Val, 24.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
                stack_box_slot{ Widget := LbText2(Unit, 13.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Bottom, Padding := margin{ Left := 2.0, Top := 0.0, Right := 0.0, Bottom := 2.0 } }
        Col := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := IcoBox, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 5.0 } }
                stack_box_slot{ Widget := ValRow, HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 2.0 } }
                stack_box_slot{ Widget := LbText2(Label, 11.0, LbDim, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_stat, LbWhite, 209.0, 106.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Col, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }

    # Colonne droite (.eq-you) : carte rang 427x192, points 427x84, 4 stats.
    ResRightCol(Player : player, Entries : []leaderboard_entry) : widget =
        var MyRank : int = 1
        var Idx : int = 0
        for (E : Entries):
            set Idx += 1
            if (E.Agent = Player) { set MyRank = Idx }
        var G : int = 0
        var BS : int = 0
        var Sc : int = 0
        if (S := Registry.Get[Player]):
            set G = S.Good
            set BS = S.BestStreak
            set Sc = S.Score
        Acc := G * 4   # 25 questions -> precision % = bonnes x 4
        # --- Encart RANG competitif (.eq-rank : badge 84 sur plaque claire, nom 27,
        #     barre de progression 296x13, "{pct}% -> palier suivant" + chip "+X%") ---
        Pts := RankPtsOf(Player)
        T := RankTierOf(Pts)
        Pct := RankPctWithin(Pts)
        Unr := IsUnranked(Player)
        RName := if (Unr?) { "Unranked" } else { if (N := RankNames[T]) { N } else { "" } }
        NextName := if (T >= 17) { "MAX" } else { if (N2 := RankNames[T + 1]) { N2 } else { "" } }
        var Gain : int = 0
        if (X := ResLastGain[Player]) { set Gain = X }
        Badge := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(RankEmblemFor(Player), LbWhite, 84.0, 84.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        # barre de progression : remplissage degrade cyan->violet a Pct%
        var FillW : float = 296.0 * Pct * 0.01
        if (T >= 17) { set FillW = 296.0 }
        Fill := LbTex(resultats.res_barfill, LbWhite, FillW, 13.0)
        if (FillW < 9.0) { Fill.SetVisibility(widget_visibility.Hidden) }
        Bar := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_bar, LbWhite, 296.0, 13.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := Fill, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
        PctLeft := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbText2(if (T >= 17) { "MAX" } else { "{Pct}%" }, 18.0, LbWhite, text_justification.Left), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 5.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2("-> {NextName}", 13.0, LbDim, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        GainChip := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_gainchip, LbWhite, 74.0, 24.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbTex(icons.ic_up, LbGreen, 11.0, 11.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 4.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2("+{Gain}%", 13.0, LbGreen, text_justification.Center), VerticalAlignment := vertical_alignment.Center } } }, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        if (Gain <= 0) { GainChip.SetVisibility(widget_visibility.Hidden) }
        PctRow := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(296.0, 24.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := PctLeft, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := GainChip, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center }
        RankInfo := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2(Tr(Player, "RANG COMPETITIF", "COMPETITIVE RANK", "RANGO COMPETITIVO", "WETTKAMPFRANG", "RANGO COMPETITIVO"), 11.0, LbMute, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(RName, 27.0, LbWhite, text_justification.Left), Padding := margin{ Left := 0.0, Top := 3.0, Right := 0.0, Bottom := 10.0 } }
                stack_box_slot{ Widget := Bar }
                stack_box_slot{ Widget := PctRow, Padding := margin{ Left := 0.0, Top := 8.0, Right := 0.0, Bottom := 0.0 } }
        RankRowFull := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Badge, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 15.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := RankInfo, VerticalAlignment := vertical_alignment.Center }
        YouCard := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_rankcard, LbWhite, 427.0, 118.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := RankRowFull, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 16.0, Top := 0.0, Right := 16.0, Bottom := 0.0 } }
        PtsCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := LbText2("POINTS", 13.0, LbCyan, text_justification.Left) }
                stack_box_slot{ Widget := LbText2(Tr(Player, "GAGNES", "EARNED", "GANADOS", "VERDIENT", "GUADAGNATI"), 13.0, LbCyan, text_justification.Left) }
        ScoreRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbText2("{Sc}", 46.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 12.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := PtsCol, VerticalAlignment := vertical_alignment.Center }
        ScoreCard := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_scorecard, LbWhite, 427.0, 84.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := ScoreRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        StatsR1 := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := ResStat(icons.ic_trophy, LbGold, "#{MyRank}", "/{Entries.Length}", Tr(Player, "CLASSEMENT", "PLACEMENT", "CLASIFICACION", "PLATZIERUNG", "CLASSIFICA")), Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := ResStat(icons.ic_check, LbGreen, "{G}", "/{SessionQuestions}", Tr(Player, "BONNES REP.", "CORRECT", "CORRECTAS", "RICHTIG", "CORRETTE")) }
        StatsR2 := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := ResStat(icons.ic_target, LbCyan, "{Acc}", "%", Tr(Player, "PRECISION", "ACCURACY", "PRECISION", "GENAUIGKEIT", "PRECISIONE")), Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := ResStat(icons.ic_flame, LbOrange, "{BS}", "", Tr(Player, "MEILLEURE SERIE", "BEST STREAK", "MEJOR RACHA", "BESTE SERIE", "MIGLIOR SERIE")) }
        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := YouCard, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 11.0 } }
                stack_box_slot{ Widget := ScoreCard, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 11.0 } }
                stack_box_slot{ Widget := StatsR1, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 10.0 } }
                stack_box_slot{ Widget := StatsR2 }

    # En-tete centre : kicker "QUIZZ TERMINE", titre, chips meta.
    ResHead(Player : player) : widget =
        Kicker := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(resultats.res_kline_l, LbCyan, 34.0, 2.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(icons.ic_trophy, LbCyan, 18.0, 18.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "QUIZZ TERMINE", "QUIZ FINISHED", "QUIZ TERMINADO", "QUIZ BEENDET", "QUIZ COMPLETATO"), 13.0, LbCyan, text_justification.Center), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbTex(resultats.res_kline_r, LbCyan, 34.0, 2.0), VerticalAlignment := vertical_alignment.Center }
        QuizNm := QuizNameOf(Player, CurrentQuiz)
        var DiffNm : string = DiffNameOf(Player, 1)
        var DiffCol : color = LbYellow
        if (D := LobbyDiff[Player], D = 0):
            set DiffNm = DiffNameOf(Player, 0)
            set DiffCol = LbGreen
        if (D := LobbyDiff[Player], D = 2):
            set DiffNm = DiffNameOf(Player, 2)
            set DiffCol = LbRed
        var RkNm : string = Tr(Player, "Classe", "Ranked", "Competitivo", "Gewertet", "Competitiva")
        var RkCol : color = LbGold
        if (R := LobbyRanked[Player], not R?):
            set RkNm = Tr(Player, "Non classe", "Unranked", "Normal", "Ungewertet", "Normale")
            set RkCol = LbCyan
        Chip1 := ResChip(stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbTex(icons.ic_grid, LbWhite, 16.0, 16.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2(QuizNm, 15.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center } } }, 210.0)
        Chip2 := ResChip(stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbTex(icons.dot, DiffCol, 9.0, 9.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2(DiffNm, 15.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center } } }, 120.0)
        Chip3 := ResChip(stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbTex(icons.dot, RkCol, 9.0, 9.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 8.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2(RkNm, 15.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center } } }, 130.0)
        Chip4 := ResChip(LbText2("{SessionQuestions} questions", 15.0, LbWhite, text_justification.Center), 140.0)
        Chips := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := Chip1, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Chip2, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Chip3, Padding := margin{ Left := 0.0, Top := 0.0, Right := 10.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := Chip4 }
        stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := Kicker, HorizontalAlignment := horizontal_alignment.Center }
                stack_box_slot{ Widget := LbText2(Tr(Player, "RESULTATS", "RESULTS", "RESULTADOS", "ERGEBNISSE", "RISULTATI"), 54.0, LbWhite, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 13.0, Right := 0.0, Bottom := 12.0 } }
                stack_box_slot{ Widget := Chips, HorizontalAlignment := horizontal_alignment.Center }

    # Carte complete 1180x828 (padding 28/34/24).
    BuildResultsCard(Player : player) : widget =
        Entries := BuildEntries()
        # gauche : podium + titre classement + lignes (hote swap au scroll)
        BoardTitleL := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_trophy, LbCyan, 18.0, 18.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 2.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "Top 10 - Meilleurs scores", "Top 10 - Best scores", "Top 10 - Mejores puntuaciones", "Top 10 - Beste Punktzahlen", "Top 10 - Migliori punteggi"), 19.0, LbWhite, text_justification.Left), VerticalAlignment := vertical_alignment.Center }
        CntPill := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(lobby.lobby_pill_sm, LbWhite, 54.0, 22.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := LbText2("{Hall.Length}/10", 12.0, LbMute, text_justification.Center), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BoardTitle := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(663.0, 24.0), HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := BoardTitleL, HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := CntPill, HorizontalAlignment := horizontal_alignment.Right, VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 2.0, Bottom := 0.0 } }
        LH := canvas{}
        Content0 := ResListArea(Player)
        if (set ResListHost[Player] = LH) {}
        if (set ResListContent[Player] = Content0) {}
        LH.AddWidget(canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := Content0 })
        HostWrap := overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(663.0, 164.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := LH, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill }
        LeftCol := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := ResPodium(Entries) }
                stack_box_slot{ Widget := BoardTitle, Padding := margin{ Left := 0.0, Top := 36.0, Right := 0.0, Bottom := 10.0 } }
                stack_box_slot{ Widget := HostWrap }
        Body := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LeftCol, Padding := margin{ Left := 0.0, Top := 0.0, Right := 22.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := ResRightCol(Player, Entries) }
        # actions (.eq-actions : Rejouer 439 + Retour 659, gap 14)
        HasNext : logic = if (QueuePos + 1 < LobbyQueue.Length) { true } else { false }
        ReplayLbl := if (HasNext?) { Tr(Player, "QUIZZ SUIVANT...", "NEXT QUIZ...", "SIGUIENTE QUIZ...", "NAECHSTES QUIZ...", "QUIZ SUCCESSIVO...") } else { Tr(Player, "REJOUER", "REPLAY", "REPETIR", "NOCHMAL", "RIGIOCA") }
        GhostBg := LbTex(resultats.res_btn_ghost, LbWhite, 439.0, 65.0)
        GhostRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_replay, LbWhite, 22.0, 22.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(ReplayLbl, 23.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
        GhostInner := overlay:
            Slots := array:
                overlay_slot{ Widget := GhostBg, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := GhostRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BtnReplay := button{ Slot := button_slot{ Widget := GhostInner } }
        RegisterHover(BtnReplay, GhostBg, resultats.res_btn_ghost, resultats.res_btn_ghost_hi)
        BtnReplay.OnClick().Subscribe(OnReplay)
        if (HasNext?):   # l'enchainement est automatique : pas de relance manuelle
            BtnReplay.SetEnabled(false)
            GhostBg.SetTint(LbGrey)
        PrimRow := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := LbTex(icons.ic_grid, LbWhite, 20.0, 20.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 11.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := LbText2(Tr(Player, "RETOUR A LA SELECTION", "BACK TO SELECTION", "VOLVER A LA SELECCION", "ZURUECK ZUR AUSWAHL", "TORNA ALLA SELEZIONE"), 23.0, LbWhite, text_justification.Center), VerticalAlignment := vertical_alignment.Center }
        PrimInner := overlay:
            Slots := array:
                overlay_slot{ Widget := LbTex(resultats.res_btn_primary, LbWhite, 659.0, 65.0), HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
                overlay_slot{ Widget := PrimRow, HorizontalAlignment := horizontal_alignment.Center, VerticalAlignment := vertical_alignment.Center }
        BtnBack := button{ Slot := button_slot{ Widget := PrimInner } }
        BtnBack.OnClick().Subscribe(OnBackSel)
        Actions := stack_box:
            Orientation := orientation.Horizontal
            Slots := array:
                stack_box_slot{ Widget := BtnReplay, Padding := margin{ Left := 0.0, Top := 0.0, Right := 14.0, Bottom := 0.0 } }
                stack_box_slot{ Widget := BtnBack }
        Content := stack_box:
            Orientation := orientation.Vertical
            Slots := array:
                stack_box_slot{ Widget := ResHead(Player), HorizontalAlignment := horizontal_alignment.Center, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 14.0 } }
                stack_box_slot{ Widget := Body, Padding := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 22.0 } }
                stack_box_slot{ Widget := Actions }
        overlay:
            Slots := array:
                overlay_slot{ Widget := LbSizer(1180.0, 828.0), HorizontalAlignment := horizontal_alignment.Left, VerticalAlignment := vertical_alignment.Top }
                overlay_slot{ Widget := Content, HorizontalAlignment := horizontal_alignment.Fill, VerticalAlignment := vertical_alignment.Fill, Padding := margin{ Left := 34.0, Top := 28.0, Right := 34.0, Bottom := 24.0 } }

    ShowResults(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player]):
            if (set ResScroll[Player] = 0) {}
            Card := BuildResultsCard(Player)
            FullBg := texture_block:
                DefaultImage := resultats.res_bg
            Root := canvas:
                Slots := array:
                    canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 0.0 }, Maximum := vector2{ X := 1.0, Y := 1.0 } }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 0.0, Bottom := 0.0 }, Widget := FullBg }
                    canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.5, Y := 0.5 }, Maximum := vector2{ X := 0.5, Y := 0.5 } }, Alignment := vector2{ X := 0.5, Y := 0.5 }, Offsets := margin{ Left := 0.0, Top := 0.0, Right := 1180.0, Bottom := 828.0 }, SizeToContent := false, Widget := Card }
                    canvas_slot{ Anchors := anchors{ Minimum := vector2{ X := 0.0, Y := 1.0 }, Maximum := vector2{ X := 0.0, Y := 1.0 } }, Alignment := vector2{ X := 0.0, Y := 1.0 }, Offsets := margin{ Left := 18.0, Top := -16.0, Right := 480.0, Bottom := 22.0 }, SizeToContent := true, Widget := stack_box{ Orientation := orientation.Horizontal, Slots := array{ stack_box_slot{ Widget := LbText2(MapVersion, 12.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Center }, stack_box_slot{ Widget := LbTex(icons.ic_github, LbMute, 13.0, 13.0), VerticalAlignment := vertical_alignment.Center, Padding := margin{ Left := 12.0, Top := 0.0, Right := 9.0, Bottom := 0.0 } }, stack_box_slot{ Widget := LbText2(RepoUrl, 12.0, LbMute, text_justification.Left), VerticalAlignment := vertical_alignment.Center } } } }
            PlayerUI.AddWidget(Root, player_ui_slot{ InputMode := ui_input_mode.All, ZOrder := 20 })
            if (set ResCanvas[Player] = Root) {}

    CloseResults(Player : player) : void =
        if (PlayerUI := GetPlayerUI[Player], C := ResCanvas[Player]):
            PlayerUI.RemoveWidget(C)

    # --- Handlers resultats ---
    OnResUp(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ResScrollBy(M.Player, -1)
    OnResDown(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        ResScrollBy(M.Player, 1)
    OnReplay(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        CloseResults(M.Player)
        NewOrder := PrepareSessionOrder(M.Player)
        spawn { StartQuizForPlayer(M.Player, NewOrder) }
    OnBackSel(M : widget_message) : void =
        PlayFx(M.Player, 3, SfxClick)
        StopAllMusic(M.Player)
        CloseResults(M.Player)
        if (Char := M.Player.GetFortCharacter[]):
            if (Char.TeleportTo[LobbySpawnPos(), IdentityRotation()]) {}
        OpenLobby(M.Player)

    # Construit la banque au palier choisi, montre le HUD quiz, teleporte au couloir, lance.
    # Construit la banque du palier choisi et tire les 25 questions de la session.
    # Appele UNE fois par lancement (le tirage est PARTAGE par tout le groupe).
    # Le quizz joue = celui a la position courante de la PLAYLIST (file).
    PrepareSessionOrder(P : player) : []int =
        var Diff : int = 1
        if (D := LobbyDiff[P]) { set Diff = D }
        var Gi : int = 0
        if (Q0 := LobbyQueue[QueuePos]) { set Gi = Q0 }
        set CurrentQuiz = Gi
        set RoundDiff = Diff   # difficulte reelle jouee (partagee), reutilisee a la sauvegarde du score
        # Banque FR toujours construite : sert d'ordre de tirage partage + fallback langue.
        set Bank = question_bank{ Questions := QuestionsForDifficulty(Gi, Diff, 0) }
        # On ne reconstruit QUE les banques des langues effectivement presentes
        # (eviter de batir 5 banques de ~900 questions quand le groupe est mono-langue).
        var NeedEN : logic = false
        var NeedES : logic = false
        var NeedDE : logic = false
        var NeedIT : logic = false
        Ps0 := GetPlayspace().GetPlayers()
        for (Pl : Ps0):
            if (L := LobbyLang[Pl]):
                if (L = 1) { set NeedEN = true }
                else if (L = 2) { set NeedES = true }
                else if (L = 3) { set NeedDE = true }
                else if (L = 4) { set NeedIT = true }
        EmptyBank := question_bank{ Questions := array{} }
        set BankEN = if (NeedEN?) { question_bank{ Questions := QuestionsForDifficulty(Gi, Diff, 1) } } else { EmptyBank }
        set BankES = if (NeedES?) { question_bank{ Questions := QuestionsForDifficulty(Gi, Diff, 2) } } else { EmptyBank }
        set BankDE = if (NeedDE?) { question_bank{ Questions := QuestionsForDifficulty(Gi, Diff, 3) } } else { EmptyBank }
        set BankIT = if (NeedIT?) { question_bank{ Questions := QuestionsForDifficulty(Gi, Diff, 4) } } else { EmptyBank }
        var Ord : []int = array{}
        if (Randomize?) { set Ord = TakeFirst(Bank.ShuffledOrder(), SessionQuestions) }
        else { set Ord = TakeFirst(Bank.DefaultOrder(), SessionQuestions) }
        # melange des reponses pour CE round, partage a tous les joueurs du groupe
        set SessionPerms = MakeSessionPerms(Ord.Length)
        Ord

    StartQuizForPlayer(Player : player, Order : []int)<suspends> : void =
        if (State := Registry.Get[Player]):
            # la diff REELLE du round prime sur le choix local (un retardataire pouvait garder Moyen) :
            # garantit que score (bon combo) et musique correspondent a la difficulte jouee
            if (set LobbyDiff[Player] = RoundDiff) {}
            set State.Order = Order
            set State.AnswerPerms = SessionPerms   # memes permutations pour tout le groupe
            set State.Position = 0
            set State.Score = 0
            set State.Streak = 0
            set State.Good = 0
            set State.BestStreak = 0
            set State.SpeedBonus = 0
            set State.Finished = false
            set State.Locked = false

            Hud := quiz_hud{}
            Textures := hud_textures:
                Banner := option{ jeu.hud_banner }
                Board := option{ jeu.hud_board }
                Card := option{ jeu.hud_card }
                Key := option{ jeu.hud_key }
                Timer := option{ jeu.hud_timer }
                Chip := option{ jeu.hud_chip }
            Hud.Show(Player, Textures, option{ flags.flag_fr }, Tr(Player, "CLASSEMENT", "LEADERBOARD", "CLASIFICACION", "RANGLISTE", "CLASSIFICA"), Tr(Player, "QUESTION", "QUESTION", "PREGUNTA", "FRAGE", "DOMANDA"), Tr(Player, "SEC", "SEC", "SEG", "SEK", "SEC"))
            if (set Huds[Player] = Hud) {}
            # Rang competitif en haut a gauche pendant le round (classe uniquement).
            RkHud := RankedFor(Player)
            if (RkHud?):
                RPts := RankPtsOf(Player)
                RT := RankTierOf(RPts)
                RPct := RankPctWithin(RPts)
                RUnr := IsUnranked(Player)
                RNm := if (RUnr?) { "Unranked" } else { if (N := RankNames[RT]) { N } else { "" } }
                RPctS := if (RUnr?) { "" } else { if (RT >= 17) { "MAX" } else { "{RPct}%" } }
                Hud.ShowRank(option{ jeu.hud_card }, RankEmblemFor(Player), Tr(Player, "RANG", "RANK", "RANGO", "RANG", "RANGO"), RNm, RPctS)

            CloseLobby(Player)
            CloseSub(Player)   # si le joueur etait sur la page Langue/Categorie
            StopAllMusic(Player)
            PlayRoundMusic(Player)
            if (Char := Player.GetFortCharacter[]):
                if (Char.TeleportTo[Builder.StartPosition(), IdentityRotation()]) {}
            ResetVitals(Player)   # 100 HP / 0 bouclier (jauges du mode classe)
            LoadQuestion(Player)
            UpdateScoreboards()
            spawn { RunPlayer(Player) }

    # ===== Affichage + (re)demarrage du chrono de la question courante =====
    LoadQuestion(Agent : agent) : void =
        QB := BankForAgent(Agent)   # banque dans la langue du joueur (hors du if : no_rollback)
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            QIndex := State.CurrentQuestionIndex[]
            Q0 := QB.GetQuestion[QIndex]
            Hud := Huds[Agent]
        then:
            Q := ApplyPerm(Q0, State.CurrentPerm())   # melange des reponses (hors condition failable)
            Hud.SetQuestion(Q)
            Hud.SetQNum(State.Position + 1, State.Order.Length)   # 25 de session, pas la banque entiere
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
                Pos := Char.GetTransform().Translation
                # 0) Blocage du retour en arriere : on ne peut plus repasser une porte franchie.
                #    Mur invisible -> on repousse le joueur s'il recule avant la derniere porte.
                BackLimit := BackLimitX(State.Position)
                if (Pos.X < BackLimit):
                    if (Char.TeleportTo[vector3{ X := BackLimit + 10.0, Y := Pos.Y, Z := Pos.Z }, Char.GetTransform().Rotation]) {}
                # 1) Chrono
                set State.TimeLeft -= PollSeconds
                UpdateTimerHud(Agent, State)
                if (State.TimeLeft <= 0.0):
                    OnTimeout(Agent, State)
                else:
                    # 2) Detection de la porte franchie (lane choisie)
                    if (Pos.X >= Builder.GateX(State.Position)):
                        EvaluateAnswer(Agent, NearestLane(Pos.Y))
            Sleep(PollSeconds)

    UpdateTimerHud(Agent : agent, State : quiz_player_state) : void =
        Sec := Builder.CeilInt(State.TimeLeft)
        if (not Sec = State.LastShownSecond):
            set State.LastShownSecond = Sec
            if (Sec <= 5, Sec > 0) { PlayFx(Agent, 2, SfxTick) }
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
        QB := BankForAgent(Agent)   # banque dans la langue du joueur (coherent avec LoadQuestion ; hors du if : no_rollback)
        if:
            State := Registry.Get[Agent]
            not State.Finished?
            not State.Locked?
            QIndex := State.CurrentQuestionIndex[]
            Q0 := QB.GetQuestion[QIndex]
        then:
            set State.Locked = true
            Q := ApplyPerm(Q0, State.CurrentPerm())   # meme melange qu'a l'affichage
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
        # stats de session (ecran de resultats)
        set State.Good += 1
        set State.SpeedBonus += Speed
        if (State.Streak > State.BestStreak) { set State.BestStreak = State.Streak }
        AccoladeCorrect.Award(Agent)   # XP Fortnite (ile publiee uniquement)
        # mode classe : +25 de bouclier par bonne reponse (cumul max 100)
        Rk := RankedFor(Agent)   # hors du `if` (no_rollback interdit en contexte d'echec)
        if (Rk?, Char := Agent.GetFortCharacter[]):
            var NewShield : float = Char.GetShield() + 25.0
            if (NewShield > 100.0) { set NewShield = 100.0 }
            Char.SetShield(NewShield)
            PlayFx(Agent, 1, SfxShield)
        UpdateScoreboards()
        PlayFx(Agent, 1, SfxCorrect)
        if (Hud := Huds[Agent]) { spawn { Hud.Flash(TrA(Agent, "CORRECT !  +{Gain}", "CORRECT!  +{Gain}", "CORRECTO!  +{Gain}", "RICHTIG!  +{Gain}", "CORRETTO!  +{Gain}")) } }
        spawn { Builder.PulsePortal(SegmentBefore, Index) }
        set State.Position += 1
        if (State.Position >= State.Order.Length):   # fin de SESSION (25), pas de la banque
            FinishPlayer(Agent, State)
        else:
            LoadQuestion(Agent)

    OnIncorrect(Agent : agent, State : quiz_player_state) : void =
        Rk := RankedFor(Agent)
        if (Rk?):
            RankedHit(Agent, State, TrA(Agent, "FAUX !", "WRONG!", "INCORRECTO!", "FALSCH!", "SBAGLIATO!"))
        else:
            Die(Agent, State, TrA(Agent, "FAUX ! Tu es mort !", "WRONG! You died!", "INCORRECTO! Has muerto!", "FALSCH! Du bist tot!", "SBAGLIATO! Sei morto!"))

    # ============================================================
    #  MODE CLASSE : systeme de vie / bouclier.
    #  100 HP au depart ; mauvaise reponse ou temps ecoule = -25
    #  (le BOUCLIER absorbe d'abord — mecanique native Fortnite).
    #  Bonne reponse = +25 de bouclier (cumul max 100).
    #  0 HP = mort -> on recommence le quizz AU TOUT DEBUT.
    # ============================================================
    # Volume d'un canal (0 General, 1 Musique, 2 Effets, 3 Chrono, 4 Clics) ; defaut 100.
    SndVolOf(P : player, Chan : int) : int =
        var V : int = 100
        if (Arr := SndSave[P], Arr.Length = 10, X := Arr[Chan]) { set V = X }
        V

    SndMuteOf(P : player, Chan : int) : logic =
        var R : logic = false
        if (Arr := SndSave[P], Arr.Length = 10, X := Arr[Chan + 5], X = 1) { set R = true }
        R

    # Ecrit volume OU bascule mute d'un canal (sauvegarde persistante 10 entiers).
    WriteSnd(P : player, Chan : int, NewVol : int, FlipMute : logic) : void =
        var Arr : []int = array{100, 100, 100, 100, 100, 0, 0, 0, 0, 0}
        if (Old := SndSave[P], Old.Length = 10) { set Arr = Old }
        var New : []int = array{}
        for (I := 0..9):
            var V : int = 0
            if (X := Arr[I]) { set V = X }
            if (not FlipMute?, I = Chan) { set V = NewVol }
            if (FlipMute?, I = Chan + 5):
                if (V = 1) { set V = 0 } else { set V = 1 }
            set New += array{ V }
        if (set SndSave[P] = New) {}

    # Volume EFFECTIF (mute du canal/du general + minimum avec le volume general).
    EffVolOf(P : player, Chan : int) : int =
        var Eff : int = 0
        M0 := SndMuteOf(P, 0)
        Mc := SndMuteOf(P, Chan)
        if (not M0?, not Mc?):
            V0 := SndVolOf(P, 0)
            Vc := SndVolOf(P, Chan)
            set Eff = V0
            if (Chan > 0, Vc < V0) { set Eff = Vc }
        Eff

    # Palier musique selon le volume effectif : 0 coupe / 1 faible (<=50) / 2 fort.
    MusicTierOf(P : player) : int =
        E := EffVolOf(P, 1)
        var T : int = 2
        if (E <= 50) { set T = 1 }
        if (E <= 0) { set T = 0 }
        T

    # Effet sonore filtre (cat 1 = canal Effets, cat 2 = Chrono, cat 3 = Clics).
    PlayFx(Agent : agent, Cat : int, D : audio_player_device) : void =
        var Chan : int = 4
        if (Cat = 1) { set Chan = 2 }
        if (Cat = 2) { set Chan = 3 }
        var E : int = 100
        if (P := player[Agent]) { set E = EffVolOf(P, Chan) }
        if (E > 0) { PlaySfx(D, Agent) }

    # Musiques : niveau 2 = piste normale, 1 = variante _low, 0 = rien.
    PlayMusic2(P : player, D : audio_player_device, DLow : audio_player_device) : void =
        L := MusicTierOf(P)
        if (L = 2) { PlaySfx(D, P) }
        if (L = 1) { PlaySfx(DLow, P) }

    PlayLobbyMusic(P : player) : void = PlayMusic2(P, MusicLobby, MusicLobbyLow)
    PlayResultsMusic(P : player) : void = PlayMusic2(P, MusicResults, MusicResultsLow)
    # Variante FAIBLE du round selon la difficulte.
    RoundMusicLowFor(P : player) : audio_player_device =
        var D : int = 1
        if (X := LobbyDiff[P]) { set D = X }
        var M : audio_player_device = MusicGameMediumLow
        if (D = 0) { set M = MusicGameEasyLow }
        if (D = 2) { set M = MusicGameHardLow }
        M

    PlayRoundMusic(P : player) : void =
        L := MusicTierOf(P)
        if (L = 2) { PlaySfx(RoundMusicFor(P), P) }
        if (L = 1) { PlaySfx(RoundMusicLowFor(P), P) }

    StopAllMusic(P : player) : void =
        StopSfx(MusicLobby, P)
        StopSfx(MusicLobbyLow, P)
        StopSfx(MusicGameEasy, P)
        StopSfx(MusicGameMedium, P)
        StopSfx(MusicGameHard, P)
        StopSfx(MusicGameEasyLow, P)
        StopSfx(MusicGameMediumLow, P)
        StopSfx(MusicGameHardLow, P)
        StopSfx(MusicResults, P)
        StopSfx(MusicResultsLow, P)

    # Musique de round selon la difficulte du joueur.
    RoundMusicFor(P : player) : audio_player_device =
        var D : int = 1
        if (X := LobbyDiff[P]) { set D = X }
        var M : audio_player_device = MusicGameMedium
        if (D = 0) { set M = MusicGameEasy }
        if (D = 2) { set M = MusicGameHard }
        M

    # Joue/arrete un son pour UN joueur.
    PlaySfx(D : audio_player_device, Agent : agent) : void = D.Play(Agent)

    StopSfx(D : audio_player_device, Agent : agent) : void = D.Stop(Agent)

    IsHost(P : player) : logic =
        var R : logic = false
        if (H := HostPlayer?, H = P) { set R = true }
        R

    RankedFor(Agent : agent) : logic =
        var R : logic = false
        if (P := player[Agent], X := LobbyRanked[P]) { set R = X }
        R

    # Remet les jauges au propre (100 HP / 0 bouclier, plafonds 100).
    ResetVitals(Agent : agent) : void =
        if (Char := Agent.GetFortCharacter[]):
            Char.SetMaxHealth(100.0)
            Char.SetHealth(100.0)
            Char.SetMaxShield(100.0)
            Char.SetShield(0.0)

    # Erreur en classe : -25 (bouclier d'abord) ; vie a 0 -> retour au tout debut.
    RankedHit(Agent : agent, State : quiz_player_state, Msg : string) : void =
        set State.Locked = true
        set State.Streak = 0
        PlayFx(Agent, 1, SfxWrong)
        if (Char := Agent.GetFortCharacter[]):
            Char.Damage(25.0)   # le bouclier encaisse en premier (natif)
            if (Char.GetHealth() <= 0.0):
                if (Hud := Huds[Agent]) { spawn { Hud.Flash(TrA(Agent, "{Msg} PLUS DE VIE - RETOUR AU DEBUT !", "{Msg} OUT OF HP - BACK TO START!", "{Msg} SIN VIDA - VUELTA AL INICIO!", "{Msg} KEINE HP - ZURUECK ZUM START!", "{Msg} VITA FINITA - SI RICOMINCIA!")) } }
                spawn { RestartQuizFromBeginning(Agent) }
            else:
                if (Hud := Huds[Agent]) { spawn { Hud.Flash("{Msg} -25") } }
                spawn { BackToCheckpoint(Agent, State) }

    # Retour au checkpoint SANS mourir (progression gardee), puis on rejoue la question.
    BackToCheckpoint(Agent : agent, State : quiz_player_state)<suspends> : void =
        Sleep(0.8)
        BackX := CheckpointX(State.Position)
        if (Char := Agent.GetFortCharacter[]):
            if (Char.TeleportTo[vector3{ X := BackX, Y := 0.0, Z := 100.0 }, IdentityRotation()]) {}
        LoadQuestion(Agent)

    # 0 HP : attend le respawn, remet TOUT a zero (position, score, stats, jauges)
    # et repart a la question 1 (meme tirage de 25 questions).
    RestartQuizFromBeginning(Agent : agent)<suspends> : void =
        Sleep(1.5)
        if (State := Registry.Get[Agent]):
            set State.Position = 0
            set State.Score = 0
            set State.Streak = 0
            set State.Good = 0
            set State.BestStreak = 0
            set State.SpeedBonus = 0
            set State.Locked = false
        var T : int = 0
        loop:
            if (Char := Agent.GetFortCharacter[], Char.TeleportTo[Builder.StartPosition(), IdentityRotation()]):
                ResetVitals(Agent)
                break
            if (T >= 40) { break }
            set T += 1
            Sleep(0.25)
        UpdateScoreboards()
        LoadQuestion(Agent)

    # Mort (mauvaise reponse OU temps ecoule) : verrouille, perd le streak, degats letaux,
    # puis respawn au dernier checkpoint (derniere porte franchie). La progression est GARDEE.
    Die(Agent : agent, State : quiz_player_state, Msg : string) : void =
        set State.Locked = true
        set State.Streak = 0
        PlayFx(Agent, 1, SfxWrong)
        if (Hud := Huds[Agent]) { spawn { Hud.Flash(Msg) } }
        if (Char := Agent.GetFortCharacter[]):
            Char.Damage(1000.0)
        spawn { RespawnToCheckpoint(Agent, State.Position) }

    # X du dernier checkpoint = juste APRES la derniere porte franchie (P-1).
    # Au depart (P=0) : retour au sas de depart.
    CheckpointX(P : int)<transacts> : float =
        if (P <= 0) { Builder.StartPosition().X }
        else { Builder.GateX(P - 1) + 80.0 }

    # X minimal autorise : impossible de revenir avant ce point (porte precedente bloquee).
    # Au depart (P=0) : pas de blocage logiciel (le mur physique du fond suffit).
    BackLimitX(P : int)<transacts> : float =
        if (P <= 0) { Builder.StartPosition().X - 10000.0 }
        else { Builder.GateX(P - 1) + 40.0 }

    # Attend le respawn du joueur, le replace au dernier checkpoint, puis recharge la question.
    RespawnToCheckpoint(Agent : agent, Q : int)<suspends> : void =
        Sleep(1.5)
        BackX := CheckpointX(Q)
        var T : int = 0
        loop:
            if (Char := Agent.GetFortCharacter[], Char.TeleportTo[vector3{ X := BackX, Y := 0.0, Z := 100.0 }, IdentityRotation()]):
                break
            if (T >= 40) { break }
            set T += 1
            Sleep(0.25)
        LoadQuestion(Agent)

    # Temps ecoule = comme une mauvaise reponse (classe : -25 ; non classe : mort).
    OnTimeout(Agent : agent, State : quiz_player_state) : void =
        PlayFx(Agent, 1, SfxTimeout)
        Rk := RankedFor(Agent)
        if (Rk?):
            RankedHit(Agent, State, TrA(Agent, "TEMPS ECOULE !", "TIME'S UP!", "TIEMPO AGOTADO!", "ZEIT ABGELAUFEN!", "TEMPO SCADUTO!"))
        else:
            Die(Agent, State, TrA(Agent, "TEMPS ECOULE ! Tu es mort !", "TIME'S UP! You died!", "TIEMPO AGOTADO! Has muerto!", "ZEIT UM! Du bist tot!", "TEMPO SCADUTO! Sei morto!"))

    TeleportToSegmentStart(Agent : agent, Q : int) : void =
        BackX := Builder.SegmentStartX(Q) + 50.0
        if (Char := Agent.GetFortCharacter[]):
            if (Char.TeleportTo[vector3{ X := BackX, Y := 0.0, Z := 100.0 }, IdentityRotation()]) {}

    # ===== Fin de partie =====
    FinishPlayer(Agent : agent, State : quiz_player_state) : void =
        set State.Finished = true
        # "Non classe" : le score N'EST PAS soumis au classement global.
        var Ranked : logic = true
        if (P := player[Agent], R := LobbyRanked[P]) { set Ranked = R }
        if (Ranked?) { Board.Submit(Agent, State.Score) }
        AccoladeFinish.Award(Agent)    # XP Fortnite de fin de quizz (ile publiee)
        # Ecran de resultats (design "Fin de Quizz - Resultats") a la place du HUD.
        if (P := player[Agent]):
            # Rang : round classe termine = +10/20/30 % selon la difficulte (persistant).
            TierBefore := RankTierOf(RankPtsOf(P))
            var Gain : int = 0
            if (Ranked?) { set Gain = AwardRankProgress(P) }
            if (set ResLastGain[P] = Gain) {}
            TierAfter := RankTierOf(RankPtsOf(P))
            # XP Fortnite bonus si on passe un rang MAJEUR (Bronze -> Silver, etc.)
            GrpBefore := RankGroupOf(TierBefore)   # hisses hors du if (no_rollback)
            GrpAfter := RankGroupOf(TierAfter)
            if (GrpAfter > GrpBefore):
                AccoladeRankUp.Award(P)
            StopAllMusic(P)
            PlayResultsMusic(P)
            if (TierAfter > TierBefore) { PlayFx(P, 1, SfxRankUp) }
            else { PlayFx(P, 1, SfxFanfare) }
            # Meilleur score classe : sauvegarde persistante PAR (quizz x difficulte) + TOP 10 du combo.
            DiffC := if (D := LobbyDiff[P]) { D } else { 1 }
            Cmb := Combo(CurrentQuiz, DiffC)
            if (Ranked?):
                SaveBestCombo(P, CurrentQuiz, DiffC, State.Score, State.Good)
                UpdateHallC(Cmb, P, BestComboScore(P, Cmb), BestComboGood(P, Cmb))
            set Hall = HallGet(Cmb)   # le classement affiche aux resultats = celui du combo joue
            if (Hud := Huds[Agent]) { Hud.Hide(P) }
            ShowResults(P)
        Print("Quiz termine - score {State.Score}")
        # Playlist : quand TOUS les joueurs du round ont fini et que la file
        # contient un quizz suivant -> enchainement automatique (~6s de resultats).
        var AllDone : logic = true
        Ps := GetPlayspace().GetPlayers()
        for (Rp : RoundPlayers):
            var Present : logic = false
            for (Pl : Ps, Pl = Rp) { set Present = true }
            if (Present?):
                if (S2 := Registry.Get[Rp], not S2.Finished?) { set AllDone = false }
        if (AllDone?, not ChainArmed?, QueuePos + 1 < LobbyQueue.Length):
            set ChainArmed = true
            spawn { ChainNextQuiz() }

    # Lance le quizz suivant de la playlist pour tous les joueurs du round
    # (sauf ceux retournes au lobby entre-temps). 6s pour lire les resultats.
    ChainNextQuiz()<suspends> : void =
        Sleep(6.0)
        set QueuePos += 1
        var Starter : ?player = HostPlayer
        if (not Starter?):
            for (Rp : RoundPlayers):
                if (not Starter?) { set Starter = option{ Rp } }
        if (St := Starter?):
            Order := PrepareSessionOrder(St)
            Ps := GetPlayspace().GetPlayers()
            var Launched : []player = array{}
            for (Pl : Ps):
                var Played : logic = false
                for (Rp : RoundPlayers, Rp = Pl) { set Played = true }
                var InLobby : logic = false
                if (X := LobbyShown[Pl]) { set InLobby = X }
                if (Played?, not InLobby?):
                    CloseResults(Pl)
                    set Launched += array{ Pl }
                    spawn { StartQuizForPlayer(Pl, Order) }
            set RoundPlayers = Launched
        set ChainArmed = false

    # Construit les lignes de classement (joueur + score) pour tous les joueurs.
    # Le pseudo Fortnite est rendu cote HUD via l'agent (message <localizes>).
    BuildEntries() : []leaderboard_entry =
        var Entries : []leaderboard_entry = array{}
        for (Agent -> _H : Huds):
            # ne garder que les joueurs du round COURANT (les HUD d'un round precedent ne sont pas retires)
            var InRound : logic = false
            if (P := player[Agent]):
                for (Rp : RoundPlayers, Rp = P) { set InRound = true }
            if (InRound?, S := Registry.Get[Agent]):
                set Entries += array{ leaderboard_entry{ Agent := Agent, Score := S.Score } }
        SortEntries(Entries)

    # Tri par score decroissant (selection).
    SortEntries(In : []leaderboard_entry) : []leaderboard_entry =
        var Remaining : []leaderboard_entry = In
        var Out : []leaderboard_entry = array{}
        loop:
            if (Remaining.Length <= 0) { break }
            var BestI : int = 0
            var BestSc : int = -2000000000   # (pas "BestScore" : collision avec la sauvegarde module)
            for (K := 0..Remaining.Length - 1):
                if (E := Remaining[K], E.Score > BestSc):
                    set BestSc = E.Score
                    set BestI = K
            if (Picked := Remaining[BestI]):
                set Out += array{ Picked }
                set Remaining = for (K := 0..Remaining.Length - 1, K <> BestI, X := Remaining[K]) { X }
            else:
                break
        Out

    # Met a jour le classement chez TOUS les joueurs (en direct).
    UpdateScoreboards() : void =
        Entries := BuildEntries()
        for (_A -> Hud : Huds):
            Hud.SetLeaderboard(Entries)

    PlayerCount()<transacts> : int =
        var N : int = 0
        for (_P : GetPlayspace().GetPlayers()) { set N += 1 }
        N

    # ===== Banque DRAPEAUX FR (390) — GENEREE par build_flags.py, NE PAS EDITER =====
    MakeQuestions() : []question =
        array:
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_fr }
                Reponses := array{"Luxembourg", "Russie", "Pays-Bas", "France"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_de }
                Reponses := array{"Allemagne", "Belgique", "Tchad", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_it }
                Reponses := array{"Bulgarie", "Inde", "Italie", "Hongrie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_es }
                Reponses := array{"Espagne", "Allemagne", "Malte", "Italie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pt }
                Reponses := array{"Suisse", "Portugal", "Danemark", "Italie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gb }
                Reponses := array{"Pays-Bas", "Royaume-Uni", "Monaco", "Malte"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ie }
                Reponses := array{"Inde", "Irlande", "Cote d'Ivoire", "Italie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_be }
                Reponses := array{"Belgique", "Allemagne", "Tchad", "Andorre"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_nl }
                Reponses := array{"Luxembourg", "Serbie", "France", "Pays-Bas"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lu }
                Reponses := array{"Slovenie", "Russie", "France", "Luxembourg"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ch }
                Reponses := array{"Danemark", "Georgie", "Suisse", "Suede"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_at }
                Reponses := array{"Autriche", "Estonie", "Lettonie", "Hongrie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mc }
                Reponses := array{"Singapour", "Pologne", "Indonesie", "Monaco"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ad }
                Reponses := array{"Moldavie", "Roumanie", "Tchad", "Andorre"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_li }
                Reponses := array{"Vatican", "Saint-Marin", "Liechtenstein", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sm }
                Reponses := array{"Vatican", "Suede", "Belgique", "Saint-Marin"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_va }
                Reponses := array{"Royaume-Uni", "Espagne", "Vatican", "Malte"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mt }
                Reponses := array{"Monaco", "Malte", "Espagne", "Suisse"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_is }
                Reponses := array{"Islande", "Finlande", "Norvege", "Danemark"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_no }
                Reponses := array{"Finlande", "Norvege", "Islande", "Danemark"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_se }
                Reponses := array{"Norvege", "Suede", "Islande", "Finlande"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_dk }
                Reponses := array{"Danemark", "Norvege", "Suisse", "Finlande"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_fi }
                Reponses := array{"Islande", "Danemark", "Finlande", "Suede"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pl }
                Reponses := array{"Pologne", "Singapour", "Indonesie", "Monaco"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cz }
                Reponses := array{"Tchequie", "Cuba", "Philippines", "Chili"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sk }
                Reponses := array{"Slovaquie", "Serbie", "Croatie", "Slovenie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_hu }
                Reponses := array{"Hongrie", "Italie", "Bulgarie", "Estonie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_si }
                Reponses := array{"Slovenie", "Luxembourg", "Croatie", "Slovaquie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_hr }
                Reponses := array{"Slovaquie", "Serbie", "Russie", "Croatie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ba }
                Reponses := array{"Pologne", "Slovaquie", "Russie", "Bosnie-Herzegovine"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_rs }
                Reponses := array{"Serbie", "Pays-Bas", "Croatie", "Russie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_me }
                Reponses := array{"Roumanie", "Lituanie", "Russie", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mk }
                Reponses := array{"Slovenie", "Ukraine", "Estonie", "Macedoine du Nord"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_al }
                Reponses := array{"Slovaquie", "Albanie", "Ukraine", "Slovenie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gr }
                Reponses := array{"Uruguay", "Grece", "Israel", "Bosnie-Herzegovine"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bg }
                Reponses := array{"Mexique", "Italie", "Bulgarie", "Hongrie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ro }
                Reponses := array{"Moldavie", "Tchad", "Andorre", "Roumanie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_md }
                Reponses := array{"Moldavie", "Tchad", "Andorre", "Roumanie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ua }
                Reponses := array{"Moldavie", "Macedoine du Nord", "Ukraine", "Tchequie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_by }
                Reponses := array{"Montenegro", "Bielorussie", "Macedoine du Nord", "Estonie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ru }
                Reponses := array{"Serbie", "Slovaquie", "Russie", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ee }
                Reponses := array{"Estonie", "Lettonie", "Hongrie", "Autriche"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lv }
                Reponses := array{"Lettonie", "Autriche", "Hongrie", "Estonie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lt }
                Reponses := array{"Bolivie", "Ghana", "Ethiopie", "Lituanie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cy }
                Reponses := array{"Chypre", "Slovaquie", "Grece", "Serbie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tr }
                Reponses := array{"Algerie", "Tunisie", "Pakistan", "Turquie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_il }
                Reponses := array{"Uruguay", "Israel", "Grece", "Jordanie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ps }
                Reponses := array{"Egypte", "Yemen", "Palestine", "Syrie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lb }
                Reponses := array{"Jordanie", "Georgie", "Yemen", "Liban"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sy }
                Reponses := array{"Irak", "Syrie", "Yemen", "Koweit"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_jo }
                Reponses := array{"Koweit", "Soudan", "Jordanie", "Palestine"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_iq }
                Reponses := array{"Jordanie", "Irak", "Koweit", "Soudan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ir }
                Reponses := array{"Palestine", "Qatar", "Iran", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sa }
                Reponses := array{"Armenie", "Oman", "Jordanie", "Arabie saoudite"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ye }
                Reponses := array{"Koweit", "Egypte", "Jordanie", "Yemen"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_om }
                Reponses := array{"Oman", "Koweit", "Emirats arabes unis", "Jordanie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ae }
                Reponses := array{"Emirats arabes unis", "Jordanie", "Yemen", "Egypte"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_qa }
                Reponses := array{"Qatar", "Bahrein", "Arabie saoudite", "Emirats arabes unis"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bh }
                Reponses := array{"Bahrein", "Qatar", "Azerbaidjan", "Oman"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kw }
                Reponses := array{"Emirats arabes unis", "Koweit", "Egypte", "Soudan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ge }
                Reponses := array{"Danemark", "Suisse", "Georgie", "Syrie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_am }
                Reponses := array{"Armenie", "Venezuela", "Colombie", "Emirats arabes unis"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_az }
                Reponses := array{"Ouzbekistan", "Azerbaidjan", "Turkmenistan", "Turquie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kz }
                Reponses := array{"Turkmenistan", "Kirghizistan", "Kazakhstan", "Tadjikistan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_uz }
                Reponses := array{"Azerbaidjan", "Turkmenistan", "Ouzbekistan", "Mongolie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tm }
                Reponses := array{"Ouzbekistan", "Turkmenistan", "Azerbaidjan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kg }
                Reponses := array{"Turkmenistan", "Afghanistan", "Kirghizistan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tj }
                Reponses := array{"Turkmenistan", "Kazakhstan", "Ouzbekistan", "Tadjikistan"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_af }
                Reponses := array{"Turkmenistan", "Afghanistan", "Ouzbekistan", "Kazakhstan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mn }
                Reponses := array{"Mongolie", "Turkmenistan", "Afghanistan", "Kirghizistan"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cn }
                Reponses := array{"Vietnam", "Maroc", "Chine", "Indonesie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_jp }
                Reponses := array{"Indonesie", "Philippines", "Japon", "Birmanie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kr }
                Reponses := array{"Costa Rica", "Thailande", "Coree du Sud", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kp }
                Reponses := array{"Thailande", "Coree du Sud", "Coree du Nord", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_in }
                Reponses := array{"Irlande", "Cote d'Ivoire", "Inde", "Niger"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pk }
                Reponses := array{"Algerie", "Pakistan", "Turquie", "Tunisie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bd }
                Reponses := array{"Malaisie", "Thailande", "Nepal", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lk }
                Reponses := array{"Singapour", "Pakistan", "Japon", "Sri Lanka"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_np }
                Reponses := array{"Birmanie", "Maldives", "Nepal", "Timor oriental"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bt }
                Reponses := array{"Chine", "Timor oriental", "Maldives", "Bhoutan"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mv }
                Reponses := array{"Maldives", "Birmanie", "Nepal", "Philippines"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mm }
                Reponses := array{"Birmanie", "Ghana", "Zimbabwe", "Chine"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_th }
                Reponses := array{"Cuba", "Costa Rica", "Laos", "Thailande"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_la }
                Reponses := array{"Timor oriental", "Thailande", "Cambodge", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kh }
                Reponses := array{"Laos", "Thailande", "Cambodge", "Philippines"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_vn }
                Reponses := array{"Maroc", "Chine", "Vietnam", "Bhoutan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_my }
                Reponses := array{"Inde", "Etats-Unis", "Liberia", "Malaisie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sg }
                Reponses := array{"Pologne", "Monaco", "Singapour", "Indonesie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_id }
                Reponses := array{"Indonesie", "Pologne", "Monaco", "Singapour"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bn }
                Reponses := array{"Brunei", "Malaisie", "Inde", "Nepal"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ph }
                Reponses := array{"Cuba", "Tchequie", "Chili", "Philippines"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tl }
                Reponses := array{"Sri Lanka", "Timor oriental", "Vietnam", "Singapour"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_au }
                Reponses := array{"Fidji", "Australie", "Tuvalu", "Nouvelle-Zelande"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_nz }
                Reponses := array{"Tuvalu", "Fidji", "Nouvelle-Zelande", "Australie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pg }
                Reponses := array{"Papouasie-Nouvelle-Guinee", "Fidji", "Kiribati", "Nauru"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_fj }
                Reponses := array{"Tuvalu", "Fidji", "Nouvelle-Zelande", "Australie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sb }
                Reponses := array{"Vanuatu", "Mozambique", "Zimbabwe", "Iles Salomon"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_vu }
                Reponses := array{"Iles Salomon", "Zimbabwe", "Vanuatu", "Mozambique"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ws }
                Reponses := array{"Nauru", "Tonga", "Vanuatu", "Samoa"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_to }
                Reponses := array{"Tuvalu", "Samoa", "Kiribati", "Tonga"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tv }
                Reponses := array{"Australie", "Fidji", "Nouvelle-Zelande", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ki }
                Reponses := array{"Nauru", "Kiribati", "Palaos", "Iles Marshall"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_nr }
                Reponses := array{"Palaos", "Kiribati", "Micronesie", "Nauru"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pw }
                Reponses := array{"Palaos", "Iles Marshall", "Micronesie", "Kiribati"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_fm }
                Reponses := array{"Palaos", "Iles Marshall", "Micronesie", "Kiribati"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mh }
                Reponses := array{"Micronesie", "Kiribati", "Palaos", "Iles Marshall"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ma }
                Reponses := array{"Maroc", "Chine", "Vietnam", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_dz }
                Reponses := array{"Turquie", "Algerie", "Tunisie", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tn }
                Reponses := array{"Algerie", "Pakistan", "Tunisie", "Turquie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ly }
                Reponses := array{"Liberia", "Libye", "Zimbabwe", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_eg }
                Reponses := array{"Egypte", "Palestine", "Jordanie", "Emirats arabes unis"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sd }
                Reponses := array{"Emirats arabes unis", "Koweit", "Irak", "Soudan"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ss }
                Reponses := array{"Centrafrique", "Afrique du Sud", "Soudan du Sud", "Malawi"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_et }
                Reponses := array{"Lituanie", "Ethiopie", "Ghana", "Bolivie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_er }
                Reponses := array{"Erythree", "Mali", "Cameroun", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_dj }
                Reponses := array{"Ethiopie", "Erythree", "Tunisie", "Djibouti"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_so }
                Reponses := array{"Cote d'Ivoire", "Somalie", "Seychelles", "Libye"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ke }
                Reponses := array{"Tanzanie", "Kenya", "Ouganda", "Rwanda"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ug }
                Reponses := array{"Ouganda", "Tanzanie", "Rwanda", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tz }
                Reponses := array{"Kenya", "Rwanda", "Ouganda", "Tanzanie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_rw }
                Reponses := array{"Ouganda", "Rwanda", "Tanzanie", "Kenya"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bi }
                Reponses := array{"Comores", "Burundi", "Angola", "Benin"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cd }
                Reponses := array{"Guinee equatoriale", "Gabon", "RD Congo", "Congo"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cg }
                Reponses := array{"RD Congo", "Congo", "Guinee equatoriale", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ga }
                Reponses := array{"Congo", "Guinee equatoriale", "Gabon", "RD Congo"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gq }
                Reponses := array{"RD Congo", "Guinee equatoriale", "Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cm }
                Reponses := array{"Benin", "Burkina Faso", "Senegal", "Cameroun"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cf }
                Reponses := array{"Centrafrique", "Tunisie", "Burundi", "Congo"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_td }
                Reponses := array{"Tchad", "Andorre", "Roumanie", "Moldavie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ne }
                Reponses := array{"Italie", "Cote d'Ivoire", "Niger", "Inde"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ng }
                Reponses := array{"Nigeria", "Maroc", "Madagascar", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bj }
                Reponses := array{"Senegal", "Benin", "Cameroun", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tg }
                Reponses := array{"Togo", "Seychelles", "Maroc", "Guinee equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gh }
                Reponses := array{"Bolivie", "Mali", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ci }
                Reponses := array{"Italie", "Inde", "Irlande", "Cote d'Ivoire"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lr }
                Reponses := array{"Etats-Unis", "Liberia", "Malaisie", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sl }
                Reponses := array{"Sierra Leone", "Madagascar", "Erythree", "Guinee equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gn }
                Reponses := array{"Ghana", "Senegal", "Burkina Faso", "Guinee"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gw }
                Reponses := array{"Guinee-Bissau", "Malawi", "Guinee", "RD Congo"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sn }
                Reponses := array{"Cameroun", "Senegal", "Mali", "Ghana"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gm }
                Reponses := array{"Seychelles", "Cap-Vert", "Eswatini", "Gambie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ml }
                Reponses := array{"Ghana", "Cameroun", "Senegal", "Mali"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bf }
                Reponses := array{"Cameroun", "Mali", "Senegal", "Burkina Faso"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mr }
                Reponses := array{"Maurice", "Ouganda", "Mali", "Mauritanie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cv }
                Reponses := array{"Cap-Vert", "Guinee-Bissau", "Benin", "Ouganda"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_st }
                Reponses := array{"Sao Tome-et-Principe", "Eswatini", "Nigeria", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ao }
                Reponses := array{"Angola", "Togo", "Cap-Vert", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_zm }
                Reponses := array{"Zambie", "RD Congo", "Tanzanie", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Iles Salomon", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mw }
                Reponses := array{"Angola", "Malawi", "Togo", "Erythree"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mz }
                Reponses := array{"Vanuatu", "Mozambique", "Iles Salomon", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mg }
                Reponses := array{"Madagascar", "Guinee equatoriale", "RD Congo", "Malawi"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_km }
                Reponses := array{"Comores", "Angola", "Burundi", "Guinee equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mu }
                Reponses := array{"Madagascar", "Maurice", "Botswana", "Togo"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sc }
                Reponses := array{"Zimbabwe", "Seychelles", "Somalie", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_za }
                Reponses := array{"Madagascar", "Cameroun", "Guinee-Bissau", "Afrique du Sud"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_na }
                Reponses := array{"Lesotho", "Namibie", "Eswatini", "Botswana"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bw }
                Reponses := array{"Eswatini", "Namibie", "Lesotho", "Botswana"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ls }
                Reponses := array{"Namibie", "Botswana", "Lesotho", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sz }
                Reponses := array{"Botswana", "Lesotho", "Namibie", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_us }
                Reponses := array{"Etats-Unis", "Liberia", "Malaisie", "Canada"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ca }
                Reponses := array{"Etats-Unis", "Canada", "Mexique", "Norvege"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_mx }
                Reponses := array{"Bulgarie", "Mexique", "Hongrie", "Irlande"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gt }
                Reponses := array{"Uruguay", "Salvador", "Honduras", "Guatemala"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bz }
                Reponses := array{"Costa Rica", "Grenade", "Belize", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_hn }
                Reponses := array{"Argentine", "Guatemala", "Honduras", "Salvador"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sv }
                Reponses := array{"Nicaragua", "Argentine", "Salvador", "Uruguay"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ni }
                Reponses := array{"Nicaragua", "Guatemala", "Salvador", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cr }
                Reponses := array{"Thailande", "Coree du Nord", "Coree du Sud", "Costa Rica"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pa }
                Reponses := array{"Antigua-et-Barbuda", "Saint-Vincent", "Trinite-et-Tobago", "Panama"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bs }
                Reponses := array{"Guatemala", "Bahamas", "Belize", "Sainte-Lucie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cu }
                Reponses := array{"Cuba", "Coree du Nord", "Thailande", "Philippines"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_jm }
                Reponses := array{"Haiti", "Nicaragua", "Jamaique", "Barbade"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ht }
                Reponses := array{"Guatemala", "Grenade", "Saint-Kitts-et-Nevis", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_do }
                Reponses := array{"Bahamas", "Salvador", "Saint-Vincent", "Republique dominicaine"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_kn }
                Reponses := array{"Sainte-Lucie", "Saint-Kitts-et-Nevis", "Dominique", "Antigua-et-Barbuda"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ag }
                Reponses := array{"Antigua-et-Barbuda", "Sainte-Lucie", "Grenade", "Saint-Kitts-et-Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_dm }
                Reponses := array{"Sainte-Lucie", "Dominique", "Saint-Vincent", "Grenade"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_lc }
                Reponses := array{"Sainte-Lucie", "Saint-Vincent", "Grenade", "Saint-Kitts-et-Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_vc }
                Reponses := array{"Sainte-Lucie", "Saint-Kitts-et-Nevis", "Saint-Vincent", "Dominique"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bb }
                Reponses := array{"Jamaique", "Panama", "Trinite-et-Tobago", "Barbade"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gd }
                Reponses := array{"Saint-Vincent", "Dominique", "Saint-Kitts-et-Nevis", "Grenade"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_tt }
                Reponses := array{"Jamaique", "Trinite-et-Tobago", "Antigua-et-Barbuda", "Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_co }
                Reponses := array{"Venezuela", "Colombie", "Equateur", "Armenie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ve }
                Reponses := array{"Colombie", "Venezuela", "Equateur", "Armenie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_gy }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Argentine"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_sr }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Chili"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ec }
                Reponses := array{"Venezuela", "Equateur", "Colombie", "Bolivie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_pe }
                Reponses := array{"Venezuela", "Perou", "Chili", "Bresil"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_br }
                Reponses := array{"Colombie", "Perou", "Bolivie", "Bresil"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_bo }
                Reponses := array{"Ghana", "Ethiopie", "Lituanie", "Bolivie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Bolivie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_uy }
                Reponses := array{"Nicaragua", "Grece", "Israel", "Uruguay"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_cl }
                Reponses := array{"Cuba", "Chili", "Tchequie", "Philippines"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ?"
                Image := option{ flags.flag_ar }
                Reponses := array{"Uruguay", "Argentine", "Guatemala", "Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_fr }
                Reponses := array{"Russie", "Pays-Bas", "France", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_de }
                Reponses := array{"Allemagne", "Tchad", "Belgique", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_it }
                Reponses := array{"Hongrie", "Italie", "Mexique", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_es }
                Reponses := array{"Malte", "Norvege", "Espagne", "France"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pt }
                Reponses := array{"Saint-Marin", "Portugal", "Suisse", "Belgique"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gb }
                Reponses := array{"Liechtenstein", "Royaume-Uni", "Allemagne", "Belgique"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ie }
                Reponses := array{"Cote d'Ivoire", "Irlande", "Mexique", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_be }
                Reponses := array{"Royaume-Uni", "Tchad", "Allemagne", "Belgique"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_nl }
                Reponses := array{"France", "Slovenie", "Croatie", "Pays-Bas"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lu }
                Reponses := array{"Pays-Bas", "Slovaquie", "Luxembourg", "Slovenie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ch }
                Reponses := array{"Finlande", "Georgie", "Danemark", "Suisse"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_at }
                Reponses := array{"Autriche", "Lettonie", "Hongrie", "Estonie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mc }
                Reponses := array{"Indonesie", "Monaco", "Pologne", "Singapour"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ad }
                Reponses := array{"Andorre", "Moldavie", "Tchad", "Roumanie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_li }
                Reponses := array{"Liechtenstein", "Pays-Bas", "Portugal", "Belgique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sm }
                Reponses := array{"Royaume-Uni", "Islande", "France", "Saint-Marin"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_va }
                Reponses := array{"Vatican", "Saint-Marin", "Allemagne", "Suisse"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mt }
                Reponses := array{"Malte", "Danemark", "Norvege", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_is }
                Reponses := array{"Danemark", "Islande", "Suede", "Norvege"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_no }
                Reponses := array{"Suede", "Danemark", "Islande", "Norvege"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_se }
                Reponses := array{"Norvege", "Suede", "Danemark", "Finlande"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_dk }
                Reponses := array{"Suede", "Finlande", "Suisse", "Danemark"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_fi }
                Reponses := array{"Suede", "Finlande", "Islande", "Danemark"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pl }
                Reponses := array{"Monaco", "Pologne", "Singapour", "Indonesie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cz }
                Reponses := array{"Cuba", "Chili", "Tchequie", "Philippines"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sk }
                Reponses := array{"Slovaquie", "Slovenie", "Croatie", "Serbie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_hu }
                Reponses := array{"Estonie", "Autriche", "Lettonie", "Hongrie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_si }
                Reponses := array{"Russie", "Serbie", "Pays-Bas", "Slovenie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_hr }
                Reponses := array{"Serbie", "Croatie", "Russie", "Luxembourg"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ba }
                Reponses := array{"Tchequie", "Slovenie", "Bosnie-Herzegovine", "Bielorussie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_rs }
                Reponses := array{"Pays-Bas", "Slovaquie", "Serbie", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_me }
                Reponses := array{"Estonie", "Albanie", "Slovaquie", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mk }
                Reponses := array{"Tchequie", "Estonie", "Macedoine du Nord", "Lituanie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_al }
                Reponses := array{"Grece", "Macedoine du Nord", "Albanie", "Lituanie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gr }
                Reponses := array{"Grece", "Uruguay", "Israel", "Lituanie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bg }
                Reponses := array{"Mexique", "Italie", "Bulgarie", "Hongrie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ro }
                Reponses := array{"Andorre", "Tchad", "Roumanie", "Moldavie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_md }
                Reponses := array{"Moldavie", "Roumanie", "Tchad", "Andorre"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ua }
                Reponses := array{"Macedoine du Nord", "Bulgarie", "Estonie", "Ukraine"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_by }
                Reponses := array{"Albanie", "Macedoine du Nord", "Lettonie", "Bielorussie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ru }
                Reponses := array{"Slovaquie", "France", "Russie", "Pays-Bas"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ee }
                Reponses := array{"Estonie", "Hongrie", "Lettonie", "Autriche"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lv }
                Reponses := array{"Autriche", "Estonie", "Hongrie", "Lettonie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lt }
                Reponses := array{"Lituanie", "Ghana", "Bolivie", "Ethiopie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cy }
                Reponses := array{"Grece", "Chypre", "Hongrie", "Albanie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tr }
                Reponses := array{"Pakistan", "Algerie", "Turquie", "Tunisie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_il }
                Reponses := array{"Bahrein", "Uruguay", "Grece", "Israel"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ps }
                Reponses := array{"Emirats arabes unis", "Irak", "Yemen", "Palestine"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lb }
                Reponses := array{"Iran", "Liban", "Irak", "Koweit"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sy }
                Reponses := array{"Palestine", "Emirats arabes unis", "Syrie", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_jo }
                Reponses := array{"Jordanie", "Koweit", "Yemen", "Soudan"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_iq }
                Reponses := array{"Egypte", "Emirats arabes unis", "Palestine", "Irak"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ir }
                Reponses := array{"Iran", "Oman", "Jordanie", "Armenie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sa }
                Reponses := array{"Koweit", "Qatar", "Arabie saoudite", "Oman"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ye }
                Reponses := array{"Syrie", "Jordanie", "Yemen", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_om }
                Reponses := array{"Liban", "Irak", "Azerbaidjan", "Oman"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ae }
                Reponses := array{"Emirats arabes unis", "Palestine", "Syrie", "Yemen"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_qa }
                Reponses := array{"Bahrein", "Qatar", "Turquie", "Emirats arabes unis"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bh }
                Reponses := array{"Qatar", "Bahrein", "Emirats arabes unis", "Palestine"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kw }
                Reponses := array{"Irak", "Soudan", "Koweit", "Jordanie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ge }
                Reponses := array{"Azerbaidjan", "Suisse", "Danemark", "Georgie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_am }
                Reponses := array{"Armenie", "Venezuela", "Colombie", "Syrie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_az }
                Reponses := array{"Emirats arabes unis", "Ouzbekistan", "Turkmenistan", "Azerbaidjan"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kz }
                Reponses := array{"Turkmenistan", "Kazakhstan", "Ouzbekistan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_uz }
                Reponses := array{"Turkmenistan", "Ouzbekistan", "Azerbaidjan", "Tadjikistan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tm }
                Reponses := array{"Turkmenistan", "Ouzbekistan", "Azerbaidjan", "Kirghizistan"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kg }
                Reponses := array{"Mongolie", "Turkmenistan", "Kirghizistan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tj }
                Reponses := array{"Afghanistan", "Kirghizistan", "Tadjikistan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_af }
                Reponses := array{"Kirghizistan", "Mongolie", "Afghanistan", "Turkmenistan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mn }
                Reponses := array{"Mongolie", "Kirghizistan", "Afghanistan", "Turkmenistan"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cn }
                Reponses := array{"Vietnam", "Maroc", "Chine", "Sri Lanka"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_jp }
                Reponses := array{"Malaisie", "Singapour", "Sri Lanka", "Japon"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kr }
                Reponses := array{"Coree du Sud", "Coree du Nord", "Costa Rica", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kp }
                Reponses := array{"Cuba", "Coree du Sud", "Coree du Nord", "Costa Rica"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_in }
                Reponses := array{"Inde", "Irlande", "Niger", "Cote d'Ivoire"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pk }
                Reponses := array{"Tunisie", "Turquie", "Pakistan", "Algerie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bd }
                Reponses := array{"Laos", "Coree du Nord", "Coree du Sud", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lk }
                Reponses := array{"Sri Lanka", "Singapour", "Laos", "Timor oriental"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_np }
                Reponses := array{"Chine", "Bhoutan", "Nepal", "Indonesie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bt }
                Reponses := array{"Japon", "Brunei", "Bhoutan", "Coree du Nord"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mv }
                Reponses := array{"Coree du Sud", "Birmanie", "Chine", "Maldives"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mm }
                Reponses := array{"Zimbabwe", "Birmanie", "Ghana", "Thailande"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_th }
                Reponses := array{"Cambodge", "Costa Rica", "Thailande", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_la }
                Reponses := array{"Bangladesh", "Thailande", "Cambodge", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kh }
                Reponses := array{"Thailande", "Cambodge", "Laos", "Sri Lanka"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_vn }
                Reponses := array{"Maroc", "Chine", "Vietnam", "Bhoutan"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_my }
                Reponses := array{"Liberia", "Malaisie", "Etats-Unis", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sg }
                Reponses := array{"Singapour", "Pologne", "Monaco", "Indonesie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_id }
                Reponses := array{"Monaco", "Indonesie", "Pologne", "Singapour"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bn }
                Reponses := array{"Singapour", "Brunei", "Vietnam", "Coree du Sud"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ph }
                Reponses := array{"Philippines", "Tchequie", "Chili", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tl }
                Reponses := array{"Laos", "Timor oriental", "Coree du Nord", "Chine"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_au }
                Reponses := array{"Tuvalu", "Fidji", "Australie", "Nouvelle-Zelande"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_nz }
                Reponses := array{"Tuvalu", "Nouvelle-Zelande", "Fidji", "Australie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pg }
                Reponses := array{"Tonga", "Iles Marshall", "Papouasie-Nouvelle-Guinee", "Fidji"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_fj }
                Reponses := array{"Australie", "Nouvelle-Zelande", "Tuvalu", "Fidji"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sb }
                Reponses := array{"Iles Salomon", "Vanuatu", "Zimbabwe", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_vu }
                Reponses := array{"Mozambique", "Zimbabwe", "Vanuatu", "Iles Salomon"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ws }
                Reponses := array{"Tonga", "Samoa", "Fidji", "Papouasie-Nouvelle-Guinee"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_to }
                Reponses := array{"Vanuatu", "Samoa", "Tonga", "Micronesie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tv }
                Reponses := array{"Fidji", "Nouvelle-Zelande", "Australie", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ki }
                Reponses := array{"Nauru", "Iles Marshall", "Palaos", "Kiribati"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_nr }
                Reponses := array{"Kiribati", "Iles Marshall", "Nauru", "Palaos"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pw }
                Reponses := array{"Nauru", "Kiribati", "Iles Marshall", "Palaos"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_fm }
                Reponses := array{"Micronesie", "Palaos", "Nauru", "Iles Marshall"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mh }
                Reponses := array{"Nauru", "Iles Marshall", "Kiribati", "Micronesie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ma }
                Reponses := array{"Vietnam", "Maroc", "Chine", "Namibie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_dz }
                Reponses := array{"Algerie", "Turquie", "Pakistan", "Tunisie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tn }
                Reponses := array{"Tunisie", "Pakistan", "Algerie", "Turquie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ly }
                Reponses := array{"Libye", "Sao Tome-et-Principe", "Congo", "Centrafrique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_eg }
                Reponses := array{"Irak", "Yemen", "Soudan", "Egypte"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sd }
                Reponses := array{"Emirats arabes unis", "Koweit", "Palestine", "Soudan"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ss }
                Reponses := array{"Mozambique", "Comores", "Soudan du Sud", "Djibouti"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_et }
                Reponses := array{"Lituanie", "Ghana", "Bolivie", "Ethiopie"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_er }
                Reponses := array{"Burkina Faso", "Erythree", "Tchad", "Tanzanie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_dj }
                Reponses := array{"Djibouti", "Libye", "Cote d'Ivoire", "Mauritanie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_so }
                Reponses := array{"Somalie", "Namibie", "Mozambique", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ke }
                Reponses := array{"Ouganda", "Rwanda", "Kenya", "Tanzanie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ug }
                Reponses := array{"Ouganda", "Rwanda", "Tanzanie", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tz }
                Reponses := array{"Rwanda", "Ouganda", "Tanzanie", "Kenya"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_rw }
                Reponses := array{"Tanzanie", "Rwanda", "Kenya", "Ouganda"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bi }
                Reponses := array{"Burundi", "Centrafrique", "Nigeria", "Namibie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cd }
                Reponses := array{"Congo", "Gabon", "RD Congo", "Guinee equatoriale"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cg }
                Reponses := array{"Guinee equatoriale", "Congo", "RD Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ga }
                Reponses := array{"Gabon", "Congo", "RD Congo", "Guinee equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gq }
                Reponses := array{"RD Congo", "Guinee equatoriale", "Gabon", "Congo"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cm }
                Reponses := array{"Burkina Faso", "Cameroun", "Benin", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cf }
                Reponses := array{"Centrafrique", "Gambie", "Libye", "Mali"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_td }
                Reponses := array{"Allemagne", "Andorre", "Tchad", "Moldavie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ne }
                Reponses := array{"Italie", "Inde", "Niger", "Irlande"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ng }
                Reponses := array{"Nigeria", "Rwanda", "Ghana", "Niger"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bj }
                Reponses := array{"Guinee", "Mali", "Senegal", "Benin"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tg }
                Reponses := array{"Togo", "Malawi", "Afrique du Sud", "Gabon"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gh }
                Reponses := array{"Mali", "Bolivie", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ci }
                Reponses := array{"Cote d'Ivoire", "Niger", "Irlande", "Italie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lr }
                Reponses := array{"Etats-Unis", "Liberia", "Malaisie", "Guinee equatoriale"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sl }
                Reponses := array{"Djibouti", "Guinee-Bissau", "Sierra Leone", "Gambie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gn }
                Reponses := array{"Senegal", "Ghana", "Guinee", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gw }
                Reponses := array{"Rwanda", "Guinee-Bissau", "Liberia", "Djibouti"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sn }
                Reponses := array{"Benin", "Burkina Faso", "Guinee", "Senegal"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gm }
                Reponses := array{"Malawi", "Gambie", "Rwanda", "Sao Tome-et-Principe"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ml }
                Reponses := array{"Senegal", "Benin", "Mali", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bf }
                Reponses := array{"Benin", "Burkina Faso", "Ghana", "Cameroun"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mr }
                Reponses := array{"Guinee equatoriale", "Burkina Faso", "Mauritanie", "Ethiopie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cv }
                Reponses := array{"Zimbabwe", "Cap-Vert", "Niger", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_st }
                Reponses := array{"Nigeria", "Sao Tome-et-Principe", "Somalie", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ao }
                Reponses := array{"Kenya", "Cameroun", "Seychelles", "Angola"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_zm }
                Reponses := array{"Zambie", "Egypte", "Ghana", "Libye"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Birmanie", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mw }
                Reponses := array{"Malawi", "Guinee equatoriale", "Djibouti", "Ethiopie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mz }
                Reponses := array{"Zimbabwe", "Vanuatu", "Mozambique", "Iles Salomon"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mg }
                Reponses := array{"Ouganda", "Maroc", "Ethiopie", "Madagascar"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_km }
                Reponses := array{"Tunisie", "Nigeria", "Mozambique", "Comores"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mu }
                Reponses := array{"Maurice", "Mali", "Ouganda", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sc }
                Reponses := array{"Seychelles", "Guinee-Bissau", "Ethiopie", "Angola"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_za }
                Reponses := array{"Cote d'Ivoire", "Afrique du Sud", "Djibouti", "Madagascar"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_na }
                Reponses := array{"Botswana", "Eswatini", "Namibie", "Lesotho"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bw }
                Reponses := array{"Namibie", "Lesotho", "Botswana", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ls }
                Reponses := array{"Namibie", "Eswatini", "Botswana", "Lesotho"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sz }
                Reponses := array{"Lesotho", "Namibie", "Botswana", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_us }
                Reponses := array{"Canada", "Malaisie", "Liberia", "Etats-Unis"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ca }
                Reponses := array{"Mexique", "Etats-Unis", "Canada", "Tunisie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_mx }
                Reponses := array{"Mexique", "Hongrie", "Bulgarie", "Italie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gt }
                Reponses := array{"Nicaragua", "Honduras", "Guatemala", "Argentine"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bz }
                Reponses := array{"Bahamas", "Nicaragua", "Belize", "Panama"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_hn }
                Reponses := array{"Argentine", "Honduras", "Uruguay", "Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sv }
                Reponses := array{"Uruguay", "Nicaragua", "Guatemala", "Salvador"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ni }
                Reponses := array{"Nicaragua", "Argentine", "Guatemala", "Salvador"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cr }
                Reponses := array{"Costa Rica", "Coree du Sud", "Cuba", "Thailande"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pa }
                Reponses := array{"Jamaique", "Panama", "Costa Rica", "Haiti"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bs }
                Reponses := array{"Barbade", "Bahamas", "Sainte-Lucie", "Saint-Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cu }
                Reponses := array{"Philippines", "Cuba", "Coree du Sud", "Chili"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_jm }
                Reponses := array{"Republique dominicaine", "Saint-Kitts-et-Nevis", "Jamaique", "Sainte-Lucie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ht }
                Reponses := array{"Bahamas", "Costa Rica", "Nicaragua", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_do }
                Reponses := array{"Jamaique", "Republique dominicaine", "Barbade", "Bahamas"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_kn }
                Reponses := array{"Dominique", "Grenade", "Saint-Kitts-et-Nevis", "Saint-Vincent"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ag }
                Reponses := array{"Antigua-et-Barbuda", "Saint-Kitts-et-Nevis", "Saint-Vincent", "Grenade"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_dm }
                Reponses := array{"Grenade", "Sainte-Lucie", "Dominique", "Antigua-et-Barbuda"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_lc }
                Reponses := array{"Antigua-et-Barbuda", "Sainte-Lucie", "Saint-Kitts-et-Nevis", "Saint-Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_vc }
                Reponses := array{"Grenade", "Dominique", "Saint-Vincent", "Sainte-Lucie"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bb }
                Reponses := array{"Trinite-et-Tobago", "Barbade", "Costa Rica", "Panama"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gd }
                Reponses := array{"Grenade", "Saint-Kitts-et-Nevis", "Sainte-Lucie", "Dominique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_tt }
                Reponses := array{"Trinite-et-Tobago", "Antigua-et-Barbuda", "Costa Rica", "Dominique"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_co }
                Reponses := array{"Venezuela", "Colombie", "Equateur", "Armenie"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ve }
                Reponses := array{"Armenie", "Venezuela", "Colombie", "Equateur"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_gy }
                Reponses := array{"Paraguay", "Guyana", "Suriname", "Perou"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_sr }
                Reponses := array{"Suriname", "Guyana", "Paraguay", "Bolivie"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ec }
                Reponses := array{"Equateur", "Venezuela", "Colombie", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_pe }
                Reponses := array{"Bresil", "Colombie", "Bolivie", "Perou"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_br }
                Reponses := array{"Guyana", "Bresil", "Chili", "Uruguay"}
                BonneReponse := 1
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_bo }
                Reponses := array{"Lituanie", "Ethiopie", "Bolivie", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Equateur"}
                BonneReponse := 0
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_uy }
                Reponses := array{"Argentine", "Grece", "Uruguay", "Nicaragua"}
                BonneReponse := 2
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_cl }
                Reponses := array{"Cuba", "Tchequie", "Philippines", "Chili"}
                BonneReponse := 3
            question:
                Enonce := "Quel est ce pays ? (drapeau pixelise)"
                Image := option{ flags_pixel.fpx_ar }
                Reponses := array{"Argentine", "Guatemala", "Nicaragua", "Uruguay"}
                BonneReponse := 0

    # ===== Banque DRAPEAUX EN (390) — memes tirages/indices que la banque FR =====
    MakeQuestionsEN() : []question =
        array:
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_fr }
                Reponses := array{"Luxembourg", "Russia", "Netherlands", "France"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_de }
                Reponses := array{"Germany", "Belgium", "Chad", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_it }
                Reponses := array{"Bulgaria", "India", "Italy", "Hungary"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_es }
                Reponses := array{"Spain", "Germany", "Malta", "Italy"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pt }
                Reponses := array{"Switzerland", "Portugal", "Denmark", "Italy"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gb }
                Reponses := array{"Netherlands", "United Kingdom", "Monaco", "Malta"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ie }
                Reponses := array{"India", "Ireland", "Ivory Coast", "Italy"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_be }
                Reponses := array{"Belgium", "Germany", "Chad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_nl }
                Reponses := array{"Luxembourg", "Serbia", "France", "Netherlands"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lu }
                Reponses := array{"Slovenia", "Russia", "France", "Luxembourg"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ch }
                Reponses := array{"Denmark", "Georgia", "Switzerland", "Sweden"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_at }
                Reponses := array{"Austria", "Estonia", "Latvia", "Hungary"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mc }
                Reponses := array{"Singapore", "Poland", "Indonesia", "Monaco"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ad }
                Reponses := array{"Moldova", "Romania", "Chad", "Andorra"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_li }
                Reponses := array{"Vatican City", "San Marino", "Liechtenstein", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sm }
                Reponses := array{"Vatican City", "Sweden", "Belgium", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_va }
                Reponses := array{"United Kingdom", "Spain", "Vatican City", "Malta"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mt }
                Reponses := array{"Monaco", "Malta", "Spain", "Switzerland"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_is }
                Reponses := array{"Iceland", "Finland", "Norway", "Denmark"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_no }
                Reponses := array{"Finland", "Norway", "Iceland", "Denmark"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_se }
                Reponses := array{"Norway", "Sweden", "Iceland", "Finland"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_dk }
                Reponses := array{"Denmark", "Norway", "Switzerland", "Finland"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_fi }
                Reponses := array{"Iceland", "Denmark", "Finland", "Sweden"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pl }
                Reponses := array{"Poland", "Singapore", "Indonesia", "Monaco"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cz }
                Reponses := array{"Czechia", "Cuba", "Philippines", "Chile"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sk }
                Reponses := array{"Slovakia", "Serbia", "Croatia", "Slovenia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_hu }
                Reponses := array{"Hungary", "Italy", "Bulgaria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_si }
                Reponses := array{"Slovenia", "Luxembourg", "Croatia", "Slovakia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_hr }
                Reponses := array{"Slovakia", "Serbia", "Russia", "Croatia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ba }
                Reponses := array{"Poland", "Slovakia", "Russia", "Bosnia and Herzegovina"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_rs }
                Reponses := array{"Serbia", "Netherlands", "Croatia", "Russia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_me }
                Reponses := array{"Romania", "Lithuania", "Russia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mk }
                Reponses := array{"Slovenia", "Ukraine", "Estonia", "North Macedonia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_al }
                Reponses := array{"Slovakia", "Albania", "Ukraine", "Slovenia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gr }
                Reponses := array{"Uruguay", "Greece", "Israel", "Bosnia and Herzegovina"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bg }
                Reponses := array{"Mexico", "Italy", "Bulgaria", "Hungary"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ro }
                Reponses := array{"Moldova", "Chad", "Andorra", "Romania"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_md }
                Reponses := array{"Moldova", "Chad", "Andorra", "Romania"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ua }
                Reponses := array{"Moldova", "North Macedonia", "Ukraine", "Czechia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_by }
                Reponses := array{"Montenegro", "Belarus", "North Macedonia", "Estonia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ru }
                Reponses := array{"Serbia", "Slovakia", "Russia", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ee }
                Reponses := array{"Estonia", "Latvia", "Hungary", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lv }
                Reponses := array{"Latvia", "Austria", "Hungary", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lt }
                Reponses := array{"Bolivia", "Ghana", "Ethiopia", "Lithuania"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cy }
                Reponses := array{"Cyprus", "Slovakia", "Greece", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tr }
                Reponses := array{"Algeria", "Tunisia", "Pakistan", "Turkey"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_il }
                Reponses := array{"Uruguay", "Israel", "Greece", "Jordan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ps }
                Reponses := array{"Egypt", "Yemen", "Palestine", "Syria"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lb }
                Reponses := array{"Jordan", "Georgia", "Yemen", "Lebanon"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sy }
                Reponses := array{"Iraq", "Syria", "Yemen", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_jo }
                Reponses := array{"Kuwait", "Sudan", "Jordan", "Palestine"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_iq }
                Reponses := array{"Jordan", "Iraq", "Kuwait", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ir }
                Reponses := array{"Palestine", "Qatar", "Iran", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sa }
                Reponses := array{"Armenia", "Oman", "Jordan", "Saudi Arabia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ye }
                Reponses := array{"Kuwait", "Egypt", "Jordan", "Yemen"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_om }
                Reponses := array{"Oman", "Kuwait", "United Arab Emirates", "Jordan"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ae }
                Reponses := array{"United Arab Emirates", "Jordan", "Yemen", "Egypt"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_qa }
                Reponses := array{"Qatar", "Bahrain", "Saudi Arabia", "United Arab Emirates"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bh }
                Reponses := array{"Bahrain", "Qatar", "Azerbaijan", "Oman"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kw }
                Reponses := array{"United Arab Emirates", "Kuwait", "Egypt", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ge }
                Reponses := array{"Denmark", "Switzerland", "Georgia", "Syria"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "United Arab Emirates"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_az }
                Reponses := array{"Uzbekistan", "Azerbaijan", "Turkmenistan", "Turkey"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kz }
                Reponses := array{"Turkmenistan", "Kyrgyzstan", "Kazakhstan", "Tajikistan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_uz }
                Reponses := array{"Azerbaijan", "Turkmenistan", "Uzbekistan", "Mongolia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tm }
                Reponses := array{"Uzbekistan", "Turkmenistan", "Azerbaijan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kg }
                Reponses := array{"Turkmenistan", "Afghanistan", "Kyrgyzstan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tj }
                Reponses := array{"Turkmenistan", "Kazakhstan", "Uzbekistan", "Tajikistan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_af }
                Reponses := array{"Turkmenistan", "Afghanistan", "Uzbekistan", "Kazakhstan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mn }
                Reponses := array{"Mongolia", "Turkmenistan", "Afghanistan", "Kyrgyzstan"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cn }
                Reponses := array{"Vietnam", "Morocco", "China", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_jp }
                Reponses := array{"Indonesia", "Philippines", "Japan", "Myanmar"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kr }
                Reponses := array{"Costa Rica", "Thailand", "South Korea", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kp }
                Reponses := array{"Thailand", "South Korea", "North Korea", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_in }
                Reponses := array{"Ireland", "Ivory Coast", "India", "Niger"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pk }
                Reponses := array{"Algeria", "Pakistan", "Turkey", "Tunisia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bd }
                Reponses := array{"Malaysia", "Thailand", "Nepal", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lk }
                Reponses := array{"Singapore", "Pakistan", "Japan", "Sri Lanka"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_np }
                Reponses := array{"Myanmar", "Maldives", "Nepal", "East Timor"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bt }
                Reponses := array{"China", "East Timor", "Maldives", "Bhutan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mv }
                Reponses := array{"Maldives", "Myanmar", "Nepal", "Philippines"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mm }
                Reponses := array{"Myanmar", "Ghana", "Zimbabwe", "China"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_th }
                Reponses := array{"Cuba", "Costa Rica", "Laos", "Thailand"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_la }
                Reponses := array{"East Timor", "Thailand", "Cambodia", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kh }
                Reponses := array{"Laos", "Thailand", "Cambodia", "Philippines"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_vn }
                Reponses := array{"Morocco", "China", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_my }
                Reponses := array{"India", "United States", "Liberia", "Malaysia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sg }
                Reponses := array{"Poland", "Monaco", "Singapore", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_id }
                Reponses := array{"Indonesia", "Poland", "Monaco", "Singapore"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bn }
                Reponses := array{"Brunei", "Malaysia", "India", "Nepal"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ph }
                Reponses := array{"Cuba", "Czechia", "Chile", "Philippines"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tl }
                Reponses := array{"Sri Lanka", "East Timor", "Vietnam", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_au }
                Reponses := array{"Fiji", "Australia", "Tuvalu", "New Zealand"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_nz }
                Reponses := array{"Tuvalu", "Fiji", "New Zealand", "Australia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pg }
                Reponses := array{"Papua New Guinea", "Fiji", "Kiribati", "Nauru"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_fj }
                Reponses := array{"Tuvalu", "Fiji", "New Zealand", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sb }
                Reponses := array{"Vanuatu", "Mozambique", "Zimbabwe", "Solomon Islands"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_vu }
                Reponses := array{"Solomon Islands", "Zimbabwe", "Vanuatu", "Mozambique"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ws }
                Reponses := array{"Nauru", "Tonga", "Vanuatu", "Samoa"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_to }
                Reponses := array{"Tuvalu", "Samoa", "Kiribati", "Tonga"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tv }
                Reponses := array{"Australia", "Fiji", "New Zealand", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ki }
                Reponses := array{"Nauru", "Kiribati", "Palau", "Marshall Islands"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_nr }
                Reponses := array{"Palau", "Kiribati", "Micronesia", "Nauru"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pw }
                Reponses := array{"Palau", "Marshall Islands", "Micronesia", "Kiribati"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_fm }
                Reponses := array{"Palau", "Marshall Islands", "Micronesia", "Kiribati"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mh }
                Reponses := array{"Micronesia", "Kiribati", "Palau", "Marshall Islands"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ma }
                Reponses := array{"Morocco", "China", "Vietnam", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_dz }
                Reponses := array{"Turkey", "Algeria", "Tunisia", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tn }
                Reponses := array{"Algeria", "Pakistan", "Tunisia", "Turkey"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ly }
                Reponses := array{"Liberia", "Libya", "Zimbabwe", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_eg }
                Reponses := array{"Egypt", "Palestine", "Jordan", "United Arab Emirates"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sd }
                Reponses := array{"United Arab Emirates", "Kuwait", "Iraq", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ss }
                Reponses := array{"Central African Republic", "South Africa", "South Sudan", "Malawi"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_et }
                Reponses := array{"Lithuania", "Ethiopia", "Ghana", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_er }
                Reponses := array{"Eritrea", "Mali", "Cameroon", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_dj }
                Reponses := array{"Ethiopia", "Eritrea", "Tunisia", "Djibouti"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_so }
                Reponses := array{"Ivory Coast", "Somalia", "Seychelles", "Libya"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ke }
                Reponses := array{"Tanzania", "Kenya", "Uganda", "Rwanda"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ug }
                Reponses := array{"Uganda", "Tanzania", "Rwanda", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tz }
                Reponses := array{"Kenya", "Rwanda", "Uganda", "Tanzania"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_rw }
                Reponses := array{"Uganda", "Rwanda", "Tanzania", "Kenya"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bi }
                Reponses := array{"Comoros", "Burundi", "Angola", "Benin"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cd }
                Reponses := array{"Equatorial Guinea", "Gabon", "DR Congo", "Congo"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cg }
                Reponses := array{"DR Congo", "Congo", "Equatorial Guinea", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ga }
                Reponses := array{"Congo", "Equatorial Guinea", "Gabon", "DR Congo"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gq }
                Reponses := array{"DR Congo", "Equatorial Guinea", "Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cm }
                Reponses := array{"Benin", "Burkina Faso", "Senegal", "Cameroon"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cf }
                Reponses := array{"Central African Republic", "Tunisia", "Burundi", "Congo"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_td }
                Reponses := array{"Chad", "Andorra", "Romania", "Moldova"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ne }
                Reponses := array{"Italy", "Ivory Coast", "Niger", "India"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ng }
                Reponses := array{"Nigeria", "Morocco", "Madagascar", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bj }
                Reponses := array{"Senegal", "Benin", "Cameroon", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tg }
                Reponses := array{"Togo", "Seychelles", "Morocco", "Equatorial Guinea"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gh }
                Reponses := array{"Bolivia", "Mali", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ci }
                Reponses := array{"Italy", "India", "Ireland", "Ivory Coast"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lr }
                Reponses := array{"United States", "Liberia", "Malaysia", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sl }
                Reponses := array{"Sierra Leone", "Madagascar", "Eritrea", "Equatorial Guinea"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gn }
                Reponses := array{"Ghana", "Senegal", "Burkina Faso", "Guinea"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gw }
                Reponses := array{"Guinea-Bissau", "Malawi", "Guinea", "DR Congo"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sn }
                Reponses := array{"Cameroon", "Senegal", "Mali", "Ghana"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gm }
                Reponses := array{"Seychelles", "Cape Verde", "Eswatini", "Gambia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ml }
                Reponses := array{"Ghana", "Cameroon", "Senegal", "Mali"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bf }
                Reponses := array{"Cameroon", "Mali", "Senegal", "Burkina Faso"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mr }
                Reponses := array{"Mauritius", "Uganda", "Mali", "Mauritania"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cv }
                Reponses := array{"Cape Verde", "Guinea-Bissau", "Benin", "Uganda"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_st }
                Reponses := array{"Sao Tome and Principe", "Eswatini", "Nigeria", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ao }
                Reponses := array{"Angola", "Togo", "Cape Verde", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_zm }
                Reponses := array{"Zambia", "DR Congo", "Tanzania", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Solomon Islands", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mw }
                Reponses := array{"Angola", "Malawi", "Togo", "Eritrea"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mz }
                Reponses := array{"Vanuatu", "Mozambique", "Solomon Islands", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mg }
                Reponses := array{"Madagascar", "Equatorial Guinea", "DR Congo", "Malawi"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_km }
                Reponses := array{"Comoros", "Angola", "Burundi", "Equatorial Guinea"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mu }
                Reponses := array{"Madagascar", "Mauritius", "Botswana", "Togo"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sc }
                Reponses := array{"Zimbabwe", "Seychelles", "Somalia", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_za }
                Reponses := array{"Madagascar", "Cameroon", "Guinea-Bissau", "South Africa"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_na }
                Reponses := array{"Lesotho", "Namibia", "Eswatini", "Botswana"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bw }
                Reponses := array{"Eswatini", "Namibia", "Lesotho", "Botswana"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ls }
                Reponses := array{"Namibia", "Botswana", "Lesotho", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sz }
                Reponses := array{"Botswana", "Lesotho", "Namibia", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_us }
                Reponses := array{"United States", "Liberia", "Malaysia", "Canada"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ca }
                Reponses := array{"United States", "Canada", "Mexico", "Norway"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_mx }
                Reponses := array{"Bulgaria", "Mexico", "Hungary", "Ireland"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gt }
                Reponses := array{"Uruguay", "El Salvador", "Honduras", "Guatemala"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bz }
                Reponses := array{"Costa Rica", "Grenada", "Belize", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_hn }
                Reponses := array{"Argentina", "Guatemala", "Honduras", "El Salvador"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sv }
                Reponses := array{"Nicaragua", "Argentina", "El Salvador", "Uruguay"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ni }
                Reponses := array{"Nicaragua", "Guatemala", "El Salvador", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cr }
                Reponses := array{"Thailand", "North Korea", "South Korea", "Costa Rica"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pa }
                Reponses := array{"Antigua and Barbuda", "Saint Vincent", "Trinidad and Tobago", "Panama"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bs }
                Reponses := array{"Guatemala", "Bahamas", "Belize", "Saint Lucia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cu }
                Reponses := array{"Cuba", "North Korea", "Thailand", "Philippines"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_jm }
                Reponses := array{"Haiti", "Nicaragua", "Jamaica", "Barbados"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ht }
                Reponses := array{"Guatemala", "Grenada", "Saint Kitts and Nevis", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_do }
                Reponses := array{"Bahamas", "El Salvador", "Saint Vincent", "Dominican Republic"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_kn }
                Reponses := array{"Saint Lucia", "Saint Kitts and Nevis", "Dominica", "Antigua and Barbuda"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ag }
                Reponses := array{"Antigua and Barbuda", "Saint Lucia", "Grenada", "Saint Kitts and Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_dm }
                Reponses := array{"Saint Lucia", "Dominica", "Saint Vincent", "Grenada"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_lc }
                Reponses := array{"Saint Lucia", "Saint Vincent", "Grenada", "Saint Kitts and Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_vc }
                Reponses := array{"Saint Lucia", "Saint Kitts and Nevis", "Saint Vincent", "Dominica"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bb }
                Reponses := array{"Jamaica", "Panama", "Trinidad and Tobago", "Barbados"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gd }
                Reponses := array{"Saint Vincent", "Dominica", "Saint Kitts and Nevis", "Grenada"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_tt }
                Reponses := array{"Jamaica", "Trinidad and Tobago", "Antigua and Barbuda", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ve }
                Reponses := array{"Colombia", "Venezuela", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_gy }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Argentina"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_sr }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ec }
                Reponses := array{"Venezuela", "Ecuador", "Colombia", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_pe }
                Reponses := array{"Venezuela", "Peru", "Chile", "Brazil"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_br }
                Reponses := array{"Colombia", "Peru", "Bolivia", "Brazil"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_bo }
                Reponses := array{"Ghana", "Ethiopia", "Lithuania", "Bolivia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_uy }
                Reponses := array{"Nicaragua", "Greece", "Israel", "Uruguay"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_cl }
                Reponses := array{"Cuba", "Chile", "Czechia", "Philippines"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this?"
                Image := option{ flags.flag_ar }
                Reponses := array{"Uruguay", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_fr }
                Reponses := array{"Russia", "Netherlands", "France", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_de }
                Reponses := array{"Germany", "Chad", "Belgium", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_it }
                Reponses := array{"Hungary", "Italy", "Mexico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_es }
                Reponses := array{"Malta", "Norway", "Spain", "France"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pt }
                Reponses := array{"San Marino", "Portugal", "Switzerland", "Belgium"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gb }
                Reponses := array{"Liechtenstein", "United Kingdom", "Germany", "Belgium"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ie }
                Reponses := array{"Ivory Coast", "Ireland", "Mexico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_be }
                Reponses := array{"United Kingdom", "Chad", "Germany", "Belgium"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_nl }
                Reponses := array{"France", "Slovenia", "Croatia", "Netherlands"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lu }
                Reponses := array{"Netherlands", "Slovakia", "Luxembourg", "Slovenia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ch }
                Reponses := array{"Finland", "Georgia", "Denmark", "Switzerland"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_at }
                Reponses := array{"Austria", "Latvia", "Hungary", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mc }
                Reponses := array{"Indonesia", "Monaco", "Poland", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ad }
                Reponses := array{"Andorra", "Moldova", "Chad", "Romania"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_li }
                Reponses := array{"Liechtenstein", "Netherlands", "Portugal", "Belgium"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sm }
                Reponses := array{"United Kingdom", "Iceland", "France", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_va }
                Reponses := array{"Vatican City", "San Marino", "Germany", "Switzerland"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mt }
                Reponses := array{"Malta", "Denmark", "Norway", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_is }
                Reponses := array{"Denmark", "Iceland", "Sweden", "Norway"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_no }
                Reponses := array{"Sweden", "Denmark", "Iceland", "Norway"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_se }
                Reponses := array{"Norway", "Sweden", "Denmark", "Finland"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_dk }
                Reponses := array{"Sweden", "Finland", "Switzerland", "Denmark"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_fi }
                Reponses := array{"Sweden", "Finland", "Iceland", "Denmark"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pl }
                Reponses := array{"Monaco", "Poland", "Singapore", "Indonesia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cz }
                Reponses := array{"Cuba", "Chile", "Czechia", "Philippines"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sk }
                Reponses := array{"Slovakia", "Slovenia", "Croatia", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_hu }
                Reponses := array{"Estonia", "Austria", "Latvia", "Hungary"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_si }
                Reponses := array{"Russia", "Serbia", "Netherlands", "Slovenia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_hr }
                Reponses := array{"Serbia", "Croatia", "Russia", "Luxembourg"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ba }
                Reponses := array{"Czechia", "Slovenia", "Bosnia and Herzegovina", "Belarus"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_rs }
                Reponses := array{"Netherlands", "Slovakia", "Serbia", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_me }
                Reponses := array{"Estonia", "Albania", "Slovakia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mk }
                Reponses := array{"Czechia", "Estonia", "North Macedonia", "Lithuania"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_al }
                Reponses := array{"Greece", "North Macedonia", "Albania", "Lithuania"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gr }
                Reponses := array{"Greece", "Uruguay", "Israel", "Lithuania"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bg }
                Reponses := array{"Mexico", "Italy", "Bulgaria", "Hungary"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ro }
                Reponses := array{"Andorra", "Chad", "Romania", "Moldova"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_md }
                Reponses := array{"Moldova", "Romania", "Chad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ua }
                Reponses := array{"North Macedonia", "Bulgaria", "Estonia", "Ukraine"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_by }
                Reponses := array{"Albania", "North Macedonia", "Latvia", "Belarus"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ru }
                Reponses := array{"Slovakia", "France", "Russia", "Netherlands"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ee }
                Reponses := array{"Estonia", "Hungary", "Latvia", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lv }
                Reponses := array{"Austria", "Estonia", "Hungary", "Latvia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lt }
                Reponses := array{"Lithuania", "Ghana", "Bolivia", "Ethiopia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cy }
                Reponses := array{"Greece", "Cyprus", "Hungary", "Albania"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tr }
                Reponses := array{"Pakistan", "Algeria", "Turkey", "Tunisia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_il }
                Reponses := array{"Bahrain", "Uruguay", "Greece", "Israel"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ps }
                Reponses := array{"United Arab Emirates", "Iraq", "Yemen", "Palestine"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lb }
                Reponses := array{"Iran", "Lebanon", "Iraq", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sy }
                Reponses := array{"Palestine", "United Arab Emirates", "Syria", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_jo }
                Reponses := array{"Jordan", "Kuwait", "Yemen", "Sudan"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_iq }
                Reponses := array{"Egypt", "United Arab Emirates", "Palestine", "Iraq"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ir }
                Reponses := array{"Iran", "Oman", "Jordan", "Armenia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sa }
                Reponses := array{"Kuwait", "Qatar", "Saudi Arabia", "Oman"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ye }
                Reponses := array{"Syria", "Jordan", "Yemen", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_om }
                Reponses := array{"Lebanon", "Iraq", "Azerbaijan", "Oman"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ae }
                Reponses := array{"United Arab Emirates", "Palestine", "Syria", "Yemen"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_qa }
                Reponses := array{"Bahrain", "Qatar", "Turkey", "United Arab Emirates"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bh }
                Reponses := array{"Qatar", "Bahrain", "United Arab Emirates", "Palestine"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kw }
                Reponses := array{"Iraq", "Sudan", "Kuwait", "Jordan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ge }
                Reponses := array{"Azerbaijan", "Switzerland", "Denmark", "Georgia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Syria"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_az }
                Reponses := array{"United Arab Emirates", "Uzbekistan", "Turkmenistan", "Azerbaijan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kz }
                Reponses := array{"Turkmenistan", "Kazakhstan", "Uzbekistan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_uz }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaijan", "Tajikistan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tm }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaijan", "Kyrgyzstan"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kg }
                Reponses := array{"Mongolia", "Turkmenistan", "Kyrgyzstan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tj }
                Reponses := array{"Afghanistan", "Kyrgyzstan", "Tajikistan", "Kazakhstan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_af }
                Reponses := array{"Kyrgyzstan", "Mongolia", "Afghanistan", "Turkmenistan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mn }
                Reponses := array{"Mongolia", "Kyrgyzstan", "Afghanistan", "Turkmenistan"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cn }
                Reponses := array{"Vietnam", "Morocco", "China", "Sri Lanka"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_jp }
                Reponses := array{"Malaysia", "Singapore", "Sri Lanka", "Japan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kr }
                Reponses := array{"South Korea", "North Korea", "Costa Rica", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kp }
                Reponses := array{"Cuba", "South Korea", "North Korea", "Costa Rica"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_in }
                Reponses := array{"India", "Ireland", "Niger", "Ivory Coast"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pk }
                Reponses := array{"Tunisia", "Turkey", "Pakistan", "Algeria"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bd }
                Reponses := array{"Laos", "North Korea", "South Korea", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lk }
                Reponses := array{"Sri Lanka", "Singapore", "Laos", "East Timor"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_np }
                Reponses := array{"China", "Bhutan", "Nepal", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bt }
                Reponses := array{"Japan", "Brunei", "Bhutan", "North Korea"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mv }
                Reponses := array{"South Korea", "Myanmar", "China", "Maldives"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mm }
                Reponses := array{"Zimbabwe", "Myanmar", "Ghana", "Thailand"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_th }
                Reponses := array{"Cambodia", "Costa Rica", "Thailand", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_la }
                Reponses := array{"Bangladesh", "Thailand", "Cambodia", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kh }
                Reponses := array{"Thailand", "Cambodia", "Laos", "Sri Lanka"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_vn }
                Reponses := array{"Morocco", "China", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_my }
                Reponses := array{"Liberia", "Malaysia", "United States", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sg }
                Reponses := array{"Singapore", "Poland", "Monaco", "Indonesia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_id }
                Reponses := array{"Monaco", "Indonesia", "Poland", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bn }
                Reponses := array{"Singapore", "Brunei", "Vietnam", "South Korea"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ph }
                Reponses := array{"Philippines", "Czechia", "Chile", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tl }
                Reponses := array{"Laos", "East Timor", "North Korea", "China"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_au }
                Reponses := array{"Tuvalu", "Fiji", "Australia", "New Zealand"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_nz }
                Reponses := array{"Tuvalu", "New Zealand", "Fiji", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pg }
                Reponses := array{"Tonga", "Marshall Islands", "Papua New Guinea", "Fiji"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_fj }
                Reponses := array{"Australia", "New Zealand", "Tuvalu", "Fiji"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sb }
                Reponses := array{"Solomon Islands", "Vanuatu", "Zimbabwe", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_vu }
                Reponses := array{"Mozambique", "Zimbabwe", "Vanuatu", "Solomon Islands"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ws }
                Reponses := array{"Tonga", "Samoa", "Fiji", "Papua New Guinea"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_to }
                Reponses := array{"Vanuatu", "Samoa", "Tonga", "Micronesia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tv }
                Reponses := array{"Fiji", "New Zealand", "Australia", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ki }
                Reponses := array{"Nauru", "Marshall Islands", "Palau", "Kiribati"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_nr }
                Reponses := array{"Kiribati", "Marshall Islands", "Nauru", "Palau"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pw }
                Reponses := array{"Nauru", "Kiribati", "Marshall Islands", "Palau"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_fm }
                Reponses := array{"Micronesia", "Palau", "Nauru", "Marshall Islands"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mh }
                Reponses := array{"Nauru", "Marshall Islands", "Kiribati", "Micronesia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ma }
                Reponses := array{"Vietnam", "Morocco", "China", "Namibia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_dz }
                Reponses := array{"Algeria", "Turkey", "Pakistan", "Tunisia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tn }
                Reponses := array{"Tunisia", "Pakistan", "Algeria", "Turkey"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ly }
                Reponses := array{"Libya", "Sao Tome and Principe", "Congo", "Central African Republic"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_eg }
                Reponses := array{"Iraq", "Yemen", "Sudan", "Egypt"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sd }
                Reponses := array{"United Arab Emirates", "Kuwait", "Palestine", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ss }
                Reponses := array{"Mozambique", "Comoros", "South Sudan", "Djibouti"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_et }
                Reponses := array{"Lithuania", "Ghana", "Bolivia", "Ethiopia"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_er }
                Reponses := array{"Burkina Faso", "Eritrea", "Chad", "Tanzania"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_dj }
                Reponses := array{"Djibouti", "Libya", "Ivory Coast", "Mauritania"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_so }
                Reponses := array{"Somalia", "Namibia", "Mozambique", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ke }
                Reponses := array{"Uganda", "Rwanda", "Kenya", "Tanzania"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ug }
                Reponses := array{"Uganda", "Rwanda", "Tanzania", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tz }
                Reponses := array{"Rwanda", "Uganda", "Tanzania", "Kenya"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_rw }
                Reponses := array{"Tanzania", "Rwanda", "Kenya", "Uganda"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bi }
                Reponses := array{"Burundi", "Central African Republic", "Nigeria", "Namibia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cd }
                Reponses := array{"Congo", "Gabon", "DR Congo", "Equatorial Guinea"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cg }
                Reponses := array{"Equatorial Guinea", "Congo", "DR Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ga }
                Reponses := array{"Gabon", "Congo", "DR Congo", "Equatorial Guinea"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gq }
                Reponses := array{"DR Congo", "Equatorial Guinea", "Gabon", "Congo"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cm }
                Reponses := array{"Burkina Faso", "Cameroon", "Benin", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cf }
                Reponses := array{"Central African Republic", "Gambia", "Libya", "Mali"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_td }
                Reponses := array{"Germany", "Andorra", "Chad", "Moldova"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ne }
                Reponses := array{"Italy", "India", "Niger", "Ireland"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ng }
                Reponses := array{"Nigeria", "Rwanda", "Ghana", "Niger"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bj }
                Reponses := array{"Guinea", "Mali", "Senegal", "Benin"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tg }
                Reponses := array{"Togo", "Malawi", "South Africa", "Gabon"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gh }
                Reponses := array{"Mali", "Bolivia", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ci }
                Reponses := array{"Ivory Coast", "Niger", "Ireland", "Italy"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lr }
                Reponses := array{"United States", "Liberia", "Malaysia", "Equatorial Guinea"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sl }
                Reponses := array{"Djibouti", "Guinea-Bissau", "Sierra Leone", "Gambia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gn }
                Reponses := array{"Senegal", "Ghana", "Guinea", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gw }
                Reponses := array{"Rwanda", "Guinea-Bissau", "Liberia", "Djibouti"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sn }
                Reponses := array{"Benin", "Burkina Faso", "Guinea", "Senegal"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gm }
                Reponses := array{"Malawi", "Gambia", "Rwanda", "Sao Tome and Principe"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ml }
                Reponses := array{"Senegal", "Benin", "Mali", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bf }
                Reponses := array{"Benin", "Burkina Faso", "Ghana", "Cameroon"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mr }
                Reponses := array{"Equatorial Guinea", "Burkina Faso", "Mauritania", "Ethiopia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cv }
                Reponses := array{"Zimbabwe", "Cape Verde", "Niger", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_st }
                Reponses := array{"Nigeria", "Sao Tome and Principe", "Somalia", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ao }
                Reponses := array{"Kenya", "Cameroon", "Seychelles", "Angola"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_zm }
                Reponses := array{"Zambia", "Egypt", "Ghana", "Libya"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Myanmar", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mw }
                Reponses := array{"Malawi", "Equatorial Guinea", "Djibouti", "Ethiopia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mz }
                Reponses := array{"Zimbabwe", "Vanuatu", "Mozambique", "Solomon Islands"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mg }
                Reponses := array{"Uganda", "Morocco", "Ethiopia", "Madagascar"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_km }
                Reponses := array{"Tunisia", "Nigeria", "Mozambique", "Comoros"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mu }
                Reponses := array{"Mauritius", "Mali", "Uganda", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sc }
                Reponses := array{"Seychelles", "Guinea-Bissau", "Ethiopia", "Angola"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_za }
                Reponses := array{"Ivory Coast", "South Africa", "Djibouti", "Madagascar"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_na }
                Reponses := array{"Botswana", "Eswatini", "Namibia", "Lesotho"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bw }
                Reponses := array{"Namibia", "Lesotho", "Botswana", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ls }
                Reponses := array{"Namibia", "Eswatini", "Botswana", "Lesotho"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sz }
                Reponses := array{"Lesotho", "Namibia", "Botswana", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_us }
                Reponses := array{"Canada", "Malaysia", "Liberia", "United States"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ca }
                Reponses := array{"Mexico", "United States", "Canada", "Tunisia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_mx }
                Reponses := array{"Mexico", "Hungary", "Bulgaria", "Italy"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gt }
                Reponses := array{"Nicaragua", "Honduras", "Guatemala", "Argentina"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bz }
                Reponses := array{"Bahamas", "Nicaragua", "Belize", "Panama"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_hn }
                Reponses := array{"Argentina", "Honduras", "Uruguay", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sv }
                Reponses := array{"Uruguay", "Nicaragua", "Guatemala", "El Salvador"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ni }
                Reponses := array{"Nicaragua", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cr }
                Reponses := array{"Costa Rica", "South Korea", "Cuba", "Thailand"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pa }
                Reponses := array{"Jamaica", "Panama", "Costa Rica", "Haiti"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bs }
                Reponses := array{"Barbados", "Bahamas", "Saint Lucia", "Saint Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cu }
                Reponses := array{"Philippines", "Cuba", "South Korea", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_jm }
                Reponses := array{"Dominican Republic", "Saint Kitts and Nevis", "Jamaica", "Saint Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ht }
                Reponses := array{"Bahamas", "Costa Rica", "Nicaragua", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_do }
                Reponses := array{"Jamaica", "Dominican Republic", "Barbados", "Bahamas"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_kn }
                Reponses := array{"Dominica", "Grenada", "Saint Kitts and Nevis", "Saint Vincent"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ag }
                Reponses := array{"Antigua and Barbuda", "Saint Kitts and Nevis", "Saint Vincent", "Grenada"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_dm }
                Reponses := array{"Grenada", "Saint Lucia", "Dominica", "Antigua and Barbuda"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_lc }
                Reponses := array{"Antigua and Barbuda", "Saint Lucia", "Saint Kitts and Nevis", "Saint Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_vc }
                Reponses := array{"Grenada", "Dominica", "Saint Vincent", "Saint Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bb }
                Reponses := array{"Trinidad and Tobago", "Barbados", "Costa Rica", "Panama"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gd }
                Reponses := array{"Grenada", "Saint Kitts and Nevis", "Saint Lucia", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_tt }
                Reponses := array{"Trinidad and Tobago", "Antigua and Barbuda", "Costa Rica", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ve }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Ecuador"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_gy }
                Reponses := array{"Paraguay", "Guyana", "Suriname", "Peru"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_sr }
                Reponses := array{"Suriname", "Guyana", "Paraguay", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ec }
                Reponses := array{"Ecuador", "Venezuela", "Colombia", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_pe }
                Reponses := array{"Brazil", "Colombia", "Bolivia", "Peru"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_br }
                Reponses := array{"Guyana", "Brazil", "Chile", "Uruguay"}
                BonneReponse := 1
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_bo }
                Reponses := array{"Lithuania", "Ethiopia", "Bolivia", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Ecuador"}
                BonneReponse := 0
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_uy }
                Reponses := array{"Argentina", "Greece", "Uruguay", "Nicaragua"}
                BonneReponse := 2
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_cl }
                Reponses := array{"Cuba", "Czechia", "Philippines", "Chile"}
                BonneReponse := 3
            question:
                Enonce := "Which country is this? (pixelated flag)"
                Image := option{ flags_pixel.fpx_ar }
                Reponses := array{"Argentina", "Guatemala", "Nicaragua", "Uruguay"}
                BonneReponse := 0

    # ===== Banque DRAPEAUX ES (390) — memes tirages/indices que la banque FR =====
    MakeQuestionsES() : []question =
        array:
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_fr }
                Reponses := array{"Luxemburgo", "Rusia", "Paises Bajos", "Francia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_de }
                Reponses := array{"Alemania", "Belgica", "Chad", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_it }
                Reponses := array{"Bulgaria", "India", "Italia", "Hungria"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_es }
                Reponses := array{"Espana", "Alemania", "Malta", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pt }
                Reponses := array{"Suiza", "Portugal", "Dinamarca", "Italia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gb }
                Reponses := array{"Paises Bajos", "Reino Unido", "Monaco", "Malta"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ie }
                Reponses := array{"India", "Irlanda", "Costa de Marfil", "Italia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_be }
                Reponses := array{"Belgica", "Alemania", "Chad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_nl }
                Reponses := array{"Luxemburgo", "Serbia", "Francia", "Paises Bajos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lu }
                Reponses := array{"Eslovenia", "Rusia", "Francia", "Luxemburgo"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ch }
                Reponses := array{"Dinamarca", "Georgia", "Suiza", "Suecia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_at }
                Reponses := array{"Austria", "Estonia", "Letonia", "Hungria"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mc }
                Reponses := array{"Singapur", "Polonia", "Indonesia", "Monaco"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ad }
                Reponses := array{"Moldavia", "Rumania", "Chad", "Andorra"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_li }
                Reponses := array{"Ciudad del Vaticano", "San Marino", "Liechtenstein", "Luxemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sm }
                Reponses := array{"Ciudad del Vaticano", "Suecia", "Belgica", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_va }
                Reponses := array{"Reino Unido", "Espana", "Ciudad del Vaticano", "Malta"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mt }
                Reponses := array{"Monaco", "Malta", "Espana", "Suiza"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_is }
                Reponses := array{"Islandia", "Finlandia", "Noruega", "Dinamarca"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_no }
                Reponses := array{"Finlandia", "Noruega", "Islandia", "Dinamarca"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_se }
                Reponses := array{"Noruega", "Suecia", "Islandia", "Finlandia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_dk }
                Reponses := array{"Dinamarca", "Noruega", "Suiza", "Finlandia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_fi }
                Reponses := array{"Islandia", "Dinamarca", "Finlandia", "Suecia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pl }
                Reponses := array{"Polonia", "Singapur", "Indonesia", "Monaco"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cz }
                Reponses := array{"Chequia", "Cuba", "Filipinas", "Chile"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sk }
                Reponses := array{"Eslovaquia", "Serbia", "Croacia", "Eslovenia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_hu }
                Reponses := array{"Hungria", "Italia", "Bulgaria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_si }
                Reponses := array{"Eslovenia", "Luxemburgo", "Croacia", "Eslovaquia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_hr }
                Reponses := array{"Eslovaquia", "Serbia", "Rusia", "Croacia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ba }
                Reponses := array{"Polonia", "Eslovaquia", "Rusia", "Bosnia y Herzegovina"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_rs }
                Reponses := array{"Serbia", "Paises Bajos", "Croacia", "Rusia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_me }
                Reponses := array{"Rumania", "Lituania", "Rusia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mk }
                Reponses := array{"Eslovenia", "Ucrania", "Estonia", "Macedonia del Norte"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_al }
                Reponses := array{"Eslovaquia", "Albania", "Ucrania", "Eslovenia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gr }
                Reponses := array{"Uruguay", "Grecia", "Israel", "Bosnia y Herzegovina"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bg }
                Reponses := array{"Mexico", "Italia", "Bulgaria", "Hungria"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ro }
                Reponses := array{"Moldavia", "Chad", "Andorra", "Rumania"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_md }
                Reponses := array{"Moldavia", "Chad", "Andorra", "Rumania"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ua }
                Reponses := array{"Moldavia", "Macedonia del Norte", "Ucrania", "Chequia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_by }
                Reponses := array{"Montenegro", "Bielorrusia", "Macedonia del Norte", "Estonia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ru }
                Reponses := array{"Serbia", "Eslovaquia", "Rusia", "Luxemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ee }
                Reponses := array{"Estonia", "Letonia", "Hungria", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lv }
                Reponses := array{"Letonia", "Austria", "Hungria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lt }
                Reponses := array{"Bolivia", "Ghana", "Etiopia", "Lituania"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cy }
                Reponses := array{"Chipre", "Eslovaquia", "Grecia", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tr }
                Reponses := array{"Argelia", "Tunez", "Pakistan", "Turquia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_il }
                Reponses := array{"Uruguay", "Israel", "Grecia", "Jordania"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ps }
                Reponses := array{"Egipto", "Yemen", "Palestina", "Siria"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lb }
                Reponses := array{"Jordania", "Georgia", "Yemen", "Libano"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sy }
                Reponses := array{"Irak", "Siria", "Yemen", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_jo }
                Reponses := array{"Kuwait", "Sudan", "Jordania", "Palestina"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_iq }
                Reponses := array{"Jordania", "Irak", "Kuwait", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ir }
                Reponses := array{"Palestina", "Catar", "Iran", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sa }
                Reponses := array{"Armenia", "Oman", "Jordania", "Arabia Saudita"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ye }
                Reponses := array{"Kuwait", "Egipto", "Jordania", "Yemen"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_om }
                Reponses := array{"Oman", "Kuwait", "Emiratos Arabes Unidos", "Jordania"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ae }
                Reponses := array{"Emiratos Arabes Unidos", "Jordania", "Yemen", "Egipto"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_qa }
                Reponses := array{"Catar", "Barein", "Arabia Saudita", "Emiratos Arabes Unidos"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bh }
                Reponses := array{"Barein", "Catar", "Azerbaiyan", "Oman"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kw }
                Reponses := array{"Emiratos Arabes Unidos", "Kuwait", "Egipto", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ge }
                Reponses := array{"Dinamarca", "Suiza", "Georgia", "Siria"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Emiratos Arabes Unidos"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_az }
                Reponses := array{"Uzbekistan", "Azerbaiyan", "Turkmenistan", "Turquia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kz }
                Reponses := array{"Turkmenistan", "Kirguistan", "Kazajistan", "Tayikistan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_uz }
                Reponses := array{"Azerbaiyan", "Turkmenistan", "Uzbekistan", "Mongolia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tm }
                Reponses := array{"Uzbekistan", "Turkmenistan", "Azerbaiyan", "Afganistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kg }
                Reponses := array{"Turkmenistan", "Afganistan", "Kirguistan", "Kazajistan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tj }
                Reponses := array{"Turkmenistan", "Kazajistan", "Uzbekistan", "Tayikistan"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_af }
                Reponses := array{"Turkmenistan", "Afganistan", "Uzbekistan", "Kazajistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mn }
                Reponses := array{"Mongolia", "Turkmenistan", "Afganistan", "Kirguistan"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cn }
                Reponses := array{"Vietnam", "Marruecos", "China", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_jp }
                Reponses := array{"Indonesia", "Filipinas", "Japon", "Birmania"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kr }
                Reponses := array{"Costa Rica", "Tailandia", "Corea del Sur", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kp }
                Reponses := array{"Tailandia", "Corea del Sur", "Corea del Norte", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_in }
                Reponses := array{"Irlanda", "Costa de Marfil", "India", "Niger"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pk }
                Reponses := array{"Argelia", "Pakistan", "Turquia", "Tunez"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bd }
                Reponses := array{"Malasia", "Tailandia", "Nepal", "Banglades"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lk }
                Reponses := array{"Singapur", "Pakistan", "Japon", "Sri Lanka"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_np }
                Reponses := array{"Birmania", "Maldivas", "Nepal", "Timor Oriental"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bt }
                Reponses := array{"China", "Timor Oriental", "Maldivas", "Butan"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mv }
                Reponses := array{"Maldivas", "Birmania", "Nepal", "Filipinas"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mm }
                Reponses := array{"Birmania", "Ghana", "Zimbabue", "China"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_th }
                Reponses := array{"Cuba", "Costa Rica", "Laos", "Tailandia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_la }
                Reponses := array{"Timor Oriental", "Tailandia", "Camboya", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kh }
                Reponses := array{"Laos", "Tailandia", "Camboya", "Filipinas"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_vn }
                Reponses := array{"Marruecos", "China", "Vietnam", "Butan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_my }
                Reponses := array{"India", "Estados Unidos", "Liberia", "Malasia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sg }
                Reponses := array{"Polonia", "Monaco", "Singapur", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_id }
                Reponses := array{"Indonesia", "Polonia", "Monaco", "Singapur"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bn }
                Reponses := array{"Brunei", "Malasia", "India", "Nepal"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ph }
                Reponses := array{"Cuba", "Chequia", "Chile", "Filipinas"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tl }
                Reponses := array{"Sri Lanka", "Timor Oriental", "Vietnam", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_au }
                Reponses := array{"Fiyi", "Australia", "Tuvalu", "Nueva Zelanda"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_nz }
                Reponses := array{"Tuvalu", "Fiyi", "Nueva Zelanda", "Australia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pg }
                Reponses := array{"Papua Nueva Guinea", "Fiyi", "Kiribati", "Nauru"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_fj }
                Reponses := array{"Tuvalu", "Fiyi", "Nueva Zelanda", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sb }
                Reponses := array{"Vanuatu", "Mozambique", "Zimbabue", "Islas Salomon"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_vu }
                Reponses := array{"Islas Salomon", "Zimbabue", "Vanuatu", "Mozambique"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ws }
                Reponses := array{"Nauru", "Tonga", "Vanuatu", "Samoa"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_to }
                Reponses := array{"Tuvalu", "Samoa", "Kiribati", "Tonga"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tv }
                Reponses := array{"Australia", "Fiyi", "Nueva Zelanda", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ki }
                Reponses := array{"Nauru", "Kiribati", "Palaos", "Islas Marshall"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_nr }
                Reponses := array{"Palaos", "Kiribati", "Micronesia", "Nauru"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pw }
                Reponses := array{"Palaos", "Islas Marshall", "Micronesia", "Kiribati"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_fm }
                Reponses := array{"Palaos", "Islas Marshall", "Micronesia", "Kiribati"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mh }
                Reponses := array{"Micronesia", "Kiribati", "Palaos", "Islas Marshall"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ma }
                Reponses := array{"Marruecos", "China", "Vietnam", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_dz }
                Reponses := array{"Turquia", "Argelia", "Tunez", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tn }
                Reponses := array{"Argelia", "Pakistan", "Tunez", "Turquia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ly }
                Reponses := array{"Liberia", "Libia", "Zimbabue", "Sierra Leona"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_eg }
                Reponses := array{"Egipto", "Palestina", "Jordania", "Emiratos Arabes Unidos"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sd }
                Reponses := array{"Emiratos Arabes Unidos", "Kuwait", "Irak", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ss }
                Reponses := array{"Republica Centroafricana", "Sudafrica", "Sudan del Sur", "Malaui"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_et }
                Reponses := array{"Lituania", "Etiopia", "Ghana", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_er }
                Reponses := array{"Eritrea", "Mali", "Camerun", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_dj }
                Reponses := array{"Etiopia", "Eritrea", "Tunez", "Yibuti"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_so }
                Reponses := array{"Costa de Marfil", "Somalia", "Seychelles", "Libia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ke }
                Reponses := array{"Tanzania", "Kenia", "Uganda", "Ruanda"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ug }
                Reponses := array{"Uganda", "Tanzania", "Ruanda", "Kenia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tz }
                Reponses := array{"Kenia", "Ruanda", "Uganda", "Tanzania"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_rw }
                Reponses := array{"Uganda", "Ruanda", "Tanzania", "Kenia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bi }
                Reponses := array{"Comoras", "Burundi", "Angola", "Benin"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cd }
                Reponses := array{"Guinea Ecuatorial", "Gabon", "RD del Congo", "Congo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cg }
                Reponses := array{"RD del Congo", "Congo", "Guinea Ecuatorial", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ga }
                Reponses := array{"Congo", "Guinea Ecuatorial", "Gabon", "RD del Congo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gq }
                Reponses := array{"RD del Congo", "Guinea Ecuatorial", "Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cm }
                Reponses := array{"Benin", "Burkina Faso", "Senegal", "Camerun"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cf }
                Reponses := array{"Republica Centroafricana", "Tunez", "Burundi", "Congo"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_td }
                Reponses := array{"Chad", "Andorra", "Rumania", "Moldavia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ne }
                Reponses := array{"Italia", "Costa de Marfil", "Niger", "India"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ng }
                Reponses := array{"Nigeria", "Marruecos", "Madagascar", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bj }
                Reponses := array{"Senegal", "Benin", "Camerun", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tg }
                Reponses := array{"Togo", "Seychelles", "Marruecos", "Guinea Ecuatorial"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gh }
                Reponses := array{"Bolivia", "Mali", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ci }
                Reponses := array{"Italia", "India", "Irlanda", "Costa de Marfil"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lr }
                Reponses := array{"Estados Unidos", "Liberia", "Malasia", "Zimbabue"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sl }
                Reponses := array{"Sierra Leona", "Madagascar", "Eritrea", "Guinea Ecuatorial"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gn }
                Reponses := array{"Ghana", "Senegal", "Burkina Faso", "Guinea"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gw }
                Reponses := array{"Guinea-Bisau", "Malaui", "Guinea", "RD del Congo"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sn }
                Reponses := array{"Camerun", "Senegal", "Mali", "Ghana"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gm }
                Reponses := array{"Seychelles", "Cabo Verde", "Esuatini", "Gambia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ml }
                Reponses := array{"Ghana", "Camerun", "Senegal", "Mali"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bf }
                Reponses := array{"Camerun", "Mali", "Senegal", "Burkina Faso"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mr }
                Reponses := array{"Mauricio", "Uganda", "Mali", "Mauritania"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cv }
                Reponses := array{"Cabo Verde", "Guinea-Bisau", "Benin", "Uganda"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_st }
                Reponses := array{"Santo Tome y Principe", "Esuatini", "Nigeria", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ao }
                Reponses := array{"Angola", "Togo", "Cabo Verde", "Esuatini"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_zm }
                Reponses := array{"Zambia", "RD del Congo", "Tanzania", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_zw }
                Reponses := array{"Zimbabue", "Ghana", "Islas Salomon", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mw }
                Reponses := array{"Angola", "Malaui", "Togo", "Eritrea"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mz }
                Reponses := array{"Vanuatu", "Mozambique", "Islas Salomon", "Zimbabue"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mg }
                Reponses := array{"Madagascar", "Guinea Ecuatorial", "RD del Congo", "Malaui"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_km }
                Reponses := array{"Comoras", "Angola", "Burundi", "Guinea Ecuatorial"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mu }
                Reponses := array{"Madagascar", "Mauricio", "Botsuana", "Togo"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sc }
                Reponses := array{"Zimbabue", "Seychelles", "Somalia", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_za }
                Reponses := array{"Madagascar", "Camerun", "Guinea-Bisau", "Sudafrica"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_na }
                Reponses := array{"Lesoto", "Namibia", "Esuatini", "Botsuana"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bw }
                Reponses := array{"Esuatini", "Namibia", "Lesoto", "Botsuana"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ls }
                Reponses := array{"Namibia", "Botsuana", "Lesoto", "Esuatini"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sz }
                Reponses := array{"Botsuana", "Lesoto", "Namibia", "Esuatini"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_us }
                Reponses := array{"Estados Unidos", "Liberia", "Malasia", "Canada"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ca }
                Reponses := array{"Estados Unidos", "Canada", "Mexico", "Noruega"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_mx }
                Reponses := array{"Bulgaria", "Mexico", "Hungria", "Irlanda"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gt }
                Reponses := array{"Uruguay", "El Salvador", "Honduras", "Guatemala"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bz }
                Reponses := array{"Costa Rica", "Granada", "Belice", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_hn }
                Reponses := array{"Argentina", "Guatemala", "Honduras", "El Salvador"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sv }
                Reponses := array{"Nicaragua", "Argentina", "El Salvador", "Uruguay"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ni }
                Reponses := array{"Nicaragua", "Guatemala", "El Salvador", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cr }
                Reponses := array{"Tailandia", "Corea del Norte", "Corea del Sur", "Costa Rica"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pa }
                Reponses := array{"Antigua y Barbuda", "San Vicente", "Trinidad y Tobago", "Panama"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bs }
                Reponses := array{"Guatemala", "Bahamas", "Belice", "Santa Lucia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cu }
                Reponses := array{"Cuba", "Corea del Norte", "Tailandia", "Filipinas"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_jm }
                Reponses := array{"Haiti", "Nicaragua", "Jamaica", "Barbados"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ht }
                Reponses := array{"Guatemala", "Granada", "San Cristobal y Nieves", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_do }
                Reponses := array{"Bahamas", "El Salvador", "San Vicente", "Republica Dominicana"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_kn }
                Reponses := array{"Santa Lucia", "San Cristobal y Nieves", "Dominica", "Antigua y Barbuda"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ag }
                Reponses := array{"Antigua y Barbuda", "Santa Lucia", "Granada", "San Cristobal y Nieves"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_dm }
                Reponses := array{"Santa Lucia", "Dominica", "San Vicente", "Granada"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_lc }
                Reponses := array{"Santa Lucia", "San Vicente", "Granada", "San Cristobal y Nieves"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_vc }
                Reponses := array{"Santa Lucia", "San Cristobal y Nieves", "San Vicente", "Dominica"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bb }
                Reponses := array{"Jamaica", "Panama", "Trinidad y Tobago", "Barbados"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gd }
                Reponses := array{"San Vicente", "Dominica", "San Cristobal y Nieves", "Granada"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_tt }
                Reponses := array{"Jamaica", "Trinidad y Tobago", "Antigua y Barbuda", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ve }
                Reponses := array{"Colombia", "Venezuela", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_gy }
                Reponses := array{"Guyana", "Surinam", "Paraguay", "Argentina"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_sr }
                Reponses := array{"Guyana", "Surinam", "Paraguay", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ec }
                Reponses := array{"Venezuela", "Ecuador", "Colombia", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_pe }
                Reponses := array{"Venezuela", "Peru", "Chile", "Brasil"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_br }
                Reponses := array{"Colombia", "Peru", "Bolivia", "Brasil"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_bo }
                Reponses := array{"Ghana", "Etiopia", "Lituania", "Bolivia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_py }
                Reponses := array{"Paraguay", "Surinam", "Guyana", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_uy }
                Reponses := array{"Nicaragua", "Grecia", "Israel", "Uruguay"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_cl }
                Reponses := array{"Cuba", "Chile", "Chequia", "Filipinas"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este?"
                Image := option{ flags.flag_ar }
                Reponses := array{"Uruguay", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_fr }
                Reponses := array{"Rusia", "Paises Bajos", "Francia", "Luxemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_de }
                Reponses := array{"Alemania", "Chad", "Belgica", "Luxemburgo"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_it }
                Reponses := array{"Hungria", "Italia", "Mexico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_es }
                Reponses := array{"Malta", "Noruega", "Espana", "Francia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pt }
                Reponses := array{"San Marino", "Portugal", "Suiza", "Belgica"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gb }
                Reponses := array{"Liechtenstein", "Reino Unido", "Alemania", "Belgica"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ie }
                Reponses := array{"Costa de Marfil", "Irlanda", "Mexico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_be }
                Reponses := array{"Reino Unido", "Chad", "Alemania", "Belgica"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_nl }
                Reponses := array{"Francia", "Eslovenia", "Croacia", "Paises Bajos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lu }
                Reponses := array{"Paises Bajos", "Eslovaquia", "Luxemburgo", "Eslovenia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ch }
                Reponses := array{"Finlandia", "Georgia", "Dinamarca", "Suiza"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_at }
                Reponses := array{"Austria", "Letonia", "Hungria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mc }
                Reponses := array{"Indonesia", "Monaco", "Polonia", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ad }
                Reponses := array{"Andorra", "Moldavia", "Chad", "Rumania"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_li }
                Reponses := array{"Liechtenstein", "Paises Bajos", "Portugal", "Belgica"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sm }
                Reponses := array{"Reino Unido", "Islandia", "Francia", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_va }
                Reponses := array{"Ciudad del Vaticano", "San Marino", "Alemania", "Suiza"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mt }
                Reponses := array{"Malta", "Dinamarca", "Noruega", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_is }
                Reponses := array{"Dinamarca", "Islandia", "Suecia", "Noruega"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_no }
                Reponses := array{"Suecia", "Dinamarca", "Islandia", "Noruega"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_se }
                Reponses := array{"Noruega", "Suecia", "Dinamarca", "Finlandia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_dk }
                Reponses := array{"Suecia", "Finlandia", "Suiza", "Dinamarca"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_fi }
                Reponses := array{"Suecia", "Finlandia", "Islandia", "Dinamarca"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pl }
                Reponses := array{"Monaco", "Polonia", "Singapur", "Indonesia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cz }
                Reponses := array{"Cuba", "Chile", "Chequia", "Filipinas"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sk }
                Reponses := array{"Eslovaquia", "Eslovenia", "Croacia", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_hu }
                Reponses := array{"Estonia", "Austria", "Letonia", "Hungria"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_si }
                Reponses := array{"Rusia", "Serbia", "Paises Bajos", "Eslovenia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_hr }
                Reponses := array{"Serbia", "Croacia", "Rusia", "Luxemburgo"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ba }
                Reponses := array{"Chequia", "Eslovenia", "Bosnia y Herzegovina", "Bielorrusia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_rs }
                Reponses := array{"Paises Bajos", "Eslovaquia", "Serbia", "Luxemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_me }
                Reponses := array{"Estonia", "Albania", "Eslovaquia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mk }
                Reponses := array{"Chequia", "Estonia", "Macedonia del Norte", "Lituania"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_al }
                Reponses := array{"Grecia", "Macedonia del Norte", "Albania", "Lituania"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gr }
                Reponses := array{"Grecia", "Uruguay", "Israel", "Lituania"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bg }
                Reponses := array{"Mexico", "Italia", "Bulgaria", "Hungria"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ro }
                Reponses := array{"Andorra", "Chad", "Rumania", "Moldavia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_md }
                Reponses := array{"Moldavia", "Rumania", "Chad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ua }
                Reponses := array{"Macedonia del Norte", "Bulgaria", "Estonia", "Ucrania"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_by }
                Reponses := array{"Albania", "Macedonia del Norte", "Letonia", "Bielorrusia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ru }
                Reponses := array{"Eslovaquia", "Francia", "Rusia", "Paises Bajos"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ee }
                Reponses := array{"Estonia", "Hungria", "Letonia", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lv }
                Reponses := array{"Austria", "Estonia", "Hungria", "Letonia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lt }
                Reponses := array{"Lituania", "Ghana", "Bolivia", "Etiopia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cy }
                Reponses := array{"Grecia", "Chipre", "Hungria", "Albania"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tr }
                Reponses := array{"Pakistan", "Argelia", "Turquia", "Tunez"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_il }
                Reponses := array{"Barein", "Uruguay", "Grecia", "Israel"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ps }
                Reponses := array{"Emiratos Arabes Unidos", "Irak", "Yemen", "Palestina"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lb }
                Reponses := array{"Iran", "Libano", "Irak", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sy }
                Reponses := array{"Palestina", "Emiratos Arabes Unidos", "Siria", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_jo }
                Reponses := array{"Jordania", "Kuwait", "Yemen", "Sudan"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_iq }
                Reponses := array{"Egipto", "Emiratos Arabes Unidos", "Palestina", "Irak"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ir }
                Reponses := array{"Iran", "Oman", "Jordania", "Armenia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sa }
                Reponses := array{"Kuwait", "Catar", "Arabia Saudita", "Oman"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ye }
                Reponses := array{"Siria", "Jordania", "Yemen", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_om }
                Reponses := array{"Libano", "Irak", "Azerbaiyan", "Oman"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ae }
                Reponses := array{"Emiratos Arabes Unidos", "Palestina", "Siria", "Yemen"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_qa }
                Reponses := array{"Barein", "Catar", "Turquia", "Emiratos Arabes Unidos"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bh }
                Reponses := array{"Catar", "Barein", "Emiratos Arabes Unidos", "Palestina"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kw }
                Reponses := array{"Irak", "Sudan", "Kuwait", "Jordania"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ge }
                Reponses := array{"Azerbaiyan", "Suiza", "Dinamarca", "Georgia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Siria"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_az }
                Reponses := array{"Emiratos Arabes Unidos", "Uzbekistan", "Turkmenistan", "Azerbaiyan"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kz }
                Reponses := array{"Turkmenistan", "Kazajistan", "Uzbekistan", "Afganistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_uz }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaiyan", "Tayikistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tm }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaiyan", "Kirguistan"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kg }
                Reponses := array{"Mongolia", "Turkmenistan", "Kirguistan", "Kazajistan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tj }
                Reponses := array{"Afganistan", "Kirguistan", "Tayikistan", "Kazajistan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_af }
                Reponses := array{"Kirguistan", "Mongolia", "Afganistan", "Turkmenistan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mn }
                Reponses := array{"Mongolia", "Kirguistan", "Afganistan", "Turkmenistan"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cn }
                Reponses := array{"Vietnam", "Marruecos", "China", "Sri Lanka"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_jp }
                Reponses := array{"Malasia", "Singapur", "Sri Lanka", "Japon"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kr }
                Reponses := array{"Corea del Sur", "Corea del Norte", "Costa Rica", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kp }
                Reponses := array{"Cuba", "Corea del Sur", "Corea del Norte", "Costa Rica"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_in }
                Reponses := array{"India", "Irlanda", "Niger", "Costa de Marfil"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pk }
                Reponses := array{"Tunez", "Turquia", "Pakistan", "Argelia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bd }
                Reponses := array{"Laos", "Corea del Norte", "Corea del Sur", "Banglades"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lk }
                Reponses := array{"Sri Lanka", "Singapur", "Laos", "Timor Oriental"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_np }
                Reponses := array{"China", "Butan", "Nepal", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bt }
                Reponses := array{"Japon", "Brunei", "Butan", "Corea del Norte"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mv }
                Reponses := array{"Corea del Sur", "Birmania", "China", "Maldivas"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mm }
                Reponses := array{"Zimbabue", "Birmania", "Ghana", "Tailandia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_th }
                Reponses := array{"Camboya", "Costa Rica", "Tailandia", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_la }
                Reponses := array{"Banglades", "Tailandia", "Camboya", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kh }
                Reponses := array{"Tailandia", "Camboya", "Laos", "Sri Lanka"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_vn }
                Reponses := array{"Marruecos", "China", "Vietnam", "Butan"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_my }
                Reponses := array{"Liberia", "Malasia", "Estados Unidos", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sg }
                Reponses := array{"Singapur", "Polonia", "Monaco", "Indonesia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_id }
                Reponses := array{"Monaco", "Indonesia", "Polonia", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bn }
                Reponses := array{"Singapur", "Brunei", "Vietnam", "Corea del Sur"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ph }
                Reponses := array{"Filipinas", "Chequia", "Chile", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tl }
                Reponses := array{"Laos", "Timor Oriental", "Corea del Norte", "China"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_au }
                Reponses := array{"Tuvalu", "Fiyi", "Australia", "Nueva Zelanda"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_nz }
                Reponses := array{"Tuvalu", "Nueva Zelanda", "Fiyi", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pg }
                Reponses := array{"Tonga", "Islas Marshall", "Papua Nueva Guinea", "Fiyi"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_fj }
                Reponses := array{"Australia", "Nueva Zelanda", "Tuvalu", "Fiyi"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sb }
                Reponses := array{"Islas Salomon", "Vanuatu", "Zimbabue", "Mozambique"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_vu }
                Reponses := array{"Mozambique", "Zimbabue", "Vanuatu", "Islas Salomon"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ws }
                Reponses := array{"Tonga", "Samoa", "Fiyi", "Papua Nueva Guinea"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_to }
                Reponses := array{"Vanuatu", "Samoa", "Tonga", "Micronesia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tv }
                Reponses := array{"Fiyi", "Nueva Zelanda", "Australia", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ki }
                Reponses := array{"Nauru", "Islas Marshall", "Palaos", "Kiribati"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_nr }
                Reponses := array{"Kiribati", "Islas Marshall", "Nauru", "Palaos"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pw }
                Reponses := array{"Nauru", "Kiribati", "Islas Marshall", "Palaos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_fm }
                Reponses := array{"Micronesia", "Palaos", "Nauru", "Islas Marshall"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mh }
                Reponses := array{"Nauru", "Islas Marshall", "Kiribati", "Micronesia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ma }
                Reponses := array{"Vietnam", "Marruecos", "China", "Namibia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_dz }
                Reponses := array{"Argelia", "Turquia", "Pakistan", "Tunez"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tn }
                Reponses := array{"Tunez", "Pakistan", "Argelia", "Turquia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ly }
                Reponses := array{"Libia", "Santo Tome y Principe", "Congo", "Republica Centroafricana"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_eg }
                Reponses := array{"Irak", "Yemen", "Sudan", "Egipto"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sd }
                Reponses := array{"Emiratos Arabes Unidos", "Kuwait", "Palestina", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ss }
                Reponses := array{"Mozambique", "Comoras", "Sudan del Sur", "Yibuti"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_et }
                Reponses := array{"Lituania", "Ghana", "Bolivia", "Etiopia"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_er }
                Reponses := array{"Burkina Faso", "Eritrea", "Chad", "Tanzania"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_dj }
                Reponses := array{"Yibuti", "Libia", "Costa de Marfil", "Mauritania"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_so }
                Reponses := array{"Somalia", "Namibia", "Mozambique", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ke }
                Reponses := array{"Uganda", "Ruanda", "Kenia", "Tanzania"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ug }
                Reponses := array{"Uganda", "Ruanda", "Tanzania", "Kenia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tz }
                Reponses := array{"Ruanda", "Uganda", "Tanzania", "Kenia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_rw }
                Reponses := array{"Tanzania", "Ruanda", "Kenia", "Uganda"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bi }
                Reponses := array{"Burundi", "Republica Centroafricana", "Nigeria", "Namibia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cd }
                Reponses := array{"Congo", "Gabon", "RD del Congo", "Guinea Ecuatorial"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cg }
                Reponses := array{"Guinea Ecuatorial", "Congo", "RD del Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ga }
                Reponses := array{"Gabon", "Congo", "RD del Congo", "Guinea Ecuatorial"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gq }
                Reponses := array{"RD del Congo", "Guinea Ecuatorial", "Gabon", "Congo"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cm }
                Reponses := array{"Burkina Faso", "Camerun", "Benin", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cf }
                Reponses := array{"Republica Centroafricana", "Gambia", "Libia", "Mali"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_td }
                Reponses := array{"Alemania", "Andorra", "Chad", "Moldavia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ne }
                Reponses := array{"Italia", "India", "Niger", "Irlanda"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ng }
                Reponses := array{"Nigeria", "Ruanda", "Ghana", "Niger"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bj }
                Reponses := array{"Guinea", "Mali", "Senegal", "Benin"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tg }
                Reponses := array{"Togo", "Malaui", "Sudafrica", "Gabon"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gh }
                Reponses := array{"Mali", "Bolivia", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ci }
                Reponses := array{"Costa de Marfil", "Niger", "Irlanda", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lr }
                Reponses := array{"Estados Unidos", "Liberia", "Malasia", "Guinea Ecuatorial"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sl }
                Reponses := array{"Yibuti", "Guinea-Bisau", "Sierra Leona", "Gambia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gn }
                Reponses := array{"Senegal", "Ghana", "Guinea", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gw }
                Reponses := array{"Ruanda", "Guinea-Bisau", "Liberia", "Yibuti"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sn }
                Reponses := array{"Benin", "Burkina Faso", "Guinea", "Senegal"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gm }
                Reponses := array{"Malaui", "Gambia", "Ruanda", "Santo Tome y Principe"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ml }
                Reponses := array{"Senegal", "Benin", "Mali", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bf }
                Reponses := array{"Benin", "Burkina Faso", "Ghana", "Camerun"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mr }
                Reponses := array{"Guinea Ecuatorial", "Burkina Faso", "Mauritania", "Etiopia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cv }
                Reponses := array{"Zimbabue", "Cabo Verde", "Niger", "Sierra Leona"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_st }
                Reponses := array{"Nigeria", "Santo Tome y Principe", "Somalia", "Sierra Leona"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ao }
                Reponses := array{"Kenia", "Camerun", "Seychelles", "Angola"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_zm }
                Reponses := array{"Zambia", "Egipto", "Ghana", "Libia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_zw }
                Reponses := array{"Zimbabue", "Ghana", "Birmania", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mw }
                Reponses := array{"Malaui", "Guinea Ecuatorial", "Yibuti", "Etiopia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mz }
                Reponses := array{"Zimbabue", "Vanuatu", "Mozambique", "Islas Salomon"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mg }
                Reponses := array{"Uganda", "Marruecos", "Etiopia", "Madagascar"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_km }
                Reponses := array{"Tunez", "Nigeria", "Mozambique", "Comoras"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mu }
                Reponses := array{"Mauricio", "Mali", "Uganda", "Esuatini"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sc }
                Reponses := array{"Seychelles", "Guinea-Bisau", "Etiopia", "Angola"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_za }
                Reponses := array{"Costa de Marfil", "Sudafrica", "Yibuti", "Madagascar"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_na }
                Reponses := array{"Botsuana", "Esuatini", "Namibia", "Lesoto"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bw }
                Reponses := array{"Namibia", "Lesoto", "Botsuana", "Esuatini"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ls }
                Reponses := array{"Namibia", "Esuatini", "Botsuana", "Lesoto"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sz }
                Reponses := array{"Lesoto", "Namibia", "Botsuana", "Esuatini"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_us }
                Reponses := array{"Canada", "Malasia", "Liberia", "Estados Unidos"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ca }
                Reponses := array{"Mexico", "Estados Unidos", "Canada", "Tunez"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_mx }
                Reponses := array{"Mexico", "Hungria", "Bulgaria", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gt }
                Reponses := array{"Nicaragua", "Honduras", "Guatemala", "Argentina"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bz }
                Reponses := array{"Bahamas", "Nicaragua", "Belice", "Panama"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_hn }
                Reponses := array{"Argentina", "Honduras", "Uruguay", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sv }
                Reponses := array{"Uruguay", "Nicaragua", "Guatemala", "El Salvador"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ni }
                Reponses := array{"Nicaragua", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cr }
                Reponses := array{"Costa Rica", "Corea del Sur", "Cuba", "Tailandia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pa }
                Reponses := array{"Jamaica", "Panama", "Costa Rica", "Haiti"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bs }
                Reponses := array{"Barbados", "Bahamas", "Santa Lucia", "San Vicente"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cu }
                Reponses := array{"Filipinas", "Cuba", "Corea del Sur", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_jm }
                Reponses := array{"Republica Dominicana", "San Cristobal y Nieves", "Jamaica", "Santa Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ht }
                Reponses := array{"Bahamas", "Costa Rica", "Nicaragua", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_do }
                Reponses := array{"Jamaica", "Republica Dominicana", "Barbados", "Bahamas"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_kn }
                Reponses := array{"Dominica", "Granada", "San Cristobal y Nieves", "San Vicente"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ag }
                Reponses := array{"Antigua y Barbuda", "San Cristobal y Nieves", "San Vicente", "Granada"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_dm }
                Reponses := array{"Granada", "Santa Lucia", "Dominica", "Antigua y Barbuda"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_lc }
                Reponses := array{"Antigua y Barbuda", "Santa Lucia", "San Cristobal y Nieves", "San Vicente"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_vc }
                Reponses := array{"Granada", "Dominica", "San Vicente", "Santa Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bb }
                Reponses := array{"Trinidad y Tobago", "Barbados", "Costa Rica", "Panama"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gd }
                Reponses := array{"Granada", "San Cristobal y Nieves", "Santa Lucia", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_tt }
                Reponses := array{"Trinidad y Tobago", "Antigua y Barbuda", "Costa Rica", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ve }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Ecuador"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_gy }
                Reponses := array{"Paraguay", "Guyana", "Surinam", "Peru"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_sr }
                Reponses := array{"Surinam", "Guyana", "Paraguay", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ec }
                Reponses := array{"Ecuador", "Venezuela", "Colombia", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_pe }
                Reponses := array{"Brasil", "Colombia", "Bolivia", "Peru"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_br }
                Reponses := array{"Guyana", "Brasil", "Chile", "Uruguay"}
                BonneReponse := 1
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_bo }
                Reponses := array{"Lituania", "Etiopia", "Bolivia", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_py }
                Reponses := array{"Paraguay", "Surinam", "Guyana", "Ecuador"}
                BonneReponse := 0
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_uy }
                Reponses := array{"Argentina", "Grecia", "Uruguay", "Nicaragua"}
                BonneReponse := 2
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_cl }
                Reponses := array{"Cuba", "Chequia", "Filipinas", "Chile"}
                BonneReponse := 3
            question:
                Enonce := "Que pais es este? (bandera pixelada)"
                Image := option{ flags_pixel.fpx_ar }
                Reponses := array{"Argentina", "Guatemala", "Nicaragua", "Uruguay"}
                BonneReponse := 0

    # ===== Banque DRAPEAUX DE (390) — memes tirages/indices que la banque FR =====
    MakeQuestionsDE() : []question =
        array:
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_fr }
                Reponses := array{"Luxemburg", "Russland", "Niederlande", "Frankreich"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_de }
                Reponses := array{"Deutschland", "Belgien", "Tschad", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_it }
                Reponses := array{"Bulgarien", "Indien", "Italien", "Ungarn"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_es }
                Reponses := array{"Spanien", "Deutschland", "Malta", "Italien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pt }
                Reponses := array{"Schweiz", "Portugal", "Daenemark", "Italien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gb }
                Reponses := array{"Niederlande", "Vereinigtes Koenigreich", "Monaco", "Malta"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ie }
                Reponses := array{"Indien", "Irland", "Elfenbeinkueste", "Italien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_be }
                Reponses := array{"Belgien", "Deutschland", "Tschad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_nl }
                Reponses := array{"Luxemburg", "Serbien", "Frankreich", "Niederlande"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lu }
                Reponses := array{"Slowenien", "Russland", "Frankreich", "Luxemburg"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ch }
                Reponses := array{"Daenemark", "Georgien", "Schweiz", "Schweden"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_at }
                Reponses := array{"Oesterreich", "Estland", "Lettland", "Ungarn"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mc }
                Reponses := array{"Singapur", "Polen", "Indonesien", "Monaco"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ad }
                Reponses := array{"Moldau", "Rumaenien", "Tschad", "Andorra"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_li }
                Reponses := array{"Vatikanstadt", "San Marino", "Liechtenstein", "Luxemburg"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sm }
                Reponses := array{"Vatikanstadt", "Schweden", "Belgien", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_va }
                Reponses := array{"Vereinigtes Koenigreich", "Spanien", "Vatikanstadt", "Malta"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mt }
                Reponses := array{"Monaco", "Malta", "Spanien", "Schweiz"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_is }
                Reponses := array{"Island", "Finnland", "Norwegen", "Daenemark"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_no }
                Reponses := array{"Finnland", "Norwegen", "Island", "Daenemark"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_se }
                Reponses := array{"Norwegen", "Schweden", "Island", "Finnland"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_dk }
                Reponses := array{"Daenemark", "Norwegen", "Schweiz", "Finnland"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_fi }
                Reponses := array{"Island", "Daenemark", "Finnland", "Schweden"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pl }
                Reponses := array{"Polen", "Singapur", "Indonesien", "Monaco"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cz }
                Reponses := array{"Tschechien", "Kuba", "Philippinen", "Chile"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sk }
                Reponses := array{"Slowakei", "Serbien", "Kroatien", "Slowenien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_hu }
                Reponses := array{"Ungarn", "Italien", "Bulgarien", "Estland"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_si }
                Reponses := array{"Slowenien", "Luxemburg", "Kroatien", "Slowakei"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_hr }
                Reponses := array{"Slowakei", "Serbien", "Russland", "Kroatien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ba }
                Reponses := array{"Polen", "Slowakei", "Russland", "Bosnien und Herzegowina"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_rs }
                Reponses := array{"Serbien", "Niederlande", "Kroatien", "Russland"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_me }
                Reponses := array{"Rumaenien", "Litauen", "Russland", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mk }
                Reponses := array{"Slowenien", "Ukraine", "Estland", "Nordmazedonien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_al }
                Reponses := array{"Slowakei", "Albanien", "Ukraine", "Slowenien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gr }
                Reponses := array{"Uruguay", "Griechenland", "Israel", "Bosnien und Herzegowina"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bg }
                Reponses := array{"Mexiko", "Italien", "Bulgarien", "Ungarn"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ro }
                Reponses := array{"Moldau", "Tschad", "Andorra", "Rumaenien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_md }
                Reponses := array{"Moldau", "Tschad", "Andorra", "Rumaenien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ua }
                Reponses := array{"Moldau", "Nordmazedonien", "Ukraine", "Tschechien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_by }
                Reponses := array{"Montenegro", "Belarus", "Nordmazedonien", "Estland"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ru }
                Reponses := array{"Serbien", "Slowakei", "Russland", "Luxemburg"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ee }
                Reponses := array{"Estland", "Lettland", "Ungarn", "Oesterreich"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lv }
                Reponses := array{"Lettland", "Oesterreich", "Ungarn", "Estland"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lt }
                Reponses := array{"Bolivien", "Ghana", "Aethiopien", "Litauen"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cy }
                Reponses := array{"Zypern", "Slowakei", "Griechenland", "Serbien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tr }
                Reponses := array{"Algerien", "Tunesien", "Pakistan", "Tuerkei"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_il }
                Reponses := array{"Uruguay", "Israel", "Griechenland", "Jordanien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ps }
                Reponses := array{"Aegypten", "Jemen", "Palaestina", "Syrien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lb }
                Reponses := array{"Jordanien", "Georgien", "Jemen", "Libanon"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sy }
                Reponses := array{"Irak", "Syrien", "Jemen", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_jo }
                Reponses := array{"Kuwait", "Sudan", "Jordanien", "Palaestina"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_iq }
                Reponses := array{"Jordanien", "Irak", "Kuwait", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ir }
                Reponses := array{"Palaestina", "Katar", "Iran", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sa }
                Reponses := array{"Armenien", "Oman", "Jordanien", "Saudi-Arabien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ye }
                Reponses := array{"Kuwait", "Aegypten", "Jordanien", "Jemen"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_om }
                Reponses := array{"Oman", "Kuwait", "Vereinigte Arabische Emirate", "Jordanien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ae }
                Reponses := array{"Vereinigte Arabische Emirate", "Jordanien", "Jemen", "Aegypten"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_qa }
                Reponses := array{"Katar", "Bahrain", "Saudi-Arabien", "Vereinigte Arabische Emirate"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bh }
                Reponses := array{"Bahrain", "Katar", "Aserbaidschan", "Oman"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kw }
                Reponses := array{"Vereinigte Arabische Emirate", "Kuwait", "Aegypten", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ge }
                Reponses := array{"Daenemark", "Schweiz", "Georgien", "Syrien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_am }
                Reponses := array{"Armenien", "Venezuela", "Kolumbien", "Vereinigte Arabische Emirate"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_az }
                Reponses := array{"Usbekistan", "Aserbaidschan", "Turkmenistan", "Tuerkei"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kz }
                Reponses := array{"Turkmenistan", "Kirgisistan", "Kasachstan", "Tadschikistan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_uz }
                Reponses := array{"Aserbaidschan", "Turkmenistan", "Usbekistan", "Mongolei"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tm }
                Reponses := array{"Usbekistan", "Turkmenistan", "Aserbaidschan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kg }
                Reponses := array{"Turkmenistan", "Afghanistan", "Kirgisistan", "Kasachstan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tj }
                Reponses := array{"Turkmenistan", "Kasachstan", "Usbekistan", "Tadschikistan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_af }
                Reponses := array{"Turkmenistan", "Afghanistan", "Usbekistan", "Kasachstan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mn }
                Reponses := array{"Mongolei", "Turkmenistan", "Afghanistan", "Kirgisistan"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cn }
                Reponses := array{"Vietnam", "Marokko", "China", "Indonesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_jp }
                Reponses := array{"Indonesien", "Philippinen", "Japan", "Myanmar"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kr }
                Reponses := array{"Costa Rica", "Thailand", "Suedkorea", "Kuba"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kp }
                Reponses := array{"Thailand", "Suedkorea", "Nordkorea", "Kuba"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_in }
                Reponses := array{"Irland", "Elfenbeinkueste", "Indien", "Niger"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pk }
                Reponses := array{"Algerien", "Pakistan", "Tuerkei", "Tunesien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bd }
                Reponses := array{"Malaysia", "Thailand", "Nepal", "Bangladesch"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lk }
                Reponses := array{"Singapur", "Pakistan", "Japan", "Sri Lanka"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_np }
                Reponses := array{"Myanmar", "Malediven", "Nepal", "Osttimor"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bt }
                Reponses := array{"China", "Osttimor", "Malediven", "Bhutan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mv }
                Reponses := array{"Malediven", "Myanmar", "Nepal", "Philippinen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mm }
                Reponses := array{"Myanmar", "Ghana", "Simbabwe", "China"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_th }
                Reponses := array{"Kuba", "Costa Rica", "Laos", "Thailand"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_la }
                Reponses := array{"Osttimor", "Thailand", "Kambodscha", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kh }
                Reponses := array{"Laos", "Thailand", "Kambodscha", "Philippinen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_vn }
                Reponses := array{"Marokko", "China", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_my }
                Reponses := array{"Indien", "Vereinigte Staaten", "Liberia", "Malaysia"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sg }
                Reponses := array{"Polen", "Monaco", "Singapur", "Indonesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_id }
                Reponses := array{"Indonesien", "Polen", "Monaco", "Singapur"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bn }
                Reponses := array{"Brunei", "Malaysia", "Indien", "Nepal"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ph }
                Reponses := array{"Kuba", "Tschechien", "Chile", "Philippinen"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tl }
                Reponses := array{"Sri Lanka", "Osttimor", "Vietnam", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_au }
                Reponses := array{"Fidschi", "Australien", "Tuvalu", "Neuseeland"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_nz }
                Reponses := array{"Tuvalu", "Fidschi", "Neuseeland", "Australien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pg }
                Reponses := array{"Papua-Neuguinea", "Fidschi", "Kiribati", "Nauru"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_fj }
                Reponses := array{"Tuvalu", "Fidschi", "Neuseeland", "Australien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sb }
                Reponses := array{"Vanuatu", "Mosambik", "Simbabwe", "Salomonen"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_vu }
                Reponses := array{"Salomonen", "Simbabwe", "Vanuatu", "Mosambik"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ws }
                Reponses := array{"Nauru", "Tonga", "Vanuatu", "Samoa"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_to }
                Reponses := array{"Tuvalu", "Samoa", "Kiribati", "Tonga"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tv }
                Reponses := array{"Australien", "Fidschi", "Neuseeland", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ki }
                Reponses := array{"Nauru", "Kiribati", "Palau", "Marshallinseln"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_nr }
                Reponses := array{"Palau", "Kiribati", "Mikronesien", "Nauru"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pw }
                Reponses := array{"Palau", "Marshallinseln", "Mikronesien", "Kiribati"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_fm }
                Reponses := array{"Palau", "Marshallinseln", "Mikronesien", "Kiribati"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mh }
                Reponses := array{"Mikronesien", "Kiribati", "Palau", "Marshallinseln"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ma }
                Reponses := array{"Marokko", "China", "Vietnam", "Mosambik"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_dz }
                Reponses := array{"Tuerkei", "Algerien", "Tunesien", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tn }
                Reponses := array{"Algerien", "Pakistan", "Tunesien", "Tuerkei"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ly }
                Reponses := array{"Liberia", "Libyen", "Simbabwe", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_eg }
                Reponses := array{"Aegypten", "Palaestina", "Jordanien", "Vereinigte Arabische Emirate"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sd }
                Reponses := array{"Vereinigte Arabische Emirate", "Kuwait", "Irak", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ss }
                Reponses := array{"Zentralafrikanische Republik", "Suedafrika", "Suedsudan", "Malawi"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_et }
                Reponses := array{"Litauen", "Aethiopien", "Ghana", "Bolivien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_er }
                Reponses := array{"Eritrea", "Mali", "Kamerun", "Seychellen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_dj }
                Reponses := array{"Aethiopien", "Eritrea", "Tunesien", "Dschibuti"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_so }
                Reponses := array{"Elfenbeinkueste", "Somalia", "Seychellen", "Libyen"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ke }
                Reponses := array{"Tansania", "Kenia", "Uganda", "Ruanda"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ug }
                Reponses := array{"Uganda", "Tansania", "Ruanda", "Kenia"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tz }
                Reponses := array{"Kenia", "Ruanda", "Uganda", "Tansania"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_rw }
                Reponses := array{"Uganda", "Ruanda", "Tansania", "Kenia"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bi }
                Reponses := array{"Komoren", "Burundi", "Angola", "Benin"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cd }
                Reponses := array{"Aequatorialguinea", "Gabun", "DR Kongo", "Kongo"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cg }
                Reponses := array{"DR Kongo", "Kongo", "Aequatorialguinea", "Gabun"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ga }
                Reponses := array{"Kongo", "Aequatorialguinea", "Gabun", "DR Kongo"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gq }
                Reponses := array{"DR Kongo", "Aequatorialguinea", "Kongo", "Gabun"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cm }
                Reponses := array{"Benin", "Burkina Faso", "Senegal", "Kamerun"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cf }
                Reponses := array{"Zentralafrikanische Republik", "Tunesien", "Burundi", "Kongo"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_td }
                Reponses := array{"Tschad", "Andorra", "Rumaenien", "Moldau"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ne }
                Reponses := array{"Italien", "Elfenbeinkueste", "Niger", "Indien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ng }
                Reponses := array{"Nigeria", "Marokko", "Madagaskar", "Seychellen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bj }
                Reponses := array{"Senegal", "Benin", "Kamerun", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tg }
                Reponses := array{"Togo", "Seychellen", "Marokko", "Aequatorialguinea"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gh }
                Reponses := array{"Bolivien", "Mali", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ci }
                Reponses := array{"Italien", "Indien", "Irland", "Elfenbeinkueste"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lr }
                Reponses := array{"Vereinigte Staaten", "Liberia", "Malaysia", "Simbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sl }
                Reponses := array{"Sierra Leone", "Madagaskar", "Eritrea", "Aequatorialguinea"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gn }
                Reponses := array{"Ghana", "Senegal", "Burkina Faso", "Guinea"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gw }
                Reponses := array{"Guinea-Bissau", "Malawi", "Guinea", "DR Kongo"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sn }
                Reponses := array{"Kamerun", "Senegal", "Mali", "Ghana"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gm }
                Reponses := array{"Seychellen", "Kap Verde", "Eswatini", "Gambia"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ml }
                Reponses := array{"Ghana", "Kamerun", "Senegal", "Mali"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bf }
                Reponses := array{"Kamerun", "Mali", "Senegal", "Burkina Faso"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mr }
                Reponses := array{"Mauritius", "Uganda", "Mali", "Mauretanien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cv }
                Reponses := array{"Kap Verde", "Guinea-Bissau", "Benin", "Uganda"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_st }
                Reponses := array{"Sao Tome und Principe", "Eswatini", "Nigeria", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ao }
                Reponses := array{"Angola", "Togo", "Kap Verde", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_zm }
                Reponses := array{"Sambia", "DR Kongo", "Tansania", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_zw }
                Reponses := array{"Simbabwe", "Ghana", "Salomonen", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mw }
                Reponses := array{"Angola", "Malawi", "Togo", "Eritrea"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mz }
                Reponses := array{"Vanuatu", "Mosambik", "Salomonen", "Simbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mg }
                Reponses := array{"Madagaskar", "Aequatorialguinea", "DR Kongo", "Malawi"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_km }
                Reponses := array{"Komoren", "Angola", "Burundi", "Aequatorialguinea"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mu }
                Reponses := array{"Madagaskar", "Mauritius", "Botswana", "Togo"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sc }
                Reponses := array{"Simbabwe", "Seychellen", "Somalia", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_za }
                Reponses := array{"Madagaskar", "Kamerun", "Guinea-Bissau", "Suedafrika"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_na }
                Reponses := array{"Lesotho", "Namibia", "Eswatini", "Botswana"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bw }
                Reponses := array{"Eswatini", "Namibia", "Lesotho", "Botswana"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ls }
                Reponses := array{"Namibia", "Botswana", "Lesotho", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sz }
                Reponses := array{"Botswana", "Lesotho", "Namibia", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_us }
                Reponses := array{"Vereinigte Staaten", "Liberia", "Malaysia", "Kanada"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ca }
                Reponses := array{"Vereinigte Staaten", "Kanada", "Mexiko", "Norwegen"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_mx }
                Reponses := array{"Bulgarien", "Mexiko", "Ungarn", "Irland"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gt }
                Reponses := array{"Uruguay", "El Salvador", "Honduras", "Guatemala"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bz }
                Reponses := array{"Costa Rica", "Grenada", "Belize", "Kuba"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_hn }
                Reponses := array{"Argentinien", "Guatemala", "Honduras", "El Salvador"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sv }
                Reponses := array{"Nicaragua", "Argentinien", "El Salvador", "Uruguay"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ni }
                Reponses := array{"Nicaragua", "Guatemala", "El Salvador", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cr }
                Reponses := array{"Thailand", "Nordkorea", "Suedkorea", "Costa Rica"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pa }
                Reponses := array{"Antigua und Barbuda", "St. Vincent", "Trinidad und Tobago", "Panama"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bs }
                Reponses := array{"Guatemala", "Bahamas", "Belize", "St. Lucia"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cu }
                Reponses := array{"Kuba", "Nordkorea", "Thailand", "Philippinen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_jm }
                Reponses := array{"Haiti", "Nicaragua", "Jamaika", "Barbados"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ht }
                Reponses := array{"Guatemala", "Grenada", "St. Kitts und Nevis", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_do }
                Reponses := array{"Bahamas", "El Salvador", "St. Vincent", "Dominikanische Republik"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_kn }
                Reponses := array{"St. Lucia", "St. Kitts und Nevis", "Dominica", "Antigua und Barbuda"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ag }
                Reponses := array{"Antigua und Barbuda", "St. Lucia", "Grenada", "St. Kitts und Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_dm }
                Reponses := array{"St. Lucia", "Dominica", "St. Vincent", "Grenada"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_lc }
                Reponses := array{"St. Lucia", "St. Vincent", "Grenada", "St. Kitts und Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_vc }
                Reponses := array{"St. Lucia", "St. Kitts und Nevis", "St. Vincent", "Dominica"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bb }
                Reponses := array{"Jamaika", "Panama", "Trinidad und Tobago", "Barbados"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gd }
                Reponses := array{"St. Vincent", "Dominica", "St. Kitts und Nevis", "Grenada"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_tt }
                Reponses := array{"Jamaika", "Trinidad und Tobago", "Antigua und Barbuda", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_co }
                Reponses := array{"Venezuela", "Kolumbien", "Ecuador", "Armenien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ve }
                Reponses := array{"Kolumbien", "Venezuela", "Ecuador", "Armenien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_gy }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Argentinien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_sr }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ec }
                Reponses := array{"Venezuela", "Ecuador", "Kolumbien", "Bolivien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_pe }
                Reponses := array{"Venezuela", "Peru", "Chile", "Brasilien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_br }
                Reponses := array{"Kolumbien", "Peru", "Bolivien", "Brasilien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_bo }
                Reponses := array{"Ghana", "Aethiopien", "Litauen", "Bolivien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Bolivien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_uy }
                Reponses := array{"Nicaragua", "Griechenland", "Israel", "Uruguay"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_cl }
                Reponses := array{"Kuba", "Chile", "Tschechien", "Philippinen"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das?"
                Image := option{ flags.flag_ar }
                Reponses := array{"Uruguay", "Argentinien", "Guatemala", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_fr }
                Reponses := array{"Russland", "Niederlande", "Frankreich", "Luxemburg"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_de }
                Reponses := array{"Deutschland", "Tschad", "Belgien", "Luxemburg"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_it }
                Reponses := array{"Ungarn", "Italien", "Mexiko", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_es }
                Reponses := array{"Malta", "Norwegen", "Spanien", "Frankreich"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pt }
                Reponses := array{"San Marino", "Portugal", "Schweiz", "Belgien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gb }
                Reponses := array{"Liechtenstein", "Vereinigtes Koenigreich", "Deutschland", "Belgien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ie }
                Reponses := array{"Elfenbeinkueste", "Irland", "Mexiko", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_be }
                Reponses := array{"Vereinigtes Koenigreich", "Tschad", "Deutschland", "Belgien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_nl }
                Reponses := array{"Frankreich", "Slowenien", "Kroatien", "Niederlande"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lu }
                Reponses := array{"Niederlande", "Slowakei", "Luxemburg", "Slowenien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ch }
                Reponses := array{"Finnland", "Georgien", "Daenemark", "Schweiz"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_at }
                Reponses := array{"Oesterreich", "Lettland", "Ungarn", "Estland"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mc }
                Reponses := array{"Indonesien", "Monaco", "Polen", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ad }
                Reponses := array{"Andorra", "Moldau", "Tschad", "Rumaenien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_li }
                Reponses := array{"Liechtenstein", "Niederlande", "Portugal", "Belgien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sm }
                Reponses := array{"Vereinigtes Koenigreich", "Island", "Frankreich", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_va }
                Reponses := array{"Vatikanstadt", "San Marino", "Deutschland", "Schweiz"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mt }
                Reponses := array{"Malta", "Daenemark", "Norwegen", "Portugal"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_is }
                Reponses := array{"Daenemark", "Island", "Schweden", "Norwegen"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_no }
                Reponses := array{"Schweden", "Daenemark", "Island", "Norwegen"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_se }
                Reponses := array{"Norwegen", "Schweden", "Daenemark", "Finnland"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_dk }
                Reponses := array{"Schweden", "Finnland", "Schweiz", "Daenemark"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_fi }
                Reponses := array{"Schweden", "Finnland", "Island", "Daenemark"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pl }
                Reponses := array{"Monaco", "Polen", "Singapur", "Indonesien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cz }
                Reponses := array{"Kuba", "Chile", "Tschechien", "Philippinen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sk }
                Reponses := array{"Slowakei", "Slowenien", "Kroatien", "Serbien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_hu }
                Reponses := array{"Estland", "Oesterreich", "Lettland", "Ungarn"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_si }
                Reponses := array{"Russland", "Serbien", "Niederlande", "Slowenien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_hr }
                Reponses := array{"Serbien", "Kroatien", "Russland", "Luxemburg"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ba }
                Reponses := array{"Tschechien", "Slowenien", "Bosnien und Herzegowina", "Belarus"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_rs }
                Reponses := array{"Niederlande", "Slowakei", "Serbien", "Luxemburg"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_me }
                Reponses := array{"Estland", "Albanien", "Slowakei", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mk }
                Reponses := array{"Tschechien", "Estland", "Nordmazedonien", "Litauen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_al }
                Reponses := array{"Griechenland", "Nordmazedonien", "Albanien", "Litauen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gr }
                Reponses := array{"Griechenland", "Uruguay", "Israel", "Litauen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bg }
                Reponses := array{"Mexiko", "Italien", "Bulgarien", "Ungarn"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ro }
                Reponses := array{"Andorra", "Tschad", "Rumaenien", "Moldau"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_md }
                Reponses := array{"Moldau", "Rumaenien", "Tschad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ua }
                Reponses := array{"Nordmazedonien", "Bulgarien", "Estland", "Ukraine"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_by }
                Reponses := array{"Albanien", "Nordmazedonien", "Lettland", "Belarus"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ru }
                Reponses := array{"Slowakei", "Frankreich", "Russland", "Niederlande"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ee }
                Reponses := array{"Estland", "Ungarn", "Lettland", "Oesterreich"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lv }
                Reponses := array{"Oesterreich", "Estland", "Ungarn", "Lettland"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lt }
                Reponses := array{"Litauen", "Ghana", "Bolivien", "Aethiopien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cy }
                Reponses := array{"Griechenland", "Zypern", "Ungarn", "Albanien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tr }
                Reponses := array{"Pakistan", "Algerien", "Tuerkei", "Tunesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_il }
                Reponses := array{"Bahrain", "Uruguay", "Griechenland", "Israel"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ps }
                Reponses := array{"Vereinigte Arabische Emirate", "Irak", "Jemen", "Palaestina"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lb }
                Reponses := array{"Iran", "Libanon", "Irak", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sy }
                Reponses := array{"Palaestina", "Vereinigte Arabische Emirate", "Syrien", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_jo }
                Reponses := array{"Jordanien", "Kuwait", "Jemen", "Sudan"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_iq }
                Reponses := array{"Aegypten", "Vereinigte Arabische Emirate", "Palaestina", "Irak"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ir }
                Reponses := array{"Iran", "Oman", "Jordanien", "Armenien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sa }
                Reponses := array{"Kuwait", "Katar", "Saudi-Arabien", "Oman"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ye }
                Reponses := array{"Syrien", "Jordanien", "Jemen", "Irak"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_om }
                Reponses := array{"Libanon", "Irak", "Aserbaidschan", "Oman"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ae }
                Reponses := array{"Vereinigte Arabische Emirate", "Palaestina", "Syrien", "Jemen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_qa }
                Reponses := array{"Bahrain", "Katar", "Tuerkei", "Vereinigte Arabische Emirate"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bh }
                Reponses := array{"Katar", "Bahrain", "Vereinigte Arabische Emirate", "Palaestina"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kw }
                Reponses := array{"Irak", "Sudan", "Kuwait", "Jordanien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ge }
                Reponses := array{"Aserbaidschan", "Schweiz", "Daenemark", "Georgien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_am }
                Reponses := array{"Armenien", "Venezuela", "Kolumbien", "Syrien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_az }
                Reponses := array{"Vereinigte Arabische Emirate", "Usbekistan", "Turkmenistan", "Aserbaidschan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kz }
                Reponses := array{"Turkmenistan", "Kasachstan", "Usbekistan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_uz }
                Reponses := array{"Turkmenistan", "Usbekistan", "Aserbaidschan", "Tadschikistan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tm }
                Reponses := array{"Turkmenistan", "Usbekistan", "Aserbaidschan", "Kirgisistan"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kg }
                Reponses := array{"Mongolei", "Turkmenistan", "Kirgisistan", "Kasachstan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tj }
                Reponses := array{"Afghanistan", "Kirgisistan", "Tadschikistan", "Kasachstan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_af }
                Reponses := array{"Kirgisistan", "Mongolei", "Afghanistan", "Turkmenistan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mn }
                Reponses := array{"Mongolei", "Kirgisistan", "Afghanistan", "Turkmenistan"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cn }
                Reponses := array{"Vietnam", "Marokko", "China", "Sri Lanka"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_jp }
                Reponses := array{"Malaysia", "Singapur", "Sri Lanka", "Japan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kr }
                Reponses := array{"Suedkorea", "Nordkorea", "Costa Rica", "Kuba"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kp }
                Reponses := array{"Kuba", "Suedkorea", "Nordkorea", "Costa Rica"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_in }
                Reponses := array{"Indien", "Irland", "Niger", "Elfenbeinkueste"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pk }
                Reponses := array{"Tunesien", "Tuerkei", "Pakistan", "Algerien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bd }
                Reponses := array{"Laos", "Nordkorea", "Suedkorea", "Bangladesch"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lk }
                Reponses := array{"Sri Lanka", "Singapur", "Laos", "Osttimor"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_np }
                Reponses := array{"China", "Bhutan", "Nepal", "Indonesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bt }
                Reponses := array{"Japan", "Brunei", "Bhutan", "Nordkorea"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mv }
                Reponses := array{"Suedkorea", "Myanmar", "China", "Malediven"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mm }
                Reponses := array{"Simbabwe", "Myanmar", "Ghana", "Thailand"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_th }
                Reponses := array{"Kambodscha", "Costa Rica", "Thailand", "Kuba"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_la }
                Reponses := array{"Bangladesch", "Thailand", "Kambodscha", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kh }
                Reponses := array{"Thailand", "Kambodscha", "Laos", "Sri Lanka"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_vn }
                Reponses := array{"Marokko", "China", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_my }
                Reponses := array{"Liberia", "Malaysia", "Vereinigte Staaten", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sg }
                Reponses := array{"Singapur", "Polen", "Monaco", "Indonesien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_id }
                Reponses := array{"Monaco", "Indonesien", "Polen", "Singapur"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bn }
                Reponses := array{"Singapur", "Brunei", "Vietnam", "Suedkorea"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ph }
                Reponses := array{"Philippinen", "Tschechien", "Chile", "Kuba"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tl }
                Reponses := array{"Laos", "Osttimor", "Nordkorea", "China"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_au }
                Reponses := array{"Tuvalu", "Fidschi", "Australien", "Neuseeland"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_nz }
                Reponses := array{"Tuvalu", "Neuseeland", "Fidschi", "Australien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pg }
                Reponses := array{"Tonga", "Marshallinseln", "Papua-Neuguinea", "Fidschi"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_fj }
                Reponses := array{"Australien", "Neuseeland", "Tuvalu", "Fidschi"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sb }
                Reponses := array{"Salomonen", "Vanuatu", "Simbabwe", "Mosambik"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_vu }
                Reponses := array{"Mosambik", "Simbabwe", "Vanuatu", "Salomonen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ws }
                Reponses := array{"Tonga", "Samoa", "Fidschi", "Papua-Neuguinea"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_to }
                Reponses := array{"Vanuatu", "Samoa", "Tonga", "Mikronesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tv }
                Reponses := array{"Fidschi", "Neuseeland", "Australien", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ki }
                Reponses := array{"Nauru", "Marshallinseln", "Palau", "Kiribati"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_nr }
                Reponses := array{"Kiribati", "Marshallinseln", "Nauru", "Palau"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pw }
                Reponses := array{"Nauru", "Kiribati", "Marshallinseln", "Palau"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_fm }
                Reponses := array{"Mikronesien", "Palau", "Nauru", "Marshallinseln"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mh }
                Reponses := array{"Nauru", "Marshallinseln", "Kiribati", "Mikronesien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ma }
                Reponses := array{"Vietnam", "Marokko", "China", "Namibia"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_dz }
                Reponses := array{"Algerien", "Tuerkei", "Pakistan", "Tunesien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tn }
                Reponses := array{"Tunesien", "Pakistan", "Algerien", "Tuerkei"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ly }
                Reponses := array{"Libyen", "Sao Tome und Principe", "Kongo", "Zentralafrikanische Republik"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_eg }
                Reponses := array{"Irak", "Jemen", "Sudan", "Aegypten"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sd }
                Reponses := array{"Vereinigte Arabische Emirate", "Kuwait", "Palaestina", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ss }
                Reponses := array{"Mosambik", "Komoren", "Suedsudan", "Dschibuti"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_et }
                Reponses := array{"Litauen", "Ghana", "Bolivien", "Aethiopien"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_er }
                Reponses := array{"Burkina Faso", "Eritrea", "Tschad", "Tansania"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_dj }
                Reponses := array{"Dschibuti", "Libyen", "Elfenbeinkueste", "Mauretanien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_so }
                Reponses := array{"Somalia", "Namibia", "Mosambik", "Seychellen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ke }
                Reponses := array{"Uganda", "Ruanda", "Kenia", "Tansania"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ug }
                Reponses := array{"Uganda", "Ruanda", "Tansania", "Kenia"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tz }
                Reponses := array{"Ruanda", "Uganda", "Tansania", "Kenia"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_rw }
                Reponses := array{"Tansania", "Ruanda", "Kenia", "Uganda"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bi }
                Reponses := array{"Burundi", "Zentralafrikanische Republik", "Nigeria", "Namibia"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cd }
                Reponses := array{"Kongo", "Gabun", "DR Kongo", "Aequatorialguinea"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cg }
                Reponses := array{"Aequatorialguinea", "Kongo", "DR Kongo", "Gabun"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ga }
                Reponses := array{"Gabun", "Kongo", "DR Kongo", "Aequatorialguinea"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gq }
                Reponses := array{"DR Kongo", "Aequatorialguinea", "Gabun", "Kongo"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cm }
                Reponses := array{"Burkina Faso", "Kamerun", "Benin", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cf }
                Reponses := array{"Zentralafrikanische Republik", "Gambia", "Libyen", "Mali"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_td }
                Reponses := array{"Deutschland", "Andorra", "Tschad", "Moldau"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ne }
                Reponses := array{"Italien", "Indien", "Niger", "Irland"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ng }
                Reponses := array{"Nigeria", "Ruanda", "Ghana", "Niger"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bj }
                Reponses := array{"Guinea", "Mali", "Senegal", "Benin"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tg }
                Reponses := array{"Togo", "Malawi", "Suedafrika", "Gabun"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gh }
                Reponses := array{"Mali", "Bolivien", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ci }
                Reponses := array{"Elfenbeinkueste", "Niger", "Irland", "Italien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lr }
                Reponses := array{"Vereinigte Staaten", "Liberia", "Malaysia", "Aequatorialguinea"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sl }
                Reponses := array{"Dschibuti", "Guinea-Bissau", "Sierra Leone", "Gambia"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gn }
                Reponses := array{"Senegal", "Ghana", "Guinea", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gw }
                Reponses := array{"Ruanda", "Guinea-Bissau", "Liberia", "Dschibuti"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sn }
                Reponses := array{"Benin", "Burkina Faso", "Guinea", "Senegal"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gm }
                Reponses := array{"Malawi", "Gambia", "Ruanda", "Sao Tome und Principe"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ml }
                Reponses := array{"Senegal", "Benin", "Mali", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bf }
                Reponses := array{"Benin", "Burkina Faso", "Ghana", "Kamerun"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mr }
                Reponses := array{"Aequatorialguinea", "Burkina Faso", "Mauretanien", "Aethiopien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cv }
                Reponses := array{"Simbabwe", "Kap Verde", "Niger", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_st }
                Reponses := array{"Nigeria", "Sao Tome und Principe", "Somalia", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ao }
                Reponses := array{"Kenia", "Kamerun", "Seychellen", "Angola"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_zm }
                Reponses := array{"Sambia", "Aegypten", "Ghana", "Libyen"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_zw }
                Reponses := array{"Simbabwe", "Ghana", "Myanmar", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mw }
                Reponses := array{"Malawi", "Aequatorialguinea", "Dschibuti", "Aethiopien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mz }
                Reponses := array{"Simbabwe", "Vanuatu", "Mosambik", "Salomonen"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mg }
                Reponses := array{"Uganda", "Marokko", "Aethiopien", "Madagaskar"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_km }
                Reponses := array{"Tunesien", "Nigeria", "Mosambik", "Komoren"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mu }
                Reponses := array{"Mauritius", "Mali", "Uganda", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sc }
                Reponses := array{"Seychellen", "Guinea-Bissau", "Aethiopien", "Angola"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_za }
                Reponses := array{"Elfenbeinkueste", "Suedafrika", "Dschibuti", "Madagaskar"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_na }
                Reponses := array{"Botswana", "Eswatini", "Namibia", "Lesotho"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bw }
                Reponses := array{"Namibia", "Lesotho", "Botswana", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ls }
                Reponses := array{"Namibia", "Eswatini", "Botswana", "Lesotho"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sz }
                Reponses := array{"Lesotho", "Namibia", "Botswana", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_us }
                Reponses := array{"Kanada", "Malaysia", "Liberia", "Vereinigte Staaten"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ca }
                Reponses := array{"Mexiko", "Vereinigte Staaten", "Kanada", "Tunesien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_mx }
                Reponses := array{"Mexiko", "Ungarn", "Bulgarien", "Italien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gt }
                Reponses := array{"Nicaragua", "Honduras", "Guatemala", "Argentinien"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bz }
                Reponses := array{"Bahamas", "Nicaragua", "Belize", "Panama"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_hn }
                Reponses := array{"Argentinien", "Honduras", "Uruguay", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sv }
                Reponses := array{"Uruguay", "Nicaragua", "Guatemala", "El Salvador"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ni }
                Reponses := array{"Nicaragua", "Argentinien", "Guatemala", "El Salvador"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cr }
                Reponses := array{"Costa Rica", "Suedkorea", "Kuba", "Thailand"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pa }
                Reponses := array{"Jamaika", "Panama", "Costa Rica", "Haiti"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bs }
                Reponses := array{"Barbados", "Bahamas", "St. Lucia", "St. Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cu }
                Reponses := array{"Philippinen", "Kuba", "Suedkorea", "Chile"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_jm }
                Reponses := array{"Dominikanische Republik", "St. Kitts und Nevis", "Jamaika", "St. Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ht }
                Reponses := array{"Bahamas", "Costa Rica", "Nicaragua", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_do }
                Reponses := array{"Jamaika", "Dominikanische Republik", "Barbados", "Bahamas"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_kn }
                Reponses := array{"Dominica", "Grenada", "St. Kitts und Nevis", "St. Vincent"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ag }
                Reponses := array{"Antigua und Barbuda", "St. Kitts und Nevis", "St. Vincent", "Grenada"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_dm }
                Reponses := array{"Grenada", "St. Lucia", "Dominica", "Antigua und Barbuda"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_lc }
                Reponses := array{"Antigua und Barbuda", "St. Lucia", "St. Kitts und Nevis", "St. Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_vc }
                Reponses := array{"Grenada", "Dominica", "St. Vincent", "St. Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bb }
                Reponses := array{"Trinidad und Tobago", "Barbados", "Costa Rica", "Panama"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gd }
                Reponses := array{"Grenada", "St. Kitts und Nevis", "St. Lucia", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_tt }
                Reponses := array{"Trinidad und Tobago", "Antigua und Barbuda", "Costa Rica", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_co }
                Reponses := array{"Venezuela", "Kolumbien", "Ecuador", "Armenien"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ve }
                Reponses := array{"Armenien", "Venezuela", "Kolumbien", "Ecuador"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_gy }
                Reponses := array{"Paraguay", "Guyana", "Suriname", "Peru"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_sr }
                Reponses := array{"Suriname", "Guyana", "Paraguay", "Bolivien"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ec }
                Reponses := array{"Ecuador", "Venezuela", "Kolumbien", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_pe }
                Reponses := array{"Brasilien", "Kolumbien", "Bolivien", "Peru"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_br }
                Reponses := array{"Guyana", "Brasilien", "Chile", "Uruguay"}
                BonneReponse := 1
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_bo }
                Reponses := array{"Litauen", "Aethiopien", "Bolivien", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Ecuador"}
                BonneReponse := 0
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_uy }
                Reponses := array{"Argentinien", "Griechenland", "Uruguay", "Nicaragua"}
                BonneReponse := 2
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_cl }
                Reponses := array{"Kuba", "Tschechien", "Philippinen", "Chile"}
                BonneReponse := 3
            question:
                Enonce := "Welches Land ist das? (verpixelte Flagge)"
                Image := option{ flags_pixel.fpx_ar }
                Reponses := array{"Argentinien", "Guatemala", "Nicaragua", "Uruguay"}
                BonneReponse := 0

    # ===== Banque DRAPEAUX IT (390) — memes tirages/indices que la banque FR =====
    MakeQuestionsIT() : []question =
        array:
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_fr }
                Reponses := array{"Lussemburgo", "Russia", "Paesi Bassi", "Francia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_de }
                Reponses := array{"Germania", "Belgio", "Ciad", "Portogallo"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_it }
                Reponses := array{"Bulgaria", "India", "Italia", "Ungheria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_es }
                Reponses := array{"Spagna", "Germania", "Malta", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pt }
                Reponses := array{"Svizzera", "Portogallo", "Danimarca", "Italia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gb }
                Reponses := array{"Paesi Bassi", "Regno Unito", "Monaco", "Malta"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ie }
                Reponses := array{"India", "Irlanda", "Costa d'Avorio", "Italia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_be }
                Reponses := array{"Belgio", "Germania", "Ciad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_nl }
                Reponses := array{"Lussemburgo", "Serbia", "Francia", "Paesi Bassi"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lu }
                Reponses := array{"Slovenia", "Russia", "Francia", "Lussemburgo"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ch }
                Reponses := array{"Danimarca", "Georgia", "Svizzera", "Svezia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_at }
                Reponses := array{"Austria", "Estonia", "Lettonia", "Ungheria"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mc }
                Reponses := array{"Singapore", "Polonia", "Indonesia", "Monaco"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ad }
                Reponses := array{"Moldavia", "Romania", "Ciad", "Andorra"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_li }
                Reponses := array{"Citta del Vaticano", "San Marino", "Liechtenstein", "Lussemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sm }
                Reponses := array{"Citta del Vaticano", "Svezia", "Belgio", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_va }
                Reponses := array{"Regno Unito", "Spagna", "Citta del Vaticano", "Malta"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mt }
                Reponses := array{"Monaco", "Malta", "Spagna", "Svizzera"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_is }
                Reponses := array{"Islanda", "Finlandia", "Norvegia", "Danimarca"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_no }
                Reponses := array{"Finlandia", "Norvegia", "Islanda", "Danimarca"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_se }
                Reponses := array{"Norvegia", "Svezia", "Islanda", "Finlandia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_dk }
                Reponses := array{"Danimarca", "Norvegia", "Svizzera", "Finlandia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_fi }
                Reponses := array{"Islanda", "Danimarca", "Finlandia", "Svezia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pl }
                Reponses := array{"Polonia", "Singapore", "Indonesia", "Monaco"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cz }
                Reponses := array{"Cechia", "Cuba", "Filippine", "Cile"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sk }
                Reponses := array{"Slovacchia", "Serbia", "Croazia", "Slovenia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_hu }
                Reponses := array{"Ungheria", "Italia", "Bulgaria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_si }
                Reponses := array{"Slovenia", "Lussemburgo", "Croazia", "Slovacchia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_hr }
                Reponses := array{"Slovacchia", "Serbia", "Russia", "Croazia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ba }
                Reponses := array{"Polonia", "Slovacchia", "Russia", "Bosnia ed Erzegovina"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_rs }
                Reponses := array{"Serbia", "Paesi Bassi", "Croazia", "Russia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_me }
                Reponses := array{"Romania", "Lituania", "Russia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mk }
                Reponses := array{"Slovenia", "Ucraina", "Estonia", "Macedonia del Nord"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_al }
                Reponses := array{"Slovacchia", "Albania", "Ucraina", "Slovenia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gr }
                Reponses := array{"Uruguay", "Grecia", "Israele", "Bosnia ed Erzegovina"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bg }
                Reponses := array{"Messico", "Italia", "Bulgaria", "Ungheria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ro }
                Reponses := array{"Moldavia", "Ciad", "Andorra", "Romania"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_md }
                Reponses := array{"Moldavia", "Ciad", "Andorra", "Romania"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ua }
                Reponses := array{"Moldavia", "Macedonia del Nord", "Ucraina", "Cechia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_by }
                Reponses := array{"Montenegro", "Bielorussia", "Macedonia del Nord", "Estonia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ru }
                Reponses := array{"Serbia", "Slovacchia", "Russia", "Lussemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ee }
                Reponses := array{"Estonia", "Lettonia", "Ungheria", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lv }
                Reponses := array{"Lettonia", "Austria", "Ungheria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lt }
                Reponses := array{"Bolivia", "Ghana", "Etiopia", "Lituania"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cy }
                Reponses := array{"Cipro", "Slovacchia", "Grecia", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tr }
                Reponses := array{"Algeria", "Tunisia", "Pakistan", "Turchia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_il }
                Reponses := array{"Uruguay", "Israele", "Grecia", "Giordania"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ps }
                Reponses := array{"Egitto", "Yemen", "Palestina", "Siria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lb }
                Reponses := array{"Giordania", "Georgia", "Yemen", "Libano"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sy }
                Reponses := array{"Iraq", "Siria", "Yemen", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_jo }
                Reponses := array{"Kuwait", "Sudan", "Giordania", "Palestina"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_iq }
                Reponses := array{"Giordania", "Iraq", "Kuwait", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ir }
                Reponses := array{"Palestina", "Qatar", "Iran", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sa }
                Reponses := array{"Armenia", "Oman", "Giordania", "Arabia Saudita"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ye }
                Reponses := array{"Kuwait", "Egitto", "Giordania", "Yemen"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_om }
                Reponses := array{"Oman", "Kuwait", "Emirati Arabi Uniti", "Giordania"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ae }
                Reponses := array{"Emirati Arabi Uniti", "Giordania", "Yemen", "Egitto"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_qa }
                Reponses := array{"Qatar", "Bahrein", "Arabia Saudita", "Emirati Arabi Uniti"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bh }
                Reponses := array{"Bahrein", "Qatar", "Azerbaigian", "Oman"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kw }
                Reponses := array{"Emirati Arabi Uniti", "Kuwait", "Egitto", "Sudan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ge }
                Reponses := array{"Danimarca", "Svizzera", "Georgia", "Siria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Emirati Arabi Uniti"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_az }
                Reponses := array{"Uzbekistan", "Azerbaigian", "Turkmenistan", "Turchia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kz }
                Reponses := array{"Turkmenistan", "Kirghizistan", "Kazakistan", "Tagikistan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_uz }
                Reponses := array{"Azerbaigian", "Turkmenistan", "Uzbekistan", "Mongolia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tm }
                Reponses := array{"Uzbekistan", "Turkmenistan", "Azerbaigian", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kg }
                Reponses := array{"Turkmenistan", "Afghanistan", "Kirghizistan", "Kazakistan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tj }
                Reponses := array{"Turkmenistan", "Kazakistan", "Uzbekistan", "Tagikistan"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_af }
                Reponses := array{"Turkmenistan", "Afghanistan", "Uzbekistan", "Kazakistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mn }
                Reponses := array{"Mongolia", "Turkmenistan", "Afghanistan", "Kirghizistan"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cn }
                Reponses := array{"Vietnam", "Marocco", "Cina", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_jp }
                Reponses := array{"Indonesia", "Filippine", "Giappone", "Birmania"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kr }
                Reponses := array{"Costa Rica", "Thailandia", "Corea del Sud", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kp }
                Reponses := array{"Thailandia", "Corea del Sud", "Corea del Nord", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_in }
                Reponses := array{"Irlanda", "Costa d'Avorio", "India", "Niger"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pk }
                Reponses := array{"Algeria", "Pakistan", "Turchia", "Tunisia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bd }
                Reponses := array{"Malesia", "Thailandia", "Nepal", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lk }
                Reponses := array{"Singapore", "Pakistan", "Giappone", "Sri Lanka"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_np }
                Reponses := array{"Birmania", "Maldive", "Nepal", "Timor Est"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bt }
                Reponses := array{"Cina", "Timor Est", "Maldive", "Bhutan"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mv }
                Reponses := array{"Maldive", "Birmania", "Nepal", "Filippine"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mm }
                Reponses := array{"Birmania", "Ghana", "Zimbabwe", "Cina"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_th }
                Reponses := array{"Cuba", "Costa Rica", "Laos", "Thailandia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_la }
                Reponses := array{"Timor Est", "Thailandia", "Cambogia", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kh }
                Reponses := array{"Laos", "Thailandia", "Cambogia", "Filippine"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_vn }
                Reponses := array{"Marocco", "Cina", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_my }
                Reponses := array{"India", "Stati Uniti", "Liberia", "Malesia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sg }
                Reponses := array{"Polonia", "Monaco", "Singapore", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_id }
                Reponses := array{"Indonesia", "Polonia", "Monaco", "Singapore"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bn }
                Reponses := array{"Brunei", "Malesia", "India", "Nepal"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ph }
                Reponses := array{"Cuba", "Cechia", "Cile", "Filippine"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tl }
                Reponses := array{"Sri Lanka", "Timor Est", "Vietnam", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_au }
                Reponses := array{"Figi", "Australia", "Tuvalu", "Nuova Zelanda"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_nz }
                Reponses := array{"Tuvalu", "Figi", "Nuova Zelanda", "Australia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pg }
                Reponses := array{"Papua Nuova Guinea", "Figi", "Kiribati", "Nauru"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_fj }
                Reponses := array{"Tuvalu", "Figi", "Nuova Zelanda", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sb }
                Reponses := array{"Vanuatu", "Mozambico", "Zimbabwe", "Isole Salomone"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_vu }
                Reponses := array{"Isole Salomone", "Zimbabwe", "Vanuatu", "Mozambico"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ws }
                Reponses := array{"Nauru", "Tonga", "Vanuatu", "Samoa"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_to }
                Reponses := array{"Tuvalu", "Samoa", "Kiribati", "Tonga"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tv }
                Reponses := array{"Australia", "Figi", "Nuova Zelanda", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ki }
                Reponses := array{"Nauru", "Kiribati", "Palau", "Isole Marshall"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_nr }
                Reponses := array{"Palau", "Kiribati", "Micronesia", "Nauru"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pw }
                Reponses := array{"Palau", "Isole Marshall", "Micronesia", "Kiribati"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_fm }
                Reponses := array{"Palau", "Isole Marshall", "Micronesia", "Kiribati"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mh }
                Reponses := array{"Micronesia", "Kiribati", "Palau", "Isole Marshall"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ma }
                Reponses := array{"Marocco", "Cina", "Vietnam", "Mozambico"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_dz }
                Reponses := array{"Turchia", "Algeria", "Tunisia", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tn }
                Reponses := array{"Algeria", "Pakistan", "Tunisia", "Turchia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ly }
                Reponses := array{"Liberia", "Libia", "Zimbabwe", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_eg }
                Reponses := array{"Egitto", "Palestina", "Giordania", "Emirati Arabi Uniti"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sd }
                Reponses := array{"Emirati Arabi Uniti", "Kuwait", "Iraq", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ss }
                Reponses := array{"Repubblica Centrafricana", "Sudafrica", "Sudan del Sud", "Malawi"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_et }
                Reponses := array{"Lituania", "Etiopia", "Ghana", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_er }
                Reponses := array{"Eritrea", "Mali", "Camerun", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_dj }
                Reponses := array{"Etiopia", "Eritrea", "Tunisia", "Gibuti"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_so }
                Reponses := array{"Costa d'Avorio", "Somalia", "Seychelles", "Libia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ke }
                Reponses := array{"Tanzania", "Kenya", "Uganda", "Ruanda"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ug }
                Reponses := array{"Uganda", "Tanzania", "Ruanda", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tz }
                Reponses := array{"Kenya", "Ruanda", "Uganda", "Tanzania"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_rw }
                Reponses := array{"Uganda", "Ruanda", "Tanzania", "Kenya"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bi }
                Reponses := array{"Comore", "Burundi", "Angola", "Benin"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cd }
                Reponses := array{"Guinea Equatoriale", "Gabon", "RD Congo", "Congo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cg }
                Reponses := array{"RD Congo", "Congo", "Guinea Equatoriale", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ga }
                Reponses := array{"Congo", "Guinea Equatoriale", "Gabon", "RD Congo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gq }
                Reponses := array{"RD Congo", "Guinea Equatoriale", "Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cm }
                Reponses := array{"Benin", "Burkina Faso", "Senegal", "Camerun"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cf }
                Reponses := array{"Repubblica Centrafricana", "Tunisia", "Burundi", "Congo"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_td }
                Reponses := array{"Ciad", "Andorra", "Romania", "Moldavia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ne }
                Reponses := array{"Italia", "Costa d'Avorio", "Niger", "India"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ng }
                Reponses := array{"Nigeria", "Marocco", "Madagascar", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bj }
                Reponses := array{"Senegal", "Benin", "Camerun", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tg }
                Reponses := array{"Togo", "Seychelles", "Marocco", "Guinea Equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gh }
                Reponses := array{"Bolivia", "Mali", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ci }
                Reponses := array{"Italia", "India", "Irlanda", "Costa d'Avorio"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lr }
                Reponses := array{"Stati Uniti", "Liberia", "Malesia", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sl }
                Reponses := array{"Sierra Leone", "Madagascar", "Eritrea", "Guinea Equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gn }
                Reponses := array{"Ghana", "Senegal", "Burkina Faso", "Guinea"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gw }
                Reponses := array{"Guinea-Bissau", "Malawi", "Guinea", "RD Congo"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sn }
                Reponses := array{"Camerun", "Senegal", "Mali", "Ghana"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gm }
                Reponses := array{"Seychelles", "Capo Verde", "Eswatini", "Gambia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ml }
                Reponses := array{"Ghana", "Camerun", "Senegal", "Mali"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bf }
                Reponses := array{"Camerun", "Mali", "Senegal", "Burkina Faso"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mr }
                Reponses := array{"Mauritius", "Uganda", "Mali", "Mauritania"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cv }
                Reponses := array{"Capo Verde", "Guinea-Bissau", "Benin", "Uganda"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_st }
                Reponses := array{"Sao Tome e Principe", "Eswatini", "Nigeria", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ao }
                Reponses := array{"Angola", "Togo", "Capo Verde", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_zm }
                Reponses := array{"Zambia", "RD Congo", "Tanzania", "Benin"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Isole Salomone", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mw }
                Reponses := array{"Angola", "Malawi", "Togo", "Eritrea"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mz }
                Reponses := array{"Vanuatu", "Mozambico", "Isole Salomone", "Zimbabwe"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mg }
                Reponses := array{"Madagascar", "Guinea Equatoriale", "RD Congo", "Malawi"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_km }
                Reponses := array{"Comore", "Angola", "Burundi", "Guinea Equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mu }
                Reponses := array{"Madagascar", "Mauritius", "Botswana", "Togo"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sc }
                Reponses := array{"Zimbabwe", "Seychelles", "Somalia", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_za }
                Reponses := array{"Madagascar", "Camerun", "Guinea-Bissau", "Sudafrica"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_na }
                Reponses := array{"Lesotho", "Namibia", "Eswatini", "Botswana"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bw }
                Reponses := array{"Eswatini", "Namibia", "Lesotho", "Botswana"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ls }
                Reponses := array{"Namibia", "Botswana", "Lesotho", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sz }
                Reponses := array{"Botswana", "Lesotho", "Namibia", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_us }
                Reponses := array{"Stati Uniti", "Liberia", "Malesia", "Canada"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ca }
                Reponses := array{"Stati Uniti", "Canada", "Messico", "Norvegia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_mx }
                Reponses := array{"Bulgaria", "Messico", "Ungheria", "Irlanda"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gt }
                Reponses := array{"Uruguay", "El Salvador", "Honduras", "Guatemala"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bz }
                Reponses := array{"Costa Rica", "Grenada", "Belize", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_hn }
                Reponses := array{"Argentina", "Guatemala", "Honduras", "El Salvador"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sv }
                Reponses := array{"Nicaragua", "Argentina", "El Salvador", "Uruguay"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ni }
                Reponses := array{"Nicaragua", "Guatemala", "El Salvador", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cr }
                Reponses := array{"Thailandia", "Corea del Nord", "Corea del Sud", "Costa Rica"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pa }
                Reponses := array{"Antigua e Barbuda", "Saint Vincent", "Trinidad e Tobago", "Panama"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bs }
                Reponses := array{"Guatemala", "Bahamas", "Belize", "Santa Lucia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cu }
                Reponses := array{"Cuba", "Corea del Nord", "Thailandia", "Filippine"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_jm }
                Reponses := array{"Haiti", "Nicaragua", "Giamaica", "Barbados"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ht }
                Reponses := array{"Guatemala", "Grenada", "Saint Kitts e Nevis", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_do }
                Reponses := array{"Bahamas", "El Salvador", "Saint Vincent", "Repubblica Dominicana"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_kn }
                Reponses := array{"Santa Lucia", "Saint Kitts e Nevis", "Dominica", "Antigua e Barbuda"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ag }
                Reponses := array{"Antigua e Barbuda", "Santa Lucia", "Grenada", "Saint Kitts e Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_dm }
                Reponses := array{"Santa Lucia", "Dominica", "Saint Vincent", "Grenada"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_lc }
                Reponses := array{"Santa Lucia", "Saint Vincent", "Grenada", "Saint Kitts e Nevis"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_vc }
                Reponses := array{"Santa Lucia", "Saint Kitts e Nevis", "Saint Vincent", "Dominica"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bb }
                Reponses := array{"Giamaica", "Panama", "Trinidad e Tobago", "Barbados"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gd }
                Reponses := array{"Saint Vincent", "Dominica", "Saint Kitts e Nevis", "Grenada"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_tt }
                Reponses := array{"Giamaica", "Trinidad e Tobago", "Antigua e Barbuda", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ve }
                Reponses := array{"Colombia", "Venezuela", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_gy }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Argentina"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_sr }
                Reponses := array{"Guyana", "Suriname", "Paraguay", "Cile"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ec }
                Reponses := array{"Venezuela", "Ecuador", "Colombia", "Bolivia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_pe }
                Reponses := array{"Venezuela", "Peru", "Cile", "Brasile"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_br }
                Reponses := array{"Colombia", "Peru", "Bolivia", "Brasile"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_bo }
                Reponses := array{"Ghana", "Etiopia", "Lituania", "Bolivia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_uy }
                Reponses := array{"Nicaragua", "Grecia", "Israele", "Uruguay"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_cl }
                Reponses := array{"Cuba", "Cile", "Cechia", "Filippine"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo?"
                Image := option{ flags.flag_ar }
                Reponses := array{"Uruguay", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_fr }
                Reponses := array{"Russia", "Paesi Bassi", "Francia", "Lussemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_de }
                Reponses := array{"Germania", "Ciad", "Belgio", "Lussemburgo"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_it }
                Reponses := array{"Ungheria", "Italia", "Messico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_es }
                Reponses := array{"Malta", "Norvegia", "Spagna", "Francia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pt }
                Reponses := array{"San Marino", "Portogallo", "Svizzera", "Belgio"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gb }
                Reponses := array{"Liechtenstein", "Regno Unito", "Germania", "Belgio"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ie }
                Reponses := array{"Costa d'Avorio", "Irlanda", "Messico", "Niger"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_be }
                Reponses := array{"Regno Unito", "Ciad", "Germania", "Belgio"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_nl }
                Reponses := array{"Francia", "Slovenia", "Croazia", "Paesi Bassi"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lu }
                Reponses := array{"Paesi Bassi", "Slovacchia", "Lussemburgo", "Slovenia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ch }
                Reponses := array{"Finlandia", "Georgia", "Danimarca", "Svizzera"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_at }
                Reponses := array{"Austria", "Lettonia", "Ungheria", "Estonia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mc }
                Reponses := array{"Indonesia", "Monaco", "Polonia", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ad }
                Reponses := array{"Andorra", "Moldavia", "Ciad", "Romania"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_li }
                Reponses := array{"Liechtenstein", "Paesi Bassi", "Portogallo", "Belgio"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sm }
                Reponses := array{"Regno Unito", "Islanda", "Francia", "San Marino"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_va }
                Reponses := array{"Citta del Vaticano", "San Marino", "Germania", "Svizzera"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mt }
                Reponses := array{"Malta", "Danimarca", "Norvegia", "Portogallo"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_is }
                Reponses := array{"Danimarca", "Islanda", "Svezia", "Norvegia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_no }
                Reponses := array{"Svezia", "Danimarca", "Islanda", "Norvegia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_se }
                Reponses := array{"Norvegia", "Svezia", "Danimarca", "Finlandia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_dk }
                Reponses := array{"Svezia", "Finlandia", "Svizzera", "Danimarca"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_fi }
                Reponses := array{"Svezia", "Finlandia", "Islanda", "Danimarca"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pl }
                Reponses := array{"Monaco", "Polonia", "Singapore", "Indonesia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cz }
                Reponses := array{"Cuba", "Cile", "Cechia", "Filippine"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sk }
                Reponses := array{"Slovacchia", "Slovenia", "Croazia", "Serbia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_hu }
                Reponses := array{"Estonia", "Austria", "Lettonia", "Ungheria"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_si }
                Reponses := array{"Russia", "Serbia", "Paesi Bassi", "Slovenia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_hr }
                Reponses := array{"Serbia", "Croazia", "Russia", "Lussemburgo"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ba }
                Reponses := array{"Cechia", "Slovenia", "Bosnia ed Erzegovina", "Bielorussia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_rs }
                Reponses := array{"Paesi Bassi", "Slovacchia", "Serbia", "Lussemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_me }
                Reponses := array{"Estonia", "Albania", "Slovacchia", "Montenegro"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mk }
                Reponses := array{"Cechia", "Estonia", "Macedonia del Nord", "Lituania"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_al }
                Reponses := array{"Grecia", "Macedonia del Nord", "Albania", "Lituania"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gr }
                Reponses := array{"Grecia", "Uruguay", "Israele", "Lituania"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bg }
                Reponses := array{"Messico", "Italia", "Bulgaria", "Ungheria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ro }
                Reponses := array{"Andorra", "Ciad", "Romania", "Moldavia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_md }
                Reponses := array{"Moldavia", "Romania", "Ciad", "Andorra"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ua }
                Reponses := array{"Macedonia del Nord", "Bulgaria", "Estonia", "Ucraina"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_by }
                Reponses := array{"Albania", "Macedonia del Nord", "Lettonia", "Bielorussia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ru }
                Reponses := array{"Slovacchia", "Francia", "Russia", "Paesi Bassi"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ee }
                Reponses := array{"Estonia", "Ungheria", "Lettonia", "Austria"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lv }
                Reponses := array{"Austria", "Estonia", "Ungheria", "Lettonia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lt }
                Reponses := array{"Lituania", "Ghana", "Bolivia", "Etiopia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cy }
                Reponses := array{"Grecia", "Cipro", "Ungheria", "Albania"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tr }
                Reponses := array{"Pakistan", "Algeria", "Turchia", "Tunisia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_il }
                Reponses := array{"Bahrein", "Uruguay", "Grecia", "Israele"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ps }
                Reponses := array{"Emirati Arabi Uniti", "Iraq", "Yemen", "Palestina"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lb }
                Reponses := array{"Iran", "Libano", "Iraq", "Kuwait"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sy }
                Reponses := array{"Palestina", "Emirati Arabi Uniti", "Siria", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_jo }
                Reponses := array{"Giordania", "Kuwait", "Yemen", "Sudan"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_iq }
                Reponses := array{"Egitto", "Emirati Arabi Uniti", "Palestina", "Iraq"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ir }
                Reponses := array{"Iran", "Oman", "Giordania", "Armenia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sa }
                Reponses := array{"Kuwait", "Qatar", "Arabia Saudita", "Oman"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ye }
                Reponses := array{"Siria", "Giordania", "Yemen", "Iraq"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_om }
                Reponses := array{"Libano", "Iraq", "Azerbaigian", "Oman"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ae }
                Reponses := array{"Emirati Arabi Uniti", "Palestina", "Siria", "Yemen"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_qa }
                Reponses := array{"Bahrein", "Qatar", "Turchia", "Emirati Arabi Uniti"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bh }
                Reponses := array{"Qatar", "Bahrein", "Emirati Arabi Uniti", "Palestina"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kw }
                Reponses := array{"Iraq", "Sudan", "Kuwait", "Giordania"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ge }
                Reponses := array{"Azerbaigian", "Svizzera", "Danimarca", "Georgia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_am }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Siria"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_az }
                Reponses := array{"Emirati Arabi Uniti", "Uzbekistan", "Turkmenistan", "Azerbaigian"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kz }
                Reponses := array{"Turkmenistan", "Kazakistan", "Uzbekistan", "Afghanistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_uz }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaigian", "Tagikistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tm }
                Reponses := array{"Turkmenistan", "Uzbekistan", "Azerbaigian", "Kirghizistan"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kg }
                Reponses := array{"Mongolia", "Turkmenistan", "Kirghizistan", "Kazakistan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tj }
                Reponses := array{"Afghanistan", "Kirghizistan", "Tagikistan", "Kazakistan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_af }
                Reponses := array{"Kirghizistan", "Mongolia", "Afghanistan", "Turkmenistan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mn }
                Reponses := array{"Mongolia", "Kirghizistan", "Afghanistan", "Turkmenistan"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cn }
                Reponses := array{"Vietnam", "Marocco", "Cina", "Sri Lanka"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_jp }
                Reponses := array{"Malesia", "Singapore", "Sri Lanka", "Giappone"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kr }
                Reponses := array{"Corea del Sud", "Corea del Nord", "Costa Rica", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kp }
                Reponses := array{"Cuba", "Corea del Sud", "Corea del Nord", "Costa Rica"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_in }
                Reponses := array{"India", "Irlanda", "Niger", "Costa d'Avorio"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pk }
                Reponses := array{"Tunisia", "Turchia", "Pakistan", "Algeria"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bd }
                Reponses := array{"Laos", "Corea del Nord", "Corea del Sud", "Bangladesh"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lk }
                Reponses := array{"Sri Lanka", "Singapore", "Laos", "Timor Est"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_np }
                Reponses := array{"Cina", "Bhutan", "Nepal", "Indonesia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bt }
                Reponses := array{"Giappone", "Brunei", "Bhutan", "Corea del Nord"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mv }
                Reponses := array{"Corea del Sud", "Birmania", "Cina", "Maldive"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mm }
                Reponses := array{"Zimbabwe", "Birmania", "Ghana", "Thailandia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_th }
                Reponses := array{"Cambogia", "Costa Rica", "Thailandia", "Cuba"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_la }
                Reponses := array{"Bangladesh", "Thailandia", "Cambogia", "Laos"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kh }
                Reponses := array{"Thailandia", "Cambogia", "Laos", "Sri Lanka"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_vn }
                Reponses := array{"Marocco", "Cina", "Vietnam", "Bhutan"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_my }
                Reponses := array{"Liberia", "Malesia", "Stati Uniti", "Pakistan"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sg }
                Reponses := array{"Singapore", "Polonia", "Monaco", "Indonesia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_id }
                Reponses := array{"Monaco", "Indonesia", "Polonia", "Singapore"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bn }
                Reponses := array{"Singapore", "Brunei", "Vietnam", "Corea del Sud"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ph }
                Reponses := array{"Filippine", "Cechia", "Cile", "Cuba"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tl }
                Reponses := array{"Laos", "Timor Est", "Corea del Nord", "Cina"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_au }
                Reponses := array{"Tuvalu", "Figi", "Australia", "Nuova Zelanda"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_nz }
                Reponses := array{"Tuvalu", "Nuova Zelanda", "Figi", "Australia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pg }
                Reponses := array{"Tonga", "Isole Marshall", "Papua Nuova Guinea", "Figi"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_fj }
                Reponses := array{"Australia", "Nuova Zelanda", "Tuvalu", "Figi"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sb }
                Reponses := array{"Isole Salomone", "Vanuatu", "Zimbabwe", "Mozambico"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_vu }
                Reponses := array{"Mozambico", "Zimbabwe", "Vanuatu", "Isole Salomone"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ws }
                Reponses := array{"Tonga", "Samoa", "Figi", "Papua Nuova Guinea"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_to }
                Reponses := array{"Vanuatu", "Samoa", "Tonga", "Micronesia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tv }
                Reponses := array{"Figi", "Nuova Zelanda", "Australia", "Tuvalu"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ki }
                Reponses := array{"Nauru", "Isole Marshall", "Palau", "Kiribati"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_nr }
                Reponses := array{"Kiribati", "Isole Marshall", "Nauru", "Palau"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pw }
                Reponses := array{"Nauru", "Kiribati", "Isole Marshall", "Palau"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_fm }
                Reponses := array{"Micronesia", "Palau", "Nauru", "Isole Marshall"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mh }
                Reponses := array{"Nauru", "Isole Marshall", "Kiribati", "Micronesia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ma }
                Reponses := array{"Vietnam", "Marocco", "Cina", "Namibia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_dz }
                Reponses := array{"Algeria", "Turchia", "Pakistan", "Tunisia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tn }
                Reponses := array{"Tunisia", "Pakistan", "Algeria", "Turchia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ly }
                Reponses := array{"Libia", "Sao Tome e Principe", "Congo", "Repubblica Centrafricana"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_eg }
                Reponses := array{"Iraq", "Yemen", "Sudan", "Egitto"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sd }
                Reponses := array{"Emirati Arabi Uniti", "Kuwait", "Palestina", "Sudan"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ss }
                Reponses := array{"Mozambico", "Comore", "Sudan del Sud", "Gibuti"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_et }
                Reponses := array{"Lituania", "Ghana", "Bolivia", "Etiopia"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_er }
                Reponses := array{"Burkina Faso", "Eritrea", "Ciad", "Tanzania"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_dj }
                Reponses := array{"Gibuti", "Libia", "Costa d'Avorio", "Mauritania"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_so }
                Reponses := array{"Somalia", "Namibia", "Mozambico", "Seychelles"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ke }
                Reponses := array{"Uganda", "Ruanda", "Kenya", "Tanzania"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ug }
                Reponses := array{"Uganda", "Ruanda", "Tanzania", "Kenya"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tz }
                Reponses := array{"Ruanda", "Uganda", "Tanzania", "Kenya"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_rw }
                Reponses := array{"Tanzania", "Ruanda", "Kenya", "Uganda"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bi }
                Reponses := array{"Burundi", "Repubblica Centrafricana", "Nigeria", "Namibia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cd }
                Reponses := array{"Congo", "Gabon", "RD Congo", "Guinea Equatoriale"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cg }
                Reponses := array{"Guinea Equatoriale", "Congo", "RD Congo", "Gabon"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ga }
                Reponses := array{"Gabon", "Congo", "RD Congo", "Guinea Equatoriale"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gq }
                Reponses := array{"RD Congo", "Guinea Equatoriale", "Gabon", "Congo"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cm }
                Reponses := array{"Burkina Faso", "Camerun", "Benin", "Mali"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cf }
                Reponses := array{"Repubblica Centrafricana", "Gambia", "Libia", "Mali"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_td }
                Reponses := array{"Germania", "Andorra", "Ciad", "Moldavia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ne }
                Reponses := array{"Italia", "India", "Niger", "Irlanda"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ng }
                Reponses := array{"Nigeria", "Ruanda", "Ghana", "Niger"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bj }
                Reponses := array{"Guinea", "Mali", "Senegal", "Benin"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tg }
                Reponses := array{"Togo", "Malawi", "Sudafrica", "Gabon"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gh }
                Reponses := array{"Mali", "Bolivia", "Ghana", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ci }
                Reponses := array{"Costa d'Avorio", "Niger", "Irlanda", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lr }
                Reponses := array{"Stati Uniti", "Liberia", "Malesia", "Guinea Equatoriale"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sl }
                Reponses := array{"Gibuti", "Guinea-Bissau", "Sierra Leone", "Gambia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gn }
                Reponses := array{"Senegal", "Ghana", "Guinea", "Burkina Faso"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gw }
                Reponses := array{"Ruanda", "Guinea-Bissau", "Liberia", "Gibuti"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sn }
                Reponses := array{"Benin", "Burkina Faso", "Guinea", "Senegal"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gm }
                Reponses := array{"Malawi", "Gambia", "Ruanda", "Sao Tome e Principe"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ml }
                Reponses := array{"Senegal", "Benin", "Mali", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bf }
                Reponses := array{"Benin", "Burkina Faso", "Ghana", "Camerun"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mr }
                Reponses := array{"Guinea Equatoriale", "Burkina Faso", "Mauritania", "Etiopia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cv }
                Reponses := array{"Zimbabwe", "Capo Verde", "Niger", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_st }
                Reponses := array{"Nigeria", "Sao Tome e Principe", "Somalia", "Sierra Leone"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ao }
                Reponses := array{"Kenya", "Camerun", "Seychelles", "Angola"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_zm }
                Reponses := array{"Zambia", "Egitto", "Ghana", "Libia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_zw }
                Reponses := array{"Zimbabwe", "Ghana", "Birmania", "Vanuatu"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mw }
                Reponses := array{"Malawi", "Guinea Equatoriale", "Gibuti", "Etiopia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mz }
                Reponses := array{"Zimbabwe", "Vanuatu", "Mozambico", "Isole Salomone"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mg }
                Reponses := array{"Uganda", "Marocco", "Etiopia", "Madagascar"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_km }
                Reponses := array{"Tunisia", "Nigeria", "Mozambico", "Comore"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mu }
                Reponses := array{"Mauritius", "Mali", "Uganda", "Eswatini"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sc }
                Reponses := array{"Seychelles", "Guinea-Bissau", "Etiopia", "Angola"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_za }
                Reponses := array{"Costa d'Avorio", "Sudafrica", "Gibuti", "Madagascar"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_na }
                Reponses := array{"Botswana", "Eswatini", "Namibia", "Lesotho"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bw }
                Reponses := array{"Namibia", "Lesotho", "Botswana", "Eswatini"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ls }
                Reponses := array{"Namibia", "Eswatini", "Botswana", "Lesotho"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sz }
                Reponses := array{"Lesotho", "Namibia", "Botswana", "Eswatini"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_us }
                Reponses := array{"Canada", "Malesia", "Liberia", "Stati Uniti"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ca }
                Reponses := array{"Messico", "Stati Uniti", "Canada", "Tunisia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_mx }
                Reponses := array{"Messico", "Ungheria", "Bulgaria", "Italia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gt }
                Reponses := array{"Nicaragua", "Honduras", "Guatemala", "Argentina"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bz }
                Reponses := array{"Bahamas", "Nicaragua", "Belize", "Panama"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_hn }
                Reponses := array{"Argentina", "Honduras", "Uruguay", "El Salvador"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sv }
                Reponses := array{"Uruguay", "Nicaragua", "Guatemala", "El Salvador"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ni }
                Reponses := array{"Nicaragua", "Argentina", "Guatemala", "El Salvador"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cr }
                Reponses := array{"Costa Rica", "Corea del Sud", "Cuba", "Thailandia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pa }
                Reponses := array{"Giamaica", "Panama", "Costa Rica", "Haiti"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bs }
                Reponses := array{"Barbados", "Bahamas", "Santa Lucia", "Saint Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cu }
                Reponses := array{"Filippine", "Cuba", "Corea del Sud", "Cile"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_jm }
                Reponses := array{"Repubblica Dominicana", "Saint Kitts e Nevis", "Giamaica", "Santa Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ht }
                Reponses := array{"Bahamas", "Costa Rica", "Nicaragua", "Haiti"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_do }
                Reponses := array{"Giamaica", "Repubblica Dominicana", "Barbados", "Bahamas"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_kn }
                Reponses := array{"Dominica", "Grenada", "Saint Kitts e Nevis", "Saint Vincent"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ag }
                Reponses := array{"Antigua e Barbuda", "Saint Kitts e Nevis", "Saint Vincent", "Grenada"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_dm }
                Reponses := array{"Grenada", "Santa Lucia", "Dominica", "Antigua e Barbuda"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_lc }
                Reponses := array{"Antigua e Barbuda", "Santa Lucia", "Saint Kitts e Nevis", "Saint Vincent"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_vc }
                Reponses := array{"Grenada", "Dominica", "Saint Vincent", "Santa Lucia"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bb }
                Reponses := array{"Trinidad e Tobago", "Barbados", "Costa Rica", "Panama"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gd }
                Reponses := array{"Grenada", "Saint Kitts e Nevis", "Santa Lucia", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_tt }
                Reponses := array{"Trinidad e Tobago", "Antigua e Barbuda", "Costa Rica", "Dominica"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_co }
                Reponses := array{"Venezuela", "Colombia", "Ecuador", "Armenia"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ve }
                Reponses := array{"Armenia", "Venezuela", "Colombia", "Ecuador"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_gy }
                Reponses := array{"Paraguay", "Guyana", "Suriname", "Peru"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_sr }
                Reponses := array{"Suriname", "Guyana", "Paraguay", "Bolivia"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ec }
                Reponses := array{"Ecuador", "Venezuela", "Colombia", "Uruguay"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_pe }
                Reponses := array{"Brasile", "Colombia", "Bolivia", "Peru"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_br }
                Reponses := array{"Guyana", "Brasile", "Cile", "Uruguay"}
                BonneReponse := 1
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_bo }
                Reponses := array{"Lituania", "Etiopia", "Bolivia", "Ghana"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_py }
                Reponses := array{"Paraguay", "Suriname", "Guyana", "Ecuador"}
                BonneReponse := 0
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_uy }
                Reponses := array{"Argentina", "Grecia", "Uruguay", "Nicaragua"}
                BonneReponse := 2
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_cl }
                Reponses := array{"Cuba", "Cechia", "Filippine", "Cile"}
                BonneReponse := 3
            question:
                Enonce := "Quale paese e questo? (bandiera pixelata)"
                Image := option{ flags_pixel.fpx_ar }
                Reponses := array{"Argentina", "Guatemala", "Nicaragua", "Uruguay"}
                BonneReponse := 0

    # Palier de chaque question capitale (aligne sur MakeCapitalQuestions) — GENERE.
    CapDiff : []int = array{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 2, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 2, 1, 2, 2, 2, 0, 1, 1, 2, 0, 1, 0, 1, 1, 1, 2, 1, 1, 2, 1, 1, 2, 1, 1, 1, 2, 2, 1, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 0, 0, 0, 1, 0, 1, 1, 2, 1, 2, 2, 2, 0, 2, 1, 0, 1, 0, 1, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 1, 0, 1, 2, 1, 2, 1, 1, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 1, 2, 1, 1, 2, 2, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2, 2, 2, 2, 2, 0, 1, 0, 2, 2, 2, 2, 2, 1, 1, 2, 0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 1, 0, 1, 2, 2, 1, 1, 0}

    # ===== Banque CAPITALES FR (195) — GENEREE par build_capitals.py, NE PAS EDITER =====
    MakeCapitalQuestions() : []question =
        array:
            question:
                Enonce := "Quelle est la capitale : France ?"
                Reponses := array{"Vienne", "Cite du Vatican", "Berlin", "Paris"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Allemagne ?"
                Reponses := array{"Bruxelles", "Berlin", "La Valette", "Vaduz"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Italie ?"
                Reponses := array{"La Valette", "Copenhague", "Rome", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Espagne ?"
                Reponses := array{"Berlin", "La Valette", "Reykjavik", "Madrid"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Portugal ?"
                Reponses := array{"Monaco", "Lisbonne", "Berne", "Rome"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Royaume-Uni ?"
                Reponses := array{"Londres", "Andorre-la-Vieille", "Berne", "Cite du Vatican"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Irlande ?"
                Reponses := array{"Vaduz", "Dublin", "Berlin", "Oslo"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Belgique ?"
                Reponses := array{"Londres", "Andorre-la-Vieille", "Bruxelles", "Amsterdam"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Pays-Bas ?"
                Reponses := array{"Amsterdam", "Saint-Marin", "Paris", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Luxembourg ?"
                Reponses := array{"Oslo", "Vienne", "Luxembourg", "Madrid"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Suisse ?"
                Reponses := array{"Berne", "Vaduz", "Vienne", "La Valette"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Autriche ?"
                Reponses := array{"Lisbonne", "Vienne", "Saint-Marin", "Andorre-la-Vieille"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Monaco ?"
                Reponses := array{"Lisbonne", "Luxembourg", "Monaco", "Berne"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Andorre ?"
                Reponses := array{"Amsterdam", "Saint-Marin", "Andorre-la-Vieille", "Londres"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Liechtenstein ?"
                Reponses := array{"Vaduz", "Rome", "Berlin", "Madrid"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Saint-Marin ?"
                Reponses := array{"Saint-Marin", "Amsterdam", "Paris", "Vaduz"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Vatican ?"
                Reponses := array{"Lisbonne", "Londres", "Cite du Vatican", "Copenhague"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Malte ?"
                Reponses := array{"Helsinki", "La Valette", "Stockholm", "Monaco"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Islande ?"
                Reponses := array{"Copenhague", "Bruxelles", "Dublin", "Reykjavik"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Norvege ?"
                Reponses := array{"Copenhague", "Helsinki", "Oslo", "Berne"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Suede ?"
                Reponses := array{"Luxembourg", "Londres", "Oslo", "Stockholm"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Danemark ?"
                Reponses := array{"Saint-Marin", "Copenhague", "Cite du Vatican", "Reykjavik"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Finlande ?"
                Reponses := array{"Rome", "Berlin", "Helsinki", "Londres"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Pologne ?"
                Reponses := array{"Varsovie", "Vilnius", "Minsk", "Moscou"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Tchequie ?"
                Reponses := array{"Zagreb", "Minsk", "Prague", "Bucarest"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Slovaquie ?"
                Reponses := array{"Bratislava", "Zagreb", "Sarajevo", "Budapest"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Hongrie ?"
                Reponses := array{"Tirana", "Budapest", "Riga", "Vilnius"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Slovenie ?"
                Reponses := array{"Athenes", "Belgrade", "Ljubljana", "Moscou"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Croatie ?"
                Reponses := array{"Skopje", "Prague", "Zagreb", "Athenes"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Bosnie-Herzegovine ?"
                Reponses := array{"Sarajevo", "Ljubljana", "Skopje", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Serbie ?"
                Reponses := array{"Tirana", "Belgrade", "Bucarest", "Kiev"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Montenegro ?"
                Reponses := array{"Sarajevo", "Riga", "Podgorica", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Macedoine du Nord ?"
                Reponses := array{"Belgrade", "Minsk", "Skopje", "Kiev"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Albanie ?"
                Reponses := array{"Bratislava", "Riga", "Tirana", "Prague"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Grece ?"
                Reponses := array{"Bratislava", "Athenes", "Tirana", "Ljubljana"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Bulgarie ?"
                Reponses := array{"Bucarest", "Sofia", "Vilnius", "Moscou"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Roumanie ?"
                Reponses := array{"Varsovie", "Ljubljana", "Bucarest", "Belgrade"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Moldavie ?"
                Reponses := array{"Chisinau", "Sofia", "Bucarest", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Ukraine ?"
                Reponses := array{"Podgorica", "Tallinn", "Kiev", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Bielorussie ?"
                Reponses := array{"Minsk", "Tallinn", "Vilnius", "Bucarest"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Russie ?"
                Reponses := array{"Moscou", "Sarajevo", "Bucarest", "Podgorica"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Estonie ?"
                Reponses := array{"Nicosie", "Tallinn", "Varsovie", "Prague"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Lettonie ?"
                Reponses := array{"Vilnius", "Chisinau", "Athenes", "Riga"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Lituanie ?"
                Reponses := array{"Budapest", "Tirana", "Vilnius", "Podgorica"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Chypre ?"
                Reponses := array{"Vilnius", "Sarajevo", "Nicosie", "Moscou"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Turquie ?"
                Reponses := array{"Koweit City", "Erevan", "Ankara", "Ramallah"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Israel ?"
                Reponses := array{"Bakou", "Manama", "Jerusalem", "Koweit City"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Palestine ?"
                Reponses := array{"Tbilissi", "Mascate", "Ramallah", "Ankara"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Liban ?"
                Reponses := array{"Mascate", "Ankara", "Riyad", "Beyrouth"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Syrie ?"
                Reponses := array{"Abou Dabi", "Damas", "Tbilissi", "Bakou"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Jordanie ?"
                Reponses := array{"Beyrouth", "Teheran", "Ramallah", "Amman"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Irak ?"
                Reponses := array{"Bagdad", "Damas", "Manama", "Mascate"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Iran ?"
                Reponses := array{"Sanaa", "Teheran", "Koweit City", "Bakou"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Arabie saoudite ?"
                Reponses := array{"Doha", "Amman", "Riyad", "Damas"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Yemen ?"
                Reponses := array{"Amman", "Damas", "Bagdad", "Sanaa"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Oman ?"
                Reponses := array{"Damas", "Mascate", "Ankara", "Jerusalem"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Emirats arabes unis ?"
                Reponses := array{"Tbilissi", "Ankara", "Jerusalem", "Abou Dabi"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Qatar ?"
                Reponses := array{"Beyrouth", "Doha", "Koweit City", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Bahrein ?"
                Reponses := array{"Manama", "Erevan", "Ankara", "Beyrouth"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Koweit ?"
                Reponses := array{"Sanaa", "Doha", "Amman", "Koweit City"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Georgie ?"
                Reponses := array{"Jerusalem", "Tbilissi", "Ramallah", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Armenie ?"
                Reponses := array{"Erevan", "Sanaa", "Riyad", "Ankara"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Azerbaidjan ?"
                Reponses := array{"Doha", "Abou Dabi", "Jerusalem", "Bakou"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Kazakhstan ?"
                Reponses := array{"Douchanbe", "Astana", "Kaboul", "Bichkek"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Ouzbekistan ?"
                Reponses := array{"Kaboul", "Oulan-Bator", "Bichkek", "Tachkent"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Turkmenistan ?"
                Reponses := array{"Douchanbe", "Kaboul", "Achgabat", "Oulan-Bator"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Kirghizistan ?"
                Reponses := array{"Astana", "Bichkek", "Tachkent", "Oulan-Bator"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Tadjikistan ?"
                Reponses := array{"Douchanbe", "Bichkek", "Tachkent", "Achgabat"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Afghanistan ?"
                Reponses := array{"Tachkent", "Douchanbe", "Kaboul", "Oulan-Bator"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Mongolie ?"
                Reponses := array{"Oulan-Bator", "Tachkent", "Bichkek", "Achgabat"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Chine ?"
                Reponses := array{"Thimphou", "Pekin", "Dili", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Japon ?"
                Reponses := array{"Male", "Dili", "Tokyo", "Hanoi"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Coree du Sud ?"
                Reponses := array{"Katmandou", "Seoul", "Jakarta", "Kuala Lumpur"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Coree du Nord ?"
                Reponses := array{"Phnom Penh", "Seoul", "Dacca", "Pyongyang"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Inde ?"
                Reponses := array{"Islamabad", "Thimphou", "New Delhi", "Dili"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Pakistan ?"
                Reponses := array{"Bangkok", "Islamabad", "Kuala Lumpur", "Jakarta"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Bangladesh ?"
                Reponses := array{"Manille", "Hanoi", "Dacca", "Seoul"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Sri Lanka ?"
                Reponses := array{"New Delhi", "Colombo", "Kuala Lumpur", "Tokyo"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Nepal ?"
                Reponses := array{"Tokyo", "Hanoi", "Katmandou", "Manille"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Bhoutan ?"
                Reponses := array{"Hanoi", "Katmandou", "Singapour", "Thimphou"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Maldives ?"
                Reponses := array{"Jakarta", "Male", "Dili", "Manille"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Birmanie ?"
                Reponses := array{"Tokyo", "Naypyidaw", "Bangkok", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Thailande ?"
                Reponses := array{"Dili", "Vientiane", "Islamabad", "Bangkok"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Laos ?"
                Reponses := array{"Vientiane", "Singapour", "Thimphou", "Tokyo"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Cambodge ?"
                Reponses := array{"Bangkok", "Dili", "Bandar Seri Begawan", "Phnom Penh"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Vietnam ?"
                Reponses := array{"Bandar Seri Begawan", "Manille", "Pyongyang", "Hanoi"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Malaisie ?"
                Reponses := array{"Hanoi", "Kuala Lumpur", "Bandar Seri Begawan", "Naypyidaw"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Singapour ?"
                Reponses := array{"Singapour", "Hanoi", "Dacca", "Dili"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Indonesie ?"
                Reponses := array{"Singapour", "Thimphou", "Tokyo", "Jakarta"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Brunei ?"
                Reponses := array{"Kuala Lumpur", "Dacca", "Katmandou", "Bandar Seri Begawan"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Philippines ?"
                Reponses := array{"Manille", "Bangkok", "Hanoi", "Seoul"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Timor oriental ?"
                Reponses := array{"Jakarta", "Dili", "Vientiane", "Islamabad"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Australie ?"
                Reponses := array{"Canberra", "Suva", "Majuro", "Tarawa"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Nouvelle-Zelande ?"
                Reponses := array{"Majuro", "Funafuti", "Palikir", "Wellington"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Papouasie-Nouvelle-Guinee ?"
                Reponses := array{"Palikir", "Port Moresby", "Tarawa", "Honiara"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Fidji ?"
                Reponses := array{"Palikir", "Honiara", "Port Moresby", "Suva"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Iles Salomon ?"
                Reponses := array{"Ngerulmud", "Yaren", "Majuro", "Honiara"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Vanuatu ?"
                Reponses := array{"Port-Vila", "Port Moresby", "Apia", "Yaren"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Samoa ?"
                Reponses := array{"Port Moresby", "Canberra", "Apia", "Palikir"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Tonga ?"
                Reponses := array{"Port-Vila", "Nuku'alofa", "Port Moresby", "Wellington"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Tuvalu ?"
                Reponses := array{"Suva", "Wellington", "Majuro", "Funafuti"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Kiribati ?"
                Reponses := array{"Tarawa", "Yaren", "Funafuti", "Canberra"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Nauru ?"
                Reponses := array{"Wellington", "Palikir", "Yaren", "Apia"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Palaos ?"
                Reponses := array{"Palikir", "Tarawa", "Ngerulmud", "Majuro"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Micronesie ?"
                Reponses := array{"Apia", "Nuku'alofa", "Palikir", "Honiara"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Iles Marshall ?"
                Reponses := array{"Canberra", "Tarawa", "Palikir", "Majuro"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Maroc ?"
                Reponses := array{"Pretoria", "Kigali", "Dakar", "Rabat"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Algerie ?"
                Reponses := array{"Port-Louis", "Alger", "Victoria", "Dakar"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Tunisie ?"
                Reponses := array{"Nairobi", "N'Djamena", "Asmara", "Tunis"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Libye ?"
                Reponses := array{"Libreville", "Tripoli", "Kigali", "Bissau"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Egypte ?"
                Reponses := array{"Porto-Novo", "Le Caire", "Niamey", "Lome"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Soudan ?"
                Reponses := array{"Khartoum", "Pretoria", "Freetown", "Tripoli"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Soudan du Sud ?"
                Reponses := array{"Tripoli", "Bamako", "Djouba", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Ethiopie ?"
                Reponses := array{"Moroni", "Maseru", "Addis-Abeba", "Khartoum"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Erythree ?"
                Reponses := array{"Djibouti", "Lilongwe", "Asmara", "Le Caire"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Djibouti ?"
                Reponses := array{"Lilongwe", "Addis-Abeba", "Djibouti", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Somalie ?"
                Reponses := array{"Conakry", "Mogadiscio", "Djibouti", "Luanda"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Kenya ?"
                Reponses := array{"Nairobi", "Gitega", "Lilongwe", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Ouganda ?"
                Reponses := array{"Accra", "Yamoussoukro", "Monrovia", "Kampala"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Tanzanie ?"
                Reponses := array{"Malabo", "Dodoma", "Bamako", "Porto-Novo"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Rwanda ?"
                Reponses := array{"Kigali", "Mbabane", "Conakry", "Nouakchott"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Burundi ?"
                Reponses := array{"Djouba", "Kinshasa", "Gitega", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : RD Congo ?"
                Reponses := array{"Kinshasa", "Yamoussoukro", "Malabo", "Gitega"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Congo ?"
                Reponses := array{"Libreville", "Porto-Novo", "Brazzaville", "Windhoek"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Gabon ?"
                Reponses := array{"Lome", "Libreville", "Port-Louis", "Pretoria"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Guinee equatoriale ?"
                Reponses := array{"Malabo", "Tripoli", "Bissau", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Cameroun ?"
                Reponses := array{"Yaounde", "Monrovia", "Brazzaville", "Port-Louis"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Centrafrique ?"
                Reponses := array{"Yamoussoukro", "Maseru", "Bangui", "Porto-Novo"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Tchad ?"
                Reponses := array{"N'Djamena", "Libreville", "Maseru", "Kigali"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Niger ?"
                Reponses := array{"Brazzaville", "Djibouti", "Niamey", "Praia"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Nigeria ?"
                Reponses := array{"Lome", "Antananarivo", "Abuja", "Bissau"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Benin ?"
                Reponses := array{"Port-Louis", "Kampala", "Tripoli", "Porto-Novo"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Togo ?"
                Reponses := array{"Nairobi", "Lome", "Luanda", "Tunis"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Ghana ?"
                Reponses := array{"Accra", "Kigali", "Tripoli", "Porto-Novo"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Cote d'Ivoire ?"
                Reponses := array{"Porto-Novo", "Antananarivo", "Malabo", "Yamoussoukro"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Liberia ?"
                Reponses := array{"Mogadiscio", "Maseru", "N'Djamena", "Monrovia"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Sierra Leone ?"
                Reponses := array{"Bissau", "Monrovia", "Banjul", "Freetown"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Guinee ?"
                Reponses := array{"Yaounde", "Nouakchott", "Conakry", "Djibouti"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Guinee-Bissau ?"
                Reponses := array{"Yaounde", "Moroni", "Djibouti", "Bissau"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Senegal ?"
                Reponses := array{"Dakar", "Lome", "Bangui", "Monrovia"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Gambie ?"
                Reponses := array{"Victoria", "Lome", "Banjul", "Freetown"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Mali ?"
                Reponses := array{"Yamoussoukro", "Mbabane", "Le Caire", "Bamako"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Burkina Faso ?"
                Reponses := array{"Libreville", "Niamey", "Ouagadougou", "Tunis"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Mauritanie ?"
                Reponses := array{"Rabat", "Nouakchott", "Addis-Abeba", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Cap-Vert ?"
                Reponses := array{"Praia", "Le Caire", "Abuja", "Antananarivo"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Sao Tome-et-Principe ?"
                Reponses := array{"Moroni", "Sao Tome", "Maseru", "Lusaka"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Angola ?"
                Reponses := array{"Asmara", "Harare", "Praia", "Luanda"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Zambie ?"
                Reponses := array{"Djouba", "Malabo", "Lusaka", "Mbabane"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Zimbabwe ?"
                Reponses := array{"Port-Louis", "Alger", "Bangui", "Harare"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Malawi ?"
                Reponses := array{"Lilongwe", "Kigali", "Gitega", "Khartoum"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Mozambique ?"
                Reponses := array{"Maputo", "Alger", "Lome", "Le Caire"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Madagascar ?"
                Reponses := array{"Kinshasa", "Mogadiscio", "Antananarivo", "Gitega"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Comores ?"
                Reponses := array{"Le Caire", "Moroni", "Bamako", "N'Djamena"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Maurice ?"
                Reponses := array{"Kampala", "Mbabane", "Port-Louis", "Khartoum"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Seychelles ?"
                Reponses := array{"Bangui", "Victoria", "Bamako", "Harare"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Afrique du Sud ?"
                Reponses := array{"Freetown", "Mbabane", "Pretoria", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Namibie ?"
                Reponses := array{"Mogadiscio", "Dakar", "Addis-Abeba", "Windhoek"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Botswana ?"
                Reponses := array{"Yamoussoukro", "Gaborone", "Windhoek", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Lesotho ?"
                Reponses := array{"Nouakchott", "Le Caire", "Maseru", "Victoria"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Eswatini ?"
                Reponses := array{"Mbabane", "Nouakchott", "Malabo", "Nairobi"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Etats-Unis ?"
                Reponses := array{"Ottawa", "Washington", "Mexico", "Tbilissi"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Canada ?"
                Reponses := array{"Mexico", "Ottawa", "Washington", "Praia"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Mexique ?"
                Reponses := array{"Washington", "Mexico", "Ottawa", "Belgrade"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Guatemala ?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala City", "Port-au-Prince"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Belize ?"
                Reponses := array{"Bridgetown", "Managua", "Belmopan", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Honduras ?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala City", "San Jose"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Salvador ?"
                Reponses := array{"Castries", "San Salvador", "Belmopan", "Kingston"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Nicaragua ?"
                Reponses := array{"Kingstown", "Panama City", "Managua", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Costa Rica ?"
                Reponses := array{"San Jose", "Bridgetown", "San Salvador", "Saint-Georges"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Panama ?"
                Reponses := array{"Tegucigalpa", "Kingston", "Panama City", "Belmopan"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Bahamas ?"
                Reponses := array{"Belmopan", "Managua", "Bridgetown", "Nassau"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Cuba ?"
                Reponses := array{"Panama City", "Port-au-Prince", "La Havane", "Tegucigalpa"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Jamaique ?"
                Reponses := array{"Belmopan", "Saint-Domingue", "Kingston", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Haiti ?"
                Reponses := array{"Nassau", "Port-au-Prince", "Tegucigalpa", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Republique dominicaine ?"
                Reponses := array{"Nassau", "Tegucigalpa", "Bridgetown", "Saint-Domingue"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Saint-Kitts-et-Nevis ?"
                Reponses := array{"Nassau", "Basseterre", "Tegucigalpa", "Port-au-Prince"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Antigua-et-Barbuda ?"
                Reponses := array{"Saint-Domingue", "Saint John's", "Belmopan", "Port-d'Espagne"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Dominique ?"
                Reponses := array{"Saint-Georges", "Belmopan", "Saint-Domingue", "Roseau"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Sainte-Lucie ?"
                Reponses := array{"Nassau", "Roseau", "Port-d'Espagne", "Castries"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Saint-Vincent ?"
                Reponses := array{"Castries", "Kingstown", "Port-au-Prince", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Barbade ?"
                Reponses := array{"Port-d'Espagne", "Bridgetown", "Roseau", "Nassau"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Grenade ?"
                Reponses := array{"Kingstown", "Saint-Domingue", "Bridgetown", "Saint-Georges"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Trinite-et-Tobago ?"
                Reponses := array{"Saint John's", "Guatemala City", "Port-d'Espagne", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Colombie ?"
                Reponses := array{"Bogota", "Lima", "Sucre", "Paramaribo"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Venezuela ?"
                Reponses := array{"Brasilia", "Bogota", "Paramaribo", "Caracas"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Guyana ?"
                Reponses := array{"Georgetown", "Santiago", "Montevideo", "Sucre"}
                BonneReponse := 0
            question:
                Enonce := "Quelle est la capitale : Suriname ?"
                Reponses := array{"Buenos Aires", "Caracas", "Brasilia", "Paramaribo"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Equateur ?"
                Reponses := array{"Georgetown", "Quito", "Brasilia", "Lima"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Perou ?"
                Reponses := array{"Montevideo", "Buenos Aires", "Bogota", "Lima"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Bresil ?"
                Reponses := array{"Asuncion", "Paramaribo", "Brasilia", "Bogota"}
                BonneReponse := 2
            question:
                Enonce := "Quelle est la capitale : Bolivie ?"
                Reponses := array{"Quito", "Sucre", "Georgetown", "Buenos Aires"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Paraguay ?"
                Reponses := array{"Quito", "Paramaribo", "Bogota", "Asuncion"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Uruguay ?"
                Reponses := array{"Asuncion", "Sucre", "Caracas", "Montevideo"}
                BonneReponse := 3
            question:
                Enonce := "Quelle est la capitale : Chili ?"
                Reponses := array{"Montevideo", "Santiago", "Asuncion", "Sucre"}
                BonneReponse := 1
            question:
                Enonce := "Quelle est la capitale : Argentine ?"
                Reponses := array{"Lima", "Buenos Aires", "Sucre", "Quito"}
                BonneReponse := 1

    # ===== Banque CAPITALES EN (195) — memes tirages/indices que la banque FR =====
    MakeCapitalQuestionsEN() : []question =
        array:
            question:
                Enonce := "What is the capital of France?"
                Reponses := array{"Vienna", "Vatican City", "Berlin", "Paris"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Germany?"
                Reponses := array{"Brussels", "Berlin", "Valletta", "Vaduz"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Italy?"
                Reponses := array{"Valletta", "Copenhagen", "Rome", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Spain?"
                Reponses := array{"Berlin", "Valletta", "Reykjavik", "Madrid"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Portugal?"
                Reponses := array{"Monaco", "Lisbon", "Bern", "Rome"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of the United Kingdom?"
                Reponses := array{"London", "Andorra la Vella", "Bern", "Vatican City"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Ireland?"
                Reponses := array{"Vaduz", "Dublin", "Berlin", "Oslo"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Belgium?"
                Reponses := array{"London", "Andorra la Vella", "Brussels", "Amsterdam"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the Netherlands?"
                Reponses := array{"Amsterdam", "San Marino", "Paris", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Luxembourg?"
                Reponses := array{"Oslo", "Vienna", "Luxembourg", "Madrid"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Switzerland?"
                Reponses := array{"Bern", "Vaduz", "Vienna", "Valletta"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Austria?"
                Reponses := array{"Lisbon", "Vienna", "San Marino", "Andorra la Vella"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Monaco?"
                Reponses := array{"Lisbon", "Luxembourg", "Monaco", "Bern"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Andorra?"
                Reponses := array{"Amsterdam", "San Marino", "Andorra la Vella", "London"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Liechtenstein?"
                Reponses := array{"Vaduz", "Rome", "Berlin", "Madrid"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of San Marino?"
                Reponses := array{"San Marino", "Amsterdam", "Paris", "Vaduz"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Vatican City?"
                Reponses := array{"Lisbon", "London", "Vatican City", "Copenhagen"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Malta?"
                Reponses := array{"Helsinki", "Valletta", "Stockholm", "Monaco"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Iceland?"
                Reponses := array{"Copenhagen", "Brussels", "Dublin", "Reykjavik"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Norway?"
                Reponses := array{"Copenhagen", "Helsinki", "Oslo", "Bern"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Sweden?"
                Reponses := array{"Luxembourg", "London", "Oslo", "Stockholm"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Denmark?"
                Reponses := array{"San Marino", "Copenhagen", "Vatican City", "Reykjavik"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Finland?"
                Reponses := array{"Rome", "Berlin", "Helsinki", "London"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Poland?"
                Reponses := array{"Warsaw", "Vilnius", "Minsk", "Moscow"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Czechia?"
                Reponses := array{"Zagreb", "Minsk", "Prague", "Bucharest"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Slovakia?"
                Reponses := array{"Bratislava", "Zagreb", "Sarajevo", "Budapest"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Hungary?"
                Reponses := array{"Tirana", "Budapest", "Riga", "Vilnius"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Slovenia?"
                Reponses := array{"Athens", "Belgrade", "Ljubljana", "Moscow"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Croatia?"
                Reponses := array{"Skopje", "Prague", "Zagreb", "Athens"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Bosnia and Herzegovina?"
                Reponses := array{"Sarajevo", "Ljubljana", "Skopje", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Serbia?"
                Reponses := array{"Tirana", "Belgrade", "Bucharest", "Kyiv"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Montenegro?"
                Reponses := array{"Sarajevo", "Riga", "Podgorica", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of North Macedonia?"
                Reponses := array{"Belgrade", "Minsk", "Skopje", "Kyiv"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Albania?"
                Reponses := array{"Bratislava", "Riga", "Tirana", "Prague"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Greece?"
                Reponses := array{"Bratislava", "Athens", "Tirana", "Ljubljana"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Bulgaria?"
                Reponses := array{"Bucharest", "Sofia", "Vilnius", "Moscow"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Romania?"
                Reponses := array{"Warsaw", "Ljubljana", "Bucharest", "Belgrade"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Moldova?"
                Reponses := array{"Chisinau", "Sofia", "Bucharest", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Ukraine?"
                Reponses := array{"Podgorica", "Tallinn", "Kyiv", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Belarus?"
                Reponses := array{"Minsk", "Tallinn", "Vilnius", "Bucharest"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Russia?"
                Reponses := array{"Moscow", "Sarajevo", "Bucharest", "Podgorica"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Estonia?"
                Reponses := array{"Nicosia", "Tallinn", "Warsaw", "Prague"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Latvia?"
                Reponses := array{"Vilnius", "Chisinau", "Athens", "Riga"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Lithuania?"
                Reponses := array{"Budapest", "Tirana", "Vilnius", "Podgorica"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Cyprus?"
                Reponses := array{"Vilnius", "Sarajevo", "Nicosia", "Moscow"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Turkey?"
                Reponses := array{"Kuwait City", "Yerevan", "Ankara", "Ramallah"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Israel?"
                Reponses := array{"Baku", "Manama", "Jerusalem", "Kuwait City"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Palestine?"
                Reponses := array{"Tbilisi", "Muscat", "Ramallah", "Ankara"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Lebanon?"
                Reponses := array{"Muscat", "Ankara", "Riyadh", "Beirut"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Syria?"
                Reponses := array{"Abu Dhabi", "Damascus", "Tbilisi", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Jordan?"
                Reponses := array{"Beirut", "Tehran", "Ramallah", "Amman"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Iraq?"
                Reponses := array{"Baghdad", "Damascus", "Manama", "Muscat"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Iran?"
                Reponses := array{"Sanaa", "Tehran", "Kuwait City", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Saudi Arabia?"
                Reponses := array{"Doha", "Amman", "Riyadh", "Damascus"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Yemen?"
                Reponses := array{"Amman", "Damascus", "Baghdad", "Sanaa"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Oman?"
                Reponses := array{"Damascus", "Muscat", "Ankara", "Jerusalem"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of the United Arab Emirates?"
                Reponses := array{"Tbilisi", "Ankara", "Jerusalem", "Abu Dhabi"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Qatar?"
                Reponses := array{"Beirut", "Doha", "Kuwait City", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Bahrain?"
                Reponses := array{"Manama", "Yerevan", "Ankara", "Beirut"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Kuwait?"
                Reponses := array{"Sanaa", "Doha", "Amman", "Kuwait City"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Georgia?"
                Reponses := array{"Jerusalem", "Tbilisi", "Ramallah", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Armenia?"
                Reponses := array{"Yerevan", "Sanaa", "Riyadh", "Ankara"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Azerbaijan?"
                Reponses := array{"Doha", "Abu Dhabi", "Jerusalem", "Baku"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Kazakhstan?"
                Reponses := array{"Dushanbe", "Astana", "Kabul", "Bishkek"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Uzbekistan?"
                Reponses := array{"Kabul", "Ulaanbaatar", "Bishkek", "Tashkent"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Turkmenistan?"
                Reponses := array{"Dushanbe", "Kabul", "Ashgabat", "Ulaanbaatar"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Kyrgyzstan?"
                Reponses := array{"Astana", "Bishkek", "Tashkent", "Ulaanbaatar"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Tajikistan?"
                Reponses := array{"Dushanbe", "Bishkek", "Tashkent", "Ashgabat"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Afghanistan?"
                Reponses := array{"Tashkent", "Dushanbe", "Kabul", "Ulaanbaatar"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Mongolia?"
                Reponses := array{"Ulaanbaatar", "Tashkent", "Bishkek", "Ashgabat"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of China?"
                Reponses := array{"Thimphu", "Beijing", "Dili", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Japan?"
                Reponses := array{"Male", "Dili", "Tokyo", "Hanoi"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of South Korea?"
                Reponses := array{"Kathmandu", "Seoul", "Jakarta", "Kuala Lumpur"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of North Korea?"
                Reponses := array{"Phnom Penh", "Seoul", "Dhaka", "Pyongyang"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of India?"
                Reponses := array{"Islamabad", "Thimphu", "New Delhi", "Dili"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Pakistan?"
                Reponses := array{"Bangkok", "Islamabad", "Kuala Lumpur", "Jakarta"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Bangladesh?"
                Reponses := array{"Manila", "Hanoi", "Dhaka", "Seoul"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Sri Lanka?"
                Reponses := array{"New Delhi", "Colombo", "Kuala Lumpur", "Tokyo"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Nepal?"
                Reponses := array{"Tokyo", "Hanoi", "Kathmandu", "Manila"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Bhutan?"
                Reponses := array{"Hanoi", "Kathmandu", "Singapore", "Thimphu"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of the Maldives?"
                Reponses := array{"Jakarta", "Male", "Dili", "Manila"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Myanmar?"
                Reponses := array{"Tokyo", "Naypyidaw", "Bangkok", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Thailand?"
                Reponses := array{"Dili", "Vientiane", "Islamabad", "Bangkok"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Laos?"
                Reponses := array{"Vientiane", "Singapore", "Thimphu", "Tokyo"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Cambodia?"
                Reponses := array{"Bangkok", "Dili", "Bandar Seri Begawan", "Phnom Penh"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Vietnam?"
                Reponses := array{"Bandar Seri Begawan", "Manila", "Pyongyang", "Hanoi"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Malaysia?"
                Reponses := array{"Hanoi", "Kuala Lumpur", "Bandar Seri Begawan", "Naypyidaw"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Singapore?"
                Reponses := array{"Singapore", "Hanoi", "Dhaka", "Dili"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Indonesia?"
                Reponses := array{"Singapore", "Thimphu", "Tokyo", "Jakarta"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Brunei?"
                Reponses := array{"Kuala Lumpur", "Dhaka", "Kathmandu", "Bandar Seri Begawan"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of the Philippines?"
                Reponses := array{"Manila", "Bangkok", "Hanoi", "Seoul"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of East Timor?"
                Reponses := array{"Jakarta", "Dili", "Vientiane", "Islamabad"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Australia?"
                Reponses := array{"Canberra", "Suva", "Majuro", "Tarawa"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of New Zealand?"
                Reponses := array{"Majuro", "Funafuti", "Palikir", "Wellington"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Papua New Guinea?"
                Reponses := array{"Palikir", "Port Moresby", "Tarawa", "Honiara"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Fiji?"
                Reponses := array{"Palikir", "Honiara", "Port Moresby", "Suva"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of the Solomon Islands?"
                Reponses := array{"Ngerulmud", "Yaren", "Majuro", "Honiara"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Vanuatu?"
                Reponses := array{"Port Vila", "Port Moresby", "Apia", "Yaren"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Samoa?"
                Reponses := array{"Port Moresby", "Canberra", "Apia", "Palikir"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Tonga?"
                Reponses := array{"Port Vila", "Nuku'alofa", "Port Moresby", "Wellington"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Tuvalu?"
                Reponses := array{"Suva", "Wellington", "Majuro", "Funafuti"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Kiribati?"
                Reponses := array{"Tarawa", "Yaren", "Funafuti", "Canberra"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Nauru?"
                Reponses := array{"Wellington", "Palikir", "Yaren", "Apia"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Palau?"
                Reponses := array{"Palikir", "Tarawa", "Ngerulmud", "Majuro"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Micronesia?"
                Reponses := array{"Apia", "Nuku'alofa", "Palikir", "Honiara"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the Marshall Islands?"
                Reponses := array{"Canberra", "Tarawa", "Palikir", "Majuro"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Morocco?"
                Reponses := array{"Pretoria", "Kigali", "Dakar", "Rabat"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Algeria?"
                Reponses := array{"Port Louis", "Algiers", "Victoria", "Dakar"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Tunisia?"
                Reponses := array{"Nairobi", "N'Djamena", "Asmara", "Tunis"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Libya?"
                Reponses := array{"Libreville", "Tripoli", "Kigali", "Bissau"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Egypt?"
                Reponses := array{"Porto-Novo", "Cairo", "Niamey", "Lome"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Sudan?"
                Reponses := array{"Khartoum", "Pretoria", "Freetown", "Tripoli"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of South Sudan?"
                Reponses := array{"Tripoli", "Bamako", "Juba", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Ethiopia?"
                Reponses := array{"Moroni", "Maseru", "Addis Ababa", "Khartoum"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Eritrea?"
                Reponses := array{"Djibouti", "Lilongwe", "Asmara", "Cairo"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Djibouti?"
                Reponses := array{"Lilongwe", "Addis Ababa", "Djibouti", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Somalia?"
                Reponses := array{"Conakry", "Mogadishu", "Djibouti", "Luanda"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Kenya?"
                Reponses := array{"Nairobi", "Gitega", "Lilongwe", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Uganda?"
                Reponses := array{"Accra", "Yamoussoukro", "Monrovia", "Kampala"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Tanzania?"
                Reponses := array{"Malabo", "Dodoma", "Bamako", "Porto-Novo"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Rwanda?"
                Reponses := array{"Kigali", "Mbabane", "Conakry", "Nouakchott"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Burundi?"
                Reponses := array{"Juba", "Kinshasa", "Gitega", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the DR Congo?"
                Reponses := array{"Kinshasa", "Yamoussoukro", "Malabo", "Gitega"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of the Congo?"
                Reponses := array{"Libreville", "Porto-Novo", "Brazzaville", "Windhoek"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Gabon?"
                Reponses := array{"Lome", "Libreville", "Port Louis", "Pretoria"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Equatorial Guinea?"
                Reponses := array{"Malabo", "Tripoli", "Bissau", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Cameroon?"
                Reponses := array{"Yaounde", "Monrovia", "Brazzaville", "Port Louis"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of the Central African Republic?"
                Reponses := array{"Yamoussoukro", "Maseru", "Bangui", "Porto-Novo"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Chad?"
                Reponses := array{"N'Djamena", "Libreville", "Maseru", "Kigali"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Niger?"
                Reponses := array{"Brazzaville", "Djibouti", "Niamey", "Praia"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Nigeria?"
                Reponses := array{"Lome", "Antananarivo", "Abuja", "Bissau"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Benin?"
                Reponses := array{"Port Louis", "Kampala", "Tripoli", "Porto-Novo"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Togo?"
                Reponses := array{"Nairobi", "Lome", "Luanda", "Tunis"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Ghana?"
                Reponses := array{"Accra", "Kigali", "Tripoli", "Porto-Novo"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Ivory Coast?"
                Reponses := array{"Porto-Novo", "Antananarivo", "Malabo", "Yamoussoukro"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Liberia?"
                Reponses := array{"Mogadishu", "Maseru", "N'Djamena", "Monrovia"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Sierra Leone?"
                Reponses := array{"Bissau", "Monrovia", "Banjul", "Freetown"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Guinea?"
                Reponses := array{"Yaounde", "Nouakchott", "Conakry", "Djibouti"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Guinea-Bissau?"
                Reponses := array{"Yaounde", "Moroni", "Djibouti", "Bissau"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Senegal?"
                Reponses := array{"Dakar", "Lome", "Bangui", "Monrovia"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of the Gambia?"
                Reponses := array{"Victoria", "Lome", "Banjul", "Freetown"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Mali?"
                Reponses := array{"Yamoussoukro", "Mbabane", "Cairo", "Bamako"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Burkina Faso?"
                Reponses := array{"Libreville", "Niamey", "Ouagadougou", "Tunis"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Mauritania?"
                Reponses := array{"Rabat", "Nouakchott", "Addis Ababa", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Cape Verde?"
                Reponses := array{"Praia", "Cairo", "Abuja", "Antananarivo"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Sao Tome and Principe?"
                Reponses := array{"Moroni", "Sao Tome", "Maseru", "Lusaka"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Angola?"
                Reponses := array{"Asmara", "Harare", "Praia", "Luanda"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Zambia?"
                Reponses := array{"Juba", "Malabo", "Lusaka", "Mbabane"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Zimbabwe?"
                Reponses := array{"Port Louis", "Algiers", "Bangui", "Harare"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Malawi?"
                Reponses := array{"Lilongwe", "Kigali", "Gitega", "Khartoum"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Mozambique?"
                Reponses := array{"Maputo", "Algiers", "Lome", "Cairo"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Madagascar?"
                Reponses := array{"Kinshasa", "Mogadishu", "Antananarivo", "Gitega"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the Comoros?"
                Reponses := array{"Cairo", "Moroni", "Bamako", "N'Djamena"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Mauritius?"
                Reponses := array{"Kampala", "Mbabane", "Port Louis", "Khartoum"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the Seychelles?"
                Reponses := array{"Bangui", "Victoria", "Bamako", "Harare"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of South Africa?"
                Reponses := array{"Freetown", "Mbabane", "Pretoria", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Namibia?"
                Reponses := array{"Mogadishu", "Dakar", "Addis Ababa", "Windhoek"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Botswana?"
                Reponses := array{"Yamoussoukro", "Gaborone", "Windhoek", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Lesotho?"
                Reponses := array{"Nouakchott", "Cairo", "Maseru", "Victoria"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Eswatini?"
                Reponses := array{"Mbabane", "Nouakchott", "Malabo", "Nairobi"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of the United States?"
                Reponses := array{"Ottawa", "Washington", "Mexico City", "Tbilisi"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Canada?"
                Reponses := array{"Mexico City", "Ottawa", "Washington", "Praia"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Mexico?"
                Reponses := array{"Washington", "Mexico City", "Ottawa", "Belgrade"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Guatemala?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala City", "Port-au-Prince"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Belize?"
                Reponses := array{"Bridgetown", "Managua", "Belmopan", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Honduras?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala City", "San Jose"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of El Salvador?"
                Reponses := array{"Castries", "San Salvador", "Belmopan", "Kingston"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Nicaragua?"
                Reponses := array{"Kingstown", "Panama City", "Managua", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Costa Rica?"
                Reponses := array{"San Jose", "Bridgetown", "San Salvador", "Saint George's"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Panama?"
                Reponses := array{"Tegucigalpa", "Kingston", "Panama City", "Belmopan"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of the Bahamas?"
                Reponses := array{"Belmopan", "Managua", "Bridgetown", "Nassau"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Cuba?"
                Reponses := array{"Panama City", "Port-au-Prince", "Havana", "Tegucigalpa"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Jamaica?"
                Reponses := array{"Belmopan", "Santo Domingo", "Kingston", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Haiti?"
                Reponses := array{"Nassau", "Port-au-Prince", "Tegucigalpa", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of the Dominican Republic?"
                Reponses := array{"Nassau", "Tegucigalpa", "Bridgetown", "Santo Domingo"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of the Saint Kitts and Nevis?"
                Reponses := array{"Nassau", "Basseterre", "Tegucigalpa", "Port-au-Prince"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Antigua and Barbuda?"
                Reponses := array{"Santo Domingo", "Saint John's", "Belmopan", "Port of Spain"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Dominica?"
                Reponses := array{"Saint George's", "Belmopan", "Santo Domingo", "Roseau"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Saint Lucia?"
                Reponses := array{"Nassau", "Roseau", "Port of Spain", "Castries"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Saint Vincent?"
                Reponses := array{"Castries", "Kingstown", "Port-au-Prince", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Barbados?"
                Reponses := array{"Port of Spain", "Bridgetown", "Roseau", "Nassau"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Grenada?"
                Reponses := array{"Kingstown", "Santo Domingo", "Bridgetown", "Saint George's"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Trinidad and Tobago?"
                Reponses := array{"Saint John's", "Guatemala City", "Port of Spain", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Colombia?"
                Reponses := array{"Bogota", "Lima", "Sucre", "Paramaribo"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Venezuela?"
                Reponses := array{"Brasilia", "Bogota", "Paramaribo", "Caracas"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Guyana?"
                Reponses := array{"Georgetown", "Santiago", "Montevideo", "Sucre"}
                BonneReponse := 0
            question:
                Enonce := "What is the capital of Suriname?"
                Reponses := array{"Buenos Aires", "Caracas", "Brasilia", "Paramaribo"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Ecuador?"
                Reponses := array{"Georgetown", "Quito", "Brasilia", "Lima"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Peru?"
                Reponses := array{"Montevideo", "Buenos Aires", "Bogota", "Lima"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Brazil?"
                Reponses := array{"Asuncion", "Paramaribo", "Brasilia", "Bogota"}
                BonneReponse := 2
            question:
                Enonce := "What is the capital of Bolivia?"
                Reponses := array{"Quito", "Sucre", "Georgetown", "Buenos Aires"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Paraguay?"
                Reponses := array{"Quito", "Paramaribo", "Bogota", "Asuncion"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Uruguay?"
                Reponses := array{"Asuncion", "Sucre", "Caracas", "Montevideo"}
                BonneReponse := 3
            question:
                Enonce := "What is the capital of Chile?"
                Reponses := array{"Montevideo", "Santiago", "Asuncion", "Sucre"}
                BonneReponse := 1
            question:
                Enonce := "What is the capital of Argentina?"
                Reponses := array{"Lima", "Buenos Aires", "Sucre", "Quito"}
                BonneReponse := 1

    # ===== Banque CAPITALES ES (195) — memes tirages/indices que la banque FR =====
    MakeCapitalQuestionsES() : []question =
        array:
            question:
                Enonce := "Cual es la capital: Francia?"
                Reponses := array{"Viena", "Ciudad del Vaticano", "Berlin", "Paris"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Alemania?"
                Reponses := array{"Bruselas", "Berlin", "La Valeta", "Vaduz"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Italia?"
                Reponses := array{"La Valeta", "Copenhague", "Roma", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Espana?"
                Reponses := array{"Berlin", "La Valeta", "Reykjavik", "Madrid"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Portugal?"
                Reponses := array{"Monaco", "Lisboa", "Berna", "Roma"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Reino Unido?"
                Reponses := array{"Londres", "Andorra la Vieja", "Berna", "Ciudad del Vaticano"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Irlanda?"
                Reponses := array{"Vaduz", "Dublin", "Berlin", "Oslo"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Belgica?"
                Reponses := array{"Londres", "Andorra la Vieja", "Bruselas", "Amsterdam"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Paises Bajos?"
                Reponses := array{"Amsterdam", "San Marino", "Paris", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Luxemburgo?"
                Reponses := array{"Oslo", "Viena", "Luxembourg", "Madrid"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Suiza?"
                Reponses := array{"Berna", "Vaduz", "Viena", "La Valeta"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Austria?"
                Reponses := array{"Lisboa", "Viena", "San Marino", "Andorra la Vieja"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Monaco?"
                Reponses := array{"Lisboa", "Luxembourg", "Monaco", "Berna"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Andorra?"
                Reponses := array{"Amsterdam", "San Marino", "Andorra la Vieja", "Londres"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Liechtenstein?"
                Reponses := array{"Vaduz", "Roma", "Berlin", "Madrid"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: San Marino?"
                Reponses := array{"San Marino", "Amsterdam", "Paris", "Vaduz"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Ciudad del Vaticano?"
                Reponses := array{"Lisboa", "Londres", "Ciudad del Vaticano", "Copenhague"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Malta?"
                Reponses := array{"Helsinki", "La Valeta", "Estocolmo", "Monaco"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Islandia?"
                Reponses := array{"Copenhague", "Bruselas", "Dublin", "Reykjavik"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Noruega?"
                Reponses := array{"Copenhague", "Helsinki", "Oslo", "Berna"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Suecia?"
                Reponses := array{"Luxembourg", "Londres", "Oslo", "Estocolmo"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Dinamarca?"
                Reponses := array{"San Marino", "Copenhague", "Ciudad del Vaticano", "Reykjavik"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Finlandia?"
                Reponses := array{"Roma", "Berlin", "Helsinki", "Londres"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Polonia?"
                Reponses := array{"Varsovia", "Vilnius", "Minsk", "Moscu"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Chequia?"
                Reponses := array{"Zagreb", "Minsk", "Praga", "Bucarest"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Eslovaquia?"
                Reponses := array{"Bratislava", "Zagreb", "Sarajevo", "Budapest"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Hungria?"
                Reponses := array{"Tirana", "Budapest", "Riga", "Vilnius"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Eslovenia?"
                Reponses := array{"Atenas", "Belgrado", "Liubliana", "Moscu"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Croacia?"
                Reponses := array{"Skopje", "Praga", "Zagreb", "Atenas"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Bosnia y Herzegovina?"
                Reponses := array{"Sarajevo", "Liubliana", "Skopje", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Serbia?"
                Reponses := array{"Tirana", "Belgrado", "Bucarest", "Kiev"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Montenegro?"
                Reponses := array{"Sarajevo", "Riga", "Podgorica", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Macedonia del Norte?"
                Reponses := array{"Belgrado", "Minsk", "Skopje", "Kiev"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Albania?"
                Reponses := array{"Bratislava", "Riga", "Tirana", "Praga"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Grecia?"
                Reponses := array{"Bratislava", "Atenas", "Tirana", "Liubliana"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Bulgaria?"
                Reponses := array{"Bucarest", "Sofia", "Vilnius", "Moscu"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Rumania?"
                Reponses := array{"Varsovia", "Liubliana", "Bucarest", "Belgrado"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Moldavia?"
                Reponses := array{"Chisinau", "Sofia", "Bucarest", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Ucrania?"
                Reponses := array{"Podgorica", "Tallinn", "Kiev", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Bielorrusia?"
                Reponses := array{"Minsk", "Tallinn", "Vilnius", "Bucarest"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Rusia?"
                Reponses := array{"Moscu", "Sarajevo", "Bucarest", "Podgorica"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Estonia?"
                Reponses := array{"Nicosia", "Tallinn", "Varsovia", "Praga"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Letonia?"
                Reponses := array{"Vilnius", "Chisinau", "Atenas", "Riga"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Lituania?"
                Reponses := array{"Budapest", "Tirana", "Vilnius", "Podgorica"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Chipre?"
                Reponses := array{"Vilnius", "Sarajevo", "Nicosia", "Moscu"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Turquia?"
                Reponses := array{"Ciudad de Kuwait", "Erevan", "Ankara", "Ramallah"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Israel?"
                Reponses := array{"Baku", "Manama", "Jerusalen", "Ciudad de Kuwait"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Palestina?"
                Reponses := array{"Tiflis", "Mascate", "Ramallah", "Ankara"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Libano?"
                Reponses := array{"Mascate", "Ankara", "Riad", "Beirut"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Siria?"
                Reponses := array{"Abu Dabi", "Damasco", "Tiflis", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Jordania?"
                Reponses := array{"Beirut", "Teheran", "Ramallah", "Amman"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Irak?"
                Reponses := array{"Bagdad", "Damasco", "Manama", "Mascate"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Iran?"
                Reponses := array{"Sanaa", "Teheran", "Ciudad de Kuwait", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Arabia Saudita?"
                Reponses := array{"Doha", "Amman", "Riad", "Damasco"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Yemen?"
                Reponses := array{"Amman", "Damasco", "Bagdad", "Sanaa"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Oman?"
                Reponses := array{"Damasco", "Mascate", "Ankara", "Jerusalen"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Emiratos Arabes Unidos?"
                Reponses := array{"Tiflis", "Ankara", "Jerusalen", "Abu Dabi"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Catar?"
                Reponses := array{"Beirut", "Doha", "Ciudad de Kuwait", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Barein?"
                Reponses := array{"Manama", "Erevan", "Ankara", "Beirut"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Kuwait?"
                Reponses := array{"Sanaa", "Doha", "Amman", "Ciudad de Kuwait"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Georgia?"
                Reponses := array{"Jerusalen", "Tiflis", "Ramallah", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Armenia?"
                Reponses := array{"Erevan", "Sanaa", "Riad", "Ankara"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Azerbaiyan?"
                Reponses := array{"Doha", "Abu Dabi", "Jerusalen", "Baku"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Kazajistan?"
                Reponses := array{"Dusambe", "Astana", "Kabul", "Biskek"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Uzbekistan?"
                Reponses := array{"Kabul", "Ulan Bator", "Biskek", "Taskent"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Turkmenistan?"
                Reponses := array{"Dusambe", "Kabul", "Asjabad", "Ulan Bator"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Kirguistan?"
                Reponses := array{"Astana", "Biskek", "Taskent", "Ulan Bator"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Tayikistan?"
                Reponses := array{"Dusambe", "Biskek", "Taskent", "Asjabad"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Afganistan?"
                Reponses := array{"Taskent", "Dusambe", "Kabul", "Ulan Bator"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Mongolia?"
                Reponses := array{"Ulan Bator", "Taskent", "Biskek", "Asjabad"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: China?"
                Reponses := array{"Timbu", "Pekin", "Dili", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Japon?"
                Reponses := array{"Male", "Dili", "Tokio", "Hanoi"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Corea del Sur?"
                Reponses := array{"Katmandu", "Seul", "Yakarta", "Kuala Lumpur"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Corea del Norte?"
                Reponses := array{"Phnom Penh", "Seul", "Daca", "Pionyang"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: India?"
                Reponses := array{"Islamabad", "Timbu", "Nueva Delhi", "Dili"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Pakistan?"
                Reponses := array{"Bangkok", "Islamabad", "Kuala Lumpur", "Yakarta"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Banglades?"
                Reponses := array{"Manila", "Hanoi", "Daca", "Seul"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Sri Lanka?"
                Reponses := array{"Nueva Delhi", "Colombo", "Kuala Lumpur", "Tokio"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Nepal?"
                Reponses := array{"Tokio", "Hanoi", "Katmandu", "Manila"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Butan?"
                Reponses := array{"Hanoi", "Katmandu", "Singapur", "Timbu"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Maldivas?"
                Reponses := array{"Yakarta", "Male", "Dili", "Manila"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Birmania?"
                Reponses := array{"Tokio", "Naypyidaw", "Bangkok", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Tailandia?"
                Reponses := array{"Dili", "Vientiane", "Islamabad", "Bangkok"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Laos?"
                Reponses := array{"Vientiane", "Singapur", "Timbu", "Tokio"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Camboya?"
                Reponses := array{"Bangkok", "Dili", "Bandar Seri Begawan", "Phnom Penh"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Vietnam?"
                Reponses := array{"Bandar Seri Begawan", "Manila", "Pionyang", "Hanoi"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Malasia?"
                Reponses := array{"Hanoi", "Kuala Lumpur", "Bandar Seri Begawan", "Naypyidaw"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Singapur?"
                Reponses := array{"Singapur", "Hanoi", "Daca", "Dili"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Indonesia?"
                Reponses := array{"Singapur", "Timbu", "Tokio", "Yakarta"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Brunei?"
                Reponses := array{"Kuala Lumpur", "Daca", "Katmandu", "Bandar Seri Begawan"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Filipinas?"
                Reponses := array{"Manila", "Bangkok", "Hanoi", "Seul"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Timor Oriental?"
                Reponses := array{"Yakarta", "Dili", "Vientiane", "Islamabad"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Australia?"
                Reponses := array{"Canberra", "Suva", "Majuro", "Tarawa"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Nueva Zelanda?"
                Reponses := array{"Majuro", "Funafuti", "Palikir", "Wellington"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Papua Nueva Guinea?"
                Reponses := array{"Palikir", "Port Moresby", "Tarawa", "Honiara"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Fiyi?"
                Reponses := array{"Palikir", "Honiara", "Port Moresby", "Suva"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Islas Salomon?"
                Reponses := array{"Ngerulmud", "Yaren", "Majuro", "Honiara"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Vanuatu?"
                Reponses := array{"Port Vila", "Port Moresby", "Apia", "Yaren"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Samoa?"
                Reponses := array{"Port Moresby", "Canberra", "Apia", "Palikir"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Tonga?"
                Reponses := array{"Port Vila", "Nuku'alofa", "Port Moresby", "Wellington"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Tuvalu?"
                Reponses := array{"Suva", "Wellington", "Majuro", "Funafuti"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Kiribati?"
                Reponses := array{"Tarawa", "Yaren", "Funafuti", "Canberra"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Nauru?"
                Reponses := array{"Wellington", "Palikir", "Yaren", "Apia"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Palaos?"
                Reponses := array{"Palikir", "Tarawa", "Ngerulmud", "Majuro"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Micronesia?"
                Reponses := array{"Apia", "Nuku'alofa", "Palikir", "Honiara"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Islas Marshall?"
                Reponses := array{"Canberra", "Tarawa", "Palikir", "Majuro"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Marruecos?"
                Reponses := array{"Pretoria", "Kigali", "Dakar", "Rabat"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Argelia?"
                Reponses := array{"Port Louis", "Argel", "Victoria", "Dakar"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Tunez?"
                Reponses := array{"Nairobi", "Yamena", "Asmara", "Tunez"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Libia?"
                Reponses := array{"Libreville", "Tripoli", "Kigali", "Bisau"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Egipto?"
                Reponses := array{"Porto Novo", "El Cairo", "Niamey", "Lome"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Sudan?"
                Reponses := array{"Jartum", "Pretoria", "Freetown", "Tripoli"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Sudan del Sur?"
                Reponses := array{"Tripoli", "Bamako", "Yuba", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Etiopia?"
                Reponses := array{"Moroni", "Maseru", "Adis Abeba", "Jartum"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Eritrea?"
                Reponses := array{"Yibuti", "Lilongwe", "Asmara", "El Cairo"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Yibuti?"
                Reponses := array{"Lilongwe", "Adis Abeba", "Yibuti", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Somalia?"
                Reponses := array{"Conakry", "Mogadiscio", "Yibuti", "Luanda"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Kenia?"
                Reponses := array{"Nairobi", "Gitega", "Lilongwe", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Uganda?"
                Reponses := array{"Acra", "Yamusukro", "Monrovia", "Kampala"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Tanzania?"
                Reponses := array{"Malabo", "Dodoma", "Bamako", "Porto Novo"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Ruanda?"
                Reponses := array{"Kigali", "Mbabane", "Conakry", "Nuakchot"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Burundi?"
                Reponses := array{"Yuba", "Kinshasa", "Gitega", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: RD del Congo?"
                Reponses := array{"Kinshasa", "Yamusukro", "Malabo", "Gitega"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Congo?"
                Reponses := array{"Libreville", "Porto Novo", "Brazzaville", "Windhoek"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Gabon?"
                Reponses := array{"Lome", "Libreville", "Port Louis", "Pretoria"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Guinea Ecuatorial?"
                Reponses := array{"Malabo", "Tripoli", "Bisau", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Camerun?"
                Reponses := array{"Yaunde", "Monrovia", "Brazzaville", "Port Louis"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Republica Centroafricana?"
                Reponses := array{"Yamusukro", "Maseru", "Bangui", "Porto Novo"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Chad?"
                Reponses := array{"Yamena", "Libreville", "Maseru", "Kigali"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Niger?"
                Reponses := array{"Brazzaville", "Yibuti", "Niamey", "Praia"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Nigeria?"
                Reponses := array{"Lome", "Antananarivo", "Abuya", "Bisau"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Benin?"
                Reponses := array{"Port Louis", "Kampala", "Tripoli", "Porto Novo"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Togo?"
                Reponses := array{"Nairobi", "Lome", "Luanda", "Tunez"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Ghana?"
                Reponses := array{"Acra", "Kigali", "Tripoli", "Porto Novo"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Costa de Marfil?"
                Reponses := array{"Porto Novo", "Antananarivo", "Malabo", "Yamusukro"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Liberia?"
                Reponses := array{"Mogadiscio", "Maseru", "Yamena", "Monrovia"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Sierra Leona?"
                Reponses := array{"Bisau", "Monrovia", "Banjul", "Freetown"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Guinea?"
                Reponses := array{"Yaunde", "Nuakchot", "Conakry", "Yibuti"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Guinea-Bisau?"
                Reponses := array{"Yaunde", "Moroni", "Yibuti", "Bisau"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Senegal?"
                Reponses := array{"Dakar", "Lome", "Bangui", "Monrovia"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Gambia?"
                Reponses := array{"Victoria", "Lome", "Banjul", "Freetown"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Mali?"
                Reponses := array{"Yamusukro", "Mbabane", "El Cairo", "Bamako"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Burkina Faso?"
                Reponses := array{"Libreville", "Niamey", "Uagadugu", "Tunez"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Mauritania?"
                Reponses := array{"Rabat", "Nuakchot", "Adis Abeba", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Cabo Verde?"
                Reponses := array{"Praia", "El Cairo", "Abuya", "Antananarivo"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Santo Tome y Principe?"
                Reponses := array{"Moroni", "Santo Tome", "Maseru", "Lusaka"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Angola?"
                Reponses := array{"Asmara", "Harare", "Praia", "Luanda"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Zambia?"
                Reponses := array{"Yuba", "Malabo", "Lusaka", "Mbabane"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Zimbabue?"
                Reponses := array{"Port Louis", "Argel", "Bangui", "Harare"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Malaui?"
                Reponses := array{"Lilongwe", "Kigali", "Gitega", "Jartum"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Mozambique?"
                Reponses := array{"Maputo", "Argel", "Lome", "El Cairo"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Madagascar?"
                Reponses := array{"Kinshasa", "Mogadiscio", "Antananarivo", "Gitega"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Comoras?"
                Reponses := array{"El Cairo", "Moroni", "Bamako", "Yamena"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Mauricio?"
                Reponses := array{"Kampala", "Mbabane", "Port Louis", "Jartum"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Seychelles?"
                Reponses := array{"Bangui", "Victoria", "Bamako", "Harare"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Sudafrica?"
                Reponses := array{"Freetown", "Mbabane", "Pretoria", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Namibia?"
                Reponses := array{"Mogadiscio", "Dakar", "Adis Abeba", "Windhoek"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Botsuana?"
                Reponses := array{"Yamusukro", "Gaborone", "Windhoek", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Lesoto?"
                Reponses := array{"Nuakchot", "El Cairo", "Maseru", "Victoria"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Esuatini?"
                Reponses := array{"Mbabane", "Nuakchot", "Malabo", "Nairobi"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Estados Unidos?"
                Reponses := array{"Ottawa", "Washington", "Ciudad de Mexico", "Tiflis"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Canada?"
                Reponses := array{"Ciudad de Mexico", "Ottawa", "Washington", "Praia"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Mexico?"
                Reponses := array{"Washington", "Ciudad de Mexico", "Ottawa", "Belgrado"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Guatemala?"
                Reponses := array{"Castries", "Tegucigalpa", "Ciudad de Guatemala", "Port-au-Prince"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Belice?"
                Reponses := array{"Bridgetown", "Managua", "Belmopan", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Honduras?"
                Reponses := array{"Castries", "Tegucigalpa", "Ciudad de Guatemala", "San Jose"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: El Salvador?"
                Reponses := array{"Castries", "San Salvador", "Belmopan", "Kingston"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Nicaragua?"
                Reponses := array{"Kingstown", "Ciudad de Panama", "Managua", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Costa Rica?"
                Reponses := array{"San Jose", "Bridgetown", "San Salvador", "Saint George's"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Panama?"
                Reponses := array{"Tegucigalpa", "Kingston", "Ciudad de Panama", "Belmopan"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Bahamas?"
                Reponses := array{"Belmopan", "Managua", "Bridgetown", "Nassau"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Cuba?"
                Reponses := array{"Ciudad de Panama", "Port-au-Prince", "La Habana", "Tegucigalpa"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Jamaica?"
                Reponses := array{"Belmopan", "Santo Domingo", "Kingston", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Haiti?"
                Reponses := array{"Nassau", "Port-au-Prince", "Tegucigalpa", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Republica Dominicana?"
                Reponses := array{"Nassau", "Tegucigalpa", "Bridgetown", "Santo Domingo"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: San Cristobal y Nieves?"
                Reponses := array{"Nassau", "Basseterre", "Tegucigalpa", "Port-au-Prince"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Antigua y Barbuda?"
                Reponses := array{"Santo Domingo", "Saint John's", "Belmopan", "Puerto Espana"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Dominica?"
                Reponses := array{"Saint George's", "Belmopan", "Santo Domingo", "Roseau"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Santa Lucia?"
                Reponses := array{"Nassau", "Roseau", "Puerto Espana", "Castries"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: San Vicente?"
                Reponses := array{"Castries", "Kingstown", "Port-au-Prince", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Barbados?"
                Reponses := array{"Puerto Espana", "Bridgetown", "Roseau", "Nassau"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Granada?"
                Reponses := array{"Kingstown", "Santo Domingo", "Bridgetown", "Saint George's"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Trinidad y Tobago?"
                Reponses := array{"Saint John's", "Ciudad de Guatemala", "Puerto Espana", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Colombia?"
                Reponses := array{"Bogota", "Lima", "Sucre", "Paramaribo"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Venezuela?"
                Reponses := array{"Brasilia", "Bogota", "Paramaribo", "Caracas"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Guyana?"
                Reponses := array{"Georgetown", "Santiago", "Montevideo", "Sucre"}
                BonneReponse := 0
            question:
                Enonce := "Cual es la capital: Surinam?"
                Reponses := array{"Buenos Aires", "Caracas", "Brasilia", "Paramaribo"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Ecuador?"
                Reponses := array{"Georgetown", "Quito", "Brasilia", "Lima"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Peru?"
                Reponses := array{"Montevideo", "Buenos Aires", "Bogota", "Lima"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Brasil?"
                Reponses := array{"Asuncion", "Paramaribo", "Brasilia", "Bogota"}
                BonneReponse := 2
            question:
                Enonce := "Cual es la capital: Bolivia?"
                Reponses := array{"Quito", "Sucre", "Georgetown", "Buenos Aires"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Paraguay?"
                Reponses := array{"Quito", "Paramaribo", "Bogota", "Asuncion"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Uruguay?"
                Reponses := array{"Asuncion", "Sucre", "Caracas", "Montevideo"}
                BonneReponse := 3
            question:
                Enonce := "Cual es la capital: Chile?"
                Reponses := array{"Montevideo", "Santiago", "Asuncion", "Sucre"}
                BonneReponse := 1
            question:
                Enonce := "Cual es la capital: Argentina?"
                Reponses := array{"Lima", "Buenos Aires", "Sucre", "Quito"}
                BonneReponse := 1

    # ===== Banque CAPITALES DE (195) — memes tirages/indices que la banque FR =====
    MakeCapitalQuestionsDE() : []question =
        array:
            question:
                Enonce := "Was ist die Hauptstadt: Frankreich?"
                Reponses := array{"Wien", "Vatikanstadt", "Berlin", "Paris"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Deutschland?"
                Reponses := array{"Bruessel", "Berlin", "Valletta", "Vaduz"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Italien?"
                Reponses := array{"Valletta", "Kopenhagen", "Rom", "Luxembourg"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Spanien?"
                Reponses := array{"Berlin", "Valletta", "Reykjavik", "Madrid"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Portugal?"
                Reponses := array{"Monaco", "Lissabon", "Bern", "Rom"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Vereinigtes Koenigreich?"
                Reponses := array{"London", "Andorra la Vella", "Bern", "Vatikanstadt"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Irland?"
                Reponses := array{"Vaduz", "Dublin", "Berlin", "Oslo"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Belgien?"
                Reponses := array{"London", "Andorra la Vella", "Bruessel", "Amsterdam"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Niederlande?"
                Reponses := array{"Amsterdam", "San Marino", "Paris", "Luxembourg"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Luxemburg?"
                Reponses := array{"Oslo", "Wien", "Luxembourg", "Madrid"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Schweiz?"
                Reponses := array{"Bern", "Vaduz", "Wien", "Valletta"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Oesterreich?"
                Reponses := array{"Lissabon", "Wien", "San Marino", "Andorra la Vella"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Monaco?"
                Reponses := array{"Lissabon", "Luxembourg", "Monaco", "Bern"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Andorra?"
                Reponses := array{"Amsterdam", "San Marino", "Andorra la Vella", "London"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Liechtenstein?"
                Reponses := array{"Vaduz", "Rom", "Berlin", "Madrid"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: San Marino?"
                Reponses := array{"San Marino", "Amsterdam", "Paris", "Vaduz"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Vatikanstadt?"
                Reponses := array{"Lissabon", "London", "Vatikanstadt", "Kopenhagen"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Malta?"
                Reponses := array{"Helsinki", "Valletta", "Stockholm", "Monaco"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Island?"
                Reponses := array{"Kopenhagen", "Bruessel", "Dublin", "Reykjavik"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Norwegen?"
                Reponses := array{"Kopenhagen", "Helsinki", "Oslo", "Bern"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Schweden?"
                Reponses := array{"Luxembourg", "London", "Oslo", "Stockholm"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Daenemark?"
                Reponses := array{"San Marino", "Kopenhagen", "Vatikanstadt", "Reykjavik"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Finnland?"
                Reponses := array{"Rom", "Berlin", "Helsinki", "London"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Polen?"
                Reponses := array{"Warschau", "Vilnius", "Minsk", "Moskau"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Tschechien?"
                Reponses := array{"Zagreb", "Minsk", "Prag", "Bukarest"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Slowakei?"
                Reponses := array{"Bratislava", "Zagreb", "Sarajevo", "Budapest"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Ungarn?"
                Reponses := array{"Tirana", "Budapest", "Riga", "Vilnius"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Slowenien?"
                Reponses := array{"Athen", "Belgrad", "Ljubljana", "Moskau"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Kroatien?"
                Reponses := array{"Skopje", "Prag", "Zagreb", "Athen"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Bosnien und Herzegowina?"
                Reponses := array{"Sarajevo", "Ljubljana", "Skopje", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Serbien?"
                Reponses := array{"Tirana", "Belgrad", "Bukarest", "Kiew"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Montenegro?"
                Reponses := array{"Sarajevo", "Riga", "Podgorica", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Nordmazedonien?"
                Reponses := array{"Belgrad", "Minsk", "Skopje", "Kiew"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Albanien?"
                Reponses := array{"Bratislava", "Riga", "Tirana", "Prag"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Griechenland?"
                Reponses := array{"Bratislava", "Athen", "Tirana", "Ljubljana"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Bulgarien?"
                Reponses := array{"Bukarest", "Sofia", "Vilnius", "Moskau"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Rumaenien?"
                Reponses := array{"Warschau", "Ljubljana", "Bukarest", "Belgrad"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Moldau?"
                Reponses := array{"Chisinau", "Sofia", "Bukarest", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Ukraine?"
                Reponses := array{"Podgorica", "Tallinn", "Kiew", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Belarus?"
                Reponses := array{"Minsk", "Tallinn", "Vilnius", "Bukarest"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Russland?"
                Reponses := array{"Moskau", "Sarajevo", "Bukarest", "Podgorica"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Estland?"
                Reponses := array{"Nikosia", "Tallinn", "Warschau", "Prag"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Lettland?"
                Reponses := array{"Vilnius", "Chisinau", "Athen", "Riga"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Litauen?"
                Reponses := array{"Budapest", "Tirana", "Vilnius", "Podgorica"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Zypern?"
                Reponses := array{"Vilnius", "Sarajevo", "Nikosia", "Moskau"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Tuerkei?"
                Reponses := array{"Kuwait-Stadt", "Eriwan", "Ankara", "Ramallah"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Israel?"
                Reponses := array{"Baku", "Manama", "Jerusalem", "Kuwait-Stadt"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Palaestina?"
                Reponses := array{"Tiflis", "Maskat", "Ramallah", "Ankara"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Libanon?"
                Reponses := array{"Maskat", "Ankara", "Riad", "Beirut"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Syrien?"
                Reponses := array{"Abu Dhabi", "Damaskus", "Tiflis", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Jordanien?"
                Reponses := array{"Beirut", "Teheran", "Ramallah", "Amman"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Irak?"
                Reponses := array{"Bagdad", "Damaskus", "Manama", "Maskat"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Iran?"
                Reponses := array{"Sanaa", "Teheran", "Kuwait-Stadt", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Saudi-Arabien?"
                Reponses := array{"Doha", "Amman", "Riad", "Damaskus"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Jemen?"
                Reponses := array{"Amman", "Damaskus", "Bagdad", "Sanaa"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Oman?"
                Reponses := array{"Damaskus", "Maskat", "Ankara", "Jerusalem"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Vereinigte Arabische Emirate?"
                Reponses := array{"Tiflis", "Ankara", "Jerusalem", "Abu Dhabi"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Katar?"
                Reponses := array{"Beirut", "Doha", "Kuwait-Stadt", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Bahrain?"
                Reponses := array{"Manama", "Eriwan", "Ankara", "Beirut"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Kuwait?"
                Reponses := array{"Sanaa", "Doha", "Amman", "Kuwait-Stadt"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Georgien?"
                Reponses := array{"Jerusalem", "Tiflis", "Ramallah", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Armenien?"
                Reponses := array{"Eriwan", "Sanaa", "Riad", "Ankara"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Aserbaidschan?"
                Reponses := array{"Doha", "Abu Dhabi", "Jerusalem", "Baku"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Kasachstan?"
                Reponses := array{"Duschanbe", "Astana", "Kabul", "Bischkek"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Usbekistan?"
                Reponses := array{"Kabul", "Oulan-Bator", "Bischkek", "Taschkent"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Turkmenistan?"
                Reponses := array{"Duschanbe", "Kabul", "Aschgabat", "Oulan-Bator"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Kirgisistan?"
                Reponses := array{"Astana", "Bischkek", "Taschkent", "Oulan-Bator"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Tadschikistan?"
                Reponses := array{"Duschanbe", "Bischkek", "Taschkent", "Aschgabat"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Afghanistan?"
                Reponses := array{"Taschkent", "Duschanbe", "Kabul", "Oulan-Bator"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Mongolei?"
                Reponses := array{"Oulan-Bator", "Taschkent", "Bischkek", "Aschgabat"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: China?"
                Reponses := array{"Thimphu", "Peking", "Dili", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Japan?"
                Reponses := array{"Male", "Dili", "Tokio", "Hanoi"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Suedkorea?"
                Reponses := array{"Kathmandu", "Seoul", "Jakarta", "Kuala Lumpur"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Nordkorea?"
                Reponses := array{"Phnom Penh", "Seoul", "Dhaka", "Pjoengjang"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Indien?"
                Reponses := array{"Islamabad", "Thimphu", "Neu-Delhi", "Dili"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Pakistan?"
                Reponses := array{"Bangkok", "Islamabad", "Kuala Lumpur", "Jakarta"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Bangladesch?"
                Reponses := array{"Manila", "Hanoi", "Dhaka", "Seoul"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Sri Lanka?"
                Reponses := array{"Neu-Delhi", "Colombo", "Kuala Lumpur", "Tokio"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Nepal?"
                Reponses := array{"Tokio", "Hanoi", "Kathmandu", "Manila"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Bhutan?"
                Reponses := array{"Hanoi", "Kathmandu", "Singapur", "Thimphu"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Malediven?"
                Reponses := array{"Jakarta", "Male", "Dili", "Manila"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Myanmar?"
                Reponses := array{"Tokio", "Naypyidaw", "Bangkok", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Thailand?"
                Reponses := array{"Dili", "Vientiane", "Islamabad", "Bangkok"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Laos?"
                Reponses := array{"Vientiane", "Singapur", "Thimphu", "Tokio"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Kambodscha?"
                Reponses := array{"Bangkok", "Dili", "Bandar Seri Begawan", "Phnom Penh"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Vietnam?"
                Reponses := array{"Bandar Seri Begawan", "Manila", "Pjoengjang", "Hanoi"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Malaysia?"
                Reponses := array{"Hanoi", "Kuala Lumpur", "Bandar Seri Begawan", "Naypyidaw"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Singapur?"
                Reponses := array{"Singapur", "Hanoi", "Dhaka", "Dili"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Indonesien?"
                Reponses := array{"Singapur", "Thimphu", "Tokio", "Jakarta"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Brunei?"
                Reponses := array{"Kuala Lumpur", "Dhaka", "Kathmandu", "Bandar Seri Begawan"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Philippinen?"
                Reponses := array{"Manila", "Bangkok", "Hanoi", "Seoul"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Osttimor?"
                Reponses := array{"Jakarta", "Dili", "Vientiane", "Islamabad"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Australien?"
                Reponses := array{"Canberra", "Suva", "Majuro", "Tarawa"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Neuseeland?"
                Reponses := array{"Majuro", "Funafuti", "Palikir", "Wellington"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Papua-Neuguinea?"
                Reponses := array{"Palikir", "Port Moresby", "Tarawa", "Honiara"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Fidschi?"
                Reponses := array{"Palikir", "Honiara", "Port Moresby", "Suva"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Salomonen?"
                Reponses := array{"Ngerulmud", "Yaren", "Majuro", "Honiara"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Vanuatu?"
                Reponses := array{"Port Vila", "Port Moresby", "Apia", "Yaren"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Samoa?"
                Reponses := array{"Port Moresby", "Canberra", "Apia", "Palikir"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Tonga?"
                Reponses := array{"Port Vila", "Nuku'alofa", "Port Moresby", "Wellington"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Tuvalu?"
                Reponses := array{"Suva", "Wellington", "Majuro", "Funafuti"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Kiribati?"
                Reponses := array{"Tarawa", "Yaren", "Funafuti", "Canberra"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Nauru?"
                Reponses := array{"Wellington", "Palikir", "Yaren", "Apia"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Palau?"
                Reponses := array{"Palikir", "Tarawa", "Ngerulmud", "Majuro"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Mikronesien?"
                Reponses := array{"Apia", "Nuku'alofa", "Palikir", "Honiara"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Marshallinseln?"
                Reponses := array{"Canberra", "Tarawa", "Palikir", "Majuro"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Marokko?"
                Reponses := array{"Pretoria", "Kigali", "Dakar", "Rabat"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Algerien?"
                Reponses := array{"Port Louis", "Algier", "Victoria", "Dakar"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Tunesien?"
                Reponses := array{"Nairobi", "N'Djamena", "Asmara", "Tunis"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Libyen?"
                Reponses := array{"Libreville", "Tripolis", "Kigali", "Bissau"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Aegypten?"
                Reponses := array{"Porto-Novo", "Kairo", "Niamey", "Lome"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Sudan?"
                Reponses := array{"Khartum", "Pretoria", "Freetown", "Tripolis"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Suedsudan?"
                Reponses := array{"Tripolis", "Bamako", "Juba", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Aethiopien?"
                Reponses := array{"Moroni", "Maseru", "Addis Abeba", "Khartum"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Eritrea?"
                Reponses := array{"Dschibuti", "Lilongwe", "Asmara", "Kairo"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Dschibuti?"
                Reponses := array{"Lilongwe", "Addis Abeba", "Dschibuti", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Somalia?"
                Reponses := array{"Conakry", "Mogadischu", "Dschibuti", "Luanda"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Kenia?"
                Reponses := array{"Nairobi", "Gitega", "Lilongwe", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Uganda?"
                Reponses := array{"Accra", "Yamoussoukro", "Monrovia", "Kampala"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Tansania?"
                Reponses := array{"Malabo", "Dodoma", "Bamako", "Porto-Novo"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Ruanda?"
                Reponses := array{"Kigali", "Mbabane", "Conakry", "Nouakchott"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Burundi?"
                Reponses := array{"Juba", "Kinshasa", "Gitega", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: DR Kongo?"
                Reponses := array{"Kinshasa", "Yamoussoukro", "Malabo", "Gitega"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Kongo?"
                Reponses := array{"Libreville", "Porto-Novo", "Brazzaville", "Windhoek"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Gabun?"
                Reponses := array{"Lome", "Libreville", "Port Louis", "Pretoria"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Aequatorialguinea?"
                Reponses := array{"Malabo", "Tripolis", "Bissau", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Kamerun?"
                Reponses := array{"Jaunde", "Monrovia", "Brazzaville", "Port Louis"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Zentralafrikanische Republik?"
                Reponses := array{"Yamoussoukro", "Maseru", "Bangui", "Porto-Novo"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Tschad?"
                Reponses := array{"N'Djamena", "Libreville", "Maseru", "Kigali"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Niger?"
                Reponses := array{"Brazzaville", "Dschibuti", "Niamey", "Praia"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Nigeria?"
                Reponses := array{"Lome", "Antananarivo", "Abuja", "Bissau"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Benin?"
                Reponses := array{"Port Louis", "Kampala", "Tripolis", "Porto-Novo"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Togo?"
                Reponses := array{"Nairobi", "Lome", "Luanda", "Tunis"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Ghana?"
                Reponses := array{"Accra", "Kigali", "Tripolis", "Porto-Novo"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Elfenbeinkueste?"
                Reponses := array{"Porto-Novo", "Antananarivo", "Malabo", "Yamoussoukro"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Liberia?"
                Reponses := array{"Mogadischu", "Maseru", "N'Djamena", "Monrovia"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Sierra Leone?"
                Reponses := array{"Bissau", "Monrovia", "Banjul", "Freetown"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Guinea?"
                Reponses := array{"Jaunde", "Nouakchott", "Conakry", "Dschibuti"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Guinea-Bissau?"
                Reponses := array{"Jaunde", "Moroni", "Dschibuti", "Bissau"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Senegal?"
                Reponses := array{"Dakar", "Lome", "Bangui", "Monrovia"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Gambia?"
                Reponses := array{"Victoria", "Lome", "Banjul", "Freetown"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Mali?"
                Reponses := array{"Yamoussoukro", "Mbabane", "Kairo", "Bamako"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Burkina Faso?"
                Reponses := array{"Libreville", "Niamey", "Ouagadougou", "Tunis"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Mauretanien?"
                Reponses := array{"Rabat", "Nouakchott", "Addis Abeba", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Kap Verde?"
                Reponses := array{"Praia", "Kairo", "Abuja", "Antananarivo"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Sao Tome und Principe?"
                Reponses := array{"Moroni", "Sao Tome", "Maseru", "Lusaka"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Angola?"
                Reponses := array{"Asmara", "Harare", "Praia", "Luanda"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Sambia?"
                Reponses := array{"Juba", "Malabo", "Lusaka", "Mbabane"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Simbabwe?"
                Reponses := array{"Port Louis", "Algier", "Bangui", "Harare"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Malawi?"
                Reponses := array{"Lilongwe", "Kigali", "Gitega", "Khartum"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Mosambik?"
                Reponses := array{"Maputo", "Algier", "Lome", "Kairo"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Madagaskar?"
                Reponses := array{"Kinshasa", "Mogadischu", "Antananarivo", "Gitega"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Komoren?"
                Reponses := array{"Kairo", "Moroni", "Bamako", "N'Djamena"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Mauritius?"
                Reponses := array{"Kampala", "Mbabane", "Port Louis", "Khartum"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Seychellen?"
                Reponses := array{"Bangui", "Victoria", "Bamako", "Harare"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Suedafrika?"
                Reponses := array{"Freetown", "Mbabane", "Pretoria", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Namibia?"
                Reponses := array{"Mogadischu", "Dakar", "Addis Abeba", "Windhoek"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Botswana?"
                Reponses := array{"Yamoussoukro", "Gaborone", "Windhoek", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Lesotho?"
                Reponses := array{"Nouakchott", "Kairo", "Maseru", "Victoria"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Eswatini?"
                Reponses := array{"Mbabane", "Nouakchott", "Malabo", "Nairobi"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Vereinigte Staaten?"
                Reponses := array{"Ottawa", "Washington", "Mexiko-Stadt", "Tiflis"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Kanada?"
                Reponses := array{"Mexiko-Stadt", "Ottawa", "Washington", "Praia"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Mexiko?"
                Reponses := array{"Washington", "Mexiko-Stadt", "Ottawa", "Belgrad"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Guatemala?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala-Stadt", "Port-au-Prince"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Belize?"
                Reponses := array{"Bridgetown", "Managua", "Belmopan", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Honduras?"
                Reponses := array{"Castries", "Tegucigalpa", "Guatemala-Stadt", "San Jose"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: El Salvador?"
                Reponses := array{"Castries", "San Salvador", "Belmopan", "Kingston"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Nicaragua?"
                Reponses := array{"Kingstown", "Panama-Stadt", "Managua", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Costa Rica?"
                Reponses := array{"San Jose", "Bridgetown", "San Salvador", "Saint George's"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Panama?"
                Reponses := array{"Tegucigalpa", "Kingston", "Panama-Stadt", "Belmopan"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Bahamas?"
                Reponses := array{"Belmopan", "Managua", "Bridgetown", "Nassau"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Kuba?"
                Reponses := array{"Panama-Stadt", "Port-au-Prince", "Havanna", "Tegucigalpa"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Jamaika?"
                Reponses := array{"Belmopan", "Santo Domingo", "Kingston", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Haiti?"
                Reponses := array{"Nassau", "Port-au-Prince", "Tegucigalpa", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Dominikanische Republik?"
                Reponses := array{"Nassau", "Tegucigalpa", "Bridgetown", "Santo Domingo"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: St. Kitts und Nevis?"
                Reponses := array{"Nassau", "Basseterre", "Tegucigalpa", "Port-au-Prince"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Antigua und Barbuda?"
                Reponses := array{"Santo Domingo", "Saint John's", "Belmopan", "Port of Spain"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Dominica?"
                Reponses := array{"Saint George's", "Belmopan", "Santo Domingo", "Roseau"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: St. Lucia?"
                Reponses := array{"Nassau", "Roseau", "Port of Spain", "Castries"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: St. Vincent?"
                Reponses := array{"Castries", "Kingstown", "Port-au-Prince", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Barbados?"
                Reponses := array{"Port of Spain", "Bridgetown", "Roseau", "Nassau"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Grenada?"
                Reponses := array{"Kingstown", "Santo Domingo", "Bridgetown", "Saint George's"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Trinidad und Tobago?"
                Reponses := array{"Saint John's", "Guatemala-Stadt", "Port of Spain", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Kolumbien?"
                Reponses := array{"Bogota", "Lima", "Sucre", "Paramaribo"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Venezuela?"
                Reponses := array{"Brasilia", "Bogota", "Paramaribo", "Caracas"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Guyana?"
                Reponses := array{"Georgetown", "Santiago", "Montevideo", "Sucre"}
                BonneReponse := 0
            question:
                Enonce := "Was ist die Hauptstadt: Suriname?"
                Reponses := array{"Buenos Aires", "Caracas", "Brasilia", "Paramaribo"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Ecuador?"
                Reponses := array{"Georgetown", "Quito", "Brasilia", "Lima"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Peru?"
                Reponses := array{"Montevideo", "Buenos Aires", "Bogota", "Lima"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Brasilien?"
                Reponses := array{"Asuncion", "Paramaribo", "Brasilia", "Bogota"}
                BonneReponse := 2
            question:
                Enonce := "Was ist die Hauptstadt: Bolivien?"
                Reponses := array{"Quito", "Sucre", "Georgetown", "Buenos Aires"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Paraguay?"
                Reponses := array{"Quito", "Paramaribo", "Bogota", "Asuncion"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Uruguay?"
                Reponses := array{"Asuncion", "Sucre", "Caracas", "Montevideo"}
                BonneReponse := 3
            question:
                Enonce := "Was ist die Hauptstadt: Chile?"
                Reponses := array{"Montevideo", "Santiago", "Asuncion", "Sucre"}
                BonneReponse := 1
            question:
                Enonce := "Was ist die Hauptstadt: Argentinien?"
                Reponses := array{"Lima", "Buenos Aires", "Sucre", "Quito"}
                BonneReponse := 1

    # ===== Banque CAPITALES IT (195) — memes tirages/indices que la banque FR =====
    MakeCapitalQuestionsIT() : []question =
        array:
            question:
                Enonce := "Qual e la capitale: Francia?"
                Reponses := array{"Vienna", "Citta del Vaticano", "Berlino", "Parigi"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Germania?"
                Reponses := array{"Bruxelles", "Berlino", "La Valletta", "Vaduz"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Italia?"
                Reponses := array{"La Valletta", "Copenaghen", "Roma", "Lussemburgo"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Spagna?"
                Reponses := array{"Berlino", "La Valletta", "Reykjavik", "Madrid"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Portogallo?"
                Reponses := array{"Monaco", "Lisbona", "Berna", "Roma"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Regno Unito?"
                Reponses := array{"Londra", "Andorra la Vella", "Berna", "Citta del Vaticano"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Irlanda?"
                Reponses := array{"Vaduz", "Dublino", "Berlino", "Oslo"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Belgio?"
                Reponses := array{"Londra", "Andorra la Vella", "Bruxelles", "Amsterdam"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Paesi Bassi?"
                Reponses := array{"Amsterdam", "San Marino", "Parigi", "Lussemburgo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Lussemburgo?"
                Reponses := array{"Oslo", "Vienna", "Lussemburgo", "Madrid"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Svizzera?"
                Reponses := array{"Berna", "Vaduz", "Vienna", "La Valletta"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Austria?"
                Reponses := array{"Lisbona", "Vienna", "San Marino", "Andorra la Vella"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Monaco?"
                Reponses := array{"Lisbona", "Lussemburgo", "Monaco", "Berna"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Andorra?"
                Reponses := array{"Amsterdam", "San Marino", "Andorra la Vella", "Londra"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Liechtenstein?"
                Reponses := array{"Vaduz", "Roma", "Berlino", "Madrid"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: San Marino?"
                Reponses := array{"San Marino", "Amsterdam", "Parigi", "Vaduz"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Citta del Vaticano?"
                Reponses := array{"Lisbona", "Londra", "Citta del Vaticano", "Copenaghen"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Malta?"
                Reponses := array{"Helsinki", "La Valletta", "Stoccolma", "Monaco"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Islanda?"
                Reponses := array{"Copenaghen", "Bruxelles", "Dublino", "Reykjavik"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Norvegia?"
                Reponses := array{"Copenaghen", "Helsinki", "Oslo", "Berna"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Svezia?"
                Reponses := array{"Lussemburgo", "Londra", "Oslo", "Stoccolma"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Danimarca?"
                Reponses := array{"San Marino", "Copenaghen", "Citta del Vaticano", "Reykjavik"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Finlandia?"
                Reponses := array{"Roma", "Berlino", "Helsinki", "Londra"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Polonia?"
                Reponses := array{"Varsavia", "Vilnius", "Minsk", "Mosca"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Cechia?"
                Reponses := array{"Zagabria", "Minsk", "Praga", "Bucarest"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Slovacchia?"
                Reponses := array{"Bratislava", "Zagabria", "Sarajevo", "Budapest"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Ungheria?"
                Reponses := array{"Tirana", "Budapest", "Riga", "Vilnius"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Slovenia?"
                Reponses := array{"Atene", "Belgrado", "Lubiana", "Mosca"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Croazia?"
                Reponses := array{"Skopje", "Praga", "Zagabria", "Atene"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Bosnia ed Erzegovina?"
                Reponses := array{"Sarajevo", "Lubiana", "Skopje", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Serbia?"
                Reponses := array{"Tirana", "Belgrado", "Bucarest", "Kiev"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Montenegro?"
                Reponses := array{"Sarajevo", "Riga", "Podgorica", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Macedonia del Nord?"
                Reponses := array{"Belgrado", "Minsk", "Skopje", "Kiev"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Albania?"
                Reponses := array{"Bratislava", "Riga", "Tirana", "Praga"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Grecia?"
                Reponses := array{"Bratislava", "Atene", "Tirana", "Lubiana"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Bulgaria?"
                Reponses := array{"Bucarest", "Sofia", "Vilnius", "Mosca"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Romania?"
                Reponses := array{"Varsavia", "Lubiana", "Bucarest", "Belgrado"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Moldavia?"
                Reponses := array{"Chisinau", "Sofia", "Bucarest", "Tallinn"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Ucraina?"
                Reponses := array{"Podgorica", "Tallinn", "Kiev", "Minsk"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Bielorussia?"
                Reponses := array{"Minsk", "Tallinn", "Vilnius", "Bucarest"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Russia?"
                Reponses := array{"Mosca", "Sarajevo", "Bucarest", "Podgorica"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Estonia?"
                Reponses := array{"Nicosia", "Tallinn", "Varsavia", "Praga"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Lettonia?"
                Reponses := array{"Vilnius", "Chisinau", "Atene", "Riga"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Lituania?"
                Reponses := array{"Budapest", "Tirana", "Vilnius", "Podgorica"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Cipro?"
                Reponses := array{"Vilnius", "Sarajevo", "Nicosia", "Mosca"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Turchia?"
                Reponses := array{"Kuwait City", "Erevan", "Ankara", "Ramallah"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Israele?"
                Reponses := array{"Baku", "Manama", "Gerusalemme", "Kuwait City"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Palestina?"
                Reponses := array{"Tbilisi", "Mascate", "Ramallah", "Ankara"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Libano?"
                Reponses := array{"Mascate", "Ankara", "Riad", "Beirut"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Siria?"
                Reponses := array{"Abu Dhabi", "Damasco", "Tbilisi", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Giordania?"
                Reponses := array{"Beirut", "Teheran", "Ramallah", "Amman"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Iraq?"
                Reponses := array{"Baghdad", "Damasco", "Manama", "Mascate"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Iran?"
                Reponses := array{"Sanaa", "Teheran", "Kuwait City", "Baku"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Arabia Saudita?"
                Reponses := array{"Doha", "Amman", "Riad", "Damasco"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Yemen?"
                Reponses := array{"Amman", "Damasco", "Baghdad", "Sanaa"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Oman?"
                Reponses := array{"Damasco", "Mascate", "Ankara", "Gerusalemme"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Emirati Arabi Uniti?"
                Reponses := array{"Tbilisi", "Ankara", "Gerusalemme", "Abu Dhabi"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Qatar?"
                Reponses := array{"Beirut", "Doha", "Kuwait City", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Bahrein?"
                Reponses := array{"Manama", "Erevan", "Ankara", "Beirut"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Kuwait?"
                Reponses := array{"Sanaa", "Doha", "Amman", "Kuwait City"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Georgia?"
                Reponses := array{"Gerusalemme", "Tbilisi", "Ramallah", "Ankara"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Armenia?"
                Reponses := array{"Erevan", "Sanaa", "Riad", "Ankara"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Azerbaigian?"
                Reponses := array{"Doha", "Abu Dhabi", "Gerusalemme", "Baku"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Kazakistan?"
                Reponses := array{"Dushanbe", "Astana", "Kabul", "Bishkek"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Uzbekistan?"
                Reponses := array{"Kabul", "Ulan Bator", "Bishkek", "Tashkent"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Turkmenistan?"
                Reponses := array{"Dushanbe", "Kabul", "Asgabat", "Ulan Bator"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Kirghizistan?"
                Reponses := array{"Astana", "Bishkek", "Tashkent", "Ulan Bator"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Tagikistan?"
                Reponses := array{"Dushanbe", "Bishkek", "Tashkent", "Asgabat"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Afghanistan?"
                Reponses := array{"Tashkent", "Dushanbe", "Kabul", "Ulan Bator"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Mongolia?"
                Reponses := array{"Ulan Bator", "Tashkent", "Bishkek", "Asgabat"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Cina?"
                Reponses := array{"Thimphu", "Pechino", "Dili", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Giappone?"
                Reponses := array{"Male", "Dili", "Tokyo", "Hanoi"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Corea del Sud?"
                Reponses := array{"Katmandu", "Seul", "Giacarta", "Kuala Lumpur"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Corea del Nord?"
                Reponses := array{"Phnom Penh", "Seul", "Dacca", "Pyongyang"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: India?"
                Reponses := array{"Islamabad", "Thimphu", "Nuova Delhi", "Dili"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Pakistan?"
                Reponses := array{"Bangkok", "Islamabad", "Kuala Lumpur", "Giacarta"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Bangladesh?"
                Reponses := array{"Manila", "Hanoi", "Dacca", "Seul"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Sri Lanka?"
                Reponses := array{"Nuova Delhi", "Colombo", "Kuala Lumpur", "Tokyo"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Nepal?"
                Reponses := array{"Tokyo", "Hanoi", "Katmandu", "Manila"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Bhutan?"
                Reponses := array{"Hanoi", "Katmandu", "Singapore", "Thimphu"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Maldive?"
                Reponses := array{"Giacarta", "Male", "Dili", "Manila"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Birmania?"
                Reponses := array{"Tokyo", "Naypyidaw", "Bangkok", "Phnom Penh"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Thailandia?"
                Reponses := array{"Dili", "Vientiane", "Islamabad", "Bangkok"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Laos?"
                Reponses := array{"Vientiane", "Singapore", "Thimphu", "Tokyo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Cambogia?"
                Reponses := array{"Bangkok", "Dili", "Bandar Seri Begawan", "Phnom Penh"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Vietnam?"
                Reponses := array{"Bandar Seri Begawan", "Manila", "Pyongyang", "Hanoi"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Malesia?"
                Reponses := array{"Hanoi", "Kuala Lumpur", "Bandar Seri Begawan", "Naypyidaw"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Singapore?"
                Reponses := array{"Singapore", "Hanoi", "Dacca", "Dili"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Indonesia?"
                Reponses := array{"Singapore", "Thimphu", "Tokyo", "Giacarta"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Brunei?"
                Reponses := array{"Kuala Lumpur", "Dacca", "Katmandu", "Bandar Seri Begawan"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Filippine?"
                Reponses := array{"Manila", "Bangkok", "Hanoi", "Seul"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Timor Est?"
                Reponses := array{"Giacarta", "Dili", "Vientiane", "Islamabad"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Australia?"
                Reponses := array{"Canberra", "Suva", "Majuro", "Tarawa"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Nuova Zelanda?"
                Reponses := array{"Majuro", "Funafuti", "Palikir", "Wellington"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Papua Nuova Guinea?"
                Reponses := array{"Palikir", "Port Moresby", "Tarawa", "Honiara"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Figi?"
                Reponses := array{"Palikir", "Honiara", "Port Moresby", "Suva"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Isole Salomone?"
                Reponses := array{"Ngerulmud", "Yaren", "Majuro", "Honiara"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Vanuatu?"
                Reponses := array{"Port Vila", "Port Moresby", "Apia", "Yaren"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Samoa?"
                Reponses := array{"Port Moresby", "Canberra", "Apia", "Palikir"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Tonga?"
                Reponses := array{"Port Vila", "Nuku'alofa", "Port Moresby", "Wellington"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Tuvalu?"
                Reponses := array{"Suva", "Wellington", "Majuro", "Funafuti"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Kiribati?"
                Reponses := array{"Tarawa", "Yaren", "Funafuti", "Canberra"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Nauru?"
                Reponses := array{"Wellington", "Palikir", "Yaren", "Apia"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Palau?"
                Reponses := array{"Palikir", "Tarawa", "Ngerulmud", "Majuro"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Micronesia?"
                Reponses := array{"Apia", "Nuku'alofa", "Palikir", "Honiara"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Isole Marshall?"
                Reponses := array{"Canberra", "Tarawa", "Palikir", "Majuro"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Marocco?"
                Reponses := array{"Pretoria", "Kigali", "Dakar", "Rabat"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Algeria?"
                Reponses := array{"Port Louis", "Algeri", "Victoria", "Dakar"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Tunisia?"
                Reponses := array{"Nairobi", "N'Djamena", "Asmara", "Tunisi"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Libia?"
                Reponses := array{"Libreville", "Tripoli", "Kigali", "Bissau"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Egitto?"
                Reponses := array{"Porto-Novo", "Il Cairo", "Niamey", "Lome"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Sudan?"
                Reponses := array{"Khartum", "Pretoria", "Freetown", "Tripoli"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Sudan del Sud?"
                Reponses := array{"Tripoli", "Bamako", "Giuba", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Etiopia?"
                Reponses := array{"Moroni", "Maseru", "Addis Abeba", "Khartum"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Eritrea?"
                Reponses := array{"Gibuti", "Lilongwe", "Asmara", "Il Cairo"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Gibuti?"
                Reponses := array{"Lilongwe", "Addis Abeba", "Gibuti", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Somalia?"
                Reponses := array{"Conakry", "Mogadiscio", "Gibuti", "Luanda"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Kenya?"
                Reponses := array{"Nairobi", "Gitega", "Lilongwe", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Uganda?"
                Reponses := array{"Accra", "Yamoussoukro", "Monrovia", "Kampala"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Tanzania?"
                Reponses := array{"Malabo", "Dodoma", "Bamako", "Porto-Novo"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Ruanda?"
                Reponses := array{"Kigali", "Mbabane", "Conakry", "Nouakchott"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Burundi?"
                Reponses := array{"Giuba", "Kinshasa", "Gitega", "Malabo"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: RD Congo?"
                Reponses := array{"Kinshasa", "Yamoussoukro", "Malabo", "Gitega"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Congo?"
                Reponses := array{"Libreville", "Porto-Novo", "Brazzaville", "Windhoek"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Gabon?"
                Reponses := array{"Lome", "Libreville", "Port Louis", "Pretoria"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Guinea Equatoriale?"
                Reponses := array{"Malabo", "Tripoli", "Bissau", "Banjul"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Camerun?"
                Reponses := array{"Yaounde", "Monrovia", "Brazzaville", "Port Louis"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Repubblica Centrafricana?"
                Reponses := array{"Yamoussoukro", "Maseru", "Bangui", "Porto-Novo"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Ciad?"
                Reponses := array{"N'Djamena", "Libreville", "Maseru", "Kigali"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Niger?"
                Reponses := array{"Brazzaville", "Gibuti", "Niamey", "Praia"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Nigeria?"
                Reponses := array{"Lome", "Antananarivo", "Abuja", "Bissau"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Benin?"
                Reponses := array{"Port Louis", "Kampala", "Tripoli", "Porto-Novo"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Togo?"
                Reponses := array{"Nairobi", "Lome", "Luanda", "Tunisi"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Ghana?"
                Reponses := array{"Accra", "Kigali", "Tripoli", "Porto-Novo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Costa d'Avorio?"
                Reponses := array{"Porto-Novo", "Antananarivo", "Malabo", "Yamoussoukro"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Liberia?"
                Reponses := array{"Mogadiscio", "Maseru", "N'Djamena", "Monrovia"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Sierra Leone?"
                Reponses := array{"Bissau", "Monrovia", "Banjul", "Freetown"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Guinea?"
                Reponses := array{"Yaounde", "Nouakchott", "Conakry", "Gibuti"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Guinea-Bissau?"
                Reponses := array{"Yaounde", "Moroni", "Gibuti", "Bissau"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Senegal?"
                Reponses := array{"Dakar", "Lome", "Bangui", "Monrovia"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Gambia?"
                Reponses := array{"Victoria", "Lome", "Banjul", "Freetown"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Mali?"
                Reponses := array{"Yamoussoukro", "Mbabane", "Il Cairo", "Bamako"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Burkina Faso?"
                Reponses := array{"Libreville", "Niamey", "Ouagadougou", "Tunisi"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Mauritania?"
                Reponses := array{"Rabat", "Nouakchott", "Addis Abeba", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Capo Verde?"
                Reponses := array{"Praia", "Il Cairo", "Abuja", "Antananarivo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Sao Tome e Principe?"
                Reponses := array{"Moroni", "Sao Tome", "Maseru", "Lusaka"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Angola?"
                Reponses := array{"Asmara", "Harare", "Praia", "Luanda"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Zambia?"
                Reponses := array{"Giuba", "Malabo", "Lusaka", "Mbabane"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Zimbabwe?"
                Reponses := array{"Port Louis", "Algeri", "Bangui", "Harare"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Malawi?"
                Reponses := array{"Lilongwe", "Kigali", "Gitega", "Khartum"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Mozambico?"
                Reponses := array{"Maputo", "Algeri", "Lome", "Il Cairo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Madagascar?"
                Reponses := array{"Kinshasa", "Mogadiscio", "Antananarivo", "Gitega"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Comore?"
                Reponses := array{"Il Cairo", "Moroni", "Bamako", "N'Djamena"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Mauritius?"
                Reponses := array{"Kampala", "Mbabane", "Port Louis", "Khartum"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Seychelles?"
                Reponses := array{"Bangui", "Victoria", "Bamako", "Harare"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Sudafrica?"
                Reponses := array{"Freetown", "Mbabane", "Pretoria", "Libreville"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Namibia?"
                Reponses := array{"Mogadiscio", "Dakar", "Addis Abeba", "Windhoek"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Botswana?"
                Reponses := array{"Yamoussoukro", "Gaborone", "Windhoek", "Antananarivo"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Lesotho?"
                Reponses := array{"Nouakchott", "Il Cairo", "Maseru", "Victoria"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Eswatini?"
                Reponses := array{"Mbabane", "Nouakchott", "Malabo", "Nairobi"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Stati Uniti?"
                Reponses := array{"Ottawa", "Washington", "Citta del Messico", "Tbilisi"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Canada?"
                Reponses := array{"Citta del Messico", "Ottawa", "Washington", "Praia"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Messico?"
                Reponses := array{"Washington", "Citta del Messico", "Ottawa", "Belgrado"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Guatemala?"
                Reponses := array{"Castries", "Tegucigalpa", "Citta del Guatemala", "Port-au-Prince"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Belize?"
                Reponses := array{"Bridgetown", "Managua", "Belmopan", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Honduras?"
                Reponses := array{"Castries", "Tegucigalpa", "Citta del Guatemala", "San Jose"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: El Salvador?"
                Reponses := array{"Castries", "San Salvador", "Belmopan", "Kingston"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Nicaragua?"
                Reponses := array{"Kingstown", "Citta di Panama", "Managua", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Costa Rica?"
                Reponses := array{"San Jose", "Bridgetown", "San Salvador", "Saint George's"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Panama?"
                Reponses := array{"Tegucigalpa", "Kingston", "Citta di Panama", "Belmopan"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Bahamas?"
                Reponses := array{"Belmopan", "Managua", "Bridgetown", "Nassau"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Cuba?"
                Reponses := array{"Citta di Panama", "Port-au-Prince", "L'Avana", "Tegucigalpa"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Giamaica?"
                Reponses := array{"Belmopan", "Santo Domingo", "Kingston", "Basseterre"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Haiti?"
                Reponses := array{"Nassau", "Port-au-Prince", "Tegucigalpa", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Repubblica Dominicana?"
                Reponses := array{"Nassau", "Tegucigalpa", "Bridgetown", "Santo Domingo"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Saint Kitts e Nevis?"
                Reponses := array{"Nassau", "Basseterre", "Tegucigalpa", "Port-au-Prince"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Antigua e Barbuda?"
                Reponses := array{"Santo Domingo", "Saint John's", "Belmopan", "Port of Spain"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Dominica?"
                Reponses := array{"Saint George's", "Belmopan", "Santo Domingo", "Roseau"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Santa Lucia?"
                Reponses := array{"Nassau", "Roseau", "Port of Spain", "Castries"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Saint Vincent?"
                Reponses := array{"Castries", "Kingstown", "Port-au-Prince", "Roseau"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Barbados?"
                Reponses := array{"Port of Spain", "Bridgetown", "Roseau", "Nassau"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Grenada?"
                Reponses := array{"Kingstown", "Santo Domingo", "Bridgetown", "Saint George's"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Trinidad e Tobago?"
                Reponses := array{"Saint John's", "Citta del Guatemala", "Port of Spain", "Bridgetown"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Colombia?"
                Reponses := array{"Bogota", "Lima", "Sucre", "Paramaribo"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Venezuela?"
                Reponses := array{"Brasilia", "Bogota", "Paramaribo", "Caracas"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Guyana?"
                Reponses := array{"Georgetown", "Santiago", "Montevideo", "Sucre"}
                BonneReponse := 0
            question:
                Enonce := "Qual e la capitale: Suriname?"
                Reponses := array{"Buenos Aires", "Caracas", "Brasilia", "Paramaribo"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Ecuador?"
                Reponses := array{"Georgetown", "Quito", "Brasilia", "Lima"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Peru?"
                Reponses := array{"Montevideo", "Buenos Aires", "Bogota", "Lima"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Brasile?"
                Reponses := array{"Asuncion", "Paramaribo", "Brasilia", "Bogota"}
                BonneReponse := 2
            question:
                Enonce := "Qual e la capitale: Bolivia?"
                Reponses := array{"Quito", "Sucre", "Georgetown", "Buenos Aires"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Paraguay?"
                Reponses := array{"Quito", "Paramaribo", "Bogota", "Asuncion"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Uruguay?"
                Reponses := array{"Asuncion", "Sucre", "Caracas", "Montevideo"}
                BonneReponse := 3
            question:
                Enonce := "Qual e la capitale: Cile?"
                Reponses := array{"Montevideo", "Santiago", "Asuncion", "Sucre"}
                BonneReponse := 1
            question:
                Enonce := "Qual e la capitale: Argentina?"
                Reponses := array{"Lima", "Buenos Aires", "Sucre", "Quito"}
                BonneReponse := 1
