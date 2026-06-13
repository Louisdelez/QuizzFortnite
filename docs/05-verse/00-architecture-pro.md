# 05.00 — Architecture professionnelle (Verse only)

Cette section décrit un **système de quiz entièrement piloté par Verse**, conçu comme un vrai
projet logiciel : **modulaire**, **multijoueur**, **scalable**, **maintenable**.

> 🎯 Objectif : aucune logique en *event binding* manuel. Les devices (zones, téléporteurs)
> ne sont que des **capteurs/actionneurs** référencés par le code. **Tout le cerveau est en Verse.**

## 🧭 Décision d'architecture n°1 — Arène vs Parcours

Deux topologies possibles, toutes deux 100 % Verse :

| Mode | Description | Affichage question | Multijoueur | Recommandé |
|------|-------------|--------------------|-------------|-----------|
| **Arène** | 1 salle, 4 portails fixes. La question **défile** par joueur. | **UI Verse par joueur** | Progression **indépendante** par joueur | ✅ Pour un système pro scalable |
| **Parcours** | Couloir de N paliers physiques, 4 portails par palier. | Panneau **par palier** (question fixe) | Chacun avance physiquement | Pour le visuel « route » |

- **Mode Arène** = le standard « pro » : une banque de centaines de questions, état par joueur,
  UI personnalisée, score, chrono, classement. **C'est l'architecture par défaut de cette doc.**
- **Mode Parcours** = le visuel « chemin + portails » de ton idée initiale ; le même code
  s'applique, en plaçant un `quiz_manager` (ou des portails) par palier. Voir la note en fin de page.

> 💡 Le code ci-dessous est écrit pour le **Mode Arène** mais est **agnostique** : il évalue
> « tel joueur a franchi le portail d'index i » contre « sa question courante ». Tu peux le
> réutiliser tel quel en mode Parcours.

## 🧩 Décision d'architecture n°2 — Découpage en modules

On sépare les responsabilités (*separation of concerns*). Chaque fichier `.verse` = un rôle :

```
quiz/
├── quiz_types.verse        # Types de données (question, enums, config)
├── question_bank.verse     # Banque de questions + accès + mélange aléatoire
├── player_state.verse      # État par joueur (classe) + registre (map agent→état)
├── quiz_hud.verse          # UI Verse par joueur (question, réponses, score, chrono)
├── map_builder.verse       # GÉNÉRATION procédurale (SpawnProp) selon N questions ⭐
├── answer_portal.verse     # (approche manuelle) zone → événement "réponse i"
├── quiz_manager.verse      # ORCHESTRATEUR (creative_device) : relie tout
└── leaderboard.verse       # Classement / scores de fin

tools/
└── generate_quiz.py        # Générateur externe (aperçu + extraits Verse) ⭐
```

> ⭐ `map_builder.verse` + `tools/map/generate_quiz.py` sont le cœur de la **génération automatique**
> (chemin droit + 4 portails) selon le nombre de questions. Voir [`12`](./12-generation-procedurale.md)
> et [`13`](./13-generateur-externe.md). Dans l'approche **procédurale**, `answer_portal` (zones)
> n'est **pas** utilisé : la détection se fait par **position**.

| Module | Responsabilité unique | Fiche |
|--------|----------------------|-------|
| `quiz_types` | Décrire les **données** (struct/enum), zéro logique | [`03`](./03-types-et-banque.md) |
| `question_bank` | **Fournir** les questions, mélanger | [`03`](./03-types-et-banque.md) |
| `player_state` | **Suivre** chaque joueur (score, progression) | [`04`](./04-etat-joueur.md) |
| `quiz_hud` | **Afficher** l'UI par joueur | [`05`](./05-ui-verse.md) |
| `answer_portal` | **Capter** le choix (franchir un portail) | [`06`](./06-portails-answer.md) |
| `quiz_manager` | **Orchestrer** : évaluer, faire progresser, finir | [`07`](./07-orchestrateur.md) |
| `leaderboard` | **Classer** et présenter les scores | [`08`](./08-score-classement.md) |

## 🔄 Décision d'architecture n°3 — Flux de données (event-driven)

