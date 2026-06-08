# 01.03 — L'interface d'UEFN

Tour d'horizon des panneaux et de la navigation. Prends 30 min à explorer : c'est l'investissement
le plus rentable avant de construire.

## 🪟 Les panneaux principaux

| Panneau | Rôle |
|---------|------|
| **Viewport** | La vue 3D centrale où tu construis. Tu t'y déplaces librement. |
| **Outliner** | Liste hiérarchique de tous les objets de la scène. Organise avec des dossiers. |
| **Content Browser** | Navigateur de contenu : assets Fortnite, **devices**, props, galeries, **Fab**. |
| **Details (Détails)** | Propriétés de l'objet sélectionné. C'est ici qu'on **règle les devices**. |
| **Verse Explorer** | Gère tes fichiers de code Verse et leur compilation. |
| **Project Settings / Island Settings** | Réglages globaux de l'île (règles de jeu, durée, etc.). |

## 🎮 Navigation dans le Viewport

| Action | Commande |
|--------|----------|
| Regarder autour | **Clic droit maintenu** + bouger la souris |
| Se déplacer | Clic droit maintenu + **WASD** (ZQSD selon clavier) |
| Monter / descendre | Clic droit + **E / Q** |
| Accélérer le déplacement | Molette pendant le clic droit |
| Cadrer un objet sélectionné | **F** |
| Sélectionner | Clic gauche |

## 🔧 Manipuler les objets (Gizmos)

| Touche | Outil | Effet |
|--------|-------|-------|
| **W** | Move (déplacer) | Translation X/Y/Z |
| **E** | Rotate (tourner) | Rotation |
| **R** | Scale (redimensionner) | Échelle |
| **Espace** | Cycle | Alterne entre les 3 outils |

> 💡 Active le **snapping** (aimantation à la grille) pour aligner proprement les murs,
> les portails et les segments du parcours. Réglages de grille en haut du viewport.

## 📦 Trouver des devices et des props

1. Ouvre le **Content Browser**.
2. Cherche **« Fortnite »** → **Devices** pour la liste des appareils de gameplay.
3. Tape un mot-clé (ex. `teleporter`, `billboard`, `mutator`, `button`).
4. **Glisse-dépose** l'élément dans le Viewport pour le placer.

## ▶️ Tester rapidement

- **Play in Editor (PIE)** : raccourci souvent **Alt + P** → teste en solo immédiatement.
- **Launch Session** : pousse la map sur les serveurs Epic pour un test multijoueur réel
  (ouvre Fortnite). Voir [`../06-tests-publication/01-playtest.md`](../06-tests-publication/01-playtest.md).

## 💾 Sauvegarde
- **Ctrl + S** sauvegarde la scène / le niveau.
- Sauvegarde **souvent**. UEFN peut crasher ; perds le moins possible.

## 🧭 Conseil d'organisation
Dès le départ, crée des **dossiers dans l'Outliner** :
`_Parcours`, `_Portails`, `_Devices`, `_Decor`, `_Verse`.
Un projet de quiz peut contenir des **centaines d'objets** : range au fur et à mesure.

→ Section suivante : [`../02-conception/01-game-design.md`](../02-conception/01-game-design.md)
