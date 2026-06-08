# 06.01 — Playtest (tester la map)

Tester tôt et souvent évite de découvrir un bug bloquant après des heures de construction.

## ▶️ Deux modes de test

| Mode | Comment | Pour quoi |
|------|---------|-----------|
| **Play in Editor (PIE)** | **Alt + P** dans UEFN | Itération rapide en solo. Voir les `Print` dans l'Output Log. |
| **Launch Session** | Pousser la session sur les serveurs Epic (ouvre Fortnite) | Test **multijoueur réel**, conditions proches de la prod. |

## ✅ Plan de test fonctionnel

Teste **chaque palier** :
- [ ] La **question** s'affiche correctement (texte, taille, position).
- [ ] Les **4 réponses** sont lisibles et bien associées à leur portail.
- [ ] Le **bon portail** fait **avancer** au palier suivant.
- [ ] Les **3 mauvais** déclenchent la **sanction** prévue.
- [ ] Le **feedback** (HUD « Correct/Faux », sons) fonctionne.
- [ ] Le **checkpoint** réapparaît au bon endroit après une erreur.
- [ ] Impossible de **contourner** (sauter, construire, passer à côté).

Teste le **parcours complet** :
- [ ] Du **spawn** jusqu'à la **victoire** sans blocage.
- [ ] L'**écran/zone de victoire** se déclenche au bon moment.
- [ ] Rejouer fonctionne (relancer une partie).

## 👥 Test multijoueur

- [ ] Plusieurs joueurs peuvent **avancer indépendamment** (la téléportation cible le bon joueur).
- [ ] Pas d'interférence entre joueurs (un joueur ne fait pas avancer/sanctionner un autre).
- [ ] Performances correctes avec plusieurs joueurs.

> ⚠️ Avec le script Verse de base (progression **globale**), le multijoueur indépendant n'est
> pas garanti. Pour un vrai multi, prévois l'état **par agent** (voir `07/D-roadmap`).

## 🐞 Tester les cas limites

- Le joueur **revient en arrière** : peut-il casser la logique ?
- Le joueur **entre dans deux zones** rapidement : double validation ? (garde-fou `EnAttente`).
- Le joueur **meurt** / se déconnecte / réapparaît : l'état reste-t-il cohérent ?
- Réponses **identiques** ou questions mal saisies : relis ta banque.

## 🧑‍🤝‍🧑 Test utilisateur (le plus précieux)

- Fais tester par **quelqu'un qui ne connaît pas** la map.
- Observe **sans l'aider** : où hésite-t-il ? Que ne comprend-il pas ?
- Note la **frustration** (sanctions trop dures ?) et l'**ennui** (trop facile / trop long ?).

## 📝 Journal de bugs

Tiens une liste simple :
```
[ ] Palier 4 : la zone C ne déclenche rien → vérifier taille/branchement
[ ] HUD "Faux" reste affiché trop longtemps → réduire Display Time
[ ] On peut sauter par-dessus le mur du palier 2 → ajouter un plafond
```

→ Suite : [`02-optimisation.md`](./02-optimisation.md)
