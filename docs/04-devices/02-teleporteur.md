# 04.02 — Le Téléporteur (Teleporter)

Le device clé pour faire **avancer** le joueur quand il choisit le bon portail.

## 🎯 Principe

Un **Teleporter** déplace instantanément un joueur d'un point A (l'entrée du portail) vers
un point B (la destination). On crée des **paires/groupes** de téléporteurs reliés par un **identifiant de groupe**.

## 🔧 Options importantes (panneau Details)

| Option | Rôle |
|--------|------|
| **Teleporter Group / Group Name** | Identifiant qui relie ce téléporteur à sa/ses destination(s). Deux téléporteurs du même groupe sont connectés. |
| **Teleporter Target Group** | Groupe de **destination** vers lequel envoyer le joueur. |
| **Enabled at Game Start** | Le téléporteur est-il actif dès le début ? |
| **Play Visual/Sound Effect** | Affiche l'effet portail (anneau) et le son. |
| **Conserver la direction / rotation** | Oriente le joueur à l'arrivée. |

> ⚠️ Les libellés varient selon les versions. L'idée constante : **un groupe source** envoie
> vers **un groupe cible**. Configure « qui va où » via ces groupes.

## 🅰️ Montage « 4 portails » avec téléporteurs

Pour le **palier N** :

1. Place **4 téléporteurs d'entrée**, un par réponse :
   `PalierN_A`, `PalierN_B`, `PalierN_C`, `PalierN_D`.
2. À l'**entrée du palier N+1**, place un **téléporteur de destination** `PalierN+1_Entree`.
3. Crée une **zone/destination de sanction** (ex. `Sanction_Retour_PalierN`) selon ton design
   (retour au début du palier, salle « mauvaise réponse », chute…).
4. **Relie le bon portail** à la destination du palier suivant :
   - Le téléporteur de la **bonne réponse** a pour cible le groupe `PalierN+1_Entree`.
5. **Relie les 3 mauvais portails** à la destination de **sanction**.

```
PalierN_A (faux) ─► Sanction
PalierN_B (BON)  ─► PalierN+1_Entree   ✅ avance
PalierN_C (faux) ─► Sanction
PalierN_D (faux) ─► Sanction
```

## 🔁 Variante : sanction « retour au début du palier »

- Crée un téléporteur de destination `PalierN_Depart` à l'entrée du palier N.
- Les 3 mauvais portails ciblent `PalierN_Depart` → le joueur **recommence la même question**.
- Doux et juste : recommandé pour une v1 (voir `02-conception/01`).

## 🎭 Rendre l'effet « portail » convaincant

- Active l'**effet visuel/sonore** du téléporteur (anneau lumineux).
- Encadre chaque téléporteur d'une **arche/porte décorative** (prop) pour l'aspect « portail ».
- Mets une **couleur/lumière** par portail si tu veux les différencier.

## ⚠️ Multijoueur : qui est téléporté ?

Le téléporteur déplace **le joueur qui entre dedans**, pas toute la lobby — c'est ce qu'on veut
pour un quiz « chacun avance ». Vérifie ce comportement en test multijoueur.

## ✅ Checklist téléporteur (par palier)
- [ ] 4 téléporteurs d'entrée nommés A–D
- [ ] Destination « palier suivant » créée et ciblée par le bon portail
- [ ] Destination de sanction créée et ciblée par les 3 mauvais
- [ ] Effets visuels/sonores activés
- [ ] Testé en PIE : le bon avance, les mauvais sanctionnent

→ Suite : [`03-bouton-et-conditional.md`](./03-bouton-et-conditional.md)
