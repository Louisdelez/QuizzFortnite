# 08.05 — MCP pour UEFN/Fortnite : tout ce qui existe

Analyse complète de l'écosystème **MCP (Model Context Protocol)** pour UEFN, pour que **je (Claude)
puisse construire la map dans ton éditeur**. Objectif : comprendre ce qui existe, comment ça
marche, et ce que je peux réellement faire.

## 🧠 C'est quoi le MCP, et pourquoi ça change tout ici

Le **MCP** est un protocole standard qui permet à un assistant IA (Claude Code) d'appeler des
**outils externes**. Un « serveur MCP » expose des outils (fonctions) que **je peux invoquer**.

➡️ Avec un serveur MCP **branché sur UEFN**, je ne me contente plus de te **donner des fichiers** :
je peux **agir dans ton éditeur** — spawner des acteurs, régler des transforms, exécuter du Python,
sauvegarder le niveau. **C'est le seul moyen pour que « ce soit moi qui construise la map ».**

## 🧩 Prérequis commun : le Python d'éditeur UEFN

Tous les serveurs MCP « contrôle éditeur » reposent sur le **Python Editor Scripting** d'UEFN :
- **Statut** : **early preview / expérimental** (apparu autour de la v40), activable par toi.
- **Activation** : **Project Settings → "Python Editor Scripting"** (+ Python Editor Script Plugin).
- **Restrictions UEFN officielles importantes** :
  1. tu ne peux modifier que les **propriétés visibles dans l'UI d'UEFN** (le reste **échoue à la
     validation**) ;
  2. tu ne peux pas **placer du contenu absent** du Content Browser / asset pickers (échoue aussi).
- ➡️ Conséquence : **spawner des meshes/acteurs** et régler des **transforms** = fiable. Placer un
  **device** et **câbler ses `@editable`** par script = **possible mais limité** (selon ce qui est
  exposé en UI). À tester.

## 🗂️ Les deux familles de serveurs MCP

| Famille | Ce qu'elle fait | UEFN ouvert requis ? | Pour quoi |
|---------|-----------------|----------------------|-----------|
| **Contrôle éditeur** | agir dans UEFN (spawn, transform, Python) | ✅ oui | **Construire** la map |
| **Connaissance/Verse** | API Verse correcte, doc, validation | ❌ non | **Fiabiliser** mon code Verse |

> 💡 **Idéalement on combine les deux** : un serveur « contrôle » pour bâtir, + un serveur
> « Verse » pour que mon code compile sans erreur d'API.

## 🛠️ Catalogue des serveurs MCP (contrôle éditeur)

### 1. `uefn-mcp-server` — KirChuvakov ⭐ (le mieux documenté pour Claude Code)
- **28 outils** : Acteurs (9), Assets (9), Système (5 dont `execute_python`), Level (2), Viewport (2), Project (1).
- **Architecture** : un **listener** dans UEFN (`uefn_listener.py`) + un **serveur MCP externe**
  (`mcp_server.py`) qui parlent en **HTTP** (port 8765 par défaut). Les appels `unreal.*`
  s'exécutent sur le **thread principal** de l'éditeur (tick callback).
- **`execute_python`** : exécute du **Python arbitraire** dans l'éditeur (accès à `unreal`,
  `actor_sub`, `asset_sub`, `level_sub`…). C'est l'outil **le plus puissant** : tout ce que le
  module `unreal` permet, je peux le piloter.
- **Pur Python, zéro compilation C++**, marche sur plusieurs versions d'UEFN.
- 📖 Setup détaillé : [`06-mcp-setup.md`](./06-mcp-setup.md).

### 2. `uefn-mcp` (npm, ~87 outils) — orienté « map building »
- Présenté comme **« AI-powered Fortnite Creative map building »** avec **87 outils** (surensemble
  orienté construction de map).
