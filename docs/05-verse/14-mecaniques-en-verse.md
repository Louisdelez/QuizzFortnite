# 05.14 — Faire les mécaniques EN VERSE (téléporteurs, spawners…)

Recherche & analyse : ce qui se fait **purement en code Verse** vs ce qui exige **un device posé
mais piloté par Verse**. Objectif : un maximum de « tout en Verse » (téléport, spawn, etc.).

## 🧭 Règle générale (le principe clé)

| Catégorie | En Verse ? |
|-----------|-----------|
| **Téléporter un joueur** | ✅ **Pur Verse**, sans device (`TeleportTo`) |
| **Spawner des props / géométrie** | ✅ **Pur Verse**, sans device (`SpawnProp`) |
| **Spawner / respawn des joueurs** | ⚠️ besoin d'**1 device** spawner posé, mais **tout piloté en Verse** |
| **Spawner NPC / gardes / faune / items** | ⚠️ besoin du **device** correspondant, **piloté en Verse** |
| **Créer un DEVICE au runtime** | ❌ **impossible** (limite confirmée) |
| **Déplacer un device par code** | ✅ oui (`SetGlobalTransform` / `MoveTo` / `TeleportTo`) |

> 💡 **Astuce « tout en Verse »** : on **ne peut pas créer** un device en jeu, mais on peut
> **déplacer** un device posé via Verse. Donc **1 seul** spawner/téléporteur posé peut être
> **repositionné par code** là où tu veux → comportement « dynamique » sans multiplier les devices.

---

## 🌀 1. Téléportation EN VERSE

### A. Sans device (recommandé) — `fort_character.TeleportTo`
Téléporte un joueur **à n'importe quelle coordonnée**, **zéro device**.
```verse
TeleportTo<public>(Position:vector3, Rotation:rotation)<decides><reads><writes><allocates>:void
```
- Échoue si la **position est hors playspace** ou si le personnage **ne tient pas** → contexte `<decides>` (`[]`).
```verse
TeleportPlayer(Agent : agent, Pos : vector3) : void =
    if (Char := Agent.GetFortCharacter[]):
        if (Char.TeleportTo[Pos, IdentityRotation()]) {}
```
- Variante **transform** disponible (`TeleportTo[Transform]`).
- **`MoveTo`** = déplacement **animé** (glissé) au lieu d'instantané ; utile pour des effets.

> ✅ C'est ce qu'utilise déjà `quiz_manager.verse` pour **renvoyer** le joueur (mauvaise réponse).
> **Aucun téléporteur device n'est nécessaire.**

### B. En pilotant un `teleporter_device` posé
Si tu **poses** un téléporteur, tu le contrôles entièrement en Verse :
| Membre | Effet |
|--------|-------|
| `Teleport(Agent : agent)` | Téléporte l'agent **vers ce device**. |
| `Activate(Agent : agent)` | Téléporte l'agent **vers le groupe cible** via ce device. |
| `Enable()` / `Disable()` | Active / désactive le device. |
| `ActivateLinkToTarget()` / `DeactivateLinkToTarget()` / `ResetLinkToTarget()` | Gère le lien vers la destination. |
| `EnterEvent` (listenable) | Quand un agent **entre**. |
| `TeleportedEvent` (listenable) | Quand un agent **ressort** (a été téléporté). |
```verse
@editable MonTP : teleporter_device = teleporter_device{}
# ...
MonTP.TeleportedEvent.Subscribe(OnTeleported)
MonTP.Teleport(Agent)     # envoie l'agent sur le device
```

> 🟢 **Conclusion téléport** : tu peux faire **100 % en Verse sans aucun device** (`TeleportTo`),
> ou piloter un téléporteur posé si tu veux l'effet visuel natif.

---

## ✨ 2. Spawn EN VERSE

### A. Props / géométrie — `SpawnProp` (pur Verse, sans device) ⭐
```verse
SpawnProp<native>(Asset:creative_prop_asset, Position:vector3, Rotation:rotation)<transacts>
    : (?creative_prop, spawn_prop_result)
```
- Renvoie l'**instance** (`?creative_prop`) + un **résultat**.
- L'instance se **déplace** (`MoveTo`/`TeleportTo`) et se **détruit** (`Dispose()`).
```verse
if (Spawned, Result := SpawnProp(MonAsset, Pos, IdentityRotation()), Prop := Spawned?):
    # Prop.Dispose()  # pour le supprimer plus tard
```
> ✅ C'est exactement ce que fait `map_builder.verse` pour **générer le sol et les portails**.
> **La map se construit en Verse, sans device.**

