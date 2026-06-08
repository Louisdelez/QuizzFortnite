# 04.06 — Câblage des événements (event binding, SANS code)

Le **câblage** relie les devices entre eux pour créer la logique du quiz **sans Verse**.
C'est ici que la mécanique « bon portail → avance / mauvais → sanction » prend vie.

## 🔗 Le principe de l'event binding

Chaque device a :
- des **événements** (sorties) : « Quand un joueur entre dans la zone », « Quand le bouton est pressé »…
- des **fonctions/actions** (entrées) : « Téléporter le joueur », « Désactiver la barrière », « Afficher le HUD »…

**Câbler** = dire « **Quand** [événement de A] **alors** [fonction de B] ».

### Comment câbler (dans le panneau Details)
1. Sélectionne le **device source** (ex. une Mutator Zone).
2. Dans **Details**, trouve la section des **événements / Direct Event Binding**
   (ex. « When Player Enters → Run a function »).
3. Choisis le **device cible** (ex. la Barrier) et la **fonction** à exécuter (ex. « Disable »).
4. Répète pour chaque liaison.

> Le nom exact (« Direct Event Binding », « Functions », canaux…) dépend de la version.
> Cherche dans Details les rubriques d'événements de chaque device.

## 🧪 Le câblage complet d'UN palier (recette)

Objectif : bonne réponse = B. On utilise **Zones + Barrier + HUD + Checkpoint**.

### Devices du palier
- `Zone_A, Zone_B, Zone_C, Zone_D` (Mutator Zones devant chaque portail)
- `Barrier_Suivant` (bloque l'accès au palier N+1, **activée** au départ)
- `HUD_Correct`, `HUD_Faux` (HUD Messages)
- `Checkpoint_N+1` (point de réapparition à l'entrée du palier suivant)
- (sanction) au choix : `Teleport_Retour` **ou** dégâts/élimination

### Liaisons (la bonne réponse = B)
```
Zone_B (joueur entre)  ─►  Barrier_Suivant : DISABLE        (ouvre la porte)
Zone_B (joueur entre)  ─►  HUD_Correct     : SHOW           ("Correct !")
Zone_B (joueur entre)  ─►  Checkpoint_N+1  : activer/SET     (sauvegarde la progression)

Zone_A (joueur entre)  ─►  HUD_Faux        : SHOW           ("Faux !")
Zone_A (joueur entre)  ─►  Teleport_Retour : TELEPORT player (retour début du palier)
Zone_C (joueur entre)  ─►  (idem A)
Zone_D (joueur entre)  ─►  (idem A)
```

> 🔁 **Duplique** ce schéma pour chaque palier en changeant simplement quelle zone est « bonne ».

## 🟢 Variante 100 % téléporteurs (sans barrière)

Si tu utilises des **téléporteurs** comme portails (fiche `02`) :
```
Téléporteur bon  : cible = entrée du palier N+1     ✅ avance
Téléporteurs faux: cible = retour début du palier N  ❌ sanction
```
Ici, **pas besoin de câbler d'events** : tout est dans les **groupes de destination** des téléporteurs.
C'est la méthode **la plus simple** pour démarrer.

## 🧷 Gérer les checkpoints (réapparition)

- Place un **point de réapparition** (Respawn/Checkpoint) à l'entrée de chaque palier.
- Active-le quand le joueur valide le palier (event « bonne réponse »).
- Ainsi, après une erreur sanctionnée par la mort, il **réapparaît au bon endroit**.

## 🏁 Câbler la fin de partie

Au dernier palier, la **bonne réponse** câble vers :
```
Zone_bonne (dernier)  ─►  HUD_Victoire : SHOW ("🏆 Bravo !")
                      ─►  End Game / Victory device : déclencher
                      ─►  (optionnel) Téléport vers salle de victoire + VFX
```

## 🧰 Conseils de câblage
- **Nomme tout** clairement (`PalierN_...`) avant de câbler : tu t'y retrouveras.
- **Teste palier par palier** en PIE (Alt+P) avant de tout enchaîner.
- Si un device a plusieurs sorties, vérifie que chaque liaison vise le **bon** device.
- En multijoueur, vérifie que les actions ciblent **le joueur concerné**, pas toute la lobby.

## ➡️ Et avec du code ?
Quand le nombre de paliers explose, dupliquer/câbler devient lourd. Le dossier `05-verse`
montre comment **centraliser toute cette logique dans un seul script**.

→ Section suivante : [`../05-verse/00-architecture-pro.md`](../05-verse/00-architecture-pro.md)
