# 04.04 — Mutator Zone, Trigger & Barrier

Trois devices de **détection et de contrôle de flux**, parfaits pour les portails « zone ».

## 🟦 Mutator Zone (zone de détection)

Volume invisible qui **détecte** et **agit** sur les joueurs qui **entrent** ou **sortent**.

### Options clés
| Option | Rôle |
|--------|------|
| **Zone Size / Dimensions** | Taille du volume (couvre le passage d'un portail). |
| **Zone Direction** | Direction relative au device : Forward, Left, Right, Backwards. |
| **Effets sur le joueur** | Peut modifier le joueur dans la zone (vitesse, dégâts, etc.). |
| **Events: When Player Enters / Exits** | Émet un signal quand un joueur entre/sort. |

### Montage « 4 zones = 4 réponses »
1. Place une **Mutator Zone** devant/dans chaque porte décorative : `PalierN_Zone_A…D`.
2. Dimensionne chaque zone pour couvrir le passage (ni trop petite, ni débordante).
3. **Câble l'événement « joueur entre »** :
   - Zone de la **bonne réponse** → *avancer* (téléport vers palier suivant / ouvrir barrière / checkpoint).
   - Zones **fausses** → *sanction* (HUD « Faux ! », téléport retour, dégâts…).

```
Entrée Zone_A (faux) ─► HUD "Faux" + téléport retour
Entrée Zone_B (BON)  ─► Checkpoint + ouvre barrière palier N+1  ✅
Entrée Zone_C (faux) ─► sanction
Entrée Zone_D (faux) ─► sanction
```

> 💡 Les zones se marient très bien avec **Verse** : on s'abonne à `AgentEntersEvent`
> et on compare l'index de la zone à la bonne réponse (voir `05-verse/04`).

## 🟨 Trigger (déclencheur / relais)

Un **Trigger** émet un signal sur un événement et sert souvent de **relais** ou de **temporisateur**
entre devices.

### Usages dans un quiz
- **Relayer** : un trigger reçoit plusieurs sources et déclenche une action commune.
- **Temporiser** : retarder un effet (ex. afficher « Correct » 1 s avant de téléporter).
- **Compter** : certaines variantes l'utilisent pour compter des activations.

### Options clés
| Option | Rôle |
|--------|------|
| **Triggered Event** | L'événement émis. |
| **Delay** | Délai avant déclenchement. |
| **Times Can Trigger** | Nombre d'activations autorisées. |
| **Triggered By** | Qui/quoi peut l'activer. |

## 🟥 Barrier (barrière)

Un **Barrier** crée un **mur (visible ou invisible)** qu'on peut **activer/désactiver** par event.
Idéal pour **bloquer le passage** vers le palier suivant tant que la bonne réponse n'est pas donnée.

### Montage « porte qui s'ouvre sur bonne réponse »
1. Place un **Barrier** en travers du passage vers le palier suivant (fermé au départ).
2. Sur **bonne réponse** (zone/bouton correct) → **désactiver/baisser** la barrière → passage libre.
3. Optionnel : la **refermer** quand le joueur est passé (ou laisser ouverte).

### Options clés
| Option | Rôle |
|--------|------|
| **Enabled at Start** | Barrière active (bloquante) au départ. |
| **Visible / Invisible** | Mur visuel ou invisible. |
| **Collision** | Bloque les joueurs / projectiles. |
| **Enable/Disable (functions)** | Actions à câbler depuis un event « bonne réponse ». |

## 🔗 Combinaison gagnante (zone + barrière)

Un montage robuste et **sans code** pour un palier :
```
Zone bonne réponse  ──(joueur entre)──►  Barrier.Disable  (ouvre la porte)
                                     └──►  Checkpoint set  (sauvegarde progression)
                                     └──►  HUD "Correct !"
Zones fausses       ──(joueur entre)──►  HUD "Faux !"  + (téléport retour OU dégâts)
```

→ Suite : [`05-hud-message-billboard.md`](./05-hud-message-billboard.md)
