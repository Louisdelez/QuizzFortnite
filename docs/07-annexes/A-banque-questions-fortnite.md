# Annexe A — Banque de questions Fortnite (prête à l'emploi)

Questions sur le **thème Fortnite**, au format de [`../02-conception/03-systeme-questions.md`](../02-conception/03-systeme-questions.md).
Colonne **bonne** = la lettre correcte (A=0, B=1, C=2, D=3 pour Verse).

> ⚠️ **Vérifie les faits** avant publication : certains éléments de Fortnite **changent avec
> les saisons/chapitres**. Les questions ci-dessous visent des faits **stables** (lore de base),
> mais relis-les au moment de publier. Évite les questions « du moment » si tu veux une map durable.

## 📋 Tableau (faciles → difficiles)

| id | question | repA | repB | repC | repD | bonne | difficulté |
|----|----------|------|------|------|------|-------|-----------|
| 1 | Combien de joueurs max dans une partie BR classique ? | 50 | 100 | 150 | 200 | B | Facile |
| 2 | Quel est le véhicule qui amène les joueurs au début ? | Battle Bus | Sky Van | War Jet | Combat Cab | A | Facile |
| 3 | Comment s'appelle la monnaie premium de Fortnite ? | Or | V-Bucks | Crédits | Gemmes | B | Facile |
| 4 | Quel matériau de construction est le plus résistant (une fois fini) ? | Bois | Pierre | Métal | Verre | C | Facile |
| 5 | Comment s'appelle le danger qui réduit la zone jouable ? | La Brume | La Tempête (Storm) | Le Vide | Le Mur | B | Facile |
| 6 | Quel objet permet de planer après avoir sauté du bus ? | Parachute / Deltaplane | Jetpack | Aile | Ballon | A | Facile |
| 7 | Comment appelle-t-on l'animal en métal qui contient du loot ? | Lama (Supply Llama) | Cochon | Renard | Loup | A | Facile |
| 8 | Quel mode oppose tous les joueurs sans coéquipiers ? | Solo | Duo | Trio | Escouade | A | Facile |
| 9 | Combien de joueurs dans une « Escouade » (Squad) classique ? | 2 | 3 | 4 | 5 | C | Facile |
| 10 | Quel item fait danser les ennemis touchés ? | Boogie Bomb | Bombe collante | Grenade | Piège | A | Moyen |
| 11 | Quel véhicule/objet permet de réanimer un équipier éliminé ? | Reboot Van | Battle Bus | Lama | Coffre | A | Moyen |
| 12 | En quelle année est sorti Fortnite Battle Royale ? | 2015 | 2016 | 2017 | 2019 | C | Moyen |
| 13 | Comment s'appelle la progression saisonnière à récompenses ? | Battle Pass | Season Card | Loot Path | Tier List | A | Moyen |
| 14 | Quel consommable restaure à la fois vie ET bouclier au max ? | Mini-bouclier | Bandage | Chug Jug | Pomme | C | Moyen |
| 15 | Quelle est la couleur d'un objet de rareté « Légendaire » ? | Vert | Bleu | Violet | Orange/Jaune | D | Moyen |
| 16 | Quel lieu emblématique du Chapitre 1 était une ville très fréquentée ? | Tilted Towers | Calme Plaines | Petit Bois | Mont Doux | A | Moyen |
| 17 | Comment s'appelle l'objet géant violet flottant surnommé « Kevin » ? | Le Cube | La Sphère | L'Orbe | Le Prisme | A | Difficile |
| 18 | Quelle rareté est associée à la couleur **bleue** ? | Commune | Peu commune | Rare | Épique | C | Moyen |
| 19 | Quel élément du décor sert souvent à se cacher au sol ? | Buisson | Rocher | Tonneau | Caisse | A | Facile |
| 20 | Comment s'appellent les coffres lumineux qui contiennent des armes ? | Coffres (Chests) | Banques | Casiers | Soutes | A | Facile |
| 21 | Quelle action permet de récolter des matériaux ? | Tirer | Miner avec la pioche | Courir | Nager | B | Facile |
| 22 | Combien de joueurs dans un « Duo » ? | 1 | 2 | 3 | 4 | B | Facile |
| 23 | Quel type de partie permet de créer ses propres maps ? | Créatif | Sauver le Monde | Arène | Ligue | A | Moyen |
| 24 | Quelle rareté est la plus basse (de base) ? | Commune (grise) | Rare (bleue) | Épique (violette) | Légendaire (orange) | A | Moyen |
| 25 | Comment s'appelle le mode PvE coopératif historique de Fortnite ? | Sauver le Monde | Battle Royale | Créatif | Zero Build | A | Difficile |

## 🔁 Conseils d'usage

- **Mélange l'ordre des bonnes réponses** d'une question à l'autre (déjà fait ci-dessus :
  les bonnes ne sont pas toujours « A »).
- **Adapte la difficulté** à la position dans le parcours (faciles au début).
- **Complète** avec tes propres thèmes : armes, musiques, skins emblématiques, collaborations…
  (mais attention aux éléments qui vieillissent vite).

## 🧩 Conversion en Verse

Pour les passer dans le script (`../05-verse/03-types-et-banque.md`), chaque ligne devient :
```verse
question_quiz:
    Enonce := "Combien de joueurs max dans une partie BR classique ?"
    Reponses := array{"50", "100", "150", "200"}
    BonneReponse := 1     # B
```

> Pense à retirer/simplifier les **accents** dans les `string` Verse si tu rencontres des
> soucis d'encodage (teste d'abord).

→ Suite : [`B-checklist.md`](./B-checklist.md)
