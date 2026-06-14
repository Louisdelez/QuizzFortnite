using { /Verse.org/Assets }

# ============================================================
#  depcarte_bank.verse — Banque CARTE DES DEPARTEMENTS (202 = 101 normal + 101 pixel).
#  GENERE par tools/banks/build_depts_carte.py — NE PAS EDITER A LA MAIN.
#  Silhouettes geojson gregoiredavid (ODbL). 3 paliers : Facile / Moyen / Difficile (pixelise).
# ============================================================

DepCarteDiff : []int = array{1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}


MakeDepCarteQuestionsFR() : []question =
    array:
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_01 }
            Reponses := array{"Haute-Savoie", "Drome", "Ain", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_02 }
            Reponses := array{"Oise", "Somme", "Nord", "Aisne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_03 }
            Reponses := array{"Allier", "Ain", "Loire", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_04 }
            Reponses := array{"Vaucluse", "Hautes-Alpes", "Alpes-de-Haute-Provence", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_05 }
            Reponses := array{"Vaucluse", "Var", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_06 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Vaucluse", "Hautes-Alpes"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_07 }
            Reponses := array{"Haute-Savoie", "Ardeche", "Rhone", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_08 }
            Reponses := array{"Ardennes", "Haut-Rhin", "Moselle", "Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_09 }
            Reponses := array{"Aude", "Ariege", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_10 }
            Reponses := array{"Bas-Rhin", "Aube", "Vosges", "Haut-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_11 }
            Reponses := array{"Aude", "Gard", "Herault", "Aveyron"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_12 }
            Reponses := array{"Haute-Garonne", "Aveyron", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_14 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Calvados"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_15 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_16 }
            Reponses := array{"Charente", "Charente-Maritime", "Landes", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_17 }
            Reponses := array{"Deux-Sevres", "Charente", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_18 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_19 }
            Reponses := array{"Charente", "Correze", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_21 }
            Reponses := array{"Cote-d'Or", "Yonne", "Nievre", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_22 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_23 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_24 }
            Reponses := array{"Correze", "Dordogne", "Vienne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_25 }
            Reponses := array{"Haute-Saone", "Saone-et-Loire", "Doubs", "Yonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_26 }
            Reponses := array{"Drome", "Loire", "Ardeche", "Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_27 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_28 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_29 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_2a }
            Reponses := array{"Territoire de Belfort", "Haute-Corse", "Landes", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_2b }
            Reponses := array{"Haute-Corse", "Corse-du-Sud", "Finistere", "Meurthe-et-Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_30 }
            Reponses := array{"Herault", "Lozere", "Gard", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_31 }
            Reponses := array{"Pyrenees-Orientales", "Haute-Garonne", "Gard", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_32 }
            Reponses := array{"Gers", "Lozere", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_33 }
            Reponses := array{"Haute-Vienne", "Gironde", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_34 }
            Reponses := array{"Aveyron", "Hautes-Pyrenees", "Haute-Garonne", "Herault"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_35 }
            Reponses := array{"Cotes-d'Armor", "Ille-et-Vilaine", "Morbihan", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_36 }
            Reponses := array{"Indre", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_37 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Eure-et-Loir", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_38 }
            Reponses := array{"Savoie", "Allier", "Isere", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_39 }
            Reponses := array{"Territoire de Belfort", "Jura", "Yonne", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_40 }
            Reponses := array{"Pyrenees-Atlantiques", "Landes", "Dordogne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_41 }
            Reponses := array{"Indre-et-Loire", "Cher", "Loir-et-Cher", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_42 }
            Reponses := array{"Haute-Savoie", "Savoie", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_43 }
            Reponses := array{"Puy-de-Dome", "Ardeche", "Drome", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_44 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Sarthe", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_45 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_46 }
            Reponses := array{"Lot", "Gers", "Tarn-et-Garonne", "Hautes-Pyrenees"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_47 }
            Reponses := array{"Lot-et-Garonne", "Vienne", "Creuse", "Haute-Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_48 }
            Reponses := array{"Gers", "Tarn", "Ariege", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_50 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_51 }
            Reponses := array{"Vosges", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meurthe-et-Moselle", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_54 }
            Reponses := array{"Marne", "Vosges", "Meurthe-et-Moselle", "Ardennes"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_55 }
            Reponses := array{"Ardennes", "Vosges", "Meuse", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_56 }
            Reponses := array{"Finistere", "Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_57 }
            Reponses := array{"Marne", "Haut-Rhin", "Ardennes", "Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_58 }
            Reponses := array{"Nievre", "Jura", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_59 }
            Reponses := array{"Nord", "Somme", "Oise", "Aisne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_61 }
            Reponses := array{"Manche", "Eure", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_62 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_63 }
            Reponses := array{"Puy-de-Dome", "Allier", "Isere", "Haute-Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_64 }
            Reponses := array{"Creuse", "Gironde", "Pyrenees-Atlantiques", "Deux-Sevres"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_65 }
            Reponses := array{"Pyrenees-Orientales", "Ariege", "Hautes-Pyrenees", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_66 }
            Reponses := array{"Ariege", "Pyrenees-Orientales", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_67 }
            Reponses := array{"Meurthe-et-Moselle", "Vosges", "Bas-Rhin", "Haute-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_68 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_69 }
            Reponses := array{"Allier", "Rhone", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_70 }
            Reponses := array{"Doubs", "Jura", "Nievre", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_71 }
            Reponses := array{"Saone-et-Loire", "Nievre", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_72 }
            Reponses := array{"Mayenne", "Loire-Atlantique", "Sarthe", "Vendee"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_73 }
            Reponses := array{"Ardeche", "Puy-de-Dome", "Savoie", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_74 }
            Reponses := array{"Rhone", "Loire", "Ain", "Haute-Savoie"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_75 }
            Reponses := array{"Yvelines", "Val-de-Marne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_77 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Seine-et-Marne", "Seine-Saint-Denis"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_78 }
            Reponses := array{"Seine-et-Marne", "Yvelines", "Seine-Saint-Denis", "Hauts-de-Seine"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_79 }
            Reponses := array{"Deux-Sevres", "Creuse", "Correze", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_80 }
            Reponses := array{"Nord", "Aisne", "Oise", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_81 }
            Reponses := array{"Lot", "Aude", "Tarn", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_82 }
            Reponses := array{"Tarn", "Pyrenees-Orientales", "Lot", "Tarn-et-Garonne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_83 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Var", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_84 }
            Reponses := array{"Hautes-Alpes", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_85 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_86 }
            Reponses := array{"Vienne", "Charente", "Gironde", "Lot-et-Garonne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_87 }
            Reponses := array{"Haute-Vienne", "Charente", "Dordogne", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_88 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_89 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Nievre"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_90 }
            Reponses := array{"Jura", "Doubs", "Cote-d'Or", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_91 }
            Reponses := array{"Yvelines", "Hauts-de-Seine", "Seine-Saint-Denis", "Essonne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_92 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne", "Seine-Saint-Denis"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_93 }
            Reponses := array{"Val-d'Oise", "Seine-et-Marne", "Yvelines", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_94 }
            Reponses := array{"Seine-Saint-Denis", "Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_95 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_971 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_972 }
            Reponses := array{"Martinique", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_973 }
            Reponses := array{"Martinique", "Guyane", "Guadeloupe", "La Reunion"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ?"
            Image := option{ dep_carte.dmap_976 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Mayotte"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Cantal", "Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_02 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_03 }
            Reponses := array{"Savoie", "Ain", "Puy-de-Dome", "Allier"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_04 }
            Reponses := array{"Vaucluse", "Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_05 }
            Reponses := array{"Var", "Bouches-du-Rhone", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_07 }
            Reponses := array{"Loire", "Ardeche", "Haute-Loire", "Rhone"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_08 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Marne", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_09 }
            Reponses := array{"Tarn", "Ariege", "Lozere", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_10 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_11 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Ariege"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_12 }
            Reponses := array{"Lozere", "Hautes-Pyrenees", "Ariege", "Aveyron"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_13 }
            Reponses := array{"Hautes-Alpes", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_14 }
            Reponses := array{"Manche", "Calvados", "Orne", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_15 }
            Reponses := array{"Ain", "Haute-Loire", "Isere", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_16 }
            Reponses := array{"Charente", "Lot-et-Garonne", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_17 }
            Reponses := array{"Deux-Sevres", "Gironde", "Charente", "Charente-Maritime"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_18 }
            Reponses := array{"Eure-et-Loir", "Indre-et-Loire", "Loir-et-Cher", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_19 }
            Reponses := array{"Vienne", "Correze", "Creuse", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_21 }
            Reponses := array{"Saone-et-Loire", "Haute-Saone", "Cote-d'Or", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_22 }
            Reponses := array{"Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_23 }
            Reponses := array{"Deux-Sevres", "Correze", "Creuse", "Landes"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_24 }
            Reponses := array{"Charente", "Gironde", "Charente-Maritime", "Dordogne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_25 }
            Reponses := array{"Cote-d'Or", "Doubs", "Saone-et-Loire", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_26 }
            Reponses := array{"Drome", "Cantal", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_27 }
            Reponses := array{"Orne", "Calvados", "Manche", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_28 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_29 }
            Reponses := array{"Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_2a }
            Reponses := array{"Manche", "Haute-Corse", "Corse-du-Sud", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_2b }
            Reponses := array{"Tarn", "Corse-du-Sud", "Haute-Corse", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_30 }
            Reponses := array{"Aveyron", "Ariege", "Herault", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_31 }
            Reponses := array{"Gard", "Tarn", "Haute-Garonne", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_32 }
            Reponses := array{"Gers", "Lot", "Aveyron", "Tarn"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_33 }
            Reponses := array{"Pyrenees-Atlantiques", "Gironde", "Creuse", "Charente"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_34 }
            Reponses := array{"Lot", "Aude", "Herault", "Aveyron"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_35 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_36 }
            Reponses := array{"Indre", "Eure-et-Loir", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_37 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Indre", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_38 }
            Reponses := array{"Drome", "Isere", "Ardeche", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_39 }
            Reponses := array{"Jura", "Territoire de Belfort", "Yonne", "Haute-Saone"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_40 }
            Reponses := array{"Vienne", "Landes", "Charente-Maritime", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Indre", "Loir-et-Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_42 }
            Reponses := array{"Cantal", "Haute-Loire", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_43 }
            Reponses := array{"Ardeche", "Isere", "Cantal", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_44 }
            Reponses := array{"Sarthe", "Loire-Atlantique", "Mayenne", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_45 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Indre-et-Loire", "Cher"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_46 }
            Reponses := array{"Lozere", "Gard", "Aveyron", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_47 }
            Reponses := array{"Lot-et-Garonne", "Correze", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_48 }
            Reponses := array{"Tarn-et-Garonne", "Haute-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_50 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_51 }
            Reponses := array{"Haut-Rhin", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_52 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_54 }
            Reponses := array{"Vosges", "Ardennes", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_55 }
            Reponses := array{"Meuse", "Marne", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_56 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_57 }
            Reponses := array{"Moselle", "Haut-Rhin", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_58 }
            Reponses := array{"Saone-et-Loire", "Cote-d'Or", "Nievre", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_59 }
            Reponses := array{"Pas-de-Calais", "Oise", "Nord", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_60 }
            Reponses := array{"Oise", "Pas-de-Calais", "Aisne", "Somme"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_61 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_62 }
            Reponses := array{"Somme", "Aisne", "Oise", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_63 }
            Reponses := array{"Allier", "Savoie", "Puy-de-Dome", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_64 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Creuse", "Deux-Sevres"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_65 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_66 }
            Reponses := array{"Lot", "Tarn", "Pyrenees-Orientales", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_67 }
            Reponses := array{"Bas-Rhin", "Marne", "Meurthe-et-Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_68 }
            Reponses := array{"Haut-Rhin", "Marne", "Ardennes", "Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_69 }
            Reponses := array{"Cantal", "Rhone", "Ain", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_70 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_71 }
            Reponses := array{"Haute-Saone", "Nievre", "Saone-et-Loire", "Cote-d'Or"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_73 }
            Reponses := array{"Puy-de-Dome", "Ain", "Savoie", "Drome"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_74 }
            Reponses := array{"Ardeche", "Drome", "Haute-Savoie", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_75 }
            Reponses := array{"Val-de-Marne", "Essonne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_76 }
            Reponses := array{"Calvados", "Eure", "Seine-Maritime", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_77 }
            Reponses := array{"Yvelines", "Essonne", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_78 }
            Reponses := array{"Seine-Saint-Denis", "Yvelines", "Seine-et-Marne", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_79 }
            Reponses := array{"Vienne", "Haute-Vienne", "Gironde", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_80 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_81 }
            Reponses := array{"Haute-Garonne", "Pyrenees-Orientales", "Tarn", "Hautes-Pyrenees"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_82 }
            Reponses := array{"Pyrenees-Orientales", "Tarn-et-Garonne", "Lozere", "Ariege"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_83 }
            Reponses := array{"Alpes-de-Haute-Provence", "Vaucluse", "Var", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_84 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_85 }
            Reponses := array{"Vendee", "Loire-Atlantique", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_86 }
            Reponses := array{"Dordogne", "Vienne", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_87 }
            Reponses := array{"Dordogne", "Vienne", "Haute-Vienne", "Lot-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_88 }
            Reponses := array{"Vosges", "Marne", "Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_89 }
            Reponses := array{"Nievre", "Haute-Saone", "Jura", "Yonne"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_90 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_91 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Val-de-Marne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_92 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Essonne", "Val-de-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_93 }
            Reponses := array{"Essonne", "Seine-Saint-Denis", "Yvelines", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_94 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_95 }
            Reponses := array{"Hauts-de-Seine", "Val-d'Oise", "Essonne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_971 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_972 }
            Reponses := array{"Martinique", "Guadeloupe", "Mayotte", "Guyane"}
            BonneReponse := 0
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_973 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_974 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Quel est ce departement ? (carte pixelisee)"
            Image := option{ dep_carte_pixel.dmpx_976 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepCarteQuestions() : []question =
    MakeDepCarteQuestionsFR()

MakeDepCarteQuestionsEN() : []question =
    array:
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_01 }
            Reponses := array{"Haute-Savoie", "Drome", "Ain", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_02 }
            Reponses := array{"Oise", "Somme", "Nord", "Aisne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_03 }
            Reponses := array{"Allier", "Ain", "Loire", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_04 }
            Reponses := array{"Vaucluse", "Hautes-Alpes", "Alpes-de-Haute-Provence", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_05 }
            Reponses := array{"Vaucluse", "Var", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_06 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Vaucluse", "Hautes-Alpes"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_07 }
            Reponses := array{"Haute-Savoie", "Ardeche", "Rhone", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_08 }
            Reponses := array{"Ardennes", "Haut-Rhin", "Moselle", "Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_09 }
            Reponses := array{"Aude", "Ariege", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_10 }
            Reponses := array{"Bas-Rhin", "Aube", "Vosges", "Haut-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_11 }
            Reponses := array{"Aude", "Gard", "Herault", "Aveyron"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_12 }
            Reponses := array{"Haute-Garonne", "Aveyron", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_14 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Calvados"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_15 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_16 }
            Reponses := array{"Charente", "Charente-Maritime", "Landes", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_17 }
            Reponses := array{"Deux-Sevres", "Charente", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_18 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_19 }
            Reponses := array{"Charente", "Correze", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_21 }
            Reponses := array{"Cote-d'Or", "Yonne", "Nievre", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_22 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_23 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_24 }
            Reponses := array{"Correze", "Dordogne", "Vienne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_25 }
            Reponses := array{"Haute-Saone", "Saone-et-Loire", "Doubs", "Yonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_26 }
            Reponses := array{"Drome", "Loire", "Ardeche", "Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_27 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_28 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_29 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_2a }
            Reponses := array{"Territoire de Belfort", "Haute-Corse", "Landes", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_2b }
            Reponses := array{"Haute-Corse", "Corse-du-Sud", "Finistere", "Meurthe-et-Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_30 }
            Reponses := array{"Herault", "Lozere", "Gard", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_31 }
            Reponses := array{"Pyrenees-Orientales", "Haute-Garonne", "Gard", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_32 }
            Reponses := array{"Gers", "Lozere", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_33 }
            Reponses := array{"Haute-Vienne", "Gironde", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_34 }
            Reponses := array{"Aveyron", "Hautes-Pyrenees", "Haute-Garonne", "Herault"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_35 }
            Reponses := array{"Cotes-d'Armor", "Ille-et-Vilaine", "Morbihan", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_36 }
            Reponses := array{"Indre", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_37 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Eure-et-Loir", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_38 }
            Reponses := array{"Savoie", "Allier", "Isere", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_39 }
            Reponses := array{"Territoire de Belfort", "Jura", "Yonne", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_40 }
            Reponses := array{"Pyrenees-Atlantiques", "Landes", "Dordogne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_41 }
            Reponses := array{"Indre-et-Loire", "Cher", "Loir-et-Cher", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_42 }
            Reponses := array{"Haute-Savoie", "Savoie", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_43 }
            Reponses := array{"Puy-de-Dome", "Ardeche", "Drome", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_44 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Sarthe", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_45 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_46 }
            Reponses := array{"Lot", "Gers", "Tarn-et-Garonne", "Hautes-Pyrenees"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_47 }
            Reponses := array{"Lot-et-Garonne", "Vienne", "Creuse", "Haute-Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_48 }
            Reponses := array{"Gers", "Tarn", "Ariege", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_50 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_51 }
            Reponses := array{"Vosges", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meurthe-et-Moselle", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_54 }
            Reponses := array{"Marne", "Vosges", "Meurthe-et-Moselle", "Ardennes"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_55 }
            Reponses := array{"Ardennes", "Vosges", "Meuse", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_56 }
            Reponses := array{"Finistere", "Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_57 }
            Reponses := array{"Marne", "Haut-Rhin", "Ardennes", "Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_58 }
            Reponses := array{"Nievre", "Jura", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_59 }
            Reponses := array{"Nord", "Somme", "Oise", "Aisne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_61 }
            Reponses := array{"Manche", "Eure", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_62 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_63 }
            Reponses := array{"Puy-de-Dome", "Allier", "Isere", "Haute-Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_64 }
            Reponses := array{"Creuse", "Gironde", "Pyrenees-Atlantiques", "Deux-Sevres"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_65 }
            Reponses := array{"Pyrenees-Orientales", "Ariege", "Hautes-Pyrenees", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_66 }
            Reponses := array{"Ariege", "Pyrenees-Orientales", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_67 }
            Reponses := array{"Meurthe-et-Moselle", "Vosges", "Bas-Rhin", "Haute-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_68 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_69 }
            Reponses := array{"Allier", "Rhone", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_70 }
            Reponses := array{"Doubs", "Jura", "Nievre", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_71 }
            Reponses := array{"Saone-et-Loire", "Nievre", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_72 }
            Reponses := array{"Mayenne", "Loire-Atlantique", "Sarthe", "Vendee"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_73 }
            Reponses := array{"Ardeche", "Puy-de-Dome", "Savoie", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_74 }
            Reponses := array{"Rhone", "Loire", "Ain", "Haute-Savoie"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_75 }
            Reponses := array{"Yvelines", "Val-de-Marne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_77 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Seine-et-Marne", "Seine-Saint-Denis"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_78 }
            Reponses := array{"Seine-et-Marne", "Yvelines", "Seine-Saint-Denis", "Hauts-de-Seine"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_79 }
            Reponses := array{"Deux-Sevres", "Creuse", "Correze", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_80 }
            Reponses := array{"Nord", "Aisne", "Oise", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_81 }
            Reponses := array{"Lot", "Aude", "Tarn", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_82 }
            Reponses := array{"Tarn", "Pyrenees-Orientales", "Lot", "Tarn-et-Garonne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_83 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Var", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_84 }
            Reponses := array{"Hautes-Alpes", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_85 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_86 }
            Reponses := array{"Vienne", "Charente", "Gironde", "Lot-et-Garonne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_87 }
            Reponses := array{"Haute-Vienne", "Charente", "Dordogne", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_88 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_89 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Nievre"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_90 }
            Reponses := array{"Jura", "Doubs", "Cote-d'Or", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_91 }
            Reponses := array{"Yvelines", "Hauts-de-Seine", "Seine-Saint-Denis", "Essonne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_92 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne", "Seine-Saint-Denis"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_93 }
            Reponses := array{"Val-d'Oise", "Seine-et-Marne", "Yvelines", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_94 }
            Reponses := array{"Seine-Saint-Denis", "Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_95 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_971 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_972 }
            Reponses := array{"Martinique", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_973 }
            Reponses := array{"Martinique", "Guyane", "Guadeloupe", "La Reunion"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this?"
            Image := option{ dep_carte.dmap_976 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Mayotte"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Cantal", "Loire"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_02 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_03 }
            Reponses := array{"Savoie", "Ain", "Puy-de-Dome", "Allier"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_04 }
            Reponses := array{"Vaucluse", "Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_05 }
            Reponses := array{"Var", "Bouches-du-Rhone", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_07 }
            Reponses := array{"Loire", "Ardeche", "Haute-Loire", "Rhone"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_08 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Marne", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_09 }
            Reponses := array{"Tarn", "Ariege", "Lozere", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_10 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_11 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Ariege"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_12 }
            Reponses := array{"Lozere", "Hautes-Pyrenees", "Ariege", "Aveyron"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_13 }
            Reponses := array{"Hautes-Alpes", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_14 }
            Reponses := array{"Manche", "Calvados", "Orne", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_15 }
            Reponses := array{"Ain", "Haute-Loire", "Isere", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_16 }
            Reponses := array{"Charente", "Lot-et-Garonne", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_17 }
            Reponses := array{"Deux-Sevres", "Gironde", "Charente", "Charente-Maritime"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_18 }
            Reponses := array{"Eure-et-Loir", "Indre-et-Loire", "Loir-et-Cher", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_19 }
            Reponses := array{"Vienne", "Correze", "Creuse", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_21 }
            Reponses := array{"Saone-et-Loire", "Haute-Saone", "Cote-d'Or", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_22 }
            Reponses := array{"Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_23 }
            Reponses := array{"Deux-Sevres", "Correze", "Creuse", "Landes"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_24 }
            Reponses := array{"Charente", "Gironde", "Charente-Maritime", "Dordogne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_25 }
            Reponses := array{"Cote-d'Or", "Doubs", "Saone-et-Loire", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_26 }
            Reponses := array{"Drome", "Cantal", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_27 }
            Reponses := array{"Orne", "Calvados", "Manche", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_28 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_29 }
            Reponses := array{"Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_2a }
            Reponses := array{"Manche", "Haute-Corse", "Corse-du-Sud", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_2b }
            Reponses := array{"Tarn", "Corse-du-Sud", "Haute-Corse", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_30 }
            Reponses := array{"Aveyron", "Ariege", "Herault", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_31 }
            Reponses := array{"Gard", "Tarn", "Haute-Garonne", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_32 }
            Reponses := array{"Gers", "Lot", "Aveyron", "Tarn"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_33 }
            Reponses := array{"Pyrenees-Atlantiques", "Gironde", "Creuse", "Charente"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_34 }
            Reponses := array{"Lot", "Aude", "Herault", "Aveyron"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_35 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_36 }
            Reponses := array{"Indre", "Eure-et-Loir", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_37 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Indre", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_38 }
            Reponses := array{"Drome", "Isere", "Ardeche", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_39 }
            Reponses := array{"Jura", "Territoire de Belfort", "Yonne", "Haute-Saone"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_40 }
            Reponses := array{"Vienne", "Landes", "Charente-Maritime", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Indre", "Loir-et-Cher"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_42 }
            Reponses := array{"Cantal", "Haute-Loire", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_43 }
            Reponses := array{"Ardeche", "Isere", "Cantal", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_44 }
            Reponses := array{"Sarthe", "Loire-Atlantique", "Mayenne", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_45 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Indre-et-Loire", "Cher"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_46 }
            Reponses := array{"Lozere", "Gard", "Aveyron", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_47 }
            Reponses := array{"Lot-et-Garonne", "Correze", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_48 }
            Reponses := array{"Tarn-et-Garonne", "Haute-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_50 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_51 }
            Reponses := array{"Haut-Rhin", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_52 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_54 }
            Reponses := array{"Vosges", "Ardennes", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_55 }
            Reponses := array{"Meuse", "Marne", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_56 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_57 }
            Reponses := array{"Moselle", "Haut-Rhin", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_58 }
            Reponses := array{"Saone-et-Loire", "Cote-d'Or", "Nievre", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_59 }
            Reponses := array{"Pas-de-Calais", "Oise", "Nord", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_60 }
            Reponses := array{"Oise", "Pas-de-Calais", "Aisne", "Somme"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_61 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_62 }
            Reponses := array{"Somme", "Aisne", "Oise", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_63 }
            Reponses := array{"Allier", "Savoie", "Puy-de-Dome", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_64 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Creuse", "Deux-Sevres"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_65 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_66 }
            Reponses := array{"Lot", "Tarn", "Pyrenees-Orientales", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_67 }
            Reponses := array{"Bas-Rhin", "Marne", "Meurthe-et-Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_68 }
            Reponses := array{"Haut-Rhin", "Marne", "Ardennes", "Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_69 }
            Reponses := array{"Cantal", "Rhone", "Ain", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_70 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_71 }
            Reponses := array{"Haute-Saone", "Nievre", "Saone-et-Loire", "Cote-d'Or"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_73 }
            Reponses := array{"Puy-de-Dome", "Ain", "Savoie", "Drome"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_74 }
            Reponses := array{"Ardeche", "Drome", "Haute-Savoie", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_75 }
            Reponses := array{"Val-de-Marne", "Essonne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_76 }
            Reponses := array{"Calvados", "Eure", "Seine-Maritime", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_77 }
            Reponses := array{"Yvelines", "Essonne", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_78 }
            Reponses := array{"Seine-Saint-Denis", "Yvelines", "Seine-et-Marne", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_79 }
            Reponses := array{"Vienne", "Haute-Vienne", "Gironde", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_80 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_81 }
            Reponses := array{"Haute-Garonne", "Pyrenees-Orientales", "Tarn", "Hautes-Pyrenees"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_82 }
            Reponses := array{"Pyrenees-Orientales", "Tarn-et-Garonne", "Lozere", "Ariege"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_83 }
            Reponses := array{"Alpes-de-Haute-Provence", "Vaucluse", "Var", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_84 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_85 }
            Reponses := array{"Vendee", "Loire-Atlantique", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_86 }
            Reponses := array{"Dordogne", "Vienne", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_87 }
            Reponses := array{"Dordogne", "Vienne", "Haute-Vienne", "Lot-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_88 }
            Reponses := array{"Vosges", "Marne", "Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_89 }
            Reponses := array{"Nievre", "Haute-Saone", "Jura", "Yonne"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_90 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_91 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Val-de-Marne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_92 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Essonne", "Val-de-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_93 }
            Reponses := array{"Essonne", "Seine-Saint-Denis", "Yvelines", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_94 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_95 }
            Reponses := array{"Hauts-de-Seine", "Val-d'Oise", "Essonne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_971 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_972 }
            Reponses := array{"Martinique", "Guadeloupe", "Mayotte", "Guyane"}
            BonneReponse := 0
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_973 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_974 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Which French department is this? (pixelated map)"
            Image := option{ dep_carte_pixel.dmpx_976 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepCarteQuestionsES() : []question =
    array:
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_01 }
            Reponses := array{"Haute-Savoie", "Drome", "Ain", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_02 }
            Reponses := array{"Oise", "Somme", "Nord", "Aisne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_03 }
            Reponses := array{"Allier", "Ain", "Loire", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_04 }
            Reponses := array{"Vaucluse", "Hautes-Alpes", "Alpes-de-Haute-Provence", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_05 }
            Reponses := array{"Vaucluse", "Var", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_06 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Vaucluse", "Hautes-Alpes"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_07 }
            Reponses := array{"Haute-Savoie", "Ardeche", "Rhone", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_08 }
            Reponses := array{"Ardennes", "Haut-Rhin", "Moselle", "Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_09 }
            Reponses := array{"Aude", "Ariege", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_10 }
            Reponses := array{"Bas-Rhin", "Aube", "Vosges", "Haut-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_11 }
            Reponses := array{"Aude", "Gard", "Herault", "Aveyron"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_12 }
            Reponses := array{"Haute-Garonne", "Aveyron", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_14 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Calvados"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_15 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_16 }
            Reponses := array{"Charente", "Charente-Maritime", "Landes", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_17 }
            Reponses := array{"Deux-Sevres", "Charente", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_18 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_19 }
            Reponses := array{"Charente", "Correze", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_21 }
            Reponses := array{"Cote-d'Or", "Yonne", "Nievre", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_22 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_23 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_24 }
            Reponses := array{"Correze", "Dordogne", "Vienne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_25 }
            Reponses := array{"Haute-Saone", "Saone-et-Loire", "Doubs", "Yonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_26 }
            Reponses := array{"Drome", "Loire", "Ardeche", "Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_27 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_28 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_29 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_2a }
            Reponses := array{"Territoire de Belfort", "Haute-Corse", "Landes", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_2b }
            Reponses := array{"Haute-Corse", "Corse-du-Sud", "Finistere", "Meurthe-et-Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_30 }
            Reponses := array{"Herault", "Lozere", "Gard", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_31 }
            Reponses := array{"Pyrenees-Orientales", "Haute-Garonne", "Gard", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_32 }
            Reponses := array{"Gers", "Lozere", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_33 }
            Reponses := array{"Haute-Vienne", "Gironde", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_34 }
            Reponses := array{"Aveyron", "Hautes-Pyrenees", "Haute-Garonne", "Herault"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_35 }
            Reponses := array{"Cotes-d'Armor", "Ille-et-Vilaine", "Morbihan", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_36 }
            Reponses := array{"Indre", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_37 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Eure-et-Loir", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_38 }
            Reponses := array{"Savoie", "Allier", "Isere", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_39 }
            Reponses := array{"Territoire de Belfort", "Jura", "Yonne", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_40 }
            Reponses := array{"Pyrenees-Atlantiques", "Landes", "Dordogne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_41 }
            Reponses := array{"Indre-et-Loire", "Cher", "Loir-et-Cher", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_42 }
            Reponses := array{"Haute-Savoie", "Savoie", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_43 }
            Reponses := array{"Puy-de-Dome", "Ardeche", "Drome", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_44 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Sarthe", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_45 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_46 }
            Reponses := array{"Lot", "Gers", "Tarn-et-Garonne", "Hautes-Pyrenees"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_47 }
            Reponses := array{"Lot-et-Garonne", "Vienne", "Creuse", "Haute-Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_48 }
            Reponses := array{"Gers", "Tarn", "Ariege", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_50 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_51 }
            Reponses := array{"Vosges", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meurthe-et-Moselle", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_54 }
            Reponses := array{"Marne", "Vosges", "Meurthe-et-Moselle", "Ardennes"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_55 }
            Reponses := array{"Ardennes", "Vosges", "Meuse", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_56 }
            Reponses := array{"Finistere", "Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_57 }
            Reponses := array{"Marne", "Haut-Rhin", "Ardennes", "Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_58 }
            Reponses := array{"Nievre", "Jura", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_59 }
            Reponses := array{"Nord", "Somme", "Oise", "Aisne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_61 }
            Reponses := array{"Manche", "Eure", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_62 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_63 }
            Reponses := array{"Puy-de-Dome", "Allier", "Isere", "Haute-Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_64 }
            Reponses := array{"Creuse", "Gironde", "Pyrenees-Atlantiques", "Deux-Sevres"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_65 }
            Reponses := array{"Pyrenees-Orientales", "Ariege", "Hautes-Pyrenees", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_66 }
            Reponses := array{"Ariege", "Pyrenees-Orientales", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_67 }
            Reponses := array{"Meurthe-et-Moselle", "Vosges", "Bas-Rhin", "Haute-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_68 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_69 }
            Reponses := array{"Allier", "Rhone", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_70 }
            Reponses := array{"Doubs", "Jura", "Nievre", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_71 }
            Reponses := array{"Saone-et-Loire", "Nievre", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_72 }
            Reponses := array{"Mayenne", "Loire-Atlantique", "Sarthe", "Vendee"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_73 }
            Reponses := array{"Ardeche", "Puy-de-Dome", "Savoie", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_74 }
            Reponses := array{"Rhone", "Loire", "Ain", "Haute-Savoie"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_75 }
            Reponses := array{"Yvelines", "Val-de-Marne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_77 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Seine-et-Marne", "Seine-Saint-Denis"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_78 }
            Reponses := array{"Seine-et-Marne", "Yvelines", "Seine-Saint-Denis", "Hauts-de-Seine"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_79 }
            Reponses := array{"Deux-Sevres", "Creuse", "Correze", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_80 }
            Reponses := array{"Nord", "Aisne", "Oise", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_81 }
            Reponses := array{"Lot", "Aude", "Tarn", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_82 }
            Reponses := array{"Tarn", "Pyrenees-Orientales", "Lot", "Tarn-et-Garonne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_83 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Var", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_84 }
            Reponses := array{"Hautes-Alpes", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_85 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_86 }
            Reponses := array{"Vienne", "Charente", "Gironde", "Lot-et-Garonne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_87 }
            Reponses := array{"Haute-Vienne", "Charente", "Dordogne", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_88 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_89 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Nievre"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_90 }
            Reponses := array{"Jura", "Doubs", "Cote-d'Or", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_91 }
            Reponses := array{"Yvelines", "Hauts-de-Seine", "Seine-Saint-Denis", "Essonne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_92 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne", "Seine-Saint-Denis"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_93 }
            Reponses := array{"Val-d'Oise", "Seine-et-Marne", "Yvelines", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_94 }
            Reponses := array{"Seine-Saint-Denis", "Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_95 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_971 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_972 }
            Reponses := array{"Martinique", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_973 }
            Reponses := array{"Martinique", "Guyane", "Guadeloupe", "La Reunion"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este?"
            Image := option{ dep_carte.dmap_976 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Mayotte"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Cantal", "Loire"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_02 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_03 }
            Reponses := array{"Savoie", "Ain", "Puy-de-Dome", "Allier"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_04 }
            Reponses := array{"Vaucluse", "Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_05 }
            Reponses := array{"Var", "Bouches-du-Rhone", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_07 }
            Reponses := array{"Loire", "Ardeche", "Haute-Loire", "Rhone"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_08 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Marne", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_09 }
            Reponses := array{"Tarn", "Ariege", "Lozere", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_10 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_11 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Ariege"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_12 }
            Reponses := array{"Lozere", "Hautes-Pyrenees", "Ariege", "Aveyron"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_13 }
            Reponses := array{"Hautes-Alpes", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_14 }
            Reponses := array{"Manche", "Calvados", "Orne", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_15 }
            Reponses := array{"Ain", "Haute-Loire", "Isere", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_16 }
            Reponses := array{"Charente", "Lot-et-Garonne", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_17 }
            Reponses := array{"Deux-Sevres", "Gironde", "Charente", "Charente-Maritime"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_18 }
            Reponses := array{"Eure-et-Loir", "Indre-et-Loire", "Loir-et-Cher", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_19 }
            Reponses := array{"Vienne", "Correze", "Creuse", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_21 }
            Reponses := array{"Saone-et-Loire", "Haute-Saone", "Cote-d'Or", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_22 }
            Reponses := array{"Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_23 }
            Reponses := array{"Deux-Sevres", "Correze", "Creuse", "Landes"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_24 }
            Reponses := array{"Charente", "Gironde", "Charente-Maritime", "Dordogne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_25 }
            Reponses := array{"Cote-d'Or", "Doubs", "Saone-et-Loire", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_26 }
            Reponses := array{"Drome", "Cantal", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_27 }
            Reponses := array{"Orne", "Calvados", "Manche", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_28 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_29 }
            Reponses := array{"Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_2a }
            Reponses := array{"Manche", "Haute-Corse", "Corse-du-Sud", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_2b }
            Reponses := array{"Tarn", "Corse-du-Sud", "Haute-Corse", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_30 }
            Reponses := array{"Aveyron", "Ariege", "Herault", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_31 }
            Reponses := array{"Gard", "Tarn", "Haute-Garonne", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_32 }
            Reponses := array{"Gers", "Lot", "Aveyron", "Tarn"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_33 }
            Reponses := array{"Pyrenees-Atlantiques", "Gironde", "Creuse", "Charente"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_34 }
            Reponses := array{"Lot", "Aude", "Herault", "Aveyron"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_35 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_36 }
            Reponses := array{"Indre", "Eure-et-Loir", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_37 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Indre", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_38 }
            Reponses := array{"Drome", "Isere", "Ardeche", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_39 }
            Reponses := array{"Jura", "Territoire de Belfort", "Yonne", "Haute-Saone"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_40 }
            Reponses := array{"Vienne", "Landes", "Charente-Maritime", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Indre", "Loir-et-Cher"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_42 }
            Reponses := array{"Cantal", "Haute-Loire", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_43 }
            Reponses := array{"Ardeche", "Isere", "Cantal", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_44 }
            Reponses := array{"Sarthe", "Loire-Atlantique", "Mayenne", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_45 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Indre-et-Loire", "Cher"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_46 }
            Reponses := array{"Lozere", "Gard", "Aveyron", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_47 }
            Reponses := array{"Lot-et-Garonne", "Correze", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_48 }
            Reponses := array{"Tarn-et-Garonne", "Haute-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_50 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_51 }
            Reponses := array{"Haut-Rhin", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_52 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_54 }
            Reponses := array{"Vosges", "Ardennes", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_55 }
            Reponses := array{"Meuse", "Marne", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_56 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_57 }
            Reponses := array{"Moselle", "Haut-Rhin", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_58 }
            Reponses := array{"Saone-et-Loire", "Cote-d'Or", "Nievre", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_59 }
            Reponses := array{"Pas-de-Calais", "Oise", "Nord", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_60 }
            Reponses := array{"Oise", "Pas-de-Calais", "Aisne", "Somme"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_61 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_62 }
            Reponses := array{"Somme", "Aisne", "Oise", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_63 }
            Reponses := array{"Allier", "Savoie", "Puy-de-Dome", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_64 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Creuse", "Deux-Sevres"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_65 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_66 }
            Reponses := array{"Lot", "Tarn", "Pyrenees-Orientales", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_67 }
            Reponses := array{"Bas-Rhin", "Marne", "Meurthe-et-Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_68 }
            Reponses := array{"Haut-Rhin", "Marne", "Ardennes", "Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_69 }
            Reponses := array{"Cantal", "Rhone", "Ain", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_70 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_71 }
            Reponses := array{"Haute-Saone", "Nievre", "Saone-et-Loire", "Cote-d'Or"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_73 }
            Reponses := array{"Puy-de-Dome", "Ain", "Savoie", "Drome"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_74 }
            Reponses := array{"Ardeche", "Drome", "Haute-Savoie", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_75 }
            Reponses := array{"Val-de-Marne", "Essonne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_76 }
            Reponses := array{"Calvados", "Eure", "Seine-Maritime", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_77 }
            Reponses := array{"Yvelines", "Essonne", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_78 }
            Reponses := array{"Seine-Saint-Denis", "Yvelines", "Seine-et-Marne", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_79 }
            Reponses := array{"Vienne", "Haute-Vienne", "Gironde", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_80 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_81 }
            Reponses := array{"Haute-Garonne", "Pyrenees-Orientales", "Tarn", "Hautes-Pyrenees"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_82 }
            Reponses := array{"Pyrenees-Orientales", "Tarn-et-Garonne", "Lozere", "Ariege"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_83 }
            Reponses := array{"Alpes-de-Haute-Provence", "Vaucluse", "Var", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_84 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_85 }
            Reponses := array{"Vendee", "Loire-Atlantique", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_86 }
            Reponses := array{"Dordogne", "Vienne", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_87 }
            Reponses := array{"Dordogne", "Vienne", "Haute-Vienne", "Lot-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_88 }
            Reponses := array{"Vosges", "Marne", "Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_89 }
            Reponses := array{"Nievre", "Haute-Saone", "Jura", "Yonne"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_90 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_91 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Val-de-Marne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_92 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Essonne", "Val-de-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_93 }
            Reponses := array{"Essonne", "Seine-Saint-Denis", "Yvelines", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_94 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_95 }
            Reponses := array{"Hauts-de-Seine", "Val-d'Oise", "Essonne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_971 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_972 }
            Reponses := array{"Martinique", "Guadeloupe", "Mayotte", "Guyane"}
            BonneReponse := 0
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_973 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_974 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Que departamento frances es este? (mapa pixelado)"
            Image := option{ dep_carte_pixel.dmpx_976 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepCarteQuestionsDE() : []question =
    array:
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_01 }
            Reponses := array{"Haute-Savoie", "Drome", "Ain", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_02 }
            Reponses := array{"Oise", "Somme", "Nord", "Aisne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_03 }
            Reponses := array{"Allier", "Ain", "Loire", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_04 }
            Reponses := array{"Vaucluse", "Hautes-Alpes", "Alpes-de-Haute-Provence", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_05 }
            Reponses := array{"Vaucluse", "Var", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_06 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Vaucluse", "Hautes-Alpes"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_07 }
            Reponses := array{"Haute-Savoie", "Ardeche", "Rhone", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_08 }
            Reponses := array{"Ardennes", "Haut-Rhin", "Moselle", "Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_09 }
            Reponses := array{"Aude", "Ariege", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_10 }
            Reponses := array{"Bas-Rhin", "Aube", "Vosges", "Haut-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_11 }
            Reponses := array{"Aude", "Gard", "Herault", "Aveyron"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_12 }
            Reponses := array{"Haute-Garonne", "Aveyron", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_14 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Calvados"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_15 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_16 }
            Reponses := array{"Charente", "Charente-Maritime", "Landes", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_17 }
            Reponses := array{"Deux-Sevres", "Charente", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_18 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_19 }
            Reponses := array{"Charente", "Correze", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_21 }
            Reponses := array{"Cote-d'Or", "Yonne", "Nievre", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_22 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_23 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_24 }
            Reponses := array{"Correze", "Dordogne", "Vienne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_25 }
            Reponses := array{"Haute-Saone", "Saone-et-Loire", "Doubs", "Yonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_26 }
            Reponses := array{"Drome", "Loire", "Ardeche", "Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_27 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_28 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_29 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_2a }
            Reponses := array{"Territoire de Belfort", "Haute-Corse", "Landes", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_2b }
            Reponses := array{"Haute-Corse", "Corse-du-Sud", "Finistere", "Meurthe-et-Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_30 }
            Reponses := array{"Herault", "Lozere", "Gard", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_31 }
            Reponses := array{"Pyrenees-Orientales", "Haute-Garonne", "Gard", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_32 }
            Reponses := array{"Gers", "Lozere", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_33 }
            Reponses := array{"Haute-Vienne", "Gironde", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_34 }
            Reponses := array{"Aveyron", "Hautes-Pyrenees", "Haute-Garonne", "Herault"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_35 }
            Reponses := array{"Cotes-d'Armor", "Ille-et-Vilaine", "Morbihan", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_36 }
            Reponses := array{"Indre", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_37 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Eure-et-Loir", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_38 }
            Reponses := array{"Savoie", "Allier", "Isere", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_39 }
            Reponses := array{"Territoire de Belfort", "Jura", "Yonne", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_40 }
            Reponses := array{"Pyrenees-Atlantiques", "Landes", "Dordogne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_41 }
            Reponses := array{"Indre-et-Loire", "Cher", "Loir-et-Cher", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_42 }
            Reponses := array{"Haute-Savoie", "Savoie", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_43 }
            Reponses := array{"Puy-de-Dome", "Ardeche", "Drome", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_44 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Sarthe", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_45 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_46 }
            Reponses := array{"Lot", "Gers", "Tarn-et-Garonne", "Hautes-Pyrenees"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_47 }
            Reponses := array{"Lot-et-Garonne", "Vienne", "Creuse", "Haute-Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_48 }
            Reponses := array{"Gers", "Tarn", "Ariege", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_50 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_51 }
            Reponses := array{"Vosges", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meurthe-et-Moselle", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_54 }
            Reponses := array{"Marne", "Vosges", "Meurthe-et-Moselle", "Ardennes"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_55 }
            Reponses := array{"Ardennes", "Vosges", "Meuse", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_56 }
            Reponses := array{"Finistere", "Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_57 }
            Reponses := array{"Marne", "Haut-Rhin", "Ardennes", "Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_58 }
            Reponses := array{"Nievre", "Jura", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_59 }
            Reponses := array{"Nord", "Somme", "Oise", "Aisne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_61 }
            Reponses := array{"Manche", "Eure", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_62 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_63 }
            Reponses := array{"Puy-de-Dome", "Allier", "Isere", "Haute-Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_64 }
            Reponses := array{"Creuse", "Gironde", "Pyrenees-Atlantiques", "Deux-Sevres"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_65 }
            Reponses := array{"Pyrenees-Orientales", "Ariege", "Hautes-Pyrenees", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_66 }
            Reponses := array{"Ariege", "Pyrenees-Orientales", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_67 }
            Reponses := array{"Meurthe-et-Moselle", "Vosges", "Bas-Rhin", "Haute-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_68 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_69 }
            Reponses := array{"Allier", "Rhone", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_70 }
            Reponses := array{"Doubs", "Jura", "Nievre", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_71 }
            Reponses := array{"Saone-et-Loire", "Nievre", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_72 }
            Reponses := array{"Mayenne", "Loire-Atlantique", "Sarthe", "Vendee"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_73 }
            Reponses := array{"Ardeche", "Puy-de-Dome", "Savoie", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_74 }
            Reponses := array{"Rhone", "Loire", "Ain", "Haute-Savoie"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_75 }
            Reponses := array{"Yvelines", "Val-de-Marne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_77 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Seine-et-Marne", "Seine-Saint-Denis"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_78 }
            Reponses := array{"Seine-et-Marne", "Yvelines", "Seine-Saint-Denis", "Hauts-de-Seine"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_79 }
            Reponses := array{"Deux-Sevres", "Creuse", "Correze", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_80 }
            Reponses := array{"Nord", "Aisne", "Oise", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_81 }
            Reponses := array{"Lot", "Aude", "Tarn", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_82 }
            Reponses := array{"Tarn", "Pyrenees-Orientales", "Lot", "Tarn-et-Garonne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_83 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Var", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_84 }
            Reponses := array{"Hautes-Alpes", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_85 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_86 }
            Reponses := array{"Vienne", "Charente", "Gironde", "Lot-et-Garonne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_87 }
            Reponses := array{"Haute-Vienne", "Charente", "Dordogne", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_88 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_89 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Nievre"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_90 }
            Reponses := array{"Jura", "Doubs", "Cote-d'Or", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_91 }
            Reponses := array{"Yvelines", "Hauts-de-Seine", "Seine-Saint-Denis", "Essonne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_92 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne", "Seine-Saint-Denis"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_93 }
            Reponses := array{"Val-d'Oise", "Seine-et-Marne", "Yvelines", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_94 }
            Reponses := array{"Seine-Saint-Denis", "Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_95 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_971 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_972 }
            Reponses := array{"Martinique", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_973 }
            Reponses := array{"Martinique", "Guyane", "Guadeloupe", "La Reunion"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das?"
            Image := option{ dep_carte.dmap_976 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Mayotte"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Cantal", "Loire"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_02 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_03 }
            Reponses := array{"Savoie", "Ain", "Puy-de-Dome", "Allier"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_04 }
            Reponses := array{"Vaucluse", "Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_05 }
            Reponses := array{"Var", "Bouches-du-Rhone", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_07 }
            Reponses := array{"Loire", "Ardeche", "Haute-Loire", "Rhone"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_08 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Marne", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_09 }
            Reponses := array{"Tarn", "Ariege", "Lozere", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_10 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_11 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Ariege"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_12 }
            Reponses := array{"Lozere", "Hautes-Pyrenees", "Ariege", "Aveyron"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_13 }
            Reponses := array{"Hautes-Alpes", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_14 }
            Reponses := array{"Manche", "Calvados", "Orne", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_15 }
            Reponses := array{"Ain", "Haute-Loire", "Isere", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_16 }
            Reponses := array{"Charente", "Lot-et-Garonne", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_17 }
            Reponses := array{"Deux-Sevres", "Gironde", "Charente", "Charente-Maritime"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_18 }
            Reponses := array{"Eure-et-Loir", "Indre-et-Loire", "Loir-et-Cher", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_19 }
            Reponses := array{"Vienne", "Correze", "Creuse", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_21 }
            Reponses := array{"Saone-et-Loire", "Haute-Saone", "Cote-d'Or", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_22 }
            Reponses := array{"Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_23 }
            Reponses := array{"Deux-Sevres", "Correze", "Creuse", "Landes"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_24 }
            Reponses := array{"Charente", "Gironde", "Charente-Maritime", "Dordogne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_25 }
            Reponses := array{"Cote-d'Or", "Doubs", "Saone-et-Loire", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_26 }
            Reponses := array{"Drome", "Cantal", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_27 }
            Reponses := array{"Orne", "Calvados", "Manche", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_28 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_29 }
            Reponses := array{"Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_2a }
            Reponses := array{"Manche", "Haute-Corse", "Corse-du-Sud", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_2b }
            Reponses := array{"Tarn", "Corse-du-Sud", "Haute-Corse", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_30 }
            Reponses := array{"Aveyron", "Ariege", "Herault", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_31 }
            Reponses := array{"Gard", "Tarn", "Haute-Garonne", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_32 }
            Reponses := array{"Gers", "Lot", "Aveyron", "Tarn"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_33 }
            Reponses := array{"Pyrenees-Atlantiques", "Gironde", "Creuse", "Charente"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_34 }
            Reponses := array{"Lot", "Aude", "Herault", "Aveyron"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_35 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_36 }
            Reponses := array{"Indre", "Eure-et-Loir", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_37 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Indre", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_38 }
            Reponses := array{"Drome", "Isere", "Ardeche", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_39 }
            Reponses := array{"Jura", "Territoire de Belfort", "Yonne", "Haute-Saone"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_40 }
            Reponses := array{"Vienne", "Landes", "Charente-Maritime", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Indre", "Loir-et-Cher"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_42 }
            Reponses := array{"Cantal", "Haute-Loire", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_43 }
            Reponses := array{"Ardeche", "Isere", "Cantal", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_44 }
            Reponses := array{"Sarthe", "Loire-Atlantique", "Mayenne", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_45 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Indre-et-Loire", "Cher"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_46 }
            Reponses := array{"Lozere", "Gard", "Aveyron", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_47 }
            Reponses := array{"Lot-et-Garonne", "Correze", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_48 }
            Reponses := array{"Tarn-et-Garonne", "Haute-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_50 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_51 }
            Reponses := array{"Haut-Rhin", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_52 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_54 }
            Reponses := array{"Vosges", "Ardennes", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_55 }
            Reponses := array{"Meuse", "Marne", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_56 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_57 }
            Reponses := array{"Moselle", "Haut-Rhin", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_58 }
            Reponses := array{"Saone-et-Loire", "Cote-d'Or", "Nievre", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_59 }
            Reponses := array{"Pas-de-Calais", "Oise", "Nord", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_60 }
            Reponses := array{"Oise", "Pas-de-Calais", "Aisne", "Somme"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_61 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_62 }
            Reponses := array{"Somme", "Aisne", "Oise", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_63 }
            Reponses := array{"Allier", "Savoie", "Puy-de-Dome", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_64 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Creuse", "Deux-Sevres"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_65 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_66 }
            Reponses := array{"Lot", "Tarn", "Pyrenees-Orientales", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_67 }
            Reponses := array{"Bas-Rhin", "Marne", "Meurthe-et-Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_68 }
            Reponses := array{"Haut-Rhin", "Marne", "Ardennes", "Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_69 }
            Reponses := array{"Cantal", "Rhone", "Ain", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_70 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_71 }
            Reponses := array{"Haute-Saone", "Nievre", "Saone-et-Loire", "Cote-d'Or"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_73 }
            Reponses := array{"Puy-de-Dome", "Ain", "Savoie", "Drome"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_74 }
            Reponses := array{"Ardeche", "Drome", "Haute-Savoie", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_75 }
            Reponses := array{"Val-de-Marne", "Essonne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_76 }
            Reponses := array{"Calvados", "Eure", "Seine-Maritime", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_77 }
            Reponses := array{"Yvelines", "Essonne", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_78 }
            Reponses := array{"Seine-Saint-Denis", "Yvelines", "Seine-et-Marne", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_79 }
            Reponses := array{"Vienne", "Haute-Vienne", "Gironde", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_80 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_81 }
            Reponses := array{"Haute-Garonne", "Pyrenees-Orientales", "Tarn", "Hautes-Pyrenees"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_82 }
            Reponses := array{"Pyrenees-Orientales", "Tarn-et-Garonne", "Lozere", "Ariege"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_83 }
            Reponses := array{"Alpes-de-Haute-Provence", "Vaucluse", "Var", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_84 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_85 }
            Reponses := array{"Vendee", "Loire-Atlantique", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_86 }
            Reponses := array{"Dordogne", "Vienne", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_87 }
            Reponses := array{"Dordogne", "Vienne", "Haute-Vienne", "Lot-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_88 }
            Reponses := array{"Vosges", "Marne", "Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_89 }
            Reponses := array{"Nievre", "Haute-Saone", "Jura", "Yonne"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_90 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_91 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Val-de-Marne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_92 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Essonne", "Val-de-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_93 }
            Reponses := array{"Essonne", "Seine-Saint-Denis", "Yvelines", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_94 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_95 }
            Reponses := array{"Hauts-de-Seine", "Val-d'Oise", "Essonne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_971 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_972 }
            Reponses := array{"Martinique", "Guadeloupe", "Mayotte", "Guyane"}
            BonneReponse := 0
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_973 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_974 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Welches franzoesische Departement ist das? (verpixelte Karte)"
            Image := option{ dep_carte_pixel.dmpx_976 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2

MakeDepCarteQuestionsIT() : []question =
    array:
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_01 }
            Reponses := array{"Haute-Savoie", "Drome", "Ain", "Puy-de-Dome"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_02 }
            Reponses := array{"Oise", "Somme", "Nord", "Aisne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_03 }
            Reponses := array{"Allier", "Ain", "Loire", "Ardeche"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_04 }
            Reponses := array{"Vaucluse", "Hautes-Alpes", "Alpes-de-Haute-Provence", "Var"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_05 }
            Reponses := array{"Vaucluse", "Var", "Hautes-Alpes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_06 }
            Reponses := array{"Alpes-Maritimes", "Bouches-du-Rhone", "Vaucluse", "Hautes-Alpes"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_07 }
            Reponses := array{"Haute-Savoie", "Ardeche", "Rhone", "Drome"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_08 }
            Reponses := array{"Ardennes", "Haut-Rhin", "Moselle", "Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_09 }
            Reponses := array{"Aude", "Ariege", "Tarn-et-Garonne", "Gard"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_10 }
            Reponses := array{"Bas-Rhin", "Aube", "Vosges", "Haut-Rhin"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_11 }
            Reponses := array{"Aude", "Gard", "Herault", "Aveyron"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_12 }
            Reponses := array{"Haute-Garonne", "Aveyron", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_13 }
            Reponses := array{"Alpes-Maritimes", "Var", "Bouches-du-Rhone", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_14 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Calvados"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_15 }
            Reponses := array{"Ain", "Puy-de-Dome", "Haute-Savoie", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_16 }
            Reponses := array{"Charente", "Charente-Maritime", "Landes", "Correze"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_17 }
            Reponses := array{"Deux-Sevres", "Charente", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_18 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Loir-et-Cher"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_19 }
            Reponses := array{"Charente", "Correze", "Charente-Maritime", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_21 }
            Reponses := array{"Cote-d'Or", "Yonne", "Nievre", "Doubs"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_22 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_23 }
            Reponses := array{"Haute-Vienne", "Landes", "Vienne", "Creuse"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_24 }
            Reponses := array{"Correze", "Dordogne", "Vienne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_25 }
            Reponses := array{"Haute-Saone", "Saone-et-Loire", "Doubs", "Yonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_26 }
            Reponses := array{"Drome", "Loire", "Ardeche", "Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_27 }
            Reponses := array{"Calvados", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_28 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_29 }
            Reponses := array{"Cotes-d'Armor", "Finistere", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_2a }
            Reponses := array{"Territoire de Belfort", "Haute-Corse", "Landes", "Corse-du-Sud"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_2b }
            Reponses := array{"Haute-Corse", "Corse-du-Sud", "Finistere", "Meurthe-et-Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_30 }
            Reponses := array{"Herault", "Lozere", "Gard", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_31 }
            Reponses := array{"Pyrenees-Orientales", "Haute-Garonne", "Gard", "Gers"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_32 }
            Reponses := array{"Gers", "Lozere", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_33 }
            Reponses := array{"Haute-Vienne", "Gironde", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_34 }
            Reponses := array{"Aveyron", "Hautes-Pyrenees", "Haute-Garonne", "Herault"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_35 }
            Reponses := array{"Cotes-d'Armor", "Ille-et-Vilaine", "Morbihan", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_36 }
            Reponses := array{"Indre", "Cher", "Eure-et-Loir", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_37 }
            Reponses := array{"Loiret", "Loir-et-Cher", "Eure-et-Loir", "Indre-et-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_38 }
            Reponses := array{"Savoie", "Allier", "Isere", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_39 }
            Reponses := array{"Territoire de Belfort", "Jura", "Yonne", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_40 }
            Reponses := array{"Pyrenees-Atlantiques", "Landes", "Dordogne", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_41 }
            Reponses := array{"Indre-et-Loire", "Cher", "Loir-et-Cher", "Indre"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_42 }
            Reponses := array{"Haute-Savoie", "Savoie", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_43 }
            Reponses := array{"Puy-de-Dome", "Ardeche", "Drome", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_44 }
            Reponses := array{"Maine-et-Loire", "Loire-Atlantique", "Sarthe", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_45 }
            Reponses := array{"Cher", "Loiret", "Loir-et-Cher", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_46 }
            Reponses := array{"Lot", "Gers", "Tarn-et-Garonne", "Hautes-Pyrenees"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_47 }
            Reponses := array{"Lot-et-Garonne", "Vienne", "Creuse", "Haute-Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_48 }
            Reponses := array{"Gers", "Tarn", "Ariege", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_50 }
            Reponses := array{"Manche", "Seine-Maritime", "Orne", "Eure"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_51 }
            Reponses := array{"Vosges", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_52 }
            Reponses := array{"Moselle", "Bas-Rhin", "Meurthe-et-Moselle", "Haute-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_54 }
            Reponses := array{"Marne", "Vosges", "Meurthe-et-Moselle", "Ardennes"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_55 }
            Reponses := array{"Ardennes", "Vosges", "Meuse", "Moselle"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_56 }
            Reponses := array{"Finistere", "Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_57 }
            Reponses := array{"Marne", "Haut-Rhin", "Ardennes", "Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_58 }
            Reponses := array{"Nievre", "Jura", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_59 }
            Reponses := array{"Nord", "Somme", "Oise", "Aisne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_60 }
            Reponses := array{"Somme", "Oise", "Aisne", "Nord"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_61 }
            Reponses := array{"Manche", "Eure", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_62 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_63 }
            Reponses := array{"Puy-de-Dome", "Allier", "Isere", "Haute-Savoie"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_64 }
            Reponses := array{"Creuse", "Gironde", "Pyrenees-Atlantiques", "Deux-Sevres"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_65 }
            Reponses := array{"Pyrenees-Orientales", "Ariege", "Hautes-Pyrenees", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_66 }
            Reponses := array{"Ariege", "Pyrenees-Orientales", "Tarn-et-Garonne", "Tarn"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_67 }
            Reponses := array{"Meurthe-et-Moselle", "Vosges", "Bas-Rhin", "Haute-Marne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_68 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_69 }
            Reponses := array{"Allier", "Rhone", "Puy-de-Dome", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_70 }
            Reponses := array{"Doubs", "Jura", "Nievre", "Haute-Saone"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_71 }
            Reponses := array{"Saone-et-Loire", "Nievre", "Cote-d'Or", "Yonne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_72 }
            Reponses := array{"Mayenne", "Loire-Atlantique", "Sarthe", "Vendee"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_73 }
            Reponses := array{"Ardeche", "Puy-de-Dome", "Savoie", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_74 }
            Reponses := array{"Rhone", "Loire", "Ain", "Haute-Savoie"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_75 }
            Reponses := array{"Yvelines", "Val-de-Marne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_76 }
            Reponses := array{"Manche", "Seine-Maritime", "Eure", "Orne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_77 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Seine-et-Marne", "Seine-Saint-Denis"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_78 }
            Reponses := array{"Seine-et-Marne", "Yvelines", "Seine-Saint-Denis", "Hauts-de-Seine"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_79 }
            Reponses := array{"Deux-Sevres", "Creuse", "Correze", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_80 }
            Reponses := array{"Nord", "Aisne", "Oise", "Somme"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_81 }
            Reponses := array{"Lot", "Aude", "Tarn", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_82 }
            Reponses := array{"Tarn", "Pyrenees-Orientales", "Lot", "Tarn-et-Garonne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_83 }
            Reponses := array{"Hautes-Alpes", "Vaucluse", "Var", "Alpes-Maritimes"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_84 }
            Reponses := array{"Hautes-Alpes", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_85 }
            Reponses := array{"Maine-et-Loire", "Sarthe", "Loire-Atlantique", "Vendee"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_86 }
            Reponses := array{"Vienne", "Charente", "Gironde", "Lot-et-Garonne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_87 }
            Reponses := array{"Haute-Vienne", "Charente", "Dordogne", "Vienne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_88 }
            Reponses := array{"Vosges", "Meuse", "Marne", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_89 }
            Reponses := array{"Territoire de Belfort", "Yonne", "Saone-et-Loire", "Nievre"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_90 }
            Reponses := array{"Jura", "Doubs", "Cote-d'Or", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_91 }
            Reponses := array{"Yvelines", "Hauts-de-Seine", "Seine-Saint-Denis", "Essonne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_92 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne", "Seine-Saint-Denis"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_93 }
            Reponses := array{"Val-d'Oise", "Seine-et-Marne", "Yvelines", "Seine-Saint-Denis"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_94 }
            Reponses := array{"Seine-Saint-Denis", "Val-d'Oise", "Hauts-de-Seine", "Val-de-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_95 }
            Reponses := array{"Val-d'Oise", "Hauts-de-Seine", "Paris", "Essonne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_971 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Guadeloupe"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_972 }
            Reponses := array{"Martinique", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_973 }
            Reponses := array{"Martinique", "Guyane", "Guadeloupe", "La Reunion"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_974 }
            Reponses := array{"La Reunion", "Guyane", "Martinique", "Mayotte"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo?"
            Image := option{ dep_carte.dmap_976 }
            Reponses := array{"La Reunion", "Martinique", "Guyane", "Mayotte"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_01 }
            Reponses := array{"Ain", "Puy-de-Dome", "Cantal", "Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_02 }
            Reponses := array{"Nord", "Somme", "Aisne", "Oise"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_03 }
            Reponses := array{"Savoie", "Ain", "Puy-de-Dome", "Allier"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_04 }
            Reponses := array{"Vaucluse", "Var", "Alpes-de-Haute-Provence", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_05 }
            Reponses := array{"Var", "Bouches-du-Rhone", "Hautes-Alpes", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_06 }
            Reponses := array{"Alpes-de-Haute-Provence", "Hautes-Alpes", "Alpes-Maritimes", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_07 }
            Reponses := array{"Loire", "Ardeche", "Haute-Loire", "Rhone"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_08 }
            Reponses := array{"Meurthe-et-Moselle", "Aube", "Marne", "Ardennes"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_09 }
            Reponses := array{"Tarn", "Ariege", "Lozere", "Tarn-et-Garonne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_10 }
            Reponses := array{"Aube", "Vosges", "Moselle", "Haute-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_11 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Ariege"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_12 }
            Reponses := array{"Lozere", "Hautes-Pyrenees", "Ariege", "Aveyron"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_13 }
            Reponses := array{"Hautes-Alpes", "Alpes-de-Haute-Provence", "Bouches-du-Rhone", "Vaucluse"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_14 }
            Reponses := array{"Manche", "Calvados", "Orne", "Eure"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_15 }
            Reponses := array{"Ain", "Haute-Loire", "Isere", "Cantal"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_16 }
            Reponses := array{"Charente", "Lot-et-Garonne", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_17 }
            Reponses := array{"Deux-Sevres", "Gironde", "Charente", "Charente-Maritime"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_18 }
            Reponses := array{"Eure-et-Loir", "Indre-et-Loire", "Loir-et-Cher", "Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_19 }
            Reponses := array{"Vienne", "Correze", "Creuse", "Haute-Vienne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_21 }
            Reponses := array{"Saone-et-Loire", "Haute-Saone", "Cote-d'Or", "Nievre"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_22 }
            Reponses := array{"Morbihan", "Cotes-d'Armor", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_23 }
            Reponses := array{"Deux-Sevres", "Correze", "Creuse", "Landes"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_24 }
            Reponses := array{"Charente", "Gironde", "Charente-Maritime", "Dordogne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_25 }
            Reponses := array{"Cote-d'Or", "Doubs", "Saone-et-Loire", "Haute-Saone"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_26 }
            Reponses := array{"Drome", "Cantal", "Allier", "Ain"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_27 }
            Reponses := array{"Orne", "Calvados", "Manche", "Eure"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_28 }
            Reponses := array{"Cher", "Eure-et-Loir", "Loiret", "Indre"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_29 }
            Reponses := array{"Cotes-d'Armor", "Morbihan", "Ille-et-Vilaine", "Finistere"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_2a }
            Reponses := array{"Manche", "Haute-Corse", "Corse-du-Sud", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_2b }
            Reponses := array{"Tarn", "Corse-du-Sud", "Haute-Corse", "Tarn-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_30 }
            Reponses := array{"Aveyron", "Ariege", "Herault", "Gard"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_31 }
            Reponses := array{"Gard", "Tarn", "Haute-Garonne", "Pyrenees-Orientales"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_32 }
            Reponses := array{"Gers", "Lot", "Aveyron", "Tarn"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_33 }
            Reponses := array{"Pyrenees-Atlantiques", "Gironde", "Creuse", "Charente"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_34 }
            Reponses := array{"Lot", "Aude", "Herault", "Aveyron"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_35 }
            Reponses := array{"Morbihan", "Ille-et-Vilaine", "Finistere", "Cotes-d'Armor"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_36 }
            Reponses := array{"Indre", "Eure-et-Loir", "Loir-et-Cher", "Indre-et-Loire"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_37 }
            Reponses := array{"Indre-et-Loire", "Loir-et-Cher", "Indre", "Loiret"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_38 }
            Reponses := array{"Drome", "Isere", "Ardeche", "Haute-Savoie"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_39 }
            Reponses := array{"Jura", "Territoire de Belfort", "Yonne", "Haute-Saone"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_40 }
            Reponses := array{"Vienne", "Landes", "Charente-Maritime", "Correze"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_41 }
            Reponses := array{"Cher", "Eure-et-Loir", "Indre", "Loir-et-Cher"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_42 }
            Reponses := array{"Cantal", "Haute-Loire", "Ain", "Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_43 }
            Reponses := array{"Ardeche", "Isere", "Cantal", "Haute-Loire"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_44 }
            Reponses := array{"Sarthe", "Loire-Atlantique", "Mayenne", "Vendee"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_45 }
            Reponses := array{"Eure-et-Loir", "Loiret", "Indre-et-Loire", "Cher"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_46 }
            Reponses := array{"Lozere", "Gard", "Aveyron", "Lot"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_47 }
            Reponses := array{"Lot-et-Garonne", "Correze", "Haute-Vienne", "Gironde"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_48 }
            Reponses := array{"Tarn-et-Garonne", "Haute-Garonne", "Hautes-Pyrenees", "Lozere"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_49 }
            Reponses := array{"Loire-Atlantique", "Maine-et-Loire", "Vendee", "Mayenne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_50 }
            Reponses := array{"Seine-Maritime", "Calvados", "Manche", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_51 }
            Reponses := array{"Haut-Rhin", "Marne", "Meuse", "Moselle"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_52 }
            Reponses := array{"Vosges", "Haute-Marne", "Moselle", "Aube"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_53 }
            Reponses := array{"Loire-Atlantique", "Mayenne", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_54 }
            Reponses := array{"Vosges", "Ardennes", "Meuse", "Meurthe-et-Moselle"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_55 }
            Reponses := array{"Meuse", "Marne", "Moselle", "Vosges"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_56 }
            Reponses := array{"Finistere", "Ille-et-Vilaine", "Cotes-d'Armor", "Morbihan"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_57 }
            Reponses := array{"Moselle", "Haut-Rhin", "Haute-Marne", "Aube"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_58 }
            Reponses := array{"Saone-et-Loire", "Cote-d'Or", "Nievre", "Territoire de Belfort"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_59 }
            Reponses := array{"Pas-de-Calais", "Oise", "Nord", "Somme"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_60 }
            Reponses := array{"Oise", "Pas-de-Calais", "Aisne", "Somme"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_61 }
            Reponses := array{"Manche", "Seine-Maritime", "Calvados", "Orne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_62 }
            Reponses := array{"Somme", "Aisne", "Oise", "Pas-de-Calais"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_63 }
            Reponses := array{"Allier", "Savoie", "Puy-de-Dome", "Ain"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_64 }
            Reponses := array{"Dordogne", "Pyrenees-Atlantiques", "Creuse", "Deux-Sevres"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_65 }
            Reponses := array{"Aude", "Hautes-Pyrenees", "Tarn", "Pyrenees-Orientales"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_66 }
            Reponses := array{"Lot", "Tarn", "Pyrenees-Orientales", "Haute-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_67 }
            Reponses := array{"Bas-Rhin", "Marne", "Meurthe-et-Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_68 }
            Reponses := array{"Haut-Rhin", "Marne", "Ardennes", "Moselle"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_69 }
            Reponses := array{"Cantal", "Rhone", "Ain", "Isere"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_70 }
            Reponses := array{"Haute-Saone", "Nievre", "Yonne", "Territoire de Belfort"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_71 }
            Reponses := array{"Haute-Saone", "Nievre", "Saone-et-Loire", "Cote-d'Or"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_72 }
            Reponses := array{"Vendee", "Sarthe", "Mayenne", "Loire-Atlantique"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_73 }
            Reponses := array{"Puy-de-Dome", "Ain", "Savoie", "Drome"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_74 }
            Reponses := array{"Ardeche", "Drome", "Haute-Savoie", "Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_75 }
            Reponses := array{"Val-de-Marne", "Essonne", "Seine-Saint-Denis", "Paris"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_76 }
            Reponses := array{"Calvados", "Eure", "Seine-Maritime", "Orne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_77 }
            Reponses := array{"Yvelines", "Essonne", "Paris", "Seine-et-Marne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_78 }
            Reponses := array{"Seine-Saint-Denis", "Yvelines", "Seine-et-Marne", "Val-d'Oise"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_79 }
            Reponses := array{"Vienne", "Haute-Vienne", "Gironde", "Deux-Sevres"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_80 }
            Reponses := array{"Nord", "Somme", "Pas-de-Calais", "Aisne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_81 }
            Reponses := array{"Haute-Garonne", "Pyrenees-Orientales", "Tarn", "Hautes-Pyrenees"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_82 }
            Reponses := array{"Pyrenees-Orientales", "Tarn-et-Garonne", "Lozere", "Ariege"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_83 }
            Reponses := array{"Alpes-de-Haute-Provence", "Vaucluse", "Var", "Bouches-du-Rhone"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_84 }
            Reponses := array{"Bouches-du-Rhone", "Var", "Vaucluse", "Alpes-de-Haute-Provence"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_85 }
            Reponses := array{"Vendee", "Loire-Atlantique", "Maine-et-Loire", "Sarthe"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_86 }
            Reponses := array{"Dordogne", "Vienne", "Deux-Sevres", "Charente-Maritime"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_87 }
            Reponses := array{"Dordogne", "Vienne", "Haute-Vienne", "Lot-et-Garonne"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_88 }
            Reponses := array{"Vosges", "Marne", "Moselle", "Haut-Rhin"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_89 }
            Reponses := array{"Nievre", "Haute-Saone", "Jura", "Yonne"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_90 }
            Reponses := array{"Jura", "Doubs", "Haute-Saone", "Territoire de Belfort"}
            BonneReponse := 3
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_91 }
            Reponses := array{"Seine-Saint-Denis", "Essonne", "Val-de-Marne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_92 }
            Reponses := array{"Hauts-de-Seine", "Yvelines", "Essonne", "Val-de-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_93 }
            Reponses := array{"Essonne", "Seine-Saint-Denis", "Yvelines", "Val-de-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_94 }
            Reponses := array{"Val-de-Marne", "Yvelines", "Paris", "Seine-et-Marne"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_95 }
            Reponses := array{"Hauts-de-Seine", "Val-d'Oise", "Essonne", "Seine-et-Marne"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_971 }
            Reponses := array{"Martinique", "Guadeloupe", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_972 }
            Reponses := array{"Martinique", "Guadeloupe", "Mayotte", "Guyane"}
            BonneReponse := 0
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_973 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Martinique"}
            BonneReponse := 2
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_974 }
            Reponses := array{"Guadeloupe", "La Reunion", "Guyane", "Mayotte"}
            BonneReponse := 1
        question:
            Enonce := "Quale dipartimento francese e questo? (mappa pixelata)"
            Image := option{ dep_carte_pixel.dmpx_976 }
            Reponses := array{"Guadeloupe", "Guyane", "Mayotte", "Martinique"}
            BonneReponse := 2
