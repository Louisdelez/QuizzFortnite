# 00.02 — Glossaire

Vocabulaire indispensable pour comprendre le reste de la documentation.

## Outils & plateformes

| Terme | Définition |
|-------|------------|
| **Fortnite Creative** | Mode de création « dans le jeu », sur console/PC. Version 1.0 simple et accessible. |
| **Creative 2.0** | Nom marketing désignant la nouvelle génération de création, propulsée par UEFN. |
| **UEFN** | *Unreal Editor for Fortnite*. Logiciel PC officiel d'Epic pour créer des maps avancées. |
| **Unreal Engine** | Le moteur de jeu d'Epic sur lequel repose UEFN. |
| **Verse** | Langage de programmation d'Epic, utilisé dans UEFN pour coder des mécaniques. |
| **Fab** | Marketplace d'assets d'Epic (modèles 3D, matériaux) accessible dans UEFN. |
| **Discover** | L'écran d'accueil de Fortnite où les joueurs trouvent les maps publiées. |
| **Island Creator Program** | Programme gratuit à rejoindre pour pouvoir publier des îles. |

## Concepts de création

| Terme | Définition |
|-------|------------|
| **Île / Island / Map** | Le niveau jouable que tu crées et publies. |
| **Code d'île** | Identifiant unique `0000-0000-0000` permettant de lancer ta map dans Fortnite. |
| **Device (appareil)** | Brique de gameplay préfabriquée (bouton, téléporteur, zone, panneau…). Cœur de Creative. |
| **Prop** | Élément de décor (mur, arbre, caisse, meuble…) sans logique de gameplay. |
| **Gallery (galerie)** | Lot de props/devices regroupés par thème dans le navigateur de contenu. |
| **Event binding** | « Câblage » : connecter la sortie d'un device à l'entrée d'un autre, sans code. |
| **Channel / Canal** | Fil de communication numéroté reliant des devices entre eux. |
| **Mutator Zone** | Volume invisible qui détecte/agit sur les joueurs qui y entrent ou en sortent. |
| **Trigger (déclencheur)** | Device qui émet un signal quand une condition se produit. |
| **Teleporter (téléporteur)** | Device qui déplace instantanément un joueur d'un point à un autre. |
| **Billboard (panneau)** | Device affichant un **texte** dans le monde (idéal pour la question). |
| **HUD Message** | Message texte affiché sur l'interface (écran) du joueur. |
| **Player Spawner / Spawn Pad** | Point d'apparition des joueurs. |

## Concepts de programmation Verse

| Terme | Définition |
|-------|------------|
| **`creative_device`** | Classe de base dont hérite tout device codé en Verse. |
| **`@editable`** | Annotation exposant une propriété pour la régler dans l'éditeur UEFN. |
| **`OnBegin`** | Fonction exécutée au démarrage de la partie (point d'entrée). |
| **Event / Subscribe** | S'abonner à un événement d'un device (ex. « bouton pressé »). |
| **`agent`** | Représente un joueur (ou IA) dans le code Verse. |
| **`var`** | Mot-clé déclarant une variable **modifiable** (sinon constante par défaut). |
| **Array (`[]`)** | Tableau/liste (ex. la liste des questions). |
| **PIE** | *Play In Editor* : tester la map directement dans l'éditeur. |

## Game design

| Terme | Définition |
|-------|------------|
| **Boucle de jeu (gameplay loop)** | Cycle répété par le joueur : voir question → choisir → avancer. |
| **Palier / Segment** | Une étape du parcours = 1 question + 4 portails. |
| **Checkpoint** | Point de sauvegarde de progression où le joueur réapparaît après une erreur. |
| **Distracteur** | Une mauvaise réponse plausible (parmi les 3 fausses). |

→ Suite : [`03-references.md`](./03-references.md)
