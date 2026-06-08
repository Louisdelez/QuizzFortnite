# Annexe D — Roadmap & améliorations

Idées d'évolution pour passer d'une v1 jouable à une map riche et rejouable. Classées par priorité/effort.

## 🟢 v1 — Map jouable (objectif minimal)
- [ ] Parcours linéaire de **5–10 questions**
- [ ] 4 portails par palier (téléporteurs ou zones)
- [ ] Question affichée (Billboard) + réponses étiquetées
- [ ] Sanction douce (retour au palier) + checkpoints
- [ ] Feedback HUD « Correct / Faux »
- [ ] Zone de départ (règles) + zone de victoire
- [ ] **Publiée** avec un code d'île

## 🟡 v2 — Confort & rejouabilité
- [ ] Passer la logique en **Verse** (banque centralisée) si beaucoup de questions
- [ ] **Score** (+points par bonne réponse) et affichage du score
- [ ] **Sons** de succès/échec + musique d'ambiance
- [ ] **Ordre aléatoire** des questions (anti par-cœur, rejouabilité)
- [ ] **Compteur** de bonnes réponses / progression visible (ex. « 7/20 »)
- [ ] Variété de thèmes de questions (lore, armes, maps, musique)

## 🟠 v3 — Profondeur de jeu
- [ ] **Chronomètre** / mode course contre la montre
- [ ] **Classement** (leaderboard) des meilleurs temps/scores
- [ ] **Multijoueur indépendant** : progression **par agent** (table `agent → état`)
- [ ] **Vies / coeurs** : nombre d'erreurs autorisées avant game over
- [ ] **Paliers spéciaux** : bonus, pièges annoncés, questions « respiration »
- [ ] **Difficulté sélectionnable** (facile / normal / hardcore) au départ

## 🔵 v4 — Polish & rétention
- [ ] **Réponses en images** (devine le skin / la map / l'arme)
- [ ] **Changements d'ambiance** tous les X paliers (progression visuelle)
- [ ] **Cinématiques** d'intro / de victoire (Sequencer)
- [ ] **Récompenses cosmétiques** de fin (effets, podium, photo finale partageable)
- [ ] **Mode versus** : plusieurs joueurs concourent en simultané
- [ ] **Mises à jour régulières** de la banque de questions (contenu frais)

## 🧠 Idées techniques (Verse) à explorer
- **État par joueur** : `map` de `agent` vers une structure de progression.
- **Tirage aléatoire** des questions / des positions de réponses.
- **Sauvegarde de score** persistante (selon API disponible).
- **Désactivation/réactivation** des zones entre questions pour la robustesse.
- **Système d'indices** (révéler une mauvaise réponse contre une pénalité).

## 📌 Méthode d'évolution
1. **Publie tôt** une v1 simple et fonctionnelle.
2. **Mesure** (rétention, durée, points de blocage) via les stats créateur.
3. **Priorise** les améliorations qui augmentent le **fun** et la **rétention**.
4. **Itère** par petites mises à jour fréquentes plutôt qu'une refonte massive.

> 🎯 Règle directrice : chaque évolution doit rendre le jeu **plus fun** ou **plus rejouable**.
> Si une fonctionnalité n'apporte ni l'un ni l'autre, elle peut attendre.

→ Retour à l'[index](../README.md)
