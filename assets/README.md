# 📦 assets/ — Médias générés (staging d'import UEFN)

> ⚠️ **Tout le contenu de `assets/` est gitignoré et RÉGÉNÉRABLE.**
> Seul ce `README.md` est tracké. Ne committe jamais les images/audio : ils sont lourds,
> et certains sont sous licence tierce. Pour les recréer : lance le script `tools/` correspondant.

> 🔧 **Refonte en cours (2026-06) :** un seul quizz est actuellement **actif** en jeu — **Drapeaux
> du monde** (3 difficultés : Facile = drapeaux communs, Moyen = moins communs, Difficile = les 195
> pixelisés). Les autres dossiers/banques ci-dessous existent mais sont **dormants** (retirés du
> lobby et de la map UEFN) — ils reviendront un par un, retravaillés.

## À quoi sert ce dossier

`assets/<quiz>/` est un dossier de **staging** : un script Python y écrit les PNG/audio,
puis tu les **importes manuellement dans UEFN** → ils atterrissent dans `maps/quizz/Content/<quiz>/`.
Les **noms de dossiers sont couplés** aux chemins d'import UEFN : ne les renomme pas sans réimporter.

Voir le pipeline complet dans [`../STRUCTURE.md`](../STRUCTURE.md).

---

## Banques de questions à images

| Dossier `assets/` | Quiz / thème | Généré par | Alimente la banque |
|-------------------|--------------|------------|--------------------|
| `animaux/`        | Animaux (Culture G.)       | `tools/banks/build_animaux.py`    | `verse/animaux_bank.verse` |
| `athletes/`       | Athlètes (Sport)           | `tools/banks/build_athletes.py`   | `verse/athletes_bank.verse` |
| `botanique/`      | Botanique / Nature         | `tools/banks/build_botanique.py`  | `verse/botanique_bank.verse` |
| `carte/`          | Silhouettes de pays (Géo)  | `tools/banks/build_carte.py`      | `verse/carte_bank.verse` |
| `celebrites/`     | Célébrités                 | `tools/banks/build_celebrites.py` | `verse/celebrites_bank.verse` |
| `clubs/`          | Logos de clubs (Sport)     | `tools/banks/build_clubs.py`      | `verse/clubs_bank.verse` |
| `dragonball/`     | Dragon Ball (Animés)       | `tools/banks/build_dragonball.py` | `verse/dragonball_bank.verse` |
| `espace/`         | Espace / Astronomie        | `tools/banks/build_espace.py`     | `verse/espace_bank.verse` |
| `flags/`          | Drapeaux normaux (Géo)     | `tools/banks/build_flags.py`      | banque **Drapeaux** (paliers Facile/Moyen) dans `quiz_manager.verse` |
| `flags_pixel/`    | Drapeaux pixelisés (Géo)   | `tools/banks/build_flags.py`      | banque **Drapeaux** (palier Difficile) — `build_flags.py` pixelise les images |
| `jeuxvideo/`      | Jeux vidéo                 | `tools/banks/build_jeuxvideo.py`  | `verse/jeuxvideo_bank.verse` |
| `logos/`          | Logos de marques           | `tools/banks/build_logos.py`      | `verse/logos_bank.verse` |
| `monuments/`      | Monuments                  | `tools/banks/build_monuments.py`  | `verse/monuments_bank.verse` |
| `mytho/`          | Mythologie                 | `tools/banks/build_mythologie.py` | `verse/mytho_bank.verse` |
| `naruto/`         | Naruto (Animés)            | `tools/banks/build_naruto.py`     | `verse/naruto_bank.verse` |
| `onepiece/`       | One Piece (Animés)         | `tools/banks/build_onepiece.py`   | `verse/onepiece_bank.verse` |
| `persos/`         | Personnages historiques    | `tools/banks/build_persos.py`     | `verse/persos_bank.verse` |
| `pokemon/`        | Pokémon (Jeux vidéo)       | `tools/banks/build_pokemon.py`    | `verse/pokemon_bank.verse` |
| `pokemon_manquants/` | Compléments Pokémon     | *(ajout manuel / complément)*     | `verse/pokemon_bank.verse` |
| `regions/`        | Régions (Géo)              | `tools/banks/build_regions.py`    | `verse/regions_bank.verse` |
| `series/`         | Séries TV                  | `tools/banks/build_series.py`     | `verse/series_bank.verse` |
| `tableaux/`       | Tableaux / Art             | `tools/banks/build_tableaux.py`   | `verse/tableaux_bank.verse` |
| `music/`          | Pistes audio (ambiance)    | *(ajout manuel)*                  | utilisé par le HUD / lecteur |

## Textures d'interface (UI)

| Dossier `assets/` | Usage | Généré par |
|-------------------|-------|------------|
| `jeu/`     | Panneaux arrondis du HUD                 | `tools/textures/build_jeu.py` |
| `lobby/`   | Lobby (sélection de quiz)                | `tools/textures/build_lobby.py` |
| `rangs/`    | Emblèmes des 18 rangs                    | `tools/textures/build_rangs.py` |
| `resultats/` | Écran de fin (podium, stats)             | `tools/textures/build_resultats.py` |
| `icons/`            | Icônes lobby/menu + drapeaux de langue   | `tools/textures/build_icons.py`, `build_lang_flags.py` |
| `sfx/`              | Effets sonores                           | `tools/textures/build_sfx.py` |

---

## Banques SANS assets (texte seul)

Certaines banques n'ont pas de dossier d'images (questions textuelles) : `anatomie`, `calcul`,
`capitals`, `cinema`, `dates`, `dirigeants`, `elements`, `inventions`, `livres`, `musique`,
`nature`, `records`, `sport`, `villes`. Leurs générateurs sont dans
[`../tools/banks/`](../tools/banks/) et écrivent directement dans `verse/<nom>_bank.verse`.
