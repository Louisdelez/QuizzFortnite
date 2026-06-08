# 08.06 — Mise en place du MCP (pour que JE construise la map)

Guide pas-à-pas pour brancher le serveur MCP **`uefn-mcp-server` (KirChuvakov)** et **m'autoriser
à agir dans ton UEFN**. Une fois ces étapes faites de **ton** côté, je peux piloter la construction.

> ⚠️ Rappel : le MCP **automatise ton éditeur ouvert** (pas headless). Et **je ne peux l'utiliser
> que si le serveur est enregistré dans CETTE session Claude Code** (étape 4).

## 🧰 Prérequis
- **UEFN installé** et un **projet ouvert** (ton projet quiz).
- **Python 3.10+** sur ta machine.
- **Claude Code** (cette session).
- Le dépôt **`uefn-mcp-server`** récupéré localement.

## 1️⃣ Activer Python dans UEFN
- **Project Settings** → cherche **« Python »** → coche **Python Editor Script Plugin** /
  **Python Editor Scripting**.
- (Projet partagé : un popup propose d'activer Python ; sinon, case dans le menu **Tools**.)

## 2️⃣ Récupérer le serveur et installer le SDK MCP
```bash
git clone https://github.com/KirChuvakov/uefn-mcp-server
pip install mcp
```

## 3️⃣ Lancer le listener DANS UEFN
- UEFN → **Tools → Execute Python Script** → choisis **`uefn_listener.py`**.
- Une fenêtre de statut s'ouvre : santé du listener, connexion au serveur MCP (heartbeat 10 s),
  port (défaut **8765**), métriques.
- **Auto-start (option)** : copie `uefn_listener.py` **et** `init_unreal.py` dans
  `TonProjet/Content/Python/` → UEFN exécute `init_unreal.py` à chaque ouverture.

## 4️⃣ Enregistrer le serveur MCP dans Claude Code ⭐ (l'étape qui m'autorise)
Crée un fichier **`.mcp.json`** à la racine du projet (un exemple est fourni :
[`../../tools/mcp.json.example`](../../tools/mcp.json.example)) :
```json
{
  "mcpServers": {
    "uefn": {
      "command": "python",
      "args": ["C:/chemin/vers/uefn-mcp-server/mcp_server.py"]
    }
  }
}
```
- Port personnalisé si besoin : `"args": [".../mcp_server.py", "--port", "8766"]`
  ou `"env": { "UEFN_MCP_PORT": "8766" }`.
- **Alternative** : `claude mcp add uefn -- python C:/.../mcp_server.py`.

## 5️⃣ Redémarrer Claude Code
- Relance Claude Code pour charger la config. Les **outils `uefn`** apparaissent alors dans ma
  liste d'outils → **je peux les appeler**.

> 💡 Astuce officielle du projet : tu peux littéralement me demander **« Aide-moi à installer le
> serveur MCP UEFN »** et je t'accompagne (génération du `.mcp.json`, vérifs, etc.).

## ✅ Vérifier que ça marche
- Demande-moi de lancer l'outil **`ping`** (System) → je dois recevoir une réponse du listener.
- Ou **`get_project_info`** / **`get_level_info`** → je te renvoie les infos de ton projet/niveau.

## 🏗️ Ce que je ferai ensuite (séquence de construction)
Une fois connecté, et avec `quiz_map` importé + `placement_manifest.json` accessible :
1. `execute_python` → **importer/spawner** le static mesh `quiz_map` à (0,0,0).
2. Boucle `execute_python` / `spawn_actor` → **placer les repères** des 20 portails, spawn, victoire.
3. `set_actor_transform` → ajuster précisément les positions (cm) du manifeste.
4. (si possible) **poser le device** `quiz_manager` et organiser l'Outliner.
5. `save_current_level` → **sauvegarder**.

> Je te montrerai chaque commande avant de l'exécuter. Tu gardes la main (et tu **sauvegardes**
> ton projet avant, par sécurité).

## 🔐 Sécurité & bon sens
- `execute_python` exécute du **code arbitraire** dans ton éditeur : n'active que des serveurs que
  tu as **inspectés**.
- **Sauvegarde / versionne** ton projet UEFN avant une session de build automatisée.
- Commence par des opérations **réversibles** (spawn de repères) avant le placement « définitif ».

## 🧪 Limites à anticiper
- Placement de **devices** et câblage **`@editable`** : soumis à la **validation UEFN** → peut
  nécessiter une finition manuelle.
- La **compilation Verse** et le **collage des modules** (section `05`) restent hors périmètre du
  MCP « contrôle » → on peut ajouter un MCP **Verse** ([`05-mcp-uefn.md`](./05-mcp-uefn.md)) pour
  fiabiliser le code.

## ➡️ Et concrètement, on commence par quoi ?
Dis-moi quand **les étapes 1→5 sont faites** (serveur `uefn` visible dans mes outils). Je lance un
**`ping`**, puis on construit la map ensemble, étape par étape.

→ Retour : [`05-mcp-uefn.md`](./05-mcp-uefn.md) · [`04-recommandation-pipeline.md`](./04-recommandation-pipeline.md) · [index](../README.md)
