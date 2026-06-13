# Culture Générale — Recherche, analyse et plan d'implémentation

> Recherche du 2026-06-12. Objectif : couvrir TOUS les domaines « Culture Générale »
> en quizz GIGA complets, 3 difficultés, 5 langues (FR/EN/ES/DE/IT).
> Décision utilisateur : TOUT inclure, même les domaines sous licence
> (serveur privé + autorisation demandée de son côté).

## 1. Recherche : tous les domaines

Géographie : Drapeaux ✅, Capitales ✅, Pays sur carte ✅, Monuments ✅,
Villes (phase 2), Records/population (phase 2), Drapeaux régionaux (phase 2).
Histoire : Personnages historiques ✅, Dates/inventions (phase 2).
Sciences : Animaux ✅, Éléments chimiques ✅, Calcul mental ✅,
Espace (phase 2), Botanique/Anatomie (phase 2).
Arts : Tableaux célèbres ✅ (domaine public, zéro risque), Livres (phase 2).
Divertissement/Sports/Logos (sous licence, accepté) : Logos & marques,
clubs de foot, célébrités, mythologie, cinéma, musique, émojis,
athlètes (tous phase 2).

## 2. Architecture commune (éprouvée sur 13 quizz)

- 1 script `tools/build_<x>.py` : données + images + génération banque Verse
  séparée `verse/<x>_bank.verse` (blocs ≤205 questions, appels HISSÉS hors des
  `for` — erreur 3512 ; noms d'assets JAMAIS en `_1001`..`_2000` — piège UDIM).
- `tools/lib/quiz_common.py` : fetch vignettes Wikipédia REST (UA dédié, retry 429,
  3 workers max, vignette 320px telle quelle — les URLs retaillées font 400),
  canvas 246×164 fond sombre, emit_bank (tirages déterministes par seed,
  distracteurs du MÊME palier, noms uniques, banques ×5 ou FR+wrappers).
- Câblage quiz_manager : QzName×5 + QzCat + QzQ + branches Gi dans
  BankQuestionsOf / BankDiffsOf. Import UEFN du dossier d'images + Compiler Verse.
- Chaque palier doit avoir ≥ 25 questions (sessions de 25).

## 3. PHASE 1 — FAIT (2026-06-12), catégorie Culture Generale (Ci=0)

| Quizz | Gi | Questions | Paliers | Images |
|---|---|---|---|---|
| Pays sur carte | 6 | 195 | 41/63/91 | carte/ (silhouettes Natural Earth) |
| Animaux | 7 | 186 | 53/73/60 | animaux/ (photos Wikipédia) |
| Monuments celebres | 8 | 120 | 30/50/40 | monuments/ |
| Personnages historiques | 9 | 132 | 41/47/44 | persos/ |
| Tableaux celebres (réponse = peintre) | 10 | 96 | 26/30/40 | tableaux/ |
| Elements chimiques (texte) | 11 | 118 | 27/57/34 | — |
| Calcul mental (texte langue-neutre) | 12 | 300 | 100/100/100 | — |

- [x] Tout généré, câblé dans quiz_manager et synchronisé vers maps/quizz/Content
- [ ] Import UEFN des 5 dossiers d'images + Compiler Verse (utilisateur)

## 4. PHASE 2 — FAIT (2026-06-12), tout en Culture Generale (Ci=0)

| Quizz | Gi | Q | Paliers | Images |
|---|---|---|---|---|
| Records géo | 13 | 760 | 154/247/359 | — (Natural Earth ; REST Countries déprécié) |
| Logos & marques | 14 | 110 | 35/46/29 | logos/ |
| Célébrités | 15 | 127 | 44/45/38 | celebrites/ |
| Clubs de foot | 16 | 106 | 27/38/41 | clubs/ |
| Athlètes | 17 | 114 | 30/40/44 | athletes/ |
| Mythologie | 18 | 79 | 26/26/27 | mytho/ |
| Espace | 19 | 78 | 26/26/26 | espace/ |
| Botanique | 20 | 78 | 26/26/26 | botanique/ |
| Drapeaux régionaux | 21 | 78 | 26/26/26 | regions/ |
| Villes | 22 | 110 | 27/34/49 | — (texte) |
| Cinéma | 23 | 83 | 27/28/28 | — (texte) |
| Musique | 24 | 82 | 27/27/28 | — (texte) |
| Littérature | 25 | 80 | 27/27/26 | — (texte) |
| Dates historiques | 26 | 80 | 27/27/26 | — (texte) |
| Corps humain | 27 | 51 | 18/18/15 | — (texte) ⚠ paliers <25 |

- ⚠ Corps humain : paliers sous 25 q → les rounds de ce quizz feront 18/18/15
  questions (le moteur gère les rounds courts). À étoffer si besoin.
- [x] Tout généré, câblé (Gi 13→27), synchronisé.
- [ ] Import UEFN dossiers images : logos celebrites clubs athletes mytho espace
      botanique regions (+ ceux de phase 1) ; Compiler Verse (utilisateur).

## 5. PHASE 3 — reste possible (non fait)
- [ ] Émojis (rébus → réponse) : nécessite pipeline police couleur Noto + vérif
      rendu UEFN — reporté.
- [ ] Banques texte enrichies (inventions, rois/présidents, sciences diverses).
