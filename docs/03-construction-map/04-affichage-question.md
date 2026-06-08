# 03.04 — Affichage de la question et des réponses

Comment afficher la **question au-dessus** du palier et les **réponses** sur chaque portail.

## 🪧 Le panneau de question (au-dessus)

Deux familles de solutions :

### A. Billboard device (panneau de texte dans le monde) — recommandé
- Cherche **Billboard** dans le Content Browser, place-le **au-dessus et au centre** du palier.
- Dans **Details**, saisis le **texte de la question**.
- Règle la **taille du texte** pour qu'elle soit lisible de loin.
- Avantage : le texte fait **partie du décor**, visible en permanence pour tous.

### B. HUD Message device (message sur l'écran)
- Affiche le texte sur l'**interface** du joueur (en haut/bas de l'écran).
- Déclenché par un **trigger / une zone** quand le joueur entre dans le palier.
- Avantage : utile pour des messages temporaires, des indices, le feedback « Correct ! ».

> ✅ **Recommandé pour la question** : **Billboard** (toujours visible).
> **HUD Message** en complément pour le **feedback** (bonne/mauvaise réponse).

## 🔠 Les étiquettes de réponse (sur chaque portail)

Devant **chaque** portail, affiche la réponse correspondante :
- Un **Billboard** par portail avec : la **lettre** (A/B/C/D) + le **texte de la réponse**.
- Ou des **props pancarte/écran** décoratifs + Billboard.

Exemple de palier complet :
```
            ┌───────────────────────────────────────────┐
            │  Q3 : Quelle arme tire des roquettes ?     │  ← Billboard question (haut/centre)
            └───────────────────────────────────────────┘
   ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌──────────┐
   │ A        │  │ B        │  │ C        │  │ D        │  ← Billboard réponse / portail
   │ Lance-   │  │ Fusil à  │  │ Pioche   │  │ Mur      │
   │ roquettes│  │ pompe    │  │          │  │          │
   └────┬─────┘  └────┬─────┘  └────┬─────┘  └────┬─────┘
     PORTAIL A     PORTAIL B     PORTAIL C     PORTAIL D
```

## 🖼️ Variante visuelle : réponses en images

Pour un quiz « devine le skin / la map », tu peux afficher des **images** :
- Importe des images via le système d'assets (ou utilise des props/écrans).
- Place une image par portail au lieu d'un texte.
- (L'import d'images personnalisées se fait dans UEFN ; respecte les droits d'usage.)

## 🔄 Question statique vs dynamique

| | Statique (devices) | Dynamique (Verse) |
|---|--------------------|-------------------|
| Le texte est… | écrit en dur dans chaque Billboard | injecté par script depuis la banque |
| Pour… | 1 question = 1 palier physique | 1 arène, questions qui changent |
| Voir | ce fichier + dossier `04` | [`../05-verse/05-ui-verse.md`](../05-verse/05-ui-verse.md) |

En Verse, on met à jour le texte du Billboard via une méthode du type `SetText(...)`
(voir [`../04-devices/05-hud-message-billboard.md`](../04-devices/05-hud-message-billboard.md)
et le code du dossier `05`).

## ✅ Checklist d'affichage par palier
- [ ] 1 Billboard de question au-dessus, lisible de l'entrée du palier
- [ ] 1 étiquette par portail (lettre + réponse)
- [ ] Texte sans fautes, taille lisible
- [ ] (Optionnel) HUD Message de feedback configuré

→ Suite : [`05-decoration-theme.md`](./05-decoration-theme.md)
