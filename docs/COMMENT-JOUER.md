# ▶️ Comment jouer au jeu (de zéro à jouable)

Le code sur GitHub devient un jeu **uniquement dans UEFN** (PC). Voici la procédure complète.

## A. Ce qu'il te faut
- **PC Windows** (ok) + **UEFN** installé via l'**Epic Games Launcher** + **Fortnite** installé.
- Compte **Epic** avec **2FA** activée.
- (Détails : [`01-prerequis/`](./01-prerequis/01-materiel-comptes.md).)

## B. Récupérer le code
```bash
git clone https://github.com/Louisdelez/QuizzFortnite
```
(ou « Code → Download ZIP » sur la page GitHub). Le code Verse est dans le dossier `verse/`.

## C. Créer le projet UEFN
1. Lance **UEFN** → **Create Project** → modèle **Blank** (vide).
2. Nomme-le (ex. `quizz-fortnite`), sur un **SSD**.

## D. Ajouter les fichiers Verse
1. Menu **Verse → Verse Explorer**.
2. **Create New Verse File** :
   - `quiz_manager` en **Verse Device** (important : c'est le device qu'on pose).
   - `quiz_types`, `question_bank`, `player_state`, `map_builder`, `quiz_hud`, `leaderboard`
     en fichiers Verse simples.
3. **Colle le contenu** de chaque fichier depuis le dossier `verse/` du dépôt.

## E. Compiler
- **Build Verse Code** : `Ctrl+Shift+B`.
- S'il y a une erreur sur un nom d'API (rare), corrige-la (voir notes dans `verse/README.md`),
  puis recompile.

## F. Poser et régler le device
1. Après un build réussi, le device **`quiz_manager`** apparaît dans le **Content Browser**.
2. **Glisse-le** dans la map.
3. Sélectionne-le → **Details** → règle :
   - **`FloorAsset`** → un prop de **sol/plateforme** (depuis le Content Browser),
   - **`PortalAsset`** → un prop d'**arche/pilier** (le « portail »),
   - (optionnel) `QuestionTimeSeconds`, `MaxSpeedBonus`, `StreakBonus`, `Randomize`.

> ⚠️ **Important** : sans `FloorAsset` / `PortalAsset` assignés, la map se génère **vide**
> (le code ne sait pas quel modèle spawner).

## G. Point d'apparition
- Pose **un Player Spawn Pad** quelque part (le moteur en a besoin pour faire entrer les joueurs).
  Le code te **téléporte ensuite au départ** automatiquement.

## H. Jouer (test solo immédiat)
- Clique **Play** (ou **Alt+P**) → tu apparais, **le couloir et les portails se génèrent**,
  la **question** s'affiche dans ton UI, **traverse le bon portail** pour avancer.

> 💡 **Normal** : dans l'éditeur **avant** de jouer, la map paraît **vide** — la géométrie est
> **créée par le code au lancement** de la partie. Elle apparaît quand tu appuies sur Play.

## I. Tester en multijoueur / vrai Fortnite
- **Launch Session** : pousse la map sur les serveurs Epic et ouvre Fortnite pour tester à plusieurs.
- (Détails : [`06-tests-publication/01-playtest.md`](./06-tests-publication/01-playtest.md).)

## J. Publier (pour y jouer avec un code d'île)
1. Rejoins l'**Island Creator Program** (gratuit).
2. **Publish** depuis UEFN → remplis titre/description/vignette.
3. Tu reçois un **code d'île** `0000-0000-0000` → n'importe qui peut jouer en tapant ce code
   dans Fortnite.
4. (Détails : [`06-tests-publication/03-publication.md`](./06-tests-publication/03-publication.md).)

## 🆘 Si ça ne marche pas
- **Map vide en jeu** → `FloorAsset`/`PortalAsset` non assignés (étape F).
- **Erreur de compilation Verse** → un nom d'API a changé ; corrige le helper concerné
  (voir `verse/README.md` et [`05-verse/11-debug-compilation.md`](./05-verse/11-debug-compilation.md)).
- **Je ne peux pas publier** → il faut rejoindre l'Island Creator Program.
- **Pas de PC / pas envie d'UEFN** → la seule façon de transformer le code en jeu **jouable**
  reste UEFN ; il n'y a pas de raccourci hors éditeur.
