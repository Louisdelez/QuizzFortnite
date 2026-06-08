# 06.02 — Optimisation & performances

Une map fluide retient les joueurs ; une map qui rame fait fuir. Épure avant de publier.

## 🎯 Pourquoi optimiser

- Le **Discover** favorise les maps où les joueurs **restent**.
- Les joueurs sur **machines modestes / consoles** doivent pouvoir jouer correctement.
- Epic impose des **limites techniques** (mémoire, nombre d'éléments) à respecter pour publier.

## 🧮 Leviers d'optimisation

| Levier | Conseil |
|--------|---------|
| **Nombre de props** | Réutilise les mêmes assets (instances) ; supprime le décor inutile/invisible. |
| **Lumières dynamiques** | Limite-les ; privilégie un éclairage maîtrisé. Trop de lumières = coûteux. |
| **Devices** | Chaque device a un coût. Le Verse **centralisé** réduit le nombre de devices vs tout câbler. |
| **VFX / particules** | Avec parcimonie autour des portails ; évite les effets permanents partout. |
| **Polygones / assets lourds** | Évite les modèles très détaillés inutiles ; le quiz n'a pas besoin de photoréalisme. |
| **Vue / occlusion** | Cloisonne le parcours (murs) : le moteur n'affiche pas ce qui est caché. |

## 📉 Réduire la charge de logique

- **Désactive** ce qui n'est pas utilisé (zones/devices des paliers déjà passés, si pertinent).
- Évite les boucles Verse coûteuses à chaque frame ; privilégie l'**événementiel** (Subscribe).
- Mutualise : un **seul** `quiz_manager` plutôt que de la logique dupliquée par palier.

## 🔍 Surveiller les performances

- Teste sur une **configuration modeste** si possible, pas seulement ton PC.
- Surveille les **avertissements** d'UEFN sur la mémoire / les limites lors du build/publish.
- Repère les zones où le **framerate chute** (beaucoup de props/lumières/VFX) et allège-les.

## 🧰 Checklist d'optimisation avant publication

- [ ] Décor invisible / hors-jeu supprimé
- [ ] Lumières dynamiques limitées
- [ ] Assets lourds remplacés par des équivalents légers
- [ ] Parcours cloisonné (occlusion efficace)
- [ ] Logique centralisée (peu de devices redondants)
- [ ] Aucun avertissement bloquant de mémoire/limite
- [ ] Test fluide en multijoueur

> 💡 **Construis « propre » dès le début** : ranger l'Outliner, réutiliser des gabarits et
> éviter le superflu rend l'optimisation finale presque indolore.

→ Suite : [`03-publication.md`](./03-publication.md)
