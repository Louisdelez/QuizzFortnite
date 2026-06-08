# 02.02 — Level design : le parcours et les 4 portails

Comment agencer physiquement le chemin, les questions et les 4 portails. C'est **le cœur** de ce type de map.

## 🛣️ Le principe du « couloir à paliers »

La map est une **succession de segments**. Chaque segment = **1 palier de question** :

```
DÉPART → [Palier 1] → [Palier 2] → [Palier 3] → ... → [Palier N] → ARRIVÉE 🏁
```

Chaque palier a la même structure répétée :

```
                  ┌───────────────────────────────┐
                  │   PANNEAU : la question        │   (Billboard au-dessus)
                  └───────────────────────────────┘
   ── zone d'attente / sol ──────────────────────────────
      ┌────────┐   ┌────────┐   ┌────────┐   ┌────────┐
      │PORTAIL │   │PORTAIL │   │PORTAIL │   │PORTAIL │
      │   A    │   │   B    │   │   C    │   │   D    │
      └────────┘   └────────┘   └────────┘   └────────┘
          │            │ (bon)       │            │
          ▼            ▼             ▼            ▼
        SANCTION   PALIER SUIVANT  SANCTION    SANCTION
```

## 🚪 Que sont concrètement les « 4 portails » ?

Plusieurs implémentations possibles (détails techniques au dossier `04`) :

| Implémentation | Comment ça marche | Avantage |
|----------------|-------------------|----------|
| **Téléporteurs visibles** | 4 *Teleporter devices*. Celui de la bonne réponse mène au palier suivant. | Le plus simple, l'effet « portail » est natif. |
| **Zones au sol (Mutator Zones)** | 4 volumes invisibles devant 4 « portes » décoratives. Entrer dans la bonne zone déclenche l'avancée. | Très flexible, marche bien avec Verse. |
| **Couloirs physiques** | 4 vrais couloirs ; 3 mènent à un mur/piège, 1 continue. | Immersif, zéro logique de téléport. |
| **Boutons** | 4 *Button devices* sous chaque réponse. Le bon ouvre la barrière suivante. | Choix explicite (appuyer), bon pour un quiz « réfléchi ». |

> ✅ **Recommandé** : **Téléporteurs** (effet portail immédiat) **ou** **Mutator Zones** + portes décoratives.
> Les deux se câblent sans code (dossier `04`) et se pilotent en Verse (dossier `05`).

## 📐 Dimensions & repères

- **Largeur du palier** : assez large pour aligner 4 portails espacés (ex. ~12–20 m).
- **Espace entre portails** : suffisant pour qu'on **lise bien** quelle réponse est laquelle.
- **Le panneau de question** : placé **au-dessus et au centre**, visible dès l'entrée du palier.
- **Étiquette par portail** : un mini-panneau « A », « B », « C », « D » + le texte de la réponse,
  juste devant chaque portail.

## 🧭 Layouts possibles du parcours global

| Layout | Description | Pour |
|--------|-------------|------|
| **Linéaire droit** | Une longue ligne droite, paliers à la suite. | Simplicité maximale. |
| **En lacets (S)** | Le couloir tourne entre les paliers. | Map compacte, plus jolie. |
| **Tour ascendante** | On monte d'étage en étage à chaque bonne réponse. | Sentiment de progression fort. |
| **Hub central** | Les paliers rayonnent autour d'un centre. | Original, plus complexe à câbler. |

## 🔒 Empêcher la triche / les sauts

- Mets des **murs / barrières** entre les paliers : impossible de voir/atteindre la suite sans répondre.
- Bloque les **constructions** et les **sauts par-dessus** (réglages d'île : désactiver le build,
  hauteur de murs suffisante, plafonds si nécessaire).
- Place les **checkpoints** (point de réapparition) à l'entrée de chaque palier validé.

## 🗺️ Plan papier avant de construire

Dessine d'abord ton parcours sur papier / un schéma :
1. Numérote les paliers (1 → N).
2. Pour chaque palier, note la **bonne réponse** (quel portail) et où mènent les mauvais.
3. Place les **checkpoints**.
4. Repère l'**entrée** (spawn) et la **sortie** (zone de victoire).

→ Suite : [`03-systeme-questions.md`](./03-systeme-questions.md)
