# 03.05 — Décoration & thème

La logique fonctionne ? On rend la map **belle et immersive**. Le visuel compte beaucoup
pour retenir les joueurs sur le Discover.

## 🎨 Choisir un thème cohérent

Un thème unifié rend la map mémorable. Idées :
- **Néon / arcade** : couloirs sombres, portails lumineux, ambiance game-show.
- **Temple / aventure** : pierres, torches, portails « magiques ».
- **Espace / futuriste** : métal, hologrammes, portails sci-fi.
- **Plateau TV quiz** : pupitres, lumières de scène, public.

> Garde **le même thème** sur tout le parcours (sauf si tu veux marquer la progression
> par un changement d'ambiance tous les X paliers).

## 🧰 Outils de décoration

| Outil | Usage |
|-------|-------|
| **Props / Galleries** | Murs, meubles, végétation, décor thématique. |
| **Fab** | Marketplace d'assets 3D (gratuits/payants) pour enrichir le décor. |
| **Lumières** | Directional Light (soleil), Point Lights, Sky/atmosphère. |
| **VFX / particules** | Effets autour des portails (brume, étincelles). |
| **Skybox / Post-process** | Ambiance générale, couleurs, brouillard. |

## 💡 Éclairage : guider le regard

- Éclaire **les portails** et **le panneau de question** : ce sont les éléments à lire.
- Mets le reste **plus sombre** pour focaliser l'attention.
- Différencie visuellement « bonne voie » (lumineuse, accueillante) du décor de sanction.

## 🔊 Son & feedback (très sous-estimé)

- Un **son de validation** sur bonne réponse, un **son d'échec** sur mauvaise.
- Musique d'ambiance discrète (selon thème).
- Le feedback audio + visuel (HUD « Correct ! ») rend le jeu **satisfaisant**.

## 🏁 Soigner le départ et l'arrivée

- **Zone de départ** : explique les règles (panneau « Bien répondre = avancer »), donne le ton.
- **Zone de victoire** : récompense visuelle forte (feux d'artifice, podium, message de félicitations).
  C'est ce que les joueurs **partagent en vidéo** → important pour la viralité.

## ⚖️ Performance vs beauté

- Plus de props et de lumières = **plus lourd**. Surveille les performances (voir
  [`../06-tests-publication/02-optimisation.md`](../06-tests-publication/02-optimisation.md)).
- Réutilise les mêmes assets (instances) plutôt que de multiplier des modèles uniques.
- Évite les milliers de lumières dynamiques ; privilégie un éclairage maîtrisé.

## ✅ Checklist déco
- [ ] Thème unique et cohérent défini
- [ ] Portails et panneaux bien éclairés/lisibles
- [ ] Feedback audio (succès/échec) en place
- [ ] Zone de départ explicative
- [ ] Zone de victoire spectaculaire
- [ ] Performances vérifiées en test

→ Section suivante : [`../04-devices/01-liste-devices.md`](../04-devices/01-liste-devices.md)
