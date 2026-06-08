# 01.02 — Installation d'UEFN

Étapes pour installer l'outil et ouvrir l'éditeur pour la première fois.

## 1. Installer l'Epic Games Launcher
1. Télécharge le launcher : https://store.epicgames.com/fr/download
2. Installe-le, puis **connecte-toi** avec ton compte Epic.
3. Active la **2FA** sur ton compte si ce n'est pas déjà fait (Account → Password & Security).

## 2. Installer UEFN
1. Dans l'Epic Games Launcher, ouvre l'onglet **« Unreal Editor for Fortnite »**
   (ou recherche « UEFN » dans la bibliothèque / le store — c'est gratuit).
2. Clique **Installer**. Choisis un emplacement sur un **SSD** si possible.
3. Le téléchargement est volumineux (plusieurs Go) : prévois du temps et de l'espace disque.

> ℹ️ Fortnite (le jeu) et UEFN sont deux installations distinctes mais liées.
> Tu auras besoin de Fortnite installé pour **tester en session live** ta map.

## 3. Premier lancement
1. Lance **UEFN** depuis le launcher.
2. Connecte-toi si demandé.
3. Tu arrives sur le **Project Browser** (navigateur de projets).

## 4. Créer un projet de test
Pour vérifier que tout marche :
1. Dans le Project Browser, choisis un **template** :
   - **Blank / Vide** : terrain vierge (recommandé pour un quiz que tu construis from scratch).
   - **Featured Examples** : exemples avec tutoriels intégrés (utile pour apprendre).
2. **Nomme** le projet en minuscules avec des tirets (ex. `quizz-fortnite`).
3. Choisis l'emplacement (SSD).
4. Valide et attends l'initialisation de l'éditeur.

> 📝 La création détaillée du projet du quiz est traitée dans
> [`../03-construction-map/01-creation-projet.md`](../03-construction-map/01-creation-projet.md).
> Ici, l'objectif est juste de **vérifier que l'installation fonctionne**.

## 5. Vérifier que Verse fonctionne (optionnel)
- Ouvre le menu **Verse** → vérifie qu'il propose **« Verse Explorer »** et
  **« Create New Verse File »**. (Détaillé au dossier `05`.)

## ✅ Checklist de fin d'installation

- [ ] Epic Games Launcher installé et connecté (2FA activée)
- [ ] UEFN installé (de préférence sur SSD)
- [ ] Fortnite installé (pour les tests en session)
- [ ] Un projet de test créé et l'éditeur s'ouvre sans erreur
- [ ] Le menu Verse est présent

## 🆘 Problèmes fréquents
- **UEFN ne se lance pas** : vérifie les pilotes GPU, l'espace SSD, redémarre le launcher.
- **Crash au chargement d'un projet** : projet sur disque mécanique → déplace-le sur SSD.
- **Pas de bouton Publier** : il faut rejoindre l'**Island Creator Program** (voir `01.01`).

→ Suite : [`03-interface-uefn.md`](./03-interface-uefn.md)
