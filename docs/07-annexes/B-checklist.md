# Annexe B — Checklist globale du projet

Une checklist unique pour suivre l'avancement du début à la publication. Coche au fur et à mesure.

## 0. Préparation
- [ ] PC compatible (16 Go RAM, SSD) — Windows/macOS
- [ ] Compte Epic + **2FA activée**
- [ ] Epic Games Launcher installé
- [ ] UEFN installé (sur SSD)
- [ ] Fortnite installé (pour les tests en session)

## 1. Conception (sur papier d'abord)
- [ ] Fiche de game design remplie (`02-conception/01`)
- [ ] Choix de la sanction (mauvaise réponse) décidé
- [ ] Type de portail choisi (téléporteur / zone / bouton)
- [ ] Layout du parcours dessiné
- [ ] Banque de questions rédigée et **vérifiée**
- [ ] Positions des bonnes réponses **mélangées**

## 2. Projet & structure
- [ ] Projet UEFN créé et sauvegardé
- [ ] Dossiers de l'Outliner créés (`_Parcours`, `_Portails`, …)
- [ ] Réglages d'île : **construction désactivée**, respawn défini, anti-triche

## 3. Construction de la scène (support physique du système Verse)
- [ ] Arène (ou palier gabarit) : sol + murs
- [ ] **4 portails colorés** + **4 mutator zones** alignées (ordre A,B,C,D)
- [ ] Téléporteur(s) de feedback/départ posés
- [ ] Spawn au départ + zone de victoire à la fin
- [ ] Impossible de contourner (sauts/build/contournement bloqués)

## 4. ⭐ Système Verse (cœur du projet — dossier `05`)
- [ ] Modules créés : `quiz_types`, `question_bank`, `player_state`, `quiz_hud`, `answer_portal`, `quiz_manager`, `leaderboard`
- [ ] `quiz_types` + `question_bank` compilent (données seules)
- [ ] `player_state` : état + registre (map agent→état) + nettoyage à la déco
- [ ] `answer_portal` : franchissement capté avec le bon index (Print)
- [ ] `quiz_manager` : évaluation bon/faux + progression par joueur
- [ ] `quiz_hud` : UI Verse par joueur (question, réponses colorées, score, chrono)
- [ ] `leaderboard` : classement (+ persistance si voulue, schéma figé)
- [ ] Concurrence : chrono (`race`/`branch`) + verrou anti double-validation
- [ ] Tous les `@editable` branchés (4 zones A→D, téléporteurs, réglages)
- [ ] Compilé sans erreur (`Ctrl+Shift+B`)

## 5. Validation multijoueur (test « pro »)
- [ ] 2+ joueurs progressent **indépendamment** (questions/scores distincts)
- [ ] Un joueur ne fait jamais avancer un autre
- [ ] Déconnexion en pleine partie → état nettoyé, pas de fuite
- [ ] Double entrée rapide dans une zone → une seule validation

## 6. Décoration & finition
- [ ] Thème cohérent appliqué
- [ ] Éclairage qui guide vers portails/panneaux
- [ ] Feedback audio (succès/échec)
- [ ] Zone de départ explicative + zone de victoire spectaculaire

## 7. Tests
- [ ] Chaque palier testé (PIE)
- [ ] Parcours complet testé du spawn à la victoire
- [ ] Test multijoueur (Launch Session)
- [ ] Cas limites (retour arrière, double zone, mort/respawn)
- [ ] Test par une personne extérieure
- [ ] Journal de bugs traité

## 8. Optimisation
- [ ] Décor inutile supprimé
- [ ] Lumières/VFX limités
- [ ] Aucun avertissement bloquant (mémoire/limites)
- [ ] Fluide en multijoueur

## 9. Publication
- [ ] Island Creator Program rejoint
- [ ] Titre + description + tags + nombre de joueurs
- [ ] Vignette 1920×1080 soignée
- [ ] Soumis à la revue Epic
- [ ] Code d'île reçu ✅

## 10. Après publication
- [ ] Stats surveillées (rétention, durée)
- [ ] Bugs corrigés / contenu ajouté
- [ ] Communication faite (communautés, vidéos)

→ Suite : [`C-depannage-faq.md`](./C-depannage-faq.md)
