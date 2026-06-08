# 05.02 — Structure du projet Verse

Mise en place de l'arborescence des modules et des conventions de code.

## 📁 Créer les fichiers Verse

Dans UEFN : menu **Verse → Verse Explorer**, puis **Create New Verse File** pour chaque module.
- Crée `quiz_manager` en **Verse Device** (il hérite de `creative_device` et se pose dans la map).
- Crée les autres (`quiz_types`, `question_bank`, `player_state`, `quiz_hud`, `answer_portal`,
  `leaderboard`) en **fichiers Verse simples** (classes utilitaires non posées dans la map).

Arborescence cible (dans le dossier Verse du projet) :
```
quiz/
├── quiz_types.verse
├── question_bank.verse
├── player_state.verse
├── quiz_hud.verse
├── answer_portal.verse
├── quiz_manager.verse      ← le seul "creative_device" posé dans la map
└── leaderboard.verse
```

> 💡 Tu peux mettre tous ces modules dans un même **dossier/namespace** `quiz`. Garder un fichier
> par classe rend le projet **lisible** et **maintenable** (révision, debug, évolution).

## 🧱 Conventions de code (à fixer pour tout le projet)

| Sujet | Convention |
|-------|------------|
| Indentation | **espaces** uniquement (jamais de tab), pas de mélange. |
| Nommage types | `snake_case` : `quiz_player_state`, `answer_result`. |
| Nommage fonctions | `PascalCase` : `LoadQuestion`, `OnAnswer`. |
| Constantes config | `@editable` dans `quiz_manager` (réglables sans recompiler la logique). |
| Index réponses | **0=A, 1=B, 2=C, 3=D** partout (banque, portails, UI). |
| Ordre des `@editable` listes | brancher **toujours** dans l'ordre A,B,C,D. |
| Debug | passer par un module/log activable, pas des `Print` éparpillés à supprimer plus tard. |

## 🔗 Dépendances entre modules

```
quiz_types        ◄── (aucune dépendance) types de base
question_bank     ◄── quiz_types
player_state      ◄── quiz_types
quiz_hud          ◄── quiz_types
answer_portal     ◄── (devices)
leaderboard       ◄── player_state
quiz_manager      ◄── TOUS (il orchestre)
```

- Les modules « bas niveau » (types, banque, état) **ne connaissent pas** l'orchestrateur.
- L'orchestrateur **assemble** tout. C'est l'**inversion de dépendances** : le code métier
  (données) ne dépend pas de la coordination.

## 🧪 Ordre de développement recommandé

1. `quiz_types` + `question_bank` → compiler (données seules).
2. `player_state` → registre + état.
3. `answer_portal` → capter un franchissement et l'afficher en `Print`.
4. `quiz_manager` minimal → relier portails ↔ évaluation ↔ état (sans UI).
5. `quiz_hud` → ajouter l'UI par joueur.
6. `leaderboard` → scores de fin.
7. Concurrence (chrono), polish, persistance.

> ✅ À chaque étape : **compiler + tester en PIE**. On construit le système **par couches**,
> jamais tout d'un coup.

## ⚙️ Brancher le device final

Après compilation, **un seul** device (`quiz_manager`) est à poser dans la map. Tous les autres
modules sont des **classes** utilisées par lui. Tu brancheras ses `@editable` (portails,
téléporteurs, réglages) — voir [`07-orchestrateur.md`](./07-orchestrateur.md).

→ Suite : [`03-types-et-banque.md`](./03-types-et-banque.md)
