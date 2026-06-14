# Reste à faire — plan complet (2026-06-12)

> ⚠️ **MISE À JOUR — Refonte 2026-06-14.** Décision : **repartir « propre », un quizz à la fois.**
> Un seul quizz est désormais **actif** en jeu : **Drapeaux du monde** (refondu en 3 difficultés —
> Facile = drapeaux communs, Moyen = moins communs, Difficile = **tous, pixelisés** ; l'ancien quizz
> séparé « Drapeaux pixelisés » a été **fusionné** dedans). Tous les autres quizz listés ci-dessous
> existent dans `verse/` mais sont **DORMANTS** (retirés du lobby et de la map UEFN). Ce document
> reste comme **historique** de la phase « tout générer » ; le plan courant est : réactiver et
> retravailler les quizz un par un. Catégorie unique en lobby : « Culture Generale ».

> RÈGLE (historique) : chaque quizz ≥ 80 questions, 5 langues, 3 difficultés (chaque palier ≥ 25).
> Audit de l'époque : 35 quizz, AUCUN palier <25, AUCUN quizz <80.

## FAIT cette session (Gi 28→34)
| Quizz | Gi | Cat | Q | Paliers | Images |
|---|---|---|---|---|---|
| Records naturels | 28 | Culture G | 81 | 26/28/27 | — texte |
| Inventions | 29 | Culture G | 83 | 29/27/27 | — texte |
| Dirigeants | 30 | Culture G | 106 | 27/36/43 | — texte |
| Sport | 31 | Culture G | 83 | 28/29/26 | — texte |
| Séries TV | 32 | Culture G | 88 | 25/33/30 | series/ |
| Jeux vidéo | 33 | Jeux Video | 99 | 33/35/31 | jeuxvideo/ |
| ~~Drapeaux pixelisés~~ | ~~34~~ | — | — | **FUSIONNÉ** dans « Drapeaux du monde » (palier Difficile) | flags_pixel/ |

Étoffés à 80+ : Mythologie 90, Espace 88, Botanique 88, Drapeaux régionaux 88.
Pipeline : filter_with_images() retire auto les pages Wikipédia sans image (séries/jeux).



## A. Quizz de la recherche Culture Générale ENCORE À CRÉER

| # | Quizz | Format | Cible | Notes |
|---|---|---|---|---|
| A1 | Records naturels | texte | 80+ | fleuves, monts, déserts, océans, lacs, îles, volcans, chutes |
| A2 | Inventions & découvertes | texte | 80+ | « Qui a inventé / découvert X ? » |
| A3 | Dirigeants (rois & présidents) | texte | 80+ | « De quel pays X est/était le dirigeant ? » |
| A4 | Séries TV | image | 80+ | affiche/logo → nom de la série (Wikipédia) |
| A5 | Jeux vidéo (hors Pokémon) | image | 80+ | jaquette/logo → nom du jeu (Wikipédia) |
| A6 | Sport (JO, disciplines, règles) | texte | 80+ | « Combien de joueurs… », « Quel sport… », villes des JO |
| A7 | Drapeaux pixelisés | image | 80+ | variante hardcore : vrais drapeaux floutés/pixelisés |
| A8 | Émojis (rébus) | image | 80+ | ⚠ nécessite pipeline police couleur (Segoe Emoji) + test rendu UEFN |

## B. Quizz EXISTANTS sous 80 questions → à étoffer à 80+

| Quizz | Actuel | À ajouter |
|---|---|---|
| Mythologie | 79 | +quelques (→ 84+) |
| Espace | 78 | +quelques (→ 84+) |
| Botanique | 78 | +quelques (→ 84+) |
| Drapeaux régionaux | 78 | +quelques (→ 84+) |

(Tous les autres quizz sont déjà ≥ 80 : Anatomie 80, Cinéma 83, Musique 82,
Littérature 80, Dates 80, Villes 110, Monuments 120, etc.)

## C. Bloqué par le moteur (à décider)

- **Vrai / Faux** : le HUD affiche 4 zones de réponse (les 4 arches). Un quizz à
  2 réponses laisserait 2 arches vides → demande une modif du moteur quiz_hud +
  quiz_manager pour gérer 2 réponses. NON fait, à arbitrer.

## D. Côté utilisateur (UEFN) — quand A et B seront finis

- Importer les dossiers d'images : celebrites, clubs, athletes, mytho, espace,
  botanique, regions (déjà prêts) + series, jeuxvideo, flags_pixel, emojis (à venir).
- Vérifier ic_anime.png dans icons.
- Compiler Verse.

## Ordre d'exécution
1. Étoffer B (mytho, espace, botanique, regions) à 80+.
2. Créer A1→A6 (text + image, 80+ chacun).
3. A7 (drapeaux pixelisés).
4. A8 (émojis) — en dernier, avec test rendu.
5. Câbler tout (Gi 28→…), sync, mettre à jour doc + mémoire.
6. (option) trancher C (Vrai/Faux).
