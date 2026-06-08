# 04.05 — Billboard & HUD Message (afficher du texte)

Deux devices pour le **texte** : la **question** (Billboard) et le **feedback** (HUD Message).

## 🪧 Billboard device (panneau dans le monde)

Affiche un **texte fixe dans l'espace 3D**. C'est l'outil idéal pour la **question** et les **réponses**.

### Options clés
| Option | Rôle |
|--------|------|
| **Text** | Le texte affiché (la question, ou une réponse). |
| **Text Size / Scale** | Taille — règle-la pour la lisibilité à distance. |
| **Visible** | Affiché ou non (peut se piloter par event/Verse). |
| **Background / Style** | Apparence du panneau (selon version). |

### Usage
- **1 Billboard** au-dessus du palier = la **question**.
- **4 Billboards** (1 par portail) = les **réponses A–D**.
- Texte écrit **en dur** (version devices) ou **injecté par Verse** (version dynamique).

### Mise à jour par Verse
En Verse, on change le texte avec une méthode du type `SetText(<message>)`.
> ⚠️ Le texte dynamique en Verse passe par le type `message` (texte localisable),
> pas une simple `string`. Voir le code au dossier `05` (`04-logique-quiz.md`).

## 💬 HUD Message device (message à l'écran)

Affiche un **message sur l'interface** du/des joueur(s). Parfait pour le **feedback** instantané.

### Options clés
| Option | Rôle |
|--------|------|
| **Message** | Le texte (« Correct ! », « Mauvaise réponse ! »). |
| **Display Time** | Durée d'affichage. |
| **Position / Priority** | Où et avec quelle priorité s'affiche le message. |
| **Show (function)** | Action à déclencher (depuis un event bonne/mauvaise réponse). |

### Usage dans le quiz
- Sur **bonne réponse** → HUD « ✅ Correct ! » (vert).
- Sur **mauvaise réponse** → HUD « ❌ Faux, réessaie ! » (rouge).
- À la **victoire** → HUD « 🏆 Bravo, quiz terminé ! ».

## 🧩 Qui affiche quoi ? (récapitulatif)

| Élément | Device | Statique/Dynamique |
|---------|--------|--------------------|
| La question (au-dessus) | **Billboard** | Statique (devices) ou dynamique (Verse) |
| Les 4 réponses (portails) | **Billboard** ×4 | idem |
| Feedback « Correct/Faux » | **HUD Message** | déclenché par event |
| Règles au départ | **Billboard** ou **HUD** | statique |
| Écran de victoire | **HUD Message** (+ déco) | déclenché à la fin |

## 🎯 Conseils de lisibilité
- Contraste fort texte/fond.
- Phrases **courtes** ; abrège les réponses si besoin.
- Teste la lecture **en jeu** (taille à distance), pas seulement dans l'éditeur.
- Cohérence : même style/typo sur tous les paliers.

→ Suite : [`06-cablage-events.md`](./06-cablage-events.md)
