# 🧠 Banque de questions — Culture Générale (texte seul)

Questions de **culture générale universelle**, sans image, pour le quizz « Culture Générale »
(texte seul, 4 réponses A/B/C/D).

> ✅ **FAIT (2026-06) :** les 900 questions FR sont rédigées (ci-dessous), **traduites en 5 langues**
> (FR/EN/ES/DE/IT) par le workflow `translate-culture` (→ `tools/culture_trad/`), puis assemblées en
> banque Verse par `tools/banks/build_culture.py` → `verse/culture_bank.verse` (l'ordre des réponses
> est **mélangé** par question ; chaînes en ASCII). Quizz **câblé en jeu (Gi=5)**, jouable en 5 langues.
> Ces fichiers `.md` restent la **source de vérité FR** (pour régénérer/éditer le contenu).

## 🎯 Objectif

- **3 paliers** de difficulté : **300 questions chacun** → 900 au total.
- Rounds de **25 questions** (tirées au hasard dans le palier).
- Style : **culture générale universelle** (faits internationaux neutres), répartis sur 12 thèmes.

## 📁 Fichiers (un par palier)

| Fichier | Palier | Cible | État |
|---|---|---|---|
| [`facile.md`](./facile.md) | 🟢 Facile (0) | 300 | ✅ fait (300) |
| [`moyen.md`](./moyen.md) | 🟡 Moyen (1) | 300 | ✅ fait (300) |
| [`difficile.md`](./difficile.md) | 🔴 Difficile (2) | 300 | ✅ fait (300) |

## 🗂️ 12 thèmes (25 questions par thème et par palier)

| Code | Thème |
|---|---|
| HIS | Histoire |
| GEO | Géographie |
| SCI | Sciences (physique, chimie) |
| BIO | Biologie & corps humain |
| NAT | Nature & animaux |
| ESP | Astronomie & espace |
| ART | Arts (peinture, sculpture, architecture) |
| LIT | Littérature |
| MUS | Musique |
| CIN | Cinéma & télévision |
| SPO | Sport |
| MYT | Mythologie & religions |

## ✍️ Format d'une question

```
**F-HIS-01.** Énoncé de la question ?
A. Réponse A ✅ — B. Réponse B — C. Réponse C — D. Réponse D
```

- **ID** = `<palier><thème>-<n°>` : palier `F`/`M`/`D`, thème (3 lettres), numéro à 2 chiffres.
- La bonne réponse est marquée d'un **✅** juste après le texte de la réponse.
- 4 réponses, une seule correcte ; distracteurs plausibles.
- Tout en français pour l'instant (la traduction sera faite plus tard).

> ⚠️ Ne pas dupliquer une question d'un palier à l'autre. Vérifier l'exactitude factuelle.
