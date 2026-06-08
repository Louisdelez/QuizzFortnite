# 03.02 — Terrain & construction du chemin

On bâtit le **parcours physique** : le sol, les murs, les couloirs entre les paliers.

## 🧱 Méthode recommandée : construire avec des props « galerie »

Le plus simple et le plus propre est d'utiliser des **galeries de blocs/murs/sols** de Fortnite
(props alignés à la grille), plutôt que de sculpter du terrain.

1. Content Browser → cherche des galeries : `Floor Gallery`, `Wall Gallery`, `Hallway`,
   `Tile Gallery`, `Stair Gallery`…
2. **Active le snapping** (aimantation à la grille) pour que tout s'emboîte.
3. Pose un **sol** pour le premier palier, puis répète.

## 🛣️ Construire un palier type (gabarit à dupliquer)

Construis **un** palier parfait, puis **duplique-le** (Ctrl+C / Ctrl+V ou Alt+drag) pour les suivants.

Un palier contient :
```
[ Sol de la zone d'attente ]      ← le joueur lit la question ici
[ Mur du fond + emplacement panneau de question ]
[ 4 emplacements de portails alignés ]
[ Murs latéraux pour canaliser ]
[ Cloison/barrière vers le palier suivant ]
```

### Étapes
1. **Sol** : pose une plateforme assez large pour 4 portails alignés (~12–20 m).
2. **Murs latéraux** : ferme les côtés pour que le joueur ne sorte pas / ne triche pas.
3. **Mur du fond** : support visuel pour le **panneau de question** (placé plus tard).
4. **4 cadres de portail** : 4 emplacements régulièrement espacés (props « porte/arche »
   décoratifs facultatifs autour des futurs téléporteurs/zones).
5. **Cloison de séparation** : un mur/barrière qui **bloque l'accès** au palier suivant
   tant qu'on n'a pas pris le bon portail.

## 🔁 Dupliquer et chaîner les paliers

- Sélectionne tout le gabarit du palier (dans l'Outliner, range-le dans un sous-dossier `Palier_01`).
- **Duplique** et déplace en bout de chaîne pour `Palier_02`, etc. Garde un **espacement régulier**.
- Pense au **layout** choisi (`02-conception/02`) : ligne droite, lacets, tour montante…

> 💡 Astuce : duplique un palier **vide de logique** (juste la géométrie), puis place/câble
> les devices palier par palier. Tu évites de copier des liens d'events cassés.

## 🚧 Empêcher de contourner le parcours

- **Plafond** ou murs hauts si le joueur peut sauter par-dessus.
- **Construction désactivée** (déjà fait en `03.01`).
- **Barrières** (device *Barrier*) invisibles pour bloquer les zones interdites.

## 🅰️ Repérage (départ / arrivée / checkpoints)

- **Départ** : Player Spawner au tout début.
- **Arrivée** : une zone/salle de victoire après le dernier palier (voir `04` pour la logique de fin).
- **Checkpoints** : un point de réapparition à l'entrée de chaque palier validé (device de respawn / Verse).

## 💾 Sauvegarde
Sauvegarde après chaque palier construit. Teste régulièrement en **PIE (Alt+P)** que tu peux
marcher dans le couloir sans bug de collision.

→ Suite : [`03-portails-et-zones.md`](./03-portails-et-zones.md)
