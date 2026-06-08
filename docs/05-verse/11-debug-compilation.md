# 05.11 — Compilation, débogage & validation

Compiler un système multi-modules, lire les erreurs et valider la robustesse.

## 🛠️ Compiler

- **Build Verse Code** : `Ctrl + Shift + B`.
- Compile **après chaque module** ajouté (développement par couches — voir [`02`](./02-projet-structure.md)).
- Le device `quiz_manager` apparaît dans le Content Browser après un build réussi → pose-le dans la map.

## 🪵 Tracer avec un logging propre

Plutôt que des `Print` éparpillés, centralise un petit utilitaire activable :

```verse
using { /UnrealEngine.com/Temporary/Diagnostics }

quiz_log := class:
    Enabled : logic = true
    Tag : string = "QUIZ"
    Info(Message : string) : void =
        if (Enabled?) { Print("[{Tag}] {Message}") }
```

Usage : `Log.Info("EvaluateAnswer agent index={Index}")`. On peut tout couper en passant `Enabled := false`.

## ❌ Erreurs fréquentes (système pro)

| Symptôme | Cause probable | Solution |
|----------|----------------|----------|
| `Unknown identifier` (module) | mauvais `using { ... }` | Vérifie le chemin exact du module dans l'API Reference. |
| `GetPlayerUI` / `AddWidget` introuvable | API UI différente | Confirme les noms dans « In-Game UI in UEFN » + module UI. |
| `text_block`/`canvas_slot`/`anchors` inconnus | nom de widget changé | Vérifie le module `/UnrealEngine.com/Temporary/UI`. |
| `event(...)`/`Signal`/`Await` rejeté | classe event différente | Utilise la variante curryfiée (voir [`06`](./06-portails-answer.md)). |
| `set Map[K] = V` échoue | non-`var` / contexte | Map déclarée `var`, et `if (set Map[K]=V){}`. |
| Accès tableau/map rejeté | hors contexte d'échec | Mets dans `if (X := Coll[Idx]):`. |
| `Floor[...]` erreur | faillible / mauvais nom | Encapsule dans `if`, ou bonne fonction d'arrondi. |
| L'UI ne s'affiche pas | widget non ajouté / joueur sans UI | Vérifie `GetPlayerUI` réussi + `AddWidget`. |
| Réponses décalées (A=B…) | ordre des listes incohérent | Branche zones **et** couleurs UI dans l'ordre A,B,C,D. |
| Double validation | zone émet plusieurs fois | Garde-fou `Locked` + éventuel Disable/Enable de zone. |
| États « fantômes » / lag long terme | pas de nettoyage à la déco | Implémente `OnPlayerRemoved` + `Registry.Remove`. |
| Persistance refusée | type instable / contexte | Suis « Using Persistable Data in Verse ». |

## 🧪 Plan de validation (au-delà du « ça compile »)

### Fonctionnel
- [ ] L'UI s'affiche pour chaque joueur à l'arrivée.
- [ ] La bonne question + les 4 réponses (bonnes couleurs) s'affichent.
- [ ] Franchir le portail **correct** → score augmente, question suivante chargée.
- [ ] Franchir un portail **faux** → pas d'avance, état cohérent (pénalité éventuelle).
- [ ] Dernière question validée → fin de partie + score final.

### Multijoueur (le test crucial du « pro »)
- [ ] 2+ joueurs progressent **indépendamment** (questions/scores distincts).
- [ ] Un joueur ne déclenche **jamais** l'avancée d'un autre.
- [ ] Déconnexion en pleine partie → état nettoyé, pas de crash, pas de fuite.
- [ ] Reconnexion → réinitialisé proprement.

### Concurrence
- [ ] Double entrée rapide dans une zone → **une seule** validation (verrou `Locked`).
- [ ] Timeout (si chrono) → géré comme prévu, course `race` annulée proprement.

### Robustesse / charge
- [ ] Banque de 25+ questions : pas de ralentissement.
- [ ] Lobby plein : performances stables (lookups O(1), pas de polling).

## 🔬 Méthode de debug par couches
1. **Données** : `Print(Bank.Count())` au démarrage → la banque est bien chargée.
2. **Capteur** : un `Print` dans `OnEnter`/`EvaluateAnswer` → le portail réagit avec le bon index.
3. **État** : `Print(State.Position, State.Score)` après chaque réponse → progression cohérente.
4. **UI** : vérifie l'affichage en PIE, puis en **Launch Session** (multi).
5. **Concurrence** : teste les cas limites en dernier.

## ✅ Avant publication
- [ ] Aucune erreur/avertissement de compilation.
- [ ] Tous les `@editable` branchés.
- [ ] Nettoyage joueur vérifié (sessions longues).
- [ ] Testé en **multijoueur réel** (Launch Session), pas seulement en PIE.
- [ ] Schéma de **persistance** figé si utilisé (ne plus changer après publication).

→ Suite : [`12-generation-procedurale.md`](./12-generation-procedurale.md) (génération de la map selon N questions)
