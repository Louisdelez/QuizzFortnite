# 00.01 — Vue d'ensemble du projet

## 🎯 Objectif

Créer une **map Quizz jouable sur Fortnite** sur le thème de Fortnite (ou n'importe quel thème),
publiée et accessible via un **code d'île** que n'importe qui peut taper dans le jeu.

Le joueur :
1. Apparaît au **début d'un parcours** (couloir, route, chemin).
2. Lit une **question affichée au-dessus** de lui (sur un panneau).
3. Voit **4 portails**, chacun correspondant à une **réponse** (A, B, C, D).
4. **Traverse le portail** de la réponse qu'il pense correcte.
5. Si c'est **juste** → il avance vers la question suivante.
   Si c'est **faux** → il est sanctionné (téléporté en arrière, éliminé, ou tombe).
6. Il gagne quand il a répondu correctement à **toutes les questions** (la fin du parcours).

C'est le format le plus répandu des maps « QUIZZ » / « TRIVIA » que l'on trouve déjà
sur le Discover de Fortnite (ex. *Fortnite Trivia*, *OG Quiz*, *Guess the Map*).

## 🧩 Pourquoi ce format marche bien

- **Lisible** : le joueur comprend instantanément les règles (avancer = bien répondre).
- **Progressif** : sentiment de progression physique = motivation.
- **Modulaire** : chaque question est un « bloc » indépendant facile à dupliquer.
- **Sans code possible** : jouable uniquement avec des *devices* Fortnite (voir dossier `04`).
- **Évolutif** : on peut ajouter score, chrono, classement, vies, multijoueur.

## 🛠️ Avec quel outil ?

On utilise **UEFN — Unreal Editor for Fortnite** (aussi appelé *Fortnite Creative 2.0*),
l'outil **officiel et gratuit** d'Epic Games sorti en mars 2023.

UEFN apporte les outils d'Unreal Engine (rendu, lumière, terrain, assets 3D) **plus** un
langage de programmation appelé **Verse** pour coder ses propres mécaniques.

> ℹ️ Il existe aussi le **Mode Créatif classique** (dans le jeu, sur console/PC),
> plus limité mais plus simple. Cette doc privilégie **UEFN** (PC) car c'est l'outil
> moderne, plus puissant, et indispensable pour Verse et la publication pro.
> Voir [`../01-prerequis/02-installation-uefn.md`](../01-prerequis/02-installation-uefn.md).

## 🏁 Livrables du projet

| # | Livrable | Dossier de référence |
|---|----------|----------------------|
| 1 | Un projet UEFN créé et sauvegardé | `03-construction-map` |
| 2 | Un parcours/couloir construit | `03-construction-map` |
| 3 | Des paliers de question avec 4 portails chacun | `03` + `04` |
| 4 | Un affichage de question fonctionnel | `04` |
| 5 | (Optionnel) Un système Verse de banque de questions | `05-verse` |
| 6 | Une map testée et publiée avec un code d'île | `06-tests-publication` |

## ⏱️ Estimation de charge (indicative)

| Tâche | Débutant | Habitué |
|-------|----------|---------|
| Installation + prise en main UEFN | 1–2 h | 15 min |
| Construire 1 palier de question (4 portails) | 1–2 h | 20 min |
| 10 questions (version devices) | 1–2 jours | 3–4 h |
| Système Verse complet | +2–4 jours | +1 jour |
| Tests + publication | quelques heures + 1–3 j de review Epic | idem |

## 🔜 Étape suivante

→ [`02-glossaire.md`](./02-glossaire.md) pour maîtriser le vocabulaire,
puis [`03-references.md`](./03-references.md) pour les sources officielles.