```
                 ┌──────────────┐
   Joueur franchit│ answer_portal│  (mutator_zone encapsulée)
   un portail  ──►│  émet i (0-3)│
                 └──────┬───────┘
                        │ AnswerSelectedEvent(agent, i)
                        ▼
                 ┌──────────────┐   lit/écrit   ┌──────────────┐
                 │ quiz_manager │◄─────────────►│ player_state │ (map agent→état)
                 │ (orchestre)  │               └──────────────┘
                 └──────┬───────┘
            ┌───────────┼────────────┬───────────────┐
            ▼           ▼            ▼               ▼
      question_bank  quiz_hud   teleporter      leaderboard
      (question i)  (MAJ écran) (feedback)      (fin de partie)
```

- **Tout est événementiel** : on **s'abonne** aux événements (portail franchi, joueur ajouté/retiré)
  plutôt que de sonder en boucle.
- **L'orchestrateur ne contient pas les données** : il **coordonne** des modules spécialisés.

## 🧠 Décision d'architecture n°4 — État par joueur

- Chaque joueur a une **instance de classe** `quiz_player_state` (référence → champs mutables).
- Stockée dans une **map** `[agent]quiz_player_state` (lookup O(1), **itérable** pour le classement).
- **Nettoyage** au départ du joueur via `PlayerRemovedEvent` (évite les fuites mémoire).
- Alternative : `weak_map` (auto-nettoyage) — mais non itérable → moins pratique pour le classement.
  (Détaillé en [`04`](./04-etat-joueur.md).)

## 🧵 Décision d'architecture n°5 — Concurrence

- **Chrono par joueur** via `spawn{}`/`branch` + `Sleep`, arrêté proprement par `race`.
- **Anti double-déclenchement** via un verrou d'état (`logic`).
- Détaillé en [`09-concurrence-async.md`](./09-concurrence-async.md).

## 🏗️ Décision d'architecture n°6 — Génération procédurale (recommandée)

Pour une map **simple, épurée et générée selon le nombre de questions**, on n'utilise **pas** de
zones/téléporteurs placés à la main. À la place :

| Brique | Technique Verse | Conséquence |
|--------|-----------------|-------------|
| Géométrie (sol, portails) | `SpawnProp(Asset, Pos, Rot)` au runtime | **Générée** depuis N questions |
| Détection de la réponse | position du joueur (`GetTransform().Translation`) | **Pas de mutator zone** |
| Avancer / renvoyer | `character.TeleportTo[]` | **Pas de téléporteur device** |

➡️ Résultat : **un seul device à poser** (le manager) + 2 références de props. Changer la banque
de questions **régénère** toute la map. C'est l'approche **recommandée** pour ta demande.
Modules ajoutés : `map_builder.verse` ([`12`](./12-generation-procedurale.md)) et l'outil externe
`tools/map/generate_quiz.py` ([`13`](./13-generateur-externe.md)).

> ⚠️ **Limite confirmée** : Verse **ne peut pas** spawner de *devices* au runtime (zones,
> téléporteurs). D'où la détection par **position** et le déplacement par **code**.

## ⚙️ Ce qui reste « hors code » (incompressible)

Même « 100 % Verse », il reste **un minimum** à placer dans la map :

- **Approche procédurale (recommandée)** : **1 seul device** (`quiz_manager`) + 2 **assets de
  props** (`creative_prop_asset` pour le sol et le portail) branchés en `@editable`. C'est tout.
- **Approche manuelle (dossier `04`)** : 4 **mutator zones** + **téléporteurs** + le device.

➡️ Dans les deux cas, le code **crée toute la logique et l'UI** ; le reste n'est que des
**points d'ancrage** physiques.

## 🛣️ Note Mode Parcours
Pour le visuel « route » : duplique le palier physique et, soit un seul `quiz_manager` gère des
portails par palier (chaque palier = un groupe de 4 zones + un index de question fixe), soit
chaque palier porte sa propre instance. L'**état par joueur** et le **score** restent gérés
par les mêmes modules. Voir [`07-orchestrateur.md`](./07-orchestrateur.md) §« Mode Parcours ».

→ Suite : [`01-fondamentaux-verse.md`](./01-fondamentaux-verse.md)
