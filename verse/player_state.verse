using { /Verse.org/Simulation }

# ============================================================
#  player_state.verse — Etat PAR JOUEUR + registre central
# ============================================================

# Etat d'un joueur (classe = reference, champs mutables in-place).
quiz_player_state := class:
    var Order : []int = array{}     # ordre des questions pour ce joueur
    var Position : int = 0          # segment courant (0..Count)
    var Score : int = 0
    var Streak : int = 0            # bonnes reponses consecutives
    var Finished : logic = false
    var Locked : logic = false      # anti double-validation

    # --- Chronometre par question ---
    var TimeLeft : float = 0.0      # temps restant sur la question courante (s)
    var LastShownSecond : int = -1  # derniere seconde affichee (anti-rafraichissement)

    # Index reel de la question courante dans la banque (faillible).
    CurrentQuestionIndex()<decides><transacts> : int =
        Order[Position]

# Registre : map agent -> etat (lookup O(1), iterable pour le classement).
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
