# 02.01 — Game design du quiz

Avant de construire, on définit **les règles**. Un bon game design écrit fait gagner des heures.

## 🔁 La boucle de jeu (gameplay loop)

```
        ┌──────────────────────────────────────────┐
        │  1. Le joueur arrive sur un PALIER        │
        │  2. Il LIT la question affichée au-dessus │
        │  3. Il CHOISIT 1 des 4 portails           │
        │  4. RÉSOLUTION :                          │
        │       • Bon portail  → AVANCE (palier +1) │
        │       • Mauvais      → SANCTION           │
        │  5. Répéter jusqu'à la FIN                 │
        └──────────────────────────────────────────┘
```

## ⚖️ Décisions de design à figer

Coche/choisis tes options. Elles déterminent la construction et le câblage.

### 1. Que se passe-t-il sur une mauvaise réponse ?
| Option | Effet | Difficulté | Pour qui |
|--------|-------|-----------|----------|
| **A. Retour au début du palier** | Le joueur recommence la même question | 🟢 Doux | Grand public, casual |
| **B. Retour au tout début** | Recommence tout le quiz | 🔴 Punitif | Hardcore / speedrun |
| **C. Élimination / mort** | Le joueur est éliminé (puis respawn) | 🟠 Moyen | Style « Deathrun » |
| **D. Chute / piège** | Le mauvais portail mène à un trou / lave | 🟠 Moyen | Fun, spectaculaire |
| **E. Pénalité de temps/score** | Perd des points ou du temps, mais continue | 🟢 Doux | Mode chrono / scoré |

> ✅ **Recommandé pour une v1** : **Option A** (retour au début du palier avec **checkpoint**).
> C'est le plus juste et le moins frustrant.

### 2. Y a-t-il un score ?
- **Non** : seul compte d'arriver au bout (simple). ✅ pour v1.
- **Oui** : +X points par bonne réponse, classement (*leaderboard*). → nécessite souvent Verse (`05`).

### 3. Y a-t-il un chronomètre ?
- **Non** : le joueur prend son temps. ✅ pour v1.
- **Oui** : course contre la montre, idéal pour le compétitif. Device *Timer* / Verse.

### 4. Solo ou multijoueur ?
- **Solo / chacun pour soi** : le plus simple. Chaque joueur avance à son rythme.
- **Compétitif** : premier à finir gagne. Attention au câblage (un téléporteur déplace
  **le joueur** qui déclenche, pas tout le monde — gère bien le ciblage).

### 5. Combien de questions ?
- Démarre avec **5 à 10 questions** pour une v1 jouable.
- Vise **20–50** pour une map publiable « sérieuse ».

## 🧠 Règles d'écriture des questions

- **1 seule bonne réponse** par question (pas d'ambiguïté).
- **3 distracteurs plausibles** (mauvaises réponses crédibles, pas absurdes).
- Réponses **courtes** (tiennent sur un panneau de portail).
- **Difficulté croissante** : faciles au début, dures à la fin (voir `04-progression-difficulte.md`).
- Évite les questions qui **vieillissent vite** (« skin du moment ») si tu veux une map durable.

## 🏆 Conditions de victoire / défaite

| | Condition |
|---|-----------|
| **Victoire** | Atteindre la zone de fin après le dernier palier. |
| **Défaite** (optionnelle) | Selon l'option choisie : élimination, temps écoulé, etc. |
| **Fin de partie** | Écran de victoire (HUD), téléportation vers une salle de fin, feu d'artifice… |

## 📄 Modèle de fiche de game design (à remplir)

```
Nom de la map      : ____________________
Thème              : Fortnite / autre : __________
Nombre de questions: ____
Mauvaise réponse   : A / B / C / D / E
Score              : Oui / Non
Chrono             : Oui / Non
Mode               : Solo / Compétitif
Approche technique : Devices seuls / Verse
Public cible       : Casual / Hardcore
```

→ Suite : [`02-level-design-parcours.md`](./02-level-design-parcours.md)
