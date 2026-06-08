# 03.03 — Les 4 portails (placement)

Ce fichier traite du **placement physique** des 4 portails. Le **câblage logique** (qui mène où)
est détaillé au dossier [`../04-devices/`](../04-devices/06-cablage-events.md) (sans code) et
[`../05-verse/`](../05-verse/07-orchestrateur.md) (avec code).

## 🚪 Choisir le type de portail

Rappel des options (voir `02-conception/02`) :

| Type | Device principal | Effet visuel | Recommandé |
|------|------------------|--------------|-----------|
| **Téléporteur** | `Teleporter` | Effet portail natif (anneau lumineux) | ✅ Oui, le plus « portail » |
| **Zone au sol** | `Mutator Zone` (+ porte déco) | Tu passes une porte, la zone détecte | ✅ Oui, flexible |
| **Bouton** | `Button` | Le joueur appuie sur la réponse | Pour un quiz « réfléchi » |
| **Couloir réel** | murs + barrière | Pas de logique de téléport | Immersif mais plus long |

> La suite décrit la mise en place pour **Téléporteurs** et **Zones**, les deux plus courants.

## 🅰️ Option Téléporteurs (4 par palier)

1. Content Browser → cherche **Teleporter** → place **4 téléporteurs** alignés (un par réponse).
2. Espace-les régulièrement devant les 4 cadres de portail.
3. Nomme-les clairement dans l'Outliner : `Palier01_Portail_A`, `_B`, `_C`, `_D`.
4. Tu auras aussi besoin d'un **téléporteur de destination** à l'entrée du **palier suivant**
   (le « point d'arrivée » de la bonne réponse) et de destinations de **sanction** pour les mauvais.

> Le paramétrage (groupes, destination, instantané…) est dans
> [`../04-devices/02-teleporteur.md`](../04-devices/02-teleporteur.md).

## 🅱️ Option Zones (Mutator Zones + portes décoratives)

1. Place **4 portes/arches décoratives** (props) = les 4 « portails » visibles.
2. Devant/derrière chaque porte, place une **Mutator Zone** (volume invisible).
3. Redimensionne chaque zone pour qu'elle couvre le passage de la porte.
4. Nomme : `Palier01_Zone_A` … `_D`.
5. La zone détecte l'entrée du joueur → déclenche « bonne » ou « mauvaise » selon le câblage/Verse.

> Paramétrage des zones : [`../04-devices/04-zone-mutator-trigger.md`](../04-devices/04-zone-mutator-trigger.md).

## 🔠 Étiqueter chaque portail (très important)

Le joueur doit savoir **quelle réponse = quel portail**. Devant chaque portail, place :
- un **mini-panneau** avec la **lettre** (A / B / C / D) ;
- et le **texte de la réponse** (ex. « Lance-roquettes »).

Tu peux utiliser des **Billboard devices** (texte) ou des props « pancarte » + texte.
Voir [`04-affichage-question.md`](./04-affichage-question.md).

## 🎯 Cohérence des positions

- Garde **le même ordre** A→B→C→D (de gauche à droite) sur **tous** les paliers :
  le joueur s'habitue, c'est plus lisible.
- Aligne les portails et leurs étiquettes proprement (snapping).

## ✅ Checklist par palier
- [ ] 4 portails posés et alignés
- [ ] Chaque portail nommé (Palier/lettre) dans l'Outliner
- [ ] Étiquette A/B/C/D + texte de réponse devant chaque portail
- [ ] Destination « bonne réponse » = entrée du palier suivant identifiée
- [ ] Destinations/effets de sanction identifiés

→ Suite : [`04-affichage-question.md`](./04-affichage-question.md)
