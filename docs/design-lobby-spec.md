# Spec — « Lobby / Sélection du Quizz » (reproduite à l'identique)

Extrait du bundle design Claude (`Lobby - Selection Quizz.html` + `lobby.css` + `styles.css`,
copies à jour dans `docs/design/`). Référence 1920×1080. **Implémentée en Verse au pixel
(quiz_manager.verse) avec textures cuites aux valeurs exactes (tools/build_lobby_textures.py).**

## Tokens (couleurs)
| Token | Hex | Usage |
|---|---|---|
| `--brand` | `#7C5CFF` (→ `#5B3CE0`) | violet marque (badge, VOIR PLUS, n° de slot) |
| `--brand-2` | `#36E0FF` (→ `#1C8FCB`) | cyan (icône Catégorie, valeur filtre, Non classé) |
| `--gold` | `#FFD24A` | sélection « Classé » |
| `--a` | `#FF3D57` | rouge (Difficile, bouton retirer) |
| `--c` | `#23D26A` / `#2BE07A→#0E9B45` | vert (Facile, VALIDER, coche ajoutée) |
| `--d` | `#FFC21F` | jaune (Moyen) |
| fenêtre | `#243056 → #161E3A` | dégradé vertical + bordure 2px blanc .30 + liseré cyan→violet |
| verre carte | blanc .045 fill / .14 bordure | `.lb-quiz`, slots ; hover .10/.30 |
| texte | blanc / `#B2B5C0` (dim .66) / `#7C8295` (mute .42) | sur fond fenêtre |

Polices : Anton (display) + Fredoka (UI) → police Fortnite imposée en Verse (tailles px conservées).

## Cotes calculées (box-sizing border-box, fenêtre 1180×760 r26 centrée)
- **En-tête** : padding 22/24/18, hauteur contenu 53 → 93 + séparateur 2px blanc .09 (1176 large).
  - Badge fusée 50×50 r14 (dégradé brand, bordure blanc .3, fusée 24).
  - Titre 32 / sous-titre 14 dim (gap 4). Gap badge↔titre 18.
  - Bouton Langue 170×53 r13 (verre .08/.30) : drapeau 26×18 + « LANGUE » 11 mute + nom 15 + chevron 16.
- **Corps** : padding 20/24/24 → colonnes **630** / **478**, gouttière 20, hauteur 617.

### Colonne gauche (630)
1. Bouton **Catégorie** 630×68 (verre .07/.30, padding 13/16) : icône 38 r10 cyan + « FILTRER PAR » 11 / « Categorie » 17 ; à droite valeur 14 cyan + chevron 16. ↓12
2. Titre « Tous les quizz » (20, icône grid 18, marge 4, gap 9) + pastille « N dispo » 78×22 (verre .08, texte 12 mute). ↓12
3. **Liste 630×443** (`.lb-listrow`) : cartes 591×76 (retrait 4, gap 9, **5 visibles**) + gap 7 +
   **rail scrollbar custom 26px** (`.lb-scroll`) : flèche ▲ 26×26 r8 (dégradé brand, bordure .42),
   gap 6, piste 12×379 (noir .30 + liseré blanc .07) avec curseur violet 10 (min 26, bordure .35),
   gap 6, flèche ▼. Flèches **grisées + désactivées en butée** (grayscale .6/.5),
   curseur masqué si pas de dépassement. ↓10
4. **LIRE PLUS** 630×48 (dégradé brand, bordure .45, chevron 20 + texte 17) — descend d'**une carte**
   par clic, **se grise en bas** (texture grayscale .6/.6).

### Carte quizz 591×76 (`.lb-quiz`)
- Verre .045/.14 r14, padding G/D 12. Icône catégorie 50 r12 (dégradé c→c@69 %, icône 24).
- Nom 18 ; méta (gap 8, ↓4) : tag couleur catégorie (h18 r6, texte 11) + « N questions » 13 mute.
- Bouton + 34×34 r10 (verre .10/.30, plus 18). **Déjà en file** : opacité .5 (couleurs atténuées)
  + coche verte 34×34 (dégradé vert, check 16) — plus de survol.

### Colonne droite (478)
1. Titre « File de la partie » 20 + pastille n/4 54×22. ↓12
2. **File** (hauteur flexible 374, gap 9) :
   - slot **vide** 478×54 : bordure **pointillée** .16, n° 30 r9 (verre .08, chiffre 17 dim),
     « En attente d'un choix... » 15 mute ;
   - slot **rempli** 478×66 : verre .045/.14, n° 30 dégradé brand, icône catégorie 42,
     nom 16 + « Choisi par PN - q q. » 12 dim avec pastille joueur 16 (P1 rouge/P2 bleu/P3 vert/P4 jaune),
     **bouton retirer** 30×30 (rouge .16/.40, poubelle 15).
3. **Classé / Non classé** 2×234×46 gap 10 (verre .05/.14 ; sélection = anneau 4px + voile dégradé,
   or pour Classé / cyan pour Non classé, icône teintée). ↓12
4. **Difficulté** 3×152.7×58 gap 10 : 3 dots 8px (gap 4, ↓5) + nom 17. Sélection = anneau + voile
   vert/jaune/rouge, dots allumés couleur niveau ; sinon dots éteints blanc .22. ↓12
5. **VALIDER** 478×65 r15 (dégradé `#2BE07A→#0E9B45`, bordure .45) : check 20 + « VALIDER » 24
   + « - N quizz » 13. **Grisé + désactivé si file vide** (texture grayscale .7/.7).

### Sous-pages (remplacent TOUT le contenu de la fenêtre, comme `.lb-sub`)
- En-tête propre : retour 46×46 r13 (verre .08/.30, flèche 22) + titre 28, padding 22/24/18 + séparateur.
- Corps padding 22/24.
- **Langue** : 2 cartes 372×86 r18 **centrées** (gap 16) : drapeau 62×42, nom 24, natif 14 dim,
  cercle check 30 (sélection : anneau violet + voile + check rempli).
- **Catégories** : grille 3×367×78 r15 gap 14 (icône 46, nom 17, « N quizz » 13).
  Sélection = anneau couleur catégorie (blanc pour « Toutes »).

## Comportements (lobby-app.jsx)
- File partagée max 4 ; **quota par joueur selon le nombre de joueurs** : 1 joueur = 4 choix,
  2 joueurs = 2 chacun, 3-4 joueurs = 1 chacun. Retrait libère le quota du joueur.
- Coches « déjà en file » synchronisées chez **tous** les joueurs.
- VALIDER désactivé si file vide ; affiche « - N quizz » sinon.
- LIRE PLUS : +1 carte/clic, grisé en bas ; flèches du rail : ±1 carte. Catégorie filtre la liste et remet le scroll à 0.
- Difficulté Moyen et Classé par défaut. Langue FR par défaut.

## Adaptations Verse assumées (impossibles autrement, voir docs/UEFN-interface-verse.md)
| Design | Verse |
|---|---|
| Police Anton/Fredoka | police Fortnite (tailles identiques) |
| Scroll molette + glisser le curseur | flèches ▲▼ du rail (±1 carte) + LIRE PLUS ; curseur non déplaçable (pas de drag en Verse) |
| `:hover` CSS | HighlightEvent → swap texture `_hi` (verres) ; pas de hover sur boutons dégradés |
| translateX(3px) hover, animations | non reproductibles (pas d'anim UI Verse) |
| « · » typographique | « - » (littéraux ASCII en Verse) |
| accents dans les libellés | retirés (encodage Verse) |
