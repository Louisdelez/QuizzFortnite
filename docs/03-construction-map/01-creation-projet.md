# 03.01 — Création du projet UEFN

On crée le projet qui contiendra la map quiz et on règle les bases.

## 1. Nouveau projet
1. Lance **UEFN** → **Project Browser**.
2. Choisis le template **Blank / Vide** (terrain plat vierge) — idéal pour un quiz construit à la main.
   - *Alternative* : un template d'île simple si tu veux un décor de départ.
3. **Nom** : minuscules + tirets, ex. `quizz-fortnite`.
4. **Emplacement** : un **SSD** avec de l'espace.
5. Valide → l'éditeur s'ouvre sur ton île vide.

## 2. Sauvegarder immédiatement
- **Ctrl + S**. Prends l'habitude de sauvegarder très régulièrement.

## 3. Organiser l'Outliner dès le départ
Crée des dossiers (clic droit dans l'Outliner → New Folder) :
```
_Parcours      (sols, murs, couloirs)
_Portails      (les téléporteurs / zones / portes)
_Devices       (spawns, checkpoints, HUD, fin de partie)
_Decor         (props, lumières, thème)
_Verse         (devices Verse, plus tard)
```
> Un quiz = beaucoup d'objets répétés. **Range au fur et à mesure**, sinon c'est l'enfer.

## 4. Réglages d'île essentiels (Island Settings)
Ouvre les **Island Settings** (réglages globaux) et fixe au minimum :

| Réglage | Valeur conseillée pour un quiz | Pourquoi |
|---------|-------------------------------|----------|
| **Build / Construction** | **Désactivée** | Empêche de bâtir pour sauter le parcours. |
| **Dégâts de chute** | Selon design (souvent **off**) | Évite des morts non voulues. |
| **Temps de partie** | Illimité (ou ton chrono) | Le joueur prend son temps. |
| **Respawn / Réapparition** | Activé, avec checkpoints | Pour la sanction « retour ». |
| **Équipes** | Free-for-all / 1 équipe | Quiz solo, chacun avance. |
| **Pioche / armes** | Désactivées (souvent) | Pas de combat dans un quiz pur. |
| **Vol / créatif joueur** | Désactivé | Empêche la triche. |

> ⚙️ Le nom exact des options varie selon la version d'UEFN ; cherche les rubriques
> *Building*, *Damage*, *Game*, *Respawn* dans les Island Settings.

## 5. Préparer le point de départ
- Place un **Player Spawner** (point d'apparition) à l'entrée du futur parcours.
  (Détaillé dans [`02-terrain-et-chemin.md`](./02-terrain-et-chemin.md).)

## 6. (Optionnel) Activer Verse
Si tu prévois la version scriptée : menu **Verse** → vérifie l'accès au **Verse Explorer**.
La création du device Verse est traitée au dossier `05`.

## ✅ Checklist fin de mise en place
- [ ] Projet créé sur SSD et sauvegardé
- [ ] Dossiers de l'Outliner créés
- [ ] Construction joueur désactivée
- [ ] Règles de respawn définies
- [ ] Un Player Spawner posé au départ

→ Suite : [`02-terrain-et-chemin.md`](./02-terrain-et-chemin.md)
