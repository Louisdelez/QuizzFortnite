# 04.01 — Catalogue des devices utiles au quiz

> 📍 **Note d'orientation** : ce projet est **piloté à 100 % par Verse** (voir [`../05-verse/`](../05-verse/00-architecture-pro.md)).
> Ce dossier sert de **référence** pour comprendre **quels devices** le code Verse manipule
> (`mutator_zone_device`, `teleporter_device`, etc.) et **comment ils se règlent**. La logique,
> elle, n'est **pas** câblée à la main : elle est **codée**. Lis ce dossier pour connaître les
> capteurs/actionneurs, puis va au dossier `05` pour les piloter.

Les **devices** sont les briques de gameplay de Fortnite Creative. Pour un quiz à 4 portails,
voici ceux qui comptent. Chacun a son fichier détaillé dans ce dossier.

## 🧰 Devices essentiels

| Device | Rôle dans le quiz | Fiche |
|--------|-------------------|-------|
| **Player Spawner** | Point d'apparition au départ. | (réglages basiques, voir ci-dessous) |
| **Teleporter** | Déplace le joueur (bon portail → palier suivant). | [`02-teleporteur.md`](./02-teleporteur.md) |
| **Mutator Zone** | Détecte un joueur qui entre dans une zone (un portail). | [`04-zone-mutator-trigger.md`](./04-zone-mutator-trigger.md) |
| **Trigger** | Émet un signal sur un événement, relaie/temporise. | [`04-zone-mutator-trigger.md`](./04-zone-mutator-trigger.md) |
| **Button** | Le joueur appuie pour choisir une réponse. | [`03-bouton-et-conditional.md`](./03-bouton-et-conditional.md) |
| **Conditional Button** | Bouton qui ne marche que si une condition (objet/clé) est remplie. | [`03-bouton-et-conditional.md`](./03-bouton-et-conditional.md) |
| **Billboard** | Affiche le texte de la question / des réponses. | [`05-hud-message-billboard.md`](./05-hud-message-billboard.md) |
| **HUD Message** | Message à l'écran (feedback « Correct ! »). | [`05-hud-message-billboard.md`](./05-hud-message-billboard.md) |
| **Barrier** | Mur invisible qui bloque/débloque l'accès. | [`04-zone-mutator-trigger.md`](./04-zone-mutator-trigger.md) |

## 🧩 Devices complémentaires (selon options de design)

| Device | Rôle |
|--------|------|
| **Timer** | Chronomètre (mode course/temps limité). |
| **Score Manager / Tracker** | Gérer un score, des objectifs. |
| **Elimination Manager** | Gérer les éliminations (sanction « mort »). |
| **Class Designer / Class Selector** | Donner un « rôle » au joueur (utile pour Conditional Button). |
| **Item Granter** | Donner un objet/une clé (pour valider une bonne réponse via Conditional Button). |
| **Sequencer / Trigger** | Enchaîner des effets (sons, lumières) sur événement. |
| **End Game / Victory** | Déclencher la fin et l'écran de victoire. |
| **Checkpoint / Respawn Pad** | Définir où le joueur réapparaît après une erreur. |

## 🔌 Comment les devices communiquent

Les devices se relient par **event binding** (câblage d'événements), **sans code** :
- Un device a des **événements** (sorties : « quand un joueur entre… »).
- Un device a des **fonctions/actions** (entrées : « téléporter le joueur », « activer… »).
- On **connecte** une sortie à une entrée → voir [`06-cablage-events.md`](./06-cablage-events.md).

## ⚙️ Régler un device (rappel)
1. Sélectionne le device dans le Viewport ou l'Outliner.
2. Ouvre le panneau **Details**.
3. Modifie ses **options** (Direct Event Binding, groupes, messages, etc.).

> 🔎 Les noms et options exacts dépendent de la version de Fortnite. Utilise la
> **recherche** du panneau Details et la **documentation officielle** (voir `00-introduction/03`).

→ Suite : [`02-teleporteur.md`](./02-teleporteur.md)
