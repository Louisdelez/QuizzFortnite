# 04.03 — Bouton & Bouton Conditionnel

Alternative (ou complément) aux téléporteurs : le joueur **appuie** sur une réponse.
Utile pour un quiz « réfléchi » où l'on ne veut pas que traverser un portail valide tout seul.

## 🔘 Button device

Un **Button** déclenche un événement **quand le joueur appuie** dessus (touche d'interaction).

### Options clés
| Option | Rôle |
|--------|------|
| **Interaction Text** | Texte affiché (« Choisir A », « Répondre »…). |
| **Interaction Time** | Durée de maintien pour valider. |
| **Enabled** | Bouton actif ou non (on peut le (dés)activer par event). |
| **Triggered/Interacted Event** | L'événement émis à l'appui → à câbler vers une action. |

### Montage « 4 boutons = 4 réponses »
1. Place **4 boutons**, un sous chaque réponse : `PalierN_Btn_A…D`.
2. Le **bouton de la bonne réponse** câble vers : *ouvrir la barrière suivante* / *téléporter* /
   *afficher « Correct »* / *checkpoint*.
3. Les **mauvais boutons** câblent vers : *sanction* (HUD « Faux ! », téléport retour, dégâts…).

> Le câblage event-par-event est détaillé dans [`06-cablage-events.md`](./06-cablage-events.md).

## 🔐 Conditional Button device

Le **Conditional Button** ne s'active **que si une condition est remplie** : le joueur possède
un certain **objet/clé/ressource**. Très pratique pour des mécaniques de validation.

### Comment ça marche
- Tu définis une **condition** : posséder tel objet (clé), telle quantité de ressource, etc.
  (Le device propose des seuils de ressources : 50, 200, 250, … 999.)
- Si le joueur **remplit** la condition → le bouton fonctionne et émet son événement
  (« condition remplie »). Sinon, il reste bloqué.

### Idée d'usage dans un quiz
Modèle « collecte la bonne clé » :
1. Le bon portail/zone **donne une clé** au joueur (via *Item Granter*).
2. À la fin du palier, un **Conditional Button** exige cette clé pour **ouvrir la porte**
   vers le palier suivant.
3. Sans la bonne clé (mauvaise réponse), impossible d'avancer.

> C'est une mécanique **avancée** ; pour la plupart des quiz, **téléporteurs** (fiche 02)
> ou **zones** (fiche 04) suffisent et sont plus simples.

## 🆚 Boutons vs Téléporteurs : que choisir ?

| Critère | Boutons | Téléporteurs / Zones |
|---------|---------|----------------------|
| Choix explicite (appuyer) | ✅ | ❌ (on traverse) |
| Effet « portail » visuel | ❌ | ✅ |
| Risque de réponse « par accident » | faible | moyen (on peut tomber dans un portail) |
| Simplicité de câblage | moyenne | simple |

> ✅ **Recommandation** : **téléporteurs/zones** pour l'effet « portail » demandé.
> Garde les boutons en tête pour des variantes ou des quiz « validation explicite ».

→ Suite : [`04-zone-mutator-trigger.md`](./04-zone-mutator-trigger.md)
