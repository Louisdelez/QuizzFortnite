# Annexe C — Dépannage & FAQ

Réponses rapides aux problèmes et questions fréquents.

## 🛠️ Dépannage (Troubleshooting)

| Problème | Cause probable | Solution |
|----------|----------------|----------|
| UEFN ne se lance pas / crashe | Pilotes GPU, espace SSD, projet sur HDD | Mets à jour les pilotes, libère le SSD, déplace le projet sur SSD. |
| Le téléporteur n'envoie pas au bon endroit | Mauvais groupe source/cible | Vérifie le **Teleporter Group** et le **Target Group** des deux téléporteurs. |
| Le mauvais portail fait quand même avancer | Câblage inversé | Recheck quel portail est branché vers « palier suivant ». |
| La question ne s'affiche pas | Billboard vide / texte trop petit / non branché | Saisis le texte, augmente la taille ; en Verse, branche `PanneauQuestion`. |
| Le HUD « Correct/Faux » ne s'affiche pas | Event non câblé / device non branché | Vérifie le câblage de l'event vers `Show`. |
| On peut sauter par-dessus le parcours | Pas de plafond / murs trop bas | Ajoute murs hauts / plafond / barrières. |
| On peut construire pour tricher | Construction activée | Désactive la construction dans les Island Settings. |
| Verse : `Unknown identifier` | Module non importé | Ajoute le bon `using { ... }`. |
| Verse : erreur d'accès tableau | Accès hors contexte faillible | Utilise `if (X := Tab[i]):`. |
| Verse : méthode inconnue (`SetText`/`Teleport`) | Nom d'API changé | Vérifie dans l'**API Reference** officielle. |
| Réponses décalées (A montre B…) | Ordre des listes `@editable` | Rebranche zones/panneaux dans l'ordre **A,B,C,D**. |
| Double validation d'une réponse | Zone déclenchée 2× | Garde-fou `EnAttente` ou désactive la zone après réponse. |
| Pas de bouton « Publier » | Island Creator Program non rejoint | Rejoins le programme (voir `01/01`). |

## ❓ FAQ

**Q : Faut-il savoir coder pour faire une map quiz ?**
R : Non. Une map complète se fait **uniquement avec des devices** (dossier `04`). Verse n'est utile
que pour scaler (banque de questions, score, aléatoire).

**Q : Mode Créatif classique ou UEFN ?**
R : Le **Créatif classique** (dans le jeu) est plus simple mais limité. **UEFN** (PC) est plus
puissant, permet Verse et la publication pro. Cette doc privilégie UEFN.

**Q : Puis-je faire ça sur console ?**
R : **UEFN est PC uniquement** (Windows/macOS). Tu peux créer en **Créatif classique** sur console,
mais sans Verse ni les outils avancés.

**Q : Combien de questions pour une bonne map ?**
R : 5–10 pour une v1, 20–30 pour une publication sérieuse, 50+ pour du « marathon ».

**Q : Comment éviter que les joueurs apprennent les réponses par cœur ?**
R : Mélange les positions des bonnes réponses ; en v2, ajoute un **ordre aléatoire** (Verse).

**Q : Téléporteurs ou zones pour les portails ?**
R : **Téléporteurs** = effet « portail » natif, montage très simple. **Zones** = plus flexible,
idéal avec Verse. Les deux conviennent.

**Q : Comment gérer le multijoueur où chacun avance à son rythme ?**
R : Les téléporteurs/zones agissent sur **le joueur concerné**. Avec Verse, attention : le script
de base a une progression **globale** ; pour de l'indépendant, stocke l'état **par agent** (roadmap).

**Q : Combien de temps pour faire une map ?**
R : Quelques heures pour une démo de 5 questions ; quelques jours pour une map publiable soignée.

**Q : Est-ce gratuit ?**
R : Oui — UEFN, Verse, publication et Island Creator Program sont gratuits.

**Q : Comment gagner de l'argent ?**
R : Via l'engagement (player-minutes) une fois éligible au programme créateur — voir `06/04`.
La qualité d'abord, les revenus suivent.

## 🔗 Où chercher de l'aide
- Documentation officielle Epic (voir `00-introduction/03-references.md`).
- **API Reference Verse** (depuis UEFN) pour les signatures exactes.
- Communautés créateurs (forums Epic, Discords UEFN), tutoriels vidéo.

→ Suite : [`D-roadmap-ameliorations.md`](./D-roadmap-ameliorations.md)