- Même principe (contrôle de l'éditeur). Plus d'outils = potentiellement plus de raccourcis de
  construction. ⚠️ Communauté : **vérifier le code et la maintenance** avant usage.

### 3. `unreal-mcp` — chongdashu (Unreal Engine générique)
- MCP pour **Unreal Engine** (Cursor, Windsurf, Claude Desktop) — pas spécifique UEFN, mais même
  famille (contrôle de l'éditeur via langage naturel). Utile comme référence/architecture.

## 📚 Catalogue des serveurs MCP (connaissance / Verse)

> Ceux-ci **n'agissent pas** dans l'éditeur : ils me donnent l'**API Verse exacte** pour éviter
> les erreurs (très utile vu que l'API Verse bouge — cf. mes avertissements en section `05`).

| Serveur | Ce qu'il apporte |
|---------|------------------|
| **Verse UEFN** (mcpmarket) | Lit **ton** code Verse + les **digests** ; valide les symboles d'API (anti-hallucination), liste les `@editable` + checklist de câblage, interroge le digest API (devices, signatures, events), **scanne les `.uasset`** pour lire la config réelle des devices placés. |
| **Verse Cortex** | **Recherche sémantique** (Qdrant) sur le code Verse, les digests Fortnite/UE/Verse et la doc Epic. |
| **Mrdj FNE** | Guides Verse, devices d'exemple, liens de référence Epic + communauté. |
| **Verse Docs** | Accès à la **documentation** du langage Verse et à l'API UEFN. |

### Et `UEFN TOOLBELT` (287+ outils Python)
- Ce n'est **pas** un serveur MCP, mais une **bibliothèque de 287+ outils Python** de
  world-building / automatisation Verse. Exécutable via le Python d'éditeur (ou potentiellement
  exposable via `execute_python` d'un serveur MCP). Bon réservoir de fonctions de construction.

## ✅ Ce que JE peux faire avec le MCP « contrôle » (réaliste)

Une fois le serveur branché et UEFN ouvert, je peux enchaîner :
1. **Importer / spawner** le static mesh de la map (mon `quiz_map`) à l'origine.
2. **Spawner des acteurs/repères** aux **positions du manifeste** (`placement_manifest.json`).
3. **Régler les transforms** (position/rotation/échelle) précisément.
4. **Exécuter du Python** (`execute_python`) pour des opérations sur-mesure (boucles de placement,
   nommage, organisation de l'Outliner…).
5. **Sauvegarder** le niveau.

## ⚠️ Ce que le MCP NE fait PAS (honnêteté)

- **Pas headless** : il faut **UEFN ouvert** sur ta machine + le **listener** lancé. Le MCP
  **automatise ton éditeur**, il ne compile pas une map « hors ligne ».
- **Je ne peux pas m'y connecter tout seul** : tu dois **enregistrer le serveur MCP dans CETTE
  session Claude Code** (`.mcp.json` / `claude mcp add`). Tant qu'il n'apparaît pas dans mes outils,
  je ne peux pas l'appeler.
- **Placement de devices + câblage `@editable`** : limité par la **validation UEFN** (propriétés
  UI uniquement, assets plaçables uniquement). Le **mesh + repères** sont fiables ; le **device
  quiz_manager** peut demander une **touche manuelle** (poser le device, brancher les refs).
- **Verse** : le MCP « contrôle » gère des **assets/acteurs**, pas l'écriture/compilation de `.verse`.
  Pour ça, on s'appuie sur un MCP **connaissance** (Verse UEFN) + le collage des modules (section 05).
- **Sécurité** : `execute_python` exécute du **code arbitraire** dans ton éditeur. N'utilise que
  des serveurs/scripts que tu **comprends et valides**. **Sauvegarde** avant.

## 🧭 Recommandation de stack pour « Claude construit la map »

```
[ Claude Code (moi) ]
     ├── MCP "contrôle"  : uefn-mcp-server (KirChuvakov)   → bâtir dans l'éditeur
     └── MCP "Verse"     : Verse UEFN / Verse Cortex        → API Verse correcte
                  │
                  ▼
        [ UEFN ouvert + Python activé + listener ]
                  │
                  ▼
        Map quiz : mesh placé + repères + (device) + Verse collé
```

→ Mise en place pas-à-pas (pour m'autoriser à le faire) : [`06-mcp-setup.md`](./06-mcp-setup.md)