### B. Joueurs — `player_spawner_device` (device posé, piloté en Verse)
On **ne crée pas** un joueur par pur code ; il faut **au moins un** `player_spawner_device` posé.
Mais tout le **contrôle** est en Verse :
| Membre | Effet |
|--------|-------|
| `SpawnPlayer(Player : player)` | (Re)spawne le joueur depuis ce device. |
| `SpawnedEvent` (listenable) | Signalé quand un agent est spawné (envoie l'agent). |
| `Enable()` / `Disable()` | Active / désactive le spawn. |
| (hérité) `TeleportTo` / `SetGlobalTransform` / `MoveTo` | **Déplacer le spawner** par code ! |
```verse
@editable Spawner : player_spawner_device = player_spawner_device{}
# Repositionner le spawner puis spawner le joueur (spawn "dynamique") :
Spawner.TeleportTo[Pos, IdentityRotation()]
Spawner.SpawnPlayer(Player)
```
> 🔑 En **déplaçant** un seul spawner par code, tu obtiens des points de spawn **dynamiques** sans
> en poser plusieurs. Le « quand » et le « où » sont **100 % en Verse**.

### C. NPC / Gardes / Faune — devices spawner pilotés en Verse
Mêmes principes avec : `npc_spawner_device`, `guard_spawner_device`, `wildlife_spawner_device`,
`firefly_spawner_device`. Ils exposent `Spawn()` / `Respawn()` / `Enable()` / `Disable()` +
des events, appelables depuis Verse. (Device posé requis, contrôle en Verse.)

### D. Items
`item_spawner_device` (ou granter d'items) posé, déclenché par Verse pour **donner/poser** des objets.

---

## 🧱 3. Et les devices « logiques » (zones, barrières, HUD) ?

- Tu **ne peux pas les créer** au runtime, mais tu **références** ceux que tu poses (`@editable`)
  et tu appelles leurs méthodes/events **en Verse** (`Enable`, `Disable`, `Show`, `Subscribe`…).
- Pour un quiz « **tout en Verse** » **sans** zones : on détecte par **position** du joueur
  (`GetTransform().Translation`) au lieu d'une `mutator_zone_device`
  (voir [`12-generation-procedurale.md`](./12-generation-procedurale.md)).

---

## 🎯 Synthèse pour TON quiz « tout en Verse »

| Mécanique | Solution Verse | Device posé ? |
|-----------|----------------|---------------|
| Construire le parcours + portails | `SpawnProp` (`map_builder.verse`) | ❌ aucun |
| Détecter la réponse | position du joueur (`GetTransform`) | ❌ aucun |
| Avancer / renvoyer le joueur | `TeleportTo` | ❌ aucun |
| (option) effet portail natif | `teleporter_device.Activate` | ✅ 1 téléporteur |
| (option) point de spawn | `player_spawner_device.SpawnPlayer` (+ déplaçable) | ✅ 1 spawner |
| (option) gardes / NPC | `*_spawner_device.Spawn` | ✅ 1 spawner |

➡️ **Le strict minimum posé pour un quiz 100 % Verse = le device `quiz_manager` lui‑même**
(+ éventuellement **1** player_spawner pour le point de départ). Téléport et génération de la map
sont **purement en code**. C'est déjà le cas dans le dossier [`../../verse/`](../../verse/README.md).

## ⚠️ Rappel API
Signatures à confirmer dans l'**API Reference** (elles bougent) : `TeleportTo`, `MoveTo`,
`SpawnProp`, `SpawnPlayer`, `Teleport`/`Activate`, `Dispose`, `SetGlobalTransform`,
`IdentityRotation`. Sources officielles ci-dessous.

## 🔗 Sources
- Teleporter device (Teleport/Activate/events) — https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/fortnitedotcom/devices/teleporter_device
- fort_character.TeleportTo — https://dev.epicgames.com/documentation/en-us/uefn/verse-api/fortnitedotcom/characters/fort_character/teleportto
- player_spawner_device — https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/fortnitedotcom/devices/player_spawner_device
- SpawnProp — https://dev.epicgames.com/documentation/en-us/fortnite/verse-api/fortnitedotcom/devices/spawnprop
- Spawn in Verse (overview) — https://dev.epicgames.com/documentation/en-us/fortnite/spawn-in-verse

→ Voir aussi le code : [`../../verse/`](../../verse/README.md) · génération : [`12-generation-procedurale.md`](./12-generation-procedurale.md)
