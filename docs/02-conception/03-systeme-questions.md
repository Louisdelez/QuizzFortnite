# 02.03 — Système de questions (modèle de données)

Comment **structurer** tes questions pour qu'elles soient faciles à construire ET à coder plus tard.

## 🧱 Structure d'une question

Chaque question possède toujours les mêmes champs :

| Champ | Description | Exemple |
|-------|-------------|---------|
| `id` | Numéro/identifiant du palier | `3` |
| `question` | Le texte affiché sur le panneau | « Quelle arme tire des roquettes ? » |
| `reponses[4]` | Les 4 réponses (A, B, C, D) | `["Lance-roquettes","Fusil à pompe","Pioche","Mur"]` |
| `bonne_reponse` | L'index de la bonne réponse (0–3, ou A–D) | `0` (= A) |
| `difficulte` | Facile / Moyen / Difficile | `Facile` |
| `theme` | Sous-thème (optionnel) | `Armes` |

> 🔑 **Convention importante** : décide **dès maintenant** si tu numérotes les portails
> **0,1,2,3** (façon programmeur, conseillé pour Verse) ou **A,B,C,D** (affichage joueur),
> et garde la correspondance **A=0, B=1, C=2, D=3** partout. Ça évite d'innombrables bugs.

## 📋 Format tableur (recommandé pour s'organiser)

Tiens ta banque de questions dans un **tableur** (Excel / Google Sheets / CSV). Colonnes :

```
id | question | repA | repB | repC | repD | bonne (A/B/C/D) | difficulte | theme
```

Exemple :

| id | question | repA | repB | repC | repD | bonne | difficulte | theme |
|----|----------|------|------|------|------|-------|-----------|-------|
| 1 | Combien de joueurs max en BR classique ? | 50 | 100 | 150 | 200 | B | Facile | Général |
| 2 | Quel matériau est le plus résistant ? | Bois | Pierre | Métal | Or | C | Facile | Build |
| 3 | Comment s'appelle le bus de début ? | Battle Bus | Sky Van | War Jet | Combat Cab | A | Facile | Lore |

> 📦 Une banque de **questions Fortnite prête à l'emploi** existe dans
> [`../07-annexes/A-banque-questions-fortnite.md`](../07-annexes/A-banque-questions-fortnite.md).

## 🔁 Du tableur à la map

- **Version devices (sans code)** : chaque ligne du tableur = **un palier physique** que tu construis.
  Le panneau affiche `question`, les 4 portails affichent `repA…repD`, et tu câbles le portail
  `bonne` vers le palier suivant. (Dossier `04`.)
- **Version Verse** : tu **recopies** le tableur dans un **tableau Verse** (array de structures),
  et un script affiche/valide automatiquement. (Dossier `05`, voir `03-banque-questions.md`.)

## ✅ Règles de qualité d'une banque de questions

1. **Une seule bonne réponse** vérifiable et incontestable.
2. **Distracteurs crédibles** : les 3 mauvaises réponses doivent sembler possibles.
3. **Pas de répétition** de la même bonne position (ne mets pas toujours « A » correct →
   **mélange** les positions des bonnes réponses).
4. **Réponses de longueur comparable** (évite que la bonne soit toujours la plus longue).
5. **Langue cohérente** et orthographe correcte (ça se voit en jeu).
6. **Vérifie tes faits** (surtout le lore Fortnite, qui change avec les saisons).

## 🧪 Mini-checklist par question

- [ ] La question est claire et tient sur le panneau.
- [ ] Les 4 réponses sont courtes.
- [ ] La bonne réponse est notée et vérifiée.
- [ ] La position de la bonne réponse varie par rapport aux questions voisines.
- [ ] Difficulté cohérente avec sa place dans le parcours.

→ Suite : [`04-progression-difficulte.md`](./04-progression-difficulte.md)
